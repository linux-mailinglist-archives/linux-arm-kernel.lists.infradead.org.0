Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61412E6CD9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 08:20:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3+HyuU93heVZwz1gSkQ7JPsY12IRK7xReLE1xGMPqFk=; b=Mcmy6loFd7gNPL
	pUM55RBeo1Q/Zv5LdBx1FqtgKrDM5ppU8F96xOkFAKwyCFMRHH8Cs/QE9V5ANRl3NJ4gApoABQppf
	UpeO+NOO23sbfRy7zmCsug4bDdwR92iVy1WKw30BAw9OSAIWZGOXUl8hl2kbCOHPEZPIaRRChslIR
	uQ7Ivp/nSuD5AIthwm0fzxqmPVx1+n4L6SQkDquRM7GYLU1eMmS6Ayv31scf0J2BBeKQ+K3rr6BZT
	32do2OChmyGoa+q0ewEMEWRkEkvjUDrZ7ZZzJWxdibv0598FlrHIl3aXWG8dXLlHU0xH9pWRqtSL8
	Rymd0032DLtqes8rSUPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOzJj-0004WH-BC; Mon, 28 Oct 2019 07:19:55 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOzJX-0004VF-Qr
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 07:19:45 +0000
Received: by mail-pg1-x542.google.com with SMTP id j22so274967pgh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 00:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1kARxN4zXqzFWFi9Hzge3EGrR8GY2GeJ7Yqz9IBjLtM=;
 b=P4SRp8hsDD5IeFRKKfwF24MUFSYWQUG8Pifned/ZXWMMwEDxyNi2fo2IBqSZemeTIr
 YXzLkF57dbipVFhFy74e+kfK6A+vvnGLJ9qcYvXjfL/f0CZKSBWPERoIjFznbevPjcKy
 2Yr0AWo8FKDfZP5ZaXkh/LIexFunlbxZ+g2ns=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1kARxN4zXqzFWFi9Hzge3EGrR8GY2GeJ7Yqz9IBjLtM=;
 b=BbxvaCxKe5Mop2e5IFpz+gBkzd/8Ytii6eEeK01eRzskl8VfMjeBMUSPSul4RxlL/R
 bhU1mWbGhgvkCeI40hsMjI2o7OAdmMXgdzfSoyEQzypxXBxoKyVuZG97YC6fTP3Boj1z
 7z0tn6L/aV6jP8sC/sDjPju+9aOHz7WJLCy3pZz8cKYy3ShDApww6fxo1AnwdsvA8HGe
 C8XD2wJGkM9hH6G/wbtMSNysSfPDzCUSuFQwbDDB1sOiZ/Mv5gqqPw6rM5OeUAIo4P1h
 Gm6Ld1nxW5tt0SFimqpl7iztXSXlb+CMYMLRCg8ixrQytoJaBzjF33iu5snXOt2FmFyH
 dCJA==
X-Gm-Message-State: APjAAAXj6eG22East9z/kAs64x9WJBmvW/6xlljsvbCrcmrVDpBAtQKY
 BjDqVTYY/BAelYFO3ckSFez8eg==
X-Google-Smtp-Source: APXvYqyQ6aIEt1WbaZMUGlnrW1jFW16UZAwHLIo+j1unzlK77i3d3XcL512n21QVNwPfdFP+R7kEQQ==
X-Received: by 2002:a63:ff56:: with SMTP id s22mr19089316pgk.44.1572247179560; 
 Mon, 28 Oct 2019 00:19:39 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id h28sm12513742pgn.14.2019.10.28.00.19.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Oct 2019 00:19:38 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v9 0/6] Add HDMI jack support on RK3288
Date: Mon, 28 Oct 2019 15:19:24 +0800
Message-Id: <20191028071930.145899-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_001943_873237_A34AB1CF 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, alsa-devel@alsa-project.org,
 Heiko Stuebner <heiko@sntech.de>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Takashi Iwai <tiwai@suse.com>,
 linux-rockchip@lists.infradead.org, dgreid@chromium.org,
 Cheng-Yi Chiang <cychiang@chromium.org>, devicetree@vger.kernel.org,
 tzungbi@chromium.org, Jonas Karlman <jonas@kwiboo.se>,
 Russell King <rmk+kernel@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, dianders@chromium.org,
 Mark Brown <broonie@kernel.org>, Daniel Vetter <daniel@ffwll.ch>
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

The dependent change on hdmi-codec.c

commit 6fa5963c37a2 ("ASoC: hdmi-codec: Add an op to set callback function for plug event")

has been merged to upstream.

Changes from v8 to v9:

1. rockchip_max98090:
   Use the presence of rockchip,audio-codec to determine the presense of max98090
   in sound card.
   Use the presence of rockchip,hdmi-codec to determine the presence of HDMI in
   sound card.
   Remove the compatible strings added in v8.

2. #include <sound/hdmi-codec.h> should be in the patch of adding HDMI jack support.

Cheng-Yi Chiang (6):
  drm: bridge: dw-hdmi: Report connector status using callback
  ASoC: rockchip-max98090: Support usage with and without HDMI
  ASoC: rockchip_max98090: Optionally support HDMI use case
  ASoC: rockchip_max98090: Add HDMI jack support
  ARM: dts: rockchip: Add HDMI support to rk3288-veyron-analog-audio
  ARM: dts: rockchip: Add HDMI audio support to rk3288-veyron-mickey.dts

 .../bindings/sound/rockchip-max98090.txt      |  27 +-
 .../boot/dts/rk3288-veyron-analog-audio.dtsi  |   1 +
 arch/arm/boot/dts/rk3288-veyron-mickey.dts    |   7 +
 .../drm/bridge/synopsys/dw-hdmi-i2s-audio.c   |  11 +
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |  41 ++-
 include/drm/bridge/dw_hdmi.h                  |   4 +
 sound/soc/rockchip/Kconfig                    |   3 +-
 sound/soc/rockchip/rockchip_max98090.c        | 313 ++++++++++++++----
 8 files changed, 338 insertions(+), 69 deletions(-)

-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
