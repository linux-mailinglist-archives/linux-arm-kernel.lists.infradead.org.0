Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6A8631CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 09:22:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GqBT01fyo0xW4tfn0LhgN4QcL/YT1HiQovWXu/xN1U4=; b=iNc60K1Cmrm0nIwLwWUqhEkp3s
	H85XL7sl3HJH9+TS3Q7W9W6h6W9c86bOFTJyt34myUFjBB3taZUekKW4I8QlbktQwLuAEH3IqwqWy
	lZG8ZUGdB1DAj5xr5QRa7hdHR1UXu1E9ZYYirLhNiHlRbRdhMHfL30OnQuleDZYivdPKdb8O2zgfX
	96Np7o/UGf4Lg7MeHVgK967+yu5uCQbgow3W9kYt7pXrWMdr+ANfy+iQGueqUmFp/SqS9MD1S9cmV
	nCKQy1f3UacfzvXj3sggaUWcpa/7BUZ0H9y1HYNARbhR570vStLEHMIc9rFTfkwNAFUmUG5XdVsVC
	YEbcujJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkkRx-00023E-O7; Tue, 09 Jul 2019 07:22:06 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkkPX-0007T2-Iv
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 07:19:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1562656769; x=1565248769;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6ULrCnQ2EXZKEZiCe54JkHz/IplY+eiMTmG6iPQMJ3w=;
 b=Dod327QbHiD3fTXVvysNZkgKhhvSF+GEYBCpaJtt76MbBg+xYAqlpMrC7eBenIFV
 gXq+s8NZebDVow92tEVwR+88xIaHJ1CMHjH4FtgBWLoVQp2kpJssbanj6mWQsdHA
 VSMWIuTdbWqml5jS9gWyEsRdb+Dq0n7uyVexbLBBeYw=;
X-AuditID: c39127d2-193ff70000001aee-06-5d244001f5c9
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 5C.B0.06894.100442D5;
 Tue,  9 Jul 2019 09:19:29 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.16.21.122])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019070909192901-309710 ;
 Tue, 9 Jul 2019 09:19:29 +0200 
From: Stefan Riedmueller <s.riedmueller@phytec.de>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH 07/10] ARM: dts: imx6ul: phycore: Add eMMC at usdhc2
Date: Tue, 9 Jul 2019 09:19:24 +0200
Message-Id: <1562656767-273566-8-git-send-email-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562656767-273566-1-git-send-email-s.riedmueller@phytec.de>
References: <1562656767-273566-1-git-send-email-s.riedmueller@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 09.07.2019 09:19:29,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 09.07.2019 09:19:29, Serialize complete at 09.07.2019 09:19:29
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrPLMWRmVeSWpSXmKPExsWyRoCBS5fRQSXW4OcSWYv5R86xWjy86m+x
 aupOFotNj6+xWnT9WslscXnXHDaLpdcvMlk8uNjFYtG69wi7xd/tm1gsXmwRd+D2WDNvDaPH
 jrtLGD12zrrL7rFpVSebx+Yl9R4b3+1g8uj/a+DxeZNcAEcUl01Kak5mWWqRvl0CV8bbjoVM
 BVe5K85132drYLzN2cXIySEhYCLxZuk29i5GLg4hgR2MEtffbmOBcC4wSmzb/ZIJpIpNwEhi
 wbRGMFtEIFLi3fbfYB3MAnsYJaZdv87YxcjBISzgIvH+FhdIDYuAisScq5PYQGxeAQ+J9S8W
 MkJsk5O4ea6TGcTmFPCUOHrxF5gtBFRzecE0sMUSAo1MEtdeb4FqEJI4vfgs8wRGvgWMDKsY
 hXIzk7NTizKz9QoyKktSk/VSUjcxAgP18ET1SzsY++Z4HGJk4mA8xCjBwawkwrvPXTlWiDcl
 sbIqtSg/vqg0J7X4EKM0B4uSOO8G3pIwIYH0xJLU7NTUgtQimCwTB6dUA+Me1e9xeddCTUz7
 /GPWfEqxy1v/wNX6xc/iFy8DdZ76bZ1zWOBLWasSR8cSiZNn9RYa/Pu4NSaJMbHo6+fvcnfn
 HCpSc3Qv1bWZzjbL7JPB5pVT3rWrFDA8t7q6s1tzAuszvx4LdZNlM0Mczp9n0VRkDWk8+2bH
 I6ePgjvuF/seXGB04fulRgUlluKMREMt5qLiRAA22/WSQgIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_001935_891796_94E0BBEB 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: devicetree@vger.kernel.org, martyn.welch@collabora.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The phyCORE-i.MX 6UL/ULL now can have eMMC instead of the NAND flash
memory. Add the eMMC node and disable it by default so it can be enabled
in case it is populated.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi b/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
index de6ffbb0183c..09a313daedb8 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
@@ -90,6 +90,15 @@
 	status = "okay";
 };
 
+&usdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	bus-width = <8>;
+	no-1-8-v;
+	non-removable;
+	status = "disabled";
+};
+
 &iomuxc {
 	pinctrl_enet1: enet1grp {
 		fsl,pins = <
@@ -145,4 +154,19 @@
 		>;
 	};
 
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x170f9
+			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x100f9
+			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x170f9
+			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x170f9
+			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x170f9
+			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x170f9
+			MX6UL_PAD_NAND_DATA04__USDHC2_DATA4	0x170f9
+			MX6UL_PAD_NAND_DATA05__USDHC2_DATA5	0x170f9
+			MX6UL_PAD_NAND_DATA06__USDHC2_DATA6	0x170f9
+			MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x170f9
+		>;
+	};
+
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
