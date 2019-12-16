Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E05B12060B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 13:43:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9zT0t/mZ+Ixqj3a3xW5HsECIJ/Qo7rdRxZHB0jSh29Y=; b=j4Tw3wA0/YUTvT
	Y3lNhXGR2w6mW6accr63qeXtTUUFxbv7HqBvI8sZ6lVb1gk5yZ+Y1G3DGhgTLC9HUwiN3XWEoc9cm
	+FLnDEgI/xKSw0iiNM9X4nCx6wX/qCIzgEspWVlLI3HWQVmve6JYMhe1+u4yRUG+aGFFO+w83gb4x
	+ZHU3piXB3SxcQRElcq8ghFZyx27LRy4mHTNrLuwSNx9aJdl8vEZqEbd6WHkl3FikzjjYJvu1Jowf
	hSe+xgkRLUD1JcgC6im12rvb3EfMi1a5KeCdT4gXLNPjaApLUDXgqwwthHZOwGjOcFwY5RUEbPOmH
	e05V7TiTv5Yviarp3FOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igpj1-0007d2-6C; Mon, 16 Dec 2019 12:43:47 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igpip-0007Kq-AK
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 12:43:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8ZlRStca0Y9D95lcKR6/7QOox2XpAHGpd5QG6VTQ8ks=; b=FkKtLdhWjhT0KpjsX5G9GAzZtv
 Tz8hZhbb6s9T9pJfVyGVH23zyUr7pAkTjyes+DsHm6b+w4jIAGqNv4rQUI8MDmKvAMqg5Y0hCn4Dc
 sDe+ArMvueHz5EJtvOoZBi1dOONFG723JXYYHCFk6d/XYCfu2+RO5ywD9k6EL6moJDVie0RNeusAD
 UOPerjAihMopBUPTaTyaz6QpxbJq+OYEqyizS73qpk6ho0/h5XPA1iodKrTcAPi8Vf1sCBJsSzlhS
 uh6V5cET0AsrLgR0j/uvscfKphjoqdzgd5IJHPnkHDka6B8WCSDIt5Au59PRELZJYharVni3yrsTH
 ufAQEMrw==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:35812 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1igpge-0007Ql-H3; Mon, 16 Dec 2019 12:41:20 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1igpgd-0008Qe-TQ; Mon, 16 Dec 2019 12:41:19 +0000
In-Reply-To: <20191216124042.GH25745@shell.armlinux.org.uk>
References: <20191216124042.GH25745@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2 1/2] arm64: dts: lx2160a: add emdio2 node
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1igpgd-0008Qe-TQ@rmk-PC.armlinux.org.uk>
Date: Mon, 16 Dec 2019 12:41:19 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_044335_361366_1AFE37B2 
X-CRM114-Status: GOOD (  10.47  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Add a description for the emdio2 controller to the lx2160a dtsi file,
so we can use it in the SolidRun Clearfog CX platform.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
index 1d09b3c650f1..af650e123eae 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
@@ -874,6 +874,16 @@
 			status = "disabled";
 		};
 
+		emdio2: mdio@8b97000 {
+			compatible = "fsl,fman-memac-mdio";
+			reg = <0x0 0x8b97000 0x0 0x1000>;
+			interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
+			little-endian;
+			#address-cells = <1>;
+			#size-cells = <0>;
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
