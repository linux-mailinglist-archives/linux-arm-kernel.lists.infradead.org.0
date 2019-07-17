Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C31CA6B847
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vp4wbfsGRK/Ac2IJFdzKxWEPxVUr5AhLHvKuXbWmcqE=; b=stwWmLmhv08mNG
	Pw9CMAF5N7KQG9GVUCnKNEHkmmlxi5PsrR0Y+iI9d8hnDRVM6ap4pfuHiPFVMBAqRApTivDVfHMbR
	j4q1lPBKqs0PdIu3TQs2N7p15Q1L1ex0VhQj1S9obzbLH2gWFUWLvPcnj7xhQQ3s+QpSH1Yk4ob2g
	Kbd8145qVK6FEWAZcqyEsposOd3fuUnx0q5bNkkzijx+wJHqf8YZ0z7vgdXwprgr0SW7tIltPuNFd
	0cFUNY3u6D/gXB9JHNm5OjCGx6FKFtGnN1gJo3/soFxKCYPEdsPcBHA0fk/QGN0fGwYjQrNiUbQe7
	f1gicBM7B/FDt7N8KIpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfOL-00053y-7t; Wed, 17 Jul 2019 08:34:25 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnfNX-0004bR-Ix
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 08:33:37 +0000
Received: by mail-pg1-x543.google.com with SMTP id t132so10795818pgb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 01:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xi/I3CroR7sIGb/RSMeX63hsRQQZqTXzOZE3S6HZ8ZY=;
 b=RD8M6nunAIi1kjnoYpVPNjZL741NzPqIoh1uWt5E5r6urvKBD5w/QXtHFHOWkKP7rU
 eDsE9C26mS+c6F9BsjN7Sldy2EKwIdp+wSVCSX2fTTKK8nRLbbtA6GlxK16zRW/fm06H
 NZfy1y4+ZGSX3EopmPRAj88diV1ho2PkxjqX8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xi/I3CroR7sIGb/RSMeX63hsRQQZqTXzOZE3S6HZ8ZY=;
 b=WfpY3gf4vTJOKrhGdo4Th8Kj4ip2FgKkVux0dtp/mfhsSlfv/y0Lcyx6nFabJBqCEO
 3oyNUh9MRLQVRh/n4Q/aFdcxRWQHy3kmjhccJgJMp7X+cjF/OcuwofykvLniLALeDCeh
 LJHd6Wn/ztInfre5GuPTb+uWlvBeCsAng9qdX2PB+IRhK17+wzJ/jWn1HVupHLdg0j75
 gOb+8n4mUopiAV6WxXxdestfnd5CQNipXlM+C7Zok2Kxl0Snxqxz1OmlzSaG0N9f7V6X
 hkBqaSqLA9EfOpUj5JK2n1DMwEcgk7/C9wjPsehsdFV8GTWxtFNQZTnl0fCbJw17pbXi
 NF6A==
X-Gm-Message-State: APjAAAX97k+tG/LQisefAcmNYEwT0OGc6yJ9N8QNlC+tzPOd/7AKDfKg
 QS4zh/PWOvtrUR1nQqA+ZPskbdD1vO8=
X-Google-Smtp-Source: APXvYqzYyxaOAPwCDczy1nF4W7TyzTBcE11lWgiyzwF6LECNndF7weCTc6ymyZwVNBlIDSpFxsBrbA==
X-Received: by 2002:a63:506:: with SMTP id 6mr39061533pgf.434.1563352414509;
 Wed, 17 Jul 2019 01:33:34 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id r2sm33193385pfl.67.2019.07.17.01.33.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Jul 2019 01:33:33 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/5] Add HDMI jack support on RK3288
Date: Wed, 17 Jul 2019 16:33:22 +0800
Message-Id: <20190717083327.47646-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_013335_649020_E9C975E8 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: alsa-devel@alsa-project.org, dianders@chromium.org,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 tzungbi@chromium.org, Jaroslav Kysela <perex@perex.cz>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, dgreid@chromium.org,
 linux-arm-kernel@lists.infradead.org, Cheng-Yi Chiang <cychiang@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series supports HDMI jack reporting on RK3288, which uses
DRM dw-hdmi driver and hdmi-codec codec driver.

The previous discussion about reporting jack status using hdmi-notifier
and drm_audio_component is at

https://lore.kernel.org/patchwork/patch/1083027/

The new approach is to use a callback mechanism that is
specific to hdmi-codec.

Changes from v4 to v5:
- synopsys/Kconfig: Remove the incorrect dependency change in v4.
- rockchip/Kconfig: Add dependency of hdmi-codec when it is really need
  for jack support.

Cheng-Yi Chiang (5):
  ASoC: hdmi-codec: Add an op to set callback function for plug event
  drm: bridge: dw-hdmi: Report connector status using callback
  drm: dw-hdmi-i2s: Use fixed id for codec device
  ASoC: rockchip_max98090: Add dai_link for HDMI
  ASoC: rockchip_max98090: Add HDMI jack support

 .../drm/bridge/synopsys/dw-hdmi-i2s-audio.c   |  13 +-
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |  41 ++++++-
 include/drm/bridge/dw_hdmi.h                  |   4 +
 include/sound/hdmi-codec.h                    |  17 +++
 sound/soc/codecs/hdmi-codec.c                 |  46 +++++++
 sound/soc/rockchip/Kconfig                    |   3 +-
 sound/soc/rockchip/rk3288_hdmi_analog.c       |   3 +-
 sound/soc/rockchip/rockchip_max98090.c        | 116 ++++++++++++++----
 8 files changed, 216 insertions(+), 27 deletions(-)

-- 
2.22.0.510.g264f2c817a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
