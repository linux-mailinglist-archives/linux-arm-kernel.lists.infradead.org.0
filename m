Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EADD714B6AC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 15:07:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IzWTuYKuqKCRzvy+kdYhnWPitgroru0sy0qXvX7ZLfY=; b=uUX
	+xTf9crSqa7sJ2I9zQcHI/JqqePS727taWuqETQrc/gbJf5BhkCKloB5lc2N6aB9VI2GVq87NE5nr
	xqZSX+Laz9LNGPORl0R+ye0HHLJW8ubBEwrgcMGmG+gHXuovguOM9Y9jgyXYD8VW5s2vQdm0Ly7/x
	HSW4oyzZKcW8jnSuRLcJnKhY3frI7nBVOTIBd+fgq+x/iJBop9E7hn1nt2CiH+m0dYa8nT0x7x3xt
	xu1yEM4fNNlY16u7BWIimoGXWeJrTw9DLgXNgvAk56gnrqM+jnUupjtH11vCUYLEBywVS/gaRjayc
	iRri01qZAftpvHPLQNu1zhIZIHoteyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwRWF-0000lm-FM; Tue, 28 Jan 2020 14:07:07 +0000
Received: from olimex.com ([184.105.72.32])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwRW6-0000l3-RZ
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 14:07:00 +0000
Received: from localhost.localdomain ([94.155.250.134])
 by olimex.com with ESMTPSA
 (ECDHE-RSA-AES128-GCM-SHA256:TLSv1.2:Kx=ECDH:Au=RSA:Enc=AESGCM(128):Mac=AEAD)
 (SMTP-AUTH username stefan@olimex.com, mechanism PLAIN)
 for <linux-arm-kernel@lists.infradead.org>; Tue, 28 Jan 2020 06:06:52 -0800
From: Stefan Mavrodiev <stefan@olimex.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 linux-kernel@vger.kernel.org (open list),
 dri-devel@lists.freedesktop.org (open list:DRM DRIVERS FOR ALLWINNER A10),
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Allwinner sunXi SoC
 support)
Subject: [PATCH v3 0/1] Add support for sun4i HDMI audio
Date: Tue, 28 Jan 2020 16:06:41 +0200
Message-Id: <20200128140642.8404-1-stefan@olimex.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_060658_895321_4CC5DB47 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-sunxi@googlegroups.com, Stefan Mavrodiev <stefan@olimex.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series add support for HDMI audio for sun4i HDMI encored.
The code uses some parts from the Allwinners's BSP kernel.

In the previous patch series there was additional patch enabling the
cyclic DMA transfers. It was accepted, so it's omitted here.

The patch is tested on A20 chip. For the other chips, only the addresses
of the registers are checked.

Changes for v3:
 - Dropped the patch which enable the cyclic DMA transfers
 - In v2, a separate platform_driver was created. However this is not
   practical and the idea is dropped.
 - Since this module depends on SND_SOC, a new Kconfig entry is added. When
   SND_SOC is not enabled, the audio part is not initialized.
 - The "big" issue with v1 was that snd_soc_register_card() overwrites
   the driver_data pointer. To resolve this issue, the original pointer is
   stored as drvdata of the card. Then before card unregistering, the
   pointer is restored. This is done by calling additional destroy function.

Changes for v2:
 - Create a new platform driver instead of using the HDMI encoder
 - Expose a new kcontrol to the userspace holding the ELD data
 - Wrap all macro arguments in parentheses

Stefan Mavrodiev (1):
  drm: sun4i: hdmi: Add support for sun4i HDMI encoder audio

 drivers/gpu/drm/sun4i/Kconfig            |  11 +
 drivers/gpu/drm/sun4i/Makefile           |   3 +
 drivers/gpu/drm/sun4i/sun4i_hdmi.h       |  37 ++
 drivers/gpu/drm/sun4i/sun4i_hdmi_audio.c | 450 +++++++++++++++++++++++
 drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c   |  14 +
 5 files changed, 515 insertions(+)
 create mode 100644 drivers/gpu/drm/sun4i/sun4i_hdmi_audio.c

-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
