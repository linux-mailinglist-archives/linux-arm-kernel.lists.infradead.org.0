Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F010631CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 09:21:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4mKmTrBLsldZAcVq5wJzX2R59fSx7Cid0jqcTdSy6yE=; b=BSkb0qAIRHAH5+A82L5/I8qcCd
	jeNduRSjr9P5YXFgbvbvGNTmhsZmd9woTo/11mUBaVvuDqoXRLsb6hBNUj5qY8G4WLDMjKvJod6bI
	t/GfXe+F0kl8ij+r92rSRoeYgsqzgC0BCixfKNplB9sy+evW9a/5OFH/qXFIPskU9LZlZXjn/p62f
	ab1QjnO+19mXGzEp/2ePg8dl1arNuzWjDDgygXJ60wfDWXs8daG3Ks0HqThkjLBIUmkn9uLnz5inm
	bYo9bioIj3jsH0LgGgemRS/BvzZeNZv21D4mGtZEac0rmD9Nj5dQspdOc7dOFzQTHydz5ka+EedXj
	w6WKFHKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkkRc-0001lU-Oc; Tue, 09 Jul 2019 07:21:44 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkkPX-0007T1-Ce
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 07:19:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1562656769; x=1565248769;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z/Ce/mLF65vxqmXovjOXbBz9hT5T4pHaAptHuYI5I90=;
 b=Bk59+xg0GUKvuP9xK1qEx1MPp1VeUT6dI/VlX+NYBGGM0x0Y9L2RF5S76F4xQecB
 4V/I256BmfEZt7QKDfbNqVT7QkS8GCMn8kMKy7nCwU1gRfllgdlE39MGHvYg30Ir
 DAVyvQbj10T93RBSGb3RZ70VSjqjoHS5pZ3Wh4EhjLY=;
X-AuditID: c39127d2-17dff70000001aee-05-5d244001f440
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 9B.B0.06894.100442D5;
 Tue,  9 Jul 2019 09:19:29 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.16.21.122])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019070909192876-309709 ;
 Tue, 9 Jul 2019 09:19:28 +0200 
From: Stefan Riedmueller <s.riedmueller@phytec.de>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH 06/10] ARM: dts: imx6ul: segin: Only enable NAND if it is
 populated
Date: Tue, 9 Jul 2019 09:19:23 +0200
Message-Id: <1562656767-273566-7-git-send-email-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562656767-273566-1-git-send-email-s.riedmueller@phytec.de>
References: <1562656767-273566-1-git-send-email-s.riedmueller@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 09.07.2019 09:19:28,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 09.07.2019 09:19:29, Serialize complete at 09.07.2019 09:19:29
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrPLMWRmVeSWpSXmKPExsWyRoCBS5fRQSXW4PJBTov5R86xWjy86m+x
 aupOFotNj6+xWnT9WslscXnXHDaLpdcvMlk8uNjFYtG69wi7xd/tm1gsXmwRd+D2WDNvDaPH
 jrtLGD12zrrL7rFpVSebx+Yl9R4b3+1g8uj/a+DxeZNcAEcUl01Kak5mWWqRvl0CV8bEmauY
 C9ZxVRzZvZW5gfElRxcjB4eEgInEth1cXYxcHEICOxglXl2ZwAzhXGCUuNO7EMjh5GATMJJY
 MK2RCcQWEYiUeLf9NztIEbPAHkaJadevM4IkhAWCJU4dmc0CYrMIqEi8u/yODcTmFfCQeHJx
 PzuILSEgJ3HzXCfYUE4BT4mjF3+B2UJANZcXTGMBGSoh0Mgk8frUNiaIBiGJ04vPMk9g5FvA
 yLCKUSg3Mzk7tSgzW68go7IkNVkvJXUTIzBQD09Uv7SDsW+OxyFGJg7GQ4wSHMxKIrz73JVj
 hXhTEiurUovy44tKc1KLDzFKc7AoifNu4C0JExJITyxJzU5NLUgtgskycXBKNTB2BKi17e5e
 IVYefYdD6GJ/5au9b62+XFZddyFtsdyl2C+XRBObejuu9Gusu93canWiqMRj0W0J96oK9b1c
 /Ambf23ysS+8sav8XOHGz6KzQnKDui/zXGF/KHdr7++pvBcOKb454ug6/Xj4uWvlBjkmC0td
 p02Z7nDL/Yj504V/nF9JPxCUmXlCiaU4I9FQi7moOBEAuVJR6EICAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_001935_693774_14B33CDF 
X-CRM114-Status: GOOD (  12.66  )
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

The phyCORE-i.MX 6UL/ULL now comes either with NAND flash or eMMC. We
have to configure the populated memory type in the device tree files. So
the GPMI node gets disabled by default and only enabled if populated.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi      | 2 +-
 arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts | 4 ++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi b/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
index fee7a7e938ee..de6ffbb0183c 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
@@ -65,7 +65,7 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_gpmi_nand>;
 	nand-on-flash-bbt;
-	status = "okay";
+	status = "disabled";
 };
 
 &i2c1 {
diff --git a/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts b/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts
index 81a82dd65019..c6ef13685a7c 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts
+++ b/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts
@@ -50,6 +50,10 @@
 	status = "okay";
 };
 
+&gpmi {
+	status = "okay";
+};
+
 &i2c_rtc {
 	status = "okay";
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
