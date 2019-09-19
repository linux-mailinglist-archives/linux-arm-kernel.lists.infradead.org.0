Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CECFB7B39
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 15:55:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=01g2PqkhPfVAfKtmyO/67FqoHYAZCVgYISBor5WAwQY=; b=EgJ58XDTjfa6Nf
	AsYXki183A9Y3j9pR9kczIX/RpacpVvUTOmZtHp1bjoscR+cQg5VnOip1v7ALhtVsVaF4a62kFtZ3
	Ev6Xs7IzGSI9HBJZPAQ3SYIMPS1pLHPyyKgbbNbuCL7PgSOH8W3ljhy9/1pxVwgwtbKNWCLcy35jG
	PE1EhX5id+fE/XvKiPxgWj0goAa5Pehr7025zrVqu5WIjxH8cUssjIK+HT+eNn1Fghoh0vvOOJ+/D
	JAIEomMBC9vfDJ3JlyMc0tInXNrYYh9Xiade8P0ccNRTKMdVAjmhOn9Ds8vRfSUYLK1ZE4pJssj5k
	7jeOoY73vaCoZL/UBFRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAwu3-0001bq-1Y; Thu, 19 Sep 2019 13:55:23 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAwtm-0000vv-1Z
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 13:55:07 +0000
Received: by mail-pg1-x542.google.com with SMTP id c17so1968946pgg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 06:55:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QcejNC9fZ/NTUQ3FSm9GGJHJUw8LFfPEgVCIpwJsA9I=;
 b=FmYK84RyOgnliQ31WHT/B2X1rhvCHXNKlvyGmlVRO6Gpnzh/yL+0IWnFuePQCs0YK7
 +EYn5B+vPDFY2t1doWxyw/Wd/JDH+PBoa7As7ehNNs/LaWfDv5hH9QpdJZvm+Yb2diYP
 DvCuozGD+FhcOyRrTAaTNxWnzHPNP9l0BEObg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QcejNC9fZ/NTUQ3FSm9GGJHJUw8LFfPEgVCIpwJsA9I=;
 b=qYjRBw8Trz0rbdQ3Rta+yaXE3UTahK0OajzmxTQQlaOxleXrLK0KIMulOowJqBLkPU
 heZvANtkntXSXkCtYtvfnuQ0r+3VODDKLSK4pcdr27/uaa34dKc3VbnSkxDA8r1nCTAo
 6QPDS1N3gWhzbtVbcUpNd4A4LuVSDFmjwMT9+aRJzw/Pm2xmw3FY/oghRbMBOyAw+F0W
 2pwiein/lfegrHC0ARN2xwZkNmmtCoJKD1e5hCTAbe9qvDiVSHAdnT6BPDNYvQSFbvVM
 C6gWFuICZFbzdJKf7ptIHBOQ+Gr/tn0l/ruuOz3Hl8Of5nsBSKrzPyi8e2sXYmx7bmIl
 +NOA==
X-Gm-Message-State: APjAAAXXlClwgdw5TS9tWnfeJs/JkVe3aNpJmFSbC3jt9N4wD6XtUcHB
 pGBDQ2N+nc02QW5NVFw4MopMkg==
X-Google-Smtp-Source: APXvYqwzVnj7vxmA6CmoajQ5DhGoNUc4s8peBeQOyXU+7fwt6n3lmQmFbq+8zRi0BN2hVeUmT9gckw==
X-Received: by 2002:a17:90a:9dc1:: with SMTP id
 x1mr3790773pjv.98.1568901304488; 
 Thu, 19 Sep 2019 06:55:04 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id o195sm13065184pfg.21.2019.09.19.06.55.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Sep 2019 06:55:03 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v7 0/4] Add HDMI jack support on RK3288
Date: Thu, 19 Sep 2019 21:54:46 +0800
Message-Id: <20190919135450.62309-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.23.0.237.gc6a4ce50a0-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_065506_104932_A53C5757 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Liam Girdwood <lgirdwood@gmail.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Takashi Iwai <tiwai@suse.com>,
 linux-rockchip@lists.infradead.org, dgreid@chromium.org,
 Cheng-Yi Chiang <cychiang@chromium.org>, tzungbi@chromium.org,
 Jonas Karlman <jonas@kwiboo.se>, Russell King <rmk+kernel@armlinux.org.uk>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 dianders@chromium.org, Daniel Vetter <daniel@ffwll.ch>
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

https://patchwork.kernel.org/patch/11047447

has been picked up by Mark Brown in ASoC tree for-5.4 branch.

Changes from v6 to v7:

1. rockchip_max98090: Use phandle of HDMI from DTS to find
   codec_dai. With this we don't need to set fixed id for the
   created hdmi-audio-codec device.

Cheng-Yi Chiang (4):
  drm: bridge: dw-hdmi: Report connector status using callback
  ASoC: rockchip-max98090: Add description for rockchip,hdmi-codec
  ASoC: rockchip_max98090: Add dai_link for HDMI
  ASoC: rockchip_max98090: Add HDMI jack support

 .../bindings/sound/rockchip-max98090.txt      |   2 +
 .../boot/dts/rk3288-veyron-analog-audio.dtsi  |   1 +
 .../drm/bridge/synopsys/dw-hdmi-i2s-audio.c   |  11 ++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |  41 ++++-
 include/drm/bridge/dw_hdmi.h                  |   4 +
 sound/soc/rockchip/Kconfig                    |   3 +-
 sound/soc/rockchip/rockchip_max98090.c        | 149 ++++++++++++++----
 7 files changed, 182 insertions(+), 29 deletions(-)

-- 
2.23.0.237.gc6a4ce50a0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
