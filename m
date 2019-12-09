Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F60B116CC9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 13:01:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cDu5ojYHiPGxat1GpVUh4HbL5P62hnCELnM4918tdxM=; b=RYMdepk4f9AFPj
	8/gcO1jyWohwSfRGJOKTUP2cIcRnmHw85l1tOi7Au7XLR/p0kDoRYMLnZVkAvCYBqa62IhJ63CJBf
	CqlbGKj9dMXeCY8ZVLTIGQp3qqtfmRaDg+AZ8/18trVeOOaGJ/wYc4IxUU8dEMb2JSPjLecqezYnP
	YBsQNwy8LF8dWBB6Ru0ErhPBmFyR5ONbDwGY07iqyMHsciiX/OIo31UIsUVWT6EdsJG7bC6uITT0W
	TpY2XxPuwC6D7UBLN7TfHqqqakljTNP/V3sqsQcflscMbpUv+AK1rR5y63A7cCl/P6DwZayHWdKoM
	S/czh7M/ll589jul/gDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieHio-0005Lx-E4; Mon, 09 Dec 2019 12:01:02 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieHif-0005KU-G6
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 12:00:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8+8thKURUzCP/k4obrtyjj4C8ur3ZSOeZBOtDAyzwxs=; b=exPaQpSiFLPjwQonUDlLKUHfA3
 rkYWjOKfHN9+DZIeQzZpbQULbTTD8ymHqY8hawcmSwdkIphnx9mKFptQ8fdzCi+OepEnejiECBX7t
 tPbaIXho9p30yIHEZw9zPxHf+zr4gTrsq1m85P5UhbYE9s6YSJzgaUOcIXCMZbZAJWHvXs9PP9pUs
 wgjB41paa4S5qZXS9wDXpMob1LdnctKpeXbRHjdHQwWNcGwKlSbbbmwQvPy48rqsemWm77J+g4mt2
 ESbuPYT+qM3YfjU8d9bADRs842COo5mNGrmFDDQ+SOJvh8qmlwy1Vaw/7RK+WWsLO7qX3D6z6dFQw
 RntejQGw==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2002:4e20:1eda:1:222:68ff:fe15:37dd]:49966 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1ieHiQ-0002ns-25; Mon, 09 Dec 2019 12:00:38 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1ieHiP-0004wT-2O; Mon, 09 Dec 2019 12:00:37 +0000
In-Reply-To: <20191209120010.GG25745@shell.armlinux.org.uk>
References: <20191209120010.GG25745@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 1/2] arm64: dts: lx2160a: add MDIO descriptions
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1ieHiP-0004wT-2O@rmk-PC.armlinux.org.uk>
Date: Mon, 09 Dec 2019 12:00:37 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_040053_566928_ECAC356A 
X-CRM114-Status: UNSURE (   7.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jon Nettleton <jon@solid-run.com>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Rabeeh Khoury <rabeeh@solid-run.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add MDIO descriptions to the lx2160a dtsi file, so we can use them in
the SolidRun Clearfog CX platform.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
index 0bd98f179bfa..617e1f1a2339 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
@@ -863,6 +863,26 @@
 			fsl,extts-fifo;
 		};
 
+		emdio1: mdio@8b96000 {
+			compatible = "fsl,fman-memac-mdio";
+			reg = <0x00 0x8b96000 0x00 0x1000>;
+			interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
+			little-endian;
+			#address-cells = <0x01>;
+			#size-cells = <0x00>;
+			status = "disabled";
+		};
+
+		emdio2: mdio@8b97000 {
+			compatible = "fsl,fman-memac-mdio";
+			reg = <0x00 0x8b97000 0x00 0x1000>;
+			interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
+			little-endian;
+			#address-cells = <0x01>;
+			#size-cells = <0x00>;
+			status = "disabled";
+		};
+
 		fsl_mc: fsl-mc@80c000000 {
 			compatible = "fsl,qoriq-mc";
 			reg = <0x00000008 0x0c000000 0 0x40>,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
