Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AADDB169E81
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 07:33:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vg/rg+iDUpFPJhmhUwR2mBaWrgnVJmS8WL8DMejM1LA=; b=Le75p1GEDCErXyaYlCt5oqT/8U
	6o1jvTl1uNKvnKfYK8yZSx6aKfH5F3r53JSYwJSyRvuKPVQ0w33UuZSr1YmjRfArNtgj1/2Qplwcn
	R5SabYZ7So7muzuuYrNHwbeIUU8RGDRqMOynKoGykVaZgiTKTO0meN0rUruDekdqmK7GuELphnFx/
	Yb5jzUqaJ0pbSya5r7IJu3YeKZCmo5+PkY+rbthirG9ocuhjrBsPJkF+FFMDLk5ZzIll47cZ/7yn5
	BN3zwx8Q3+4riAmZc7ZTlCS/aVN70lRuwyzvZKmdOtFOBWxuCYmXlMR2Daq6n8ce5y9zHsrwME9zZ
	J8wP7T4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j67Iu-0007FO-BM; Mon, 24 Feb 2020 06:33:20 +0000
Received: from comms.puri.sm ([159.203.221.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j67HH-0005hE-OC
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 06:31:41 +0000
Received: from localhost (localhost [127.0.0.1])
 by comms.puri.sm (Postfix) with ESMTP id E0285E03E5;
 Sun, 23 Feb 2020 22:31:08 -0800 (PST)
Received: from comms.puri.sm ([127.0.0.1])
 by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e-eYFGbcS2OL; Sun, 23 Feb 2020 22:31:08 -0800 (PST)
From: Martin Kepplinger <martin.kepplinger@puri.sm>
To: robh@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de
Subject: [PATCH v3 6/8] arm64: dts: librem5-devkit: allow the redpine card to
 be removed
Date: Mon, 24 Feb 2020 07:29:15 +0100
Message-Id: <20200224062917.4895-7-martin.kepplinger@puri.sm>
In-Reply-To: <20200224062917.4895-1-martin.kepplinger@puri.sm>
References: <20200224062917.4895-1-martin.kepplinger@puri.sm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_223139_952829_8B5DAFEB 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [159.203.221.185 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, kernel@puri.sm, Anson.Huang@nxp.com,
 Martin Kepplinger <martin.kepplinger@puri.sm>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Angus Ainslie (Purism)" <angus@akkea.ca>

By adding broken-cd to the usdhc2 stanza the Redpine card can be
detected when the HKS is turned off and on.

Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
---
 arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
index 6ba65a807b25..12a91d2d36db 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -947,7 +947,7 @@
 	bus-width = <4>;
 	vmmc-supply = <&reg_usdhc2_vmmc>;
 	power-supply = <&wifi_pwr_en>;
-	non-removable;
+	broken-cd;
 	disable-wp;
 	cap-sdio-irq;
 	keep-power-in-suspend;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
