Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2601C35CD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 11:31:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sOdj/ArPA0PCBeiJVCYTygqkG3DiCQfOevS3mhDd5Rw=; b=CId/mZX/4iEV69
	3nG0L0xyQyBRG+lpMxRK5nBQLrCS8usQJvC2O2BOzooFedsjqTJU/x8vmkuj823PIvq4VfzRwKyCZ
	GrT8ytsrm17HMQlTwiDhlBcFl75y06pJy0icP2uUC5wwS4qzgzAFJfuOD5vNRyA4ZdKY8F+ytAJtV
	+YYBN9TxiwlLe4CqvA0sGt4ESL/MPrkGaZKI9szk8B9u4iCuCmycIf/AVuuUrp+82CRlahbqj97Gf
	ScVlHCxfsnm6qyLq1CJt3Iac0lbv8RDPIPSBUMvf77Hc2euph2susBHb1PTmYXVW7u503Y2jmj9w1
	9Is0PzobdreWOVYTLXow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVXRq-00068K-9Q; Mon, 04 May 2020 09:31:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVXQj-0005Ee-5D; Mon, 04 May 2020 09:30:36 +0000
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 97460206D9;
 Mon,  4 May 2020 09:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588584627;
 bh=+BYu54UZb1Hn39wdF2PjZDNEdRe0NffuWafcZDhnJco=;
 h=From:To:Cc:Subject:Date:From;
 b=uPyrpH8/aA7GlqYfmtmKUC8nrR1WumCxFk2ou/QWK9N2hkKoSg0yEQpbVqpwcwurd
 ECe3PSkwSzkdtBsbJy91NWmjMJse+5jSs6v70glXNnurUP3J1NZI2APJkZSNxFDGMZ
 ILP+atlr2SJ4Rqo/DCPWbsePjXXw2B9aIjLHm0zI=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jVXQf-000K77-18; Mon, 04 May 2020 11:30:25 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH] docs: dt: fix broken links due to txt->yaml renames
Date: Mon,  4 May 2020 11:30:20 +0200
Message-Id: <967df5c3303b478b76199d4379fe40f5094f3f9b.1588584538.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_023031_232602_47FAFB2A 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alsa-devel@alsa-project.org, Olivier Moysan <olivier.moysan@st.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Sandy Huang <hjc@rock-chips.com>, Andrzej Hajda <a.hajda@samsung.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-rockchip@lists.infradead.org, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 Jyri Sarha <jsarha@ti.com>, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are some new broken doc links due to yaml renames
at DT. Developers should really run:

	./scripts/documentation-file-ref-check

in order to solve those issues while submitting patches.
This tool can even fix most of the issues with:

	./scripts/documentation-file-ref-check --fix

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---

PS.: This patch is against today's linux-next.


 .../devicetree/bindings/display/bridge/sii902x.txt          | 2 +-
 .../devicetree/bindings/display/rockchip/rockchip-drm.yaml  | 2 +-
 .../devicetree/bindings/net/mediatek-bluetooth.txt          | 2 +-
 .../devicetree/bindings/sound/audio-graph-card.txt          | 2 +-
 .../devicetree/bindings/sound/st,sti-asoc-card.txt          | 2 +-
 Documentation/mips/ingenic-tcu.rst                          | 2 +-
 MAINTAINERS                                                 | 6 +++---
 7 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/sii902x.txt b/Documentation/devicetree/bindings/display/bridge/sii902x.txt
index 6e14e087c0d0..0d1db3f9da84 100644
--- a/Documentation/devicetree/bindings/display/bridge/sii902x.txt
+++ b/Documentation/devicetree/bindings/display/bridge/sii902x.txt
@@ -37,7 +37,7 @@ Optional properties:
 	simple-card or audio-graph-card binding. See their binding
 	documents on how to describe the way the sii902x device is
 	connected to the rest of the audio system:
-	Documentation/devicetree/bindings/sound/simple-card.txt
+	Documentation/devicetree/bindings/sound/simple-card.yaml
 	Documentation/devicetree/bindings/sound/audio-graph-card.txt
 	Note: In case of the audio-graph-card binding the used port
 	index should be 3.
diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
index ec8ae742d4da..7204da5eb4c5 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
@@ -24,7 +24,7 @@ properties:
     description: |
       Should contain a list of phandles pointing to display interface port
       of vop devices. vop definitions as defined in
-      Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
+      Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
 
 required:
   - compatible
diff --git a/Documentation/devicetree/bindings/net/mediatek-bluetooth.txt b/Documentation/devicetree/bindings/net/mediatek-bluetooth.txt
index 219bcbd0d344..9ef5bacda8c1 100644
--- a/Documentation/devicetree/bindings/net/mediatek-bluetooth.txt
+++ b/Documentation/devicetree/bindings/net/mediatek-bluetooth.txt
@@ -3,7 +3,7 @@ MediaTek SoC built-in Bluetooth Devices
 
 This device is a serial attached device to BTIF device and thus it must be a
 child node of the serial node with BTIF. The dt-bindings details for BTIF
-device can be known via Documentation/devicetree/bindings/serial/8250.txt.
+device can be known via Documentation/devicetree/bindings/serial/8250.yaml.
 
 Required properties:
 
diff --git a/Documentation/devicetree/bindings/sound/audio-graph-card.txt b/Documentation/devicetree/bindings/sound/audio-graph-card.txt
index 269682619a70..d5f6919a2d69 100644
--- a/Documentation/devicetree/bindings/sound/audio-graph-card.txt
+++ b/Documentation/devicetree/bindings/sound/audio-graph-card.txt
@@ -5,7 +5,7 @@ It is based on common bindings for device graphs.
 see ${LINUX}/Documentation/devicetree/bindings/graph.txt
 
 Basically, Audio Graph Card property is same as Simple Card.
-see ${LINUX}/Documentation/devicetree/bindings/sound/simple-card.txt
+see ${LINUX}/Documentation/devicetree/bindings/sound/simple-card.yaml
 
 Below are same as Simple-Card.
 
diff --git a/Documentation/devicetree/bindings/sound/st,sti-asoc-card.txt b/Documentation/devicetree/bindings/sound/st,sti-asoc-card.txt
index 4d51f3f5ea98..a6ffcdec6f6a 100644
--- a/Documentation/devicetree/bindings/sound/st,sti-asoc-card.txt
+++ b/Documentation/devicetree/bindings/sound/st,sti-asoc-card.txt
@@ -5,7 +5,7 @@ codec or external codecs.
 
 sti sound drivers allows to expose sti SoC audio interface through the
 generic ASoC simple card. For details about sound card declaration please refer to
-Documentation/devicetree/bindings/sound/simple-card.txt.
+Documentation/devicetree/bindings/sound/simple-card.yaml.
 
 1) sti-uniperiph-dai: audio dai device.
 ---------------------------------------
diff --git a/Documentation/mips/ingenic-tcu.rst b/Documentation/mips/ingenic-tcu.rst
index c5a646b14450..2b75760619b4 100644
--- a/Documentation/mips/ingenic-tcu.rst
+++ b/Documentation/mips/ingenic-tcu.rst
@@ -68,4 +68,4 @@ and frameworks can be controlled from the same registers, all of these
 drivers access their registers through the same regmap.
 
 For more information regarding the devicetree bindings of the TCU drivers,
-have a look at Documentation/devicetree/bindings/timer/ingenic,tcu.txt.
+have a look at Documentation/devicetree/bindings/timer/ingenic,tcu.yaml.
diff --git a/MAINTAINERS b/MAINTAINERS
index b6ec0b3c3125..b70842425302 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3911,7 +3911,7 @@ L:	linux-crypto@vger.kernel.org
 S:	Supported
 F:	drivers/char/hw_random/cctrng.c
 F:	drivers/char/hw_random/cctrng.h
-F:	Documentation/devicetree/bindings/rng/arm-cctrng.txt
+F:	Documentation/devicetree/bindings/rng/arm-cctrng.yaml
 W:	https://developer.arm.com/products/system-ip/trustzone-cryptocell/cryptocell-700-family
 
 CEC FRAMEWORK
@@ -5446,7 +5446,7 @@ F:	include/uapi/drm/r128_drm.h
 DRM DRIVER FOR RAYDIUM RM67191 PANELS
 M:	Robert Chiras <robert.chiras@nxp.com>
 S:	Maintained
-F:	Documentation/devicetree/bindings/display/panel/raydium,rm67191.txt
+F:	Documentation/devicetree/bindings/display/panel/raydium,rm67191.yaml
 F:	drivers/gpu/drm/panel/panel-raydium-rm67191.c
 
 DRM DRIVER FOR ROCKTECH JH057N00900 PANELS
@@ -16294,7 +16294,7 @@ M:	Hoan Tran <hoan@os.amperecomputing.com>
 M:	Serge Semin <fancer.lancer@gmail.com>
 L:	linux-gpio@vger.kernel.org
 S:	Maintained
-F:	Documentation/devicetree/bindings/gpio/snps-dwapb-gpio.txt
+F:	Documentation/devicetree/bindings/gpio/snps,dw-apb-gpio.yaml
 F:	drivers/gpio/gpio-dwapb.c
 
 SYNOPSYS DESIGNWARE AXI DMAC DRIVER
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
