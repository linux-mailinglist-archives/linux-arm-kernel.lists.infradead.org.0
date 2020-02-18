Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F48F162C69
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 18:17:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gl00NUVck77FoiPIFRc01YdyfutmSPQfn9Mjbc+2AIo=; b=oEtoUAMFSUlz93
	Lr2nm1GW0hBeskzYDpe70fhRSrRlQRvp3ivBcPZxiFLVBlBU1b4/01MjwD3X8N27Aned72yp1ihq9
	XTK06uQ59vbrGnLU3oA+aLYmNBNdj7GQUZxbbr2vGwsFqRuNPEhicDCzwwdD/48fevBAAyE7mo1To
	qz8tOLxB06P9/3SatS3vVrmLKdi7SttWEgtLpwh1DVDNkrS3ein22CPiCYFNXdpKX/ufzeyrXlHZI
	nJeVtl4WWkUuwDi0xIftLpU7GxxpkOC4FkQwiDyFfI3y1PsGJLm2mhNpXaoDec8aLd6zS/H8xGPUF
	GxovBCuijAHf0RNaQGAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j46Ur-0006T2-GD; Tue, 18 Feb 2020 17:17:21 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j46SE-0002pa-R9
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 17:14:43 +0000
Received: from mwalle01.sab.local. (unknown [213.135.10.150])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id DE21623D06;
 Tue, 18 Feb 2020 18:14:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1582046071;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OXgmkwBe7DwnhUeIreA0ttrwVjYja06p6FlV/rhJKqk=;
 b=W1F6C5neEJoDK3sAJ3pc9pIEkKrKYg1nqZTLfOSMt7m6Zjmp4L0yCv7uSB1OqvaOhqRLdm
 PlFAlNH9of9ZZy6Wn6U3pay488h8FVFENksfsu/sXpkmOZU1AAG5PAj0I4rDX8SqLDPqXS
 Ak6yMISOie1SsWMqMuBE4lBHfJRvYzc=
From: Michael Walle <michael@walle.cc>
To: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/2] arm64: dts: ls1028a: add missing SPI nodes
Date: Tue, 18 Feb 2020 18:14:18 +0100
Message-Id: <20200218171418.18297-2-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200218171418.18297-1-michael@walle.cc>
References: <20200218171418.18297-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: DE21623D06
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 NEURAL_SPAM(0.00)[0.482]; DKIM_SIGNED(0.00)[];
 DBL_PROHIBIT(0.00)[0.32.167.96:email,0.32.50.48:email,0.32.89.64:email,0.32.11.32:email];
 RCPT_COUNT_SEVEN(0.00)[8]; MID_CONTAINS_FROM(1.00)[];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:12941, ipnet:213.135.0.0/19, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_091439_135419_25F9CFFA 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michael Walle <michael@walle.cc>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The LS1028A has three (dual) SPI controller. These are compatible with
the ones from the LS1021A. Add the nodes.

The third controller was tested on a custom board.

Signed-off-by: Michael Walle <michael@walle.cc>
---
changes since v1:
 - add "fsl,ls1028a-dspi" compatible string

 .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 0bf375ec959b..ef1e3867b3fb 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -290,6 +290,45 @@
 			status = "disabled";
 		};
 
+		dspi0: spi@2100000 {
+			compatible = "fsl,ls1028a-dspi", "fsl,ls1021a-v1.0-dspi";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0x0 0x2100000 0x0 0x10000>;
+			interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "dspi";
+			clocks = <&clockgen 4 1>;
+			spi-num-chipselects = <4>;
+			little-endian;
+			status = "disabled";
+		};
+
+		dspi1: spi@2110000 {
+			compatible = "fsl,ls1028a-dspi", "fsl,ls1021a-v1.0-dspi";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0x0 0x2110000 0x0 0x10000>;
+			interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "dspi";
+			clocks = <&clockgen 4 1>;
+			spi-num-chipselects = <4>;
+			little-endian;
+			status = "disabled";
+		};
+
+		dspi2: spi@2120000 {
+			compatible = "fsl,ls1028a-dspi", "fsl,ls1021a-v1.0-dspi";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0x0 0x2120000 0x0 0x10000>;
+			interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "dspi";
+			clocks = <&clockgen 4 1>;
+			spi-num-chipselects = <3>;
+			little-endian;
+			status = "disabled";
+		};
+
 		esdhc: mmc@2140000 {
 			compatible = "fsl,ls1028a-esdhc", "fsl,esdhc";
 			reg = <0x0 0x2140000 0x0 0x10000>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
