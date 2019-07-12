Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7B866A9D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 12:05:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bBzB8v9SiBO64SLvC3o72a2Ba/q6VXMK3N3p6055B40=; b=s+yJ3enxq7oOmI
	0zhVq4rp73EactYlefZlwoyZgesGJDF+BPjX5Mnk4KmoMimw7G39ZMUrOwOxQhIdMlBov4usVvR3t
	rKdZ3kCoWdqFb1YQr80N2Mw+VYc+0J9dqlsIVP28sYbPONfFNhYkT2be9XjK1HKMU9+6kmpuwqlEj
	4zospxJl0MctGW83hDPHaHgJHlAPNIGjoe/fioiHZY9e/Ldcd6fkQKMeYatAZvnXDJCgUuLMniBWj
	Cln1LzyVET2/Of+VTMCLGD+jsb3V4jiardnF4F3axAOUN99MoSlyjysbVMi56sH8aNcYjolFrOeHJ
	y6LPopLuiXlyEJfwKiYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlsQX-0007cr-5F; Fri, 12 Jul 2019 10:05:17 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlsQC-0007bO-Ou
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 10:04:58 +0000
Received: by mail-pf1-x443.google.com with SMTP id b13so4107997pfo.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 03:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9+TShMWhLwN8SmBiAr6bXkiOWeqpu2JFdqFTK8VDDlU=;
 b=h5gkWOale1JKC7q3JJ5JGsYnwMF4rXg9ycUc8TyqSYhtPfDqhRXMww1hVtAmCVuclM
 LrU9dKHZvAhoV+SbdlPevRw4Qlz2t+djP0eaF314TPHOrJvU4wceLVI+L6oX3xV1R5CI
 ZLa7NiOko2q8t5XjCYGa2NgeIkOrLKeiErpTU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9+TShMWhLwN8SmBiAr6bXkiOWeqpu2JFdqFTK8VDDlU=;
 b=Pxlu1kd4ouik8gc23VANFrJUj7iF8xMBL3JzZep8EdMJ3FbhHoCDTp5zkFteVaSiCC
 2lUosxndVmdAsgBiGw3jehhX4ybYaXIwx0mrBjpE0KZ0dykaTDfdMeps3/wRuEWvYDQz
 X4hcQ8aDs/upeSj0KJNpabsh6bJqqUlGgyRmqT6QDCyhvqmU3XSBHMjzwq//7IC8J5yj
 2BQK/zPoYlcul92iCmWiQtd0vwB5WQa1OHvm8DyIirmQj5G1YZwDi8U21ZI9HmX1YxOG
 N23jgjMscXycKqrc6rrqrm59FCElLWcSn9z+rJE30e/qGHn3iubJ2LleXk6TDLUcc8ke
 TeEg==
X-Gm-Message-State: APjAAAVrOqWgb8F4e7AN6ab8mUCJ4xA+/R3M208KD3RDv6g3uiyAg9y6
 7weL4w1a3mKvVbYCAG+w2FquZA==
X-Google-Smtp-Source: APXvYqwATmqfXzDCdurIM9yTmyaXPTBgWhe7CgwnZbiAoCvMtazQjnDbkVjRZW0J7jvst+vKxiVZOQ==
X-Received: by 2002:a63:e807:: with SMTP id s7mr9495461pgh.194.1562925895786; 
 Fri, 12 Jul 2019 03:04:55 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id v3sm7501412pfm.188.2019.07.12.03.04.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Jul 2019 03:04:54 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/5] Add HDMI jack support on RK3288
Date: Fri, 12 Jul 2019 18:04:38 +0800
Message-Id: <20190712100443.221322-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_030456_835219_92D7E705 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Changes from v2 to v3:
- dw-hdmi-i2s-audio.c: Use fixed ID instead of auto ID.
- rk3288_hdmi_analog.c: Use the fixed name hdmi-audio-codec for codec device.
- rockchip_max98090: Use the fixed name hdmi-audio-codec for codec device.
- rockchip_max98090: Fix the dependency of hdmi-codec in Kconfig.

Cheng-Yi Chiang (5):
  ASoC: hdmi-codec: Add an op to set callback function for plug event
  drm: bridge: dw-hdmi: Report connector status using callback
  drm: dw-hdmi-i2s: Use fixed id for codec device
  ASoC: rockchip_max98090: Add dai_link for HDMI
  FROMLIST: ASoC: rockchip_max98090: Add HDMI jack support

 .../gpu/drm/bridge/synopsys/dw-hdmi-audio.h   |   3 +
 .../drm/bridge/synopsys/dw-hdmi-i2s-audio.c   |  12 +-
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |  55 ++++++++-
 include/sound/hdmi-codec.h                    |  16 +++
 sound/soc/codecs/hdmi-codec.c                 |  45 +++++++
 sound/soc/rockchip/Kconfig                    |   3 +-
 sound/soc/rockchip/rk3288_hdmi_analog.c       |   3 +-
 sound/soc/rockchip/rockchip_max98090.c        | 116 ++++++++++++++----
 8 files changed, 226 insertions(+), 27 deletions(-)

-- 
2.22.0.510.g264f2c817a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
