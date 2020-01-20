Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 080AE143070
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 18:06:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rs9iNRYlnuQuY4GxCQrcJOriv/UPpTKgAPgaczD5VNQ=; b=Sd6VsH96ZGgXVX
	kpTSsEUacYZJCDHSyL3Nr58wxJrOZypk41gXFNC19ejNsvKKHr/ujS1X9LFCeEEJ4zH8hhFm1RxuV
	hPD5nXwm/PkxC0Q0YFmmYPX/WFdGnbTPp9C7uGQMgKrhuT0YmaFabil4HZT6Y63AmfmqHfdGpoETz
	HfVoe6yMxXR+VLobcYEMDjDJNnxRZ34ko5KdVO4K1QKCBP9P64rRgelptMGeNdti6T40/otwl+fM7
	QD5pK6g4ABEL5B+TBf83zLXJywBkwFC03lI8MzqbYfG56o4REhk/AjLqd4OQnw97D5lkBri5QwBoc
	ZcL+b8CYcR97tJspvM0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itaVU-0007Bh-1C; Mon, 20 Jan 2020 17:06:32 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itaVF-00079x-Ru; Mon, 20 Jan 2020 17:06:24 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 9F2C02912D9
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH 0/5] drm/rockchip: Fix unbind/bind
Date: Mon, 20 Jan 2020 14:05:57 -0300
Message-Id: <20200120170602.3832-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_090618_033150_34698A19 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series is an attempt to fix the unbind/bind crash
(due to an use-after-free bug) found on rockchip-drm driver.

The problem lies in the way the driver uses the component API.
Currently, rockchip_drm_unbind calls component_unbind_all before
drm_mode_config_cleanup, the former releasing the memory
where the DRM objects are embedded.

The series goal is basically to fix all the components,
making proper use of the respective .destroy hooks,
making sure there are no use-after-free or double-free issues.

The first patch is likely the most controversial, which is required
because component_bind_all will call component_unbind without
calling drm_mode_config_cleanup, if any component fails to bind.
As mentioned above, this is problematic in the DRM framework.

Thanks!
Ezequiel

Ezequiel Garcia (5):
  component: Add an API to cleanup before unbind
  drm/rockchip: Fix the device unbind order
  drm/rockchip: vop: Fix CRTC unbind
  drm/rockchip: lvds: Fix component unbind
  drm/rockchip: rk3066_hdmi: Cleanup component unbind

 drivers/base/component.c                    |  9 +++-
 drivers/gpu/drm/rockchip/rk3066_hdmi.c      |  8 +--
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 20 +++++---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 56 ++++++++-------------
 drivers/gpu/drm/rockchip/rockchip_lvds.c    | 20 ++++----
 include/linux/component.h                   | 10 +++-
 6 files changed, 60 insertions(+), 63 deletions(-)

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
