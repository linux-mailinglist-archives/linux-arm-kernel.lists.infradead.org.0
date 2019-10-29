Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E415E8513
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 11:06:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=657JfzQ3WO3EVj30GTlBH8Nx9QECBQlyxe3rdShX0Hs=; b=PAJ
	kh33WplZzcohBYkBbq3nn2YTB96+jGIe0vnfWYVitcxqMYNYB+bjtOsnssKr0gvhCLxUWWSyQwmZX
	dLMqIeIF/mOuNRQOx1IZa7CMbqNnZIMVLKodwAOhYBlPcPiUT0XzbKkPFYFI+k65CZabO8Uk5kJMg
	V0tlaBrlXtRdm3VOaMWAzwpys/RjCbYfSxRjYJ6E3QmurppveKzrGxk7zcL7t8jtHC8qLlXQ7AE4N
	30btaAM8+XJtUmFy/j2DKZEq9WyFIsyn979EeGz+0AfCKj1H4xUW2cB80xbJQMc22SohI6Z8+/+tU
	SwuIwDwJ5vTULoRCUtDGL4GLzgXqK8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPOOU-0005FZ-Ra; Tue, 29 Oct 2019 10:06:30 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPOOM-0005EM-IB
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 10:06:24 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id DAF571A09BE;
 Tue, 29 Oct 2019 11:06:17 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5A2F41A09CC;
 Tue, 29 Oct 2019 11:06:13 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 8253840307;
 Tue, 29 Oct 2019 18:06:07 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: imx7ulp-evk: Use APLL_PFD1 as usdhc's clock source
Date: Tue, 29 Oct 2019 18:02:52 +0800
Message-Id: <1572343372-6303-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_030622_741497_95CB395E 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX7ULP does NOT support runtime switching clock source for PCC,
APLL_PFD1 by default is usdhc's clock source, so just use it
in kernel to avoid below kernel dump during kernel boot up and
make sure kernel can boot up with SD root file-system.

[    3.035892] Loading compiled-in X.509 certificates
[    3.136301] sdhci-esdhc-imx 40370000.mmc: Got CD GPIO
[    3.242886] mmc0: Reset 0x1 never completed.
[    3.247190] mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
[    3.253751] mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00000002
[    3.260218] mmc0: sdhci: Blk size:  0x00000200 | Blk cnt:  0x00000001
[    3.266775] mmc0: sdhci: Argument:  0x00009a64 | Trn mode: 0x00000000
[    3.273333] mmc0: sdhci: Present:   0x00088088 | Host ctl: 0x00000002
[    3.279794] mmc0: sdhci: Power:     0x00000000 | Blk gap:  0x00000080
[    3.286350] mmc0: sdhci: Wake-up:   0x00000008 | Clock:    0x0000007f
[    3.292901] mmc0: sdhci: Timeout:   0x0000008c | Int stat: 0x00000000
[    3.299364] mmc0: sdhci: Int enab:  0x007f010b | Sig enab: 0x00000000
[    3.305918] mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00008402
[    3.312471] mmc0: sdhci: Caps:      0x07eb0000 | Caps_1:   0x0000b400
[    3.318934] mmc0: sdhci: Cmd:       0x0000113a | Max curr: 0x00ffffff
[    3.325488] mmc0: sdhci: Resp[0]:   0x00000900 | Resp[1]:  0x0039b37f
[    3.332040] mmc0: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x00400e00
[    3.338501] mmc0: sdhci: Host ctl2: 0x00000000
[    3.343051] mmc0: sdhci: ============================================

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx7ulp-evk.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx7ulp-evk.dts b/arch/arm/boot/dts/imx7ulp-evk.dts
index f1093d2..a863a2b 100644
--- a/arch/arm/boot/dts/imx7ulp-evk.dts
+++ b/arch/arm/boot/dts/imx7ulp-evk.dts
@@ -78,7 +78,7 @@
 
 &usdhc0 {
 	assigned-clocks = <&pcc2 IMX7ULP_CLK_USDHC0>;
-	assigned-clock-parents = <&scg1 IMX7ULP_CLK_NIC1_DIV>;
+	assigned-clock-parents = <&scg1 IMX7ULP_CLK_APLL_PFD1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc0>;
 	cd-gpios = <&gpio_ptc 10 GPIO_ACTIVE_LOW>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
