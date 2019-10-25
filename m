Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 362E5E4C4A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 15:32:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6EGj3xUVhh6x88XL1ituIuUj6frQUtHr2xq+FxspJJg=; b=qpb6f1errBNYd1
	/5ETdLZa5WYlgeidcCbZSAOA/GC9NYqwmyIcdwUmrguSScpB9ExSqela2brcHQrQSgU677xmtpYWK
	1XbNwGyabkLKUqdDe6slNKa9/Y3+pT3JAM0UhoylxFtO0fQl3GzT2mz2gEe2Z2gbHiCIw1lijfw4j
	aEe019XEh81ocZwKzHmOG8u5xmN7ufLJkfTVyUtbxLShY+skes1haGmgLXzykeJ1GW1/UeBQEcaAR
	4rE3boX+wuNOE+rlw0qDWEBpBqEedm25UACPUXPchsVxdESAikMWjETsgtl/LqP/JtqRDcIoQXWou
	3FXb2k/IVlTLZ5eKwuXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNzhc-0000Cw-27; Fri, 25 Oct 2019 13:32:28 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNzgW-0007sN-9x
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 13:31:23 +0000
Received: by mail-pf1-x442.google.com with SMTP id d13so542130pfq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 06:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oNSnTAXUPLhOggYZsXmByzoHissc2cQrcW1ijnP3ewc=;
 b=cgKZg2IA8rLE/Gb1Fea2/UKtImFx1r+3/oLrUJKGJkgq3mqfzGP0fCzY87EqP9S0+0
 WQXRy0BralqXwRQgIPwF2wZyUs5/mIyBfACB/94kBYzmDeud7Zq9bMrWbAL3xy6flbQs
 pc4pHa+WCeiKDem2XAefpAmHZf6J9Dozhans0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oNSnTAXUPLhOggYZsXmByzoHissc2cQrcW1ijnP3ewc=;
 b=QELh4/Xvz9xqprXRMidEjL0jp5yJxIop2/9vwc7qEoMZYFQ7JFfGM+9r4oJVeRqPH4
 ovUUvY5PoLqVX5OYP5l1xIZBbYaJCkz0dU7K9xZKDp/un2QqQhRH8Teavph2cqQjzBX9
 1RfILbD6XemYS5MsW6kj5lVAvBXZQQIzRxhgRDdhSrhHGfDPqCMZ41EPgFR2GxGNDOuc
 jTpRiwpwboFTxRmVlShuGTsi8nY4W76nsQMyDXW2E3tYikwsuJxiGnjC/H8BWFVNbQxS
 EXbt72+4Ts+ejj/+2Hv1eItnw3DdZBWfK0W4v8poT/fs1MBgnpQ6NKbWgjPe1tyBwO2v
 WG6A==
X-Gm-Message-State: APjAAAUYAtTJayPEs8DGvV6DdPUfXxWAvHKTn/WohRa4+7wpRdjKyyqW
 lt3lEKdc9BGQaeXvCX6Kl0GAdw==
X-Google-Smtp-Source: APXvYqzbwsXWBs3ky/vHamL+ysr3yMSuWsGovFl/YV0ZreeaOiOp90nD6ACzcZJAlWwB0QQOpZKsVA==
X-Received: by 2002:a63:4525:: with SMTP id s37mr4571578pga.148.1572010278731; 
 Fri, 25 Oct 2019 06:31:18 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id y36sm2379120pgk.66.2019.10.25.06.31.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Oct 2019 06:31:17 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 5/6] ARM: dts: rockchip: Add HDMI support to
 rk3288-veyron-analog-audio
Date: Fri, 25 Oct 2019 21:30:06 +0800
Message-Id: <20191025133007.11190-6-cychiang@chromium.org>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
In-Reply-To: <20191025133007.11190-1-cychiang@chromium.org>
References: <20191025133007.11190-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_063120_496384_688C0BD5 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

All boards using rk3288-veyron-analog-audio.dtsi have HDMI audio.
Specify the support of HDMI audio on machine driver using compatible
string so machine driver creates HDMI audio device.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi b/arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi
index 445270aa136e..92ea623401e9 100644
--- a/arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi
@@ -8,7 +8,7 @@
 
 / {
 	sound {
-		compatible = "rockchip,rockchip-audio-max98090";
+		compatible = "rockchip,rockchip-audio-max98090-hdmi";
 		pinctrl-names = "default";
 		pinctrl-0 = <&mic_det>, <&hp_det>;
 		rockchip,model = "VEYRON-I2S";
@@ -17,6 +17,7 @@
 		rockchip,hp-det-gpios = <&gpio6 RK_PA5 GPIO_ACTIVE_HIGH>;
 		rockchip,mic-det-gpios = <&gpio6 RK_PB3 GPIO_ACTIVE_LOW>;
 		rockchip,headset-codec = <&headsetcodec>;
+		rockchip,hdmi-codec = <&hdmi>;
 	};
 };
 
-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
