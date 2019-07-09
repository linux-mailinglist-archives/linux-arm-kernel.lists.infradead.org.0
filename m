Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51144631D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 09:22:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rEXgmCf6+ih5aTx91jBmXzpA3Djaf0wimrhZRFVlDxs=; b=Q7xgo8dE1DdFeGRQilmzLY/XbF
	R7XcxURAKNrv+FNnTQIvtJLKp2zZ0tTfiTVHv144cSxUsqU4yZyFjolOUoYMIVPdPv2SxUANaohCy
	9ZcNmObG6t3FHVocNZTt1wBwn9R6fHaHzSce6LVAyo/LMK4OS69AUTZYiE7CrCV/h1ccD5tu2eJ13
	r0JECrz+hEVyx0UyDp8O6MpE38zJ3l7Po6Jb/pKYqMbQxZpOlo7abyLHZUYy035W4jLYM+RoM3BZV
	uNJ/p1Q4NEPDWRQ6gxMTT2wlD+yU3DkQCE1CiSuq+L2yVQxZESRlqRi0/FbkJ5awBi7/yV1/UQU6F
	ZRft9ikA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkkSW-0002gO-P0; Tue, 09 Jul 2019 07:22:41 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkkPa-0007T1-46
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 07:19:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1562656769; x=1565248769;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UoyMOrIVOLmkAP68dGafSoo6TcUNycT9H09rWKScbJk=;
 b=LC45CRS2kT9zZoGYmUjtpBjqWJ7YAwaFAmCEjajsx5+we9i6mdcnHI+ziFDz+/cj
 10No8bn7QUEGrQCbnr/uzZFqq9r3+MqSGwp69nzf1C1jagzZUCK/FC9aXnr+sCIQ
 fSJBr9q4BgJOYeHUchIG+sRkzceOA9OZcRZcZvR72fo=;
X-AuditID: c39127d2-193ff70000001aee-0a-5d2440014793
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id ED.B0.06894.100442D5;
 Tue,  9 Jul 2019 09:19:29 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.16.21.122])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019070909192949-309712 ;
 Tue, 9 Jul 2019 09:19:29 +0200 
From: Stefan Riedmueller <s.riedmueller@phytec.de>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH 09/10] ARM: dts: imx6ul: segin: Move machine include to dts
 files
Date: Tue, 9 Jul 2019 09:19:26 +0200
Message-Id: <1562656767-273566-10-git-send-email-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562656767-273566-1-git-send-email-s.riedmueller@phytec.de>
References: <1562656767-273566-1-git-send-email-s.riedmueller@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 09.07.2019 09:19:29,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 09.07.2019 09:19:29, Serialize complete at 09.07.2019 09:19:29
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrHLMWRmVeSWpSXmKPExsWyRoCBS5fRQSXWoLHLwmL+kXOsFg+v+lus
 mrqTxWLT42usFl2/VjJbXN41h81i6fWLTBYPLnaxWLTuPcJu8Xf7JhaLF1vEHbg91sxbw+ix
 4+4SRo+ds+6ye2xa1cnmsXlJvcfGdzuYPPr/Gnh83iQXwBHFZZOSmpNZllqkb5fAlfH8eW7B
 bq6KU+fWMzYwTufsYuTkkBAwkTj95zNLFyMXh5DADkaJFTs2MkM4Fxglru1bxQ5SxSZgJLFg
 WiMTiC0iECnxbvtvdpAiZoE9jBLTrl9nBEkICwRKnJ18G6yIRUBF4sKpD0CTODh4BTwlFj0z
 htgmJ3HzXCcziM0JFD568ReYLSTgIXF5wTSwKyQEGpkkrr3ewgjRICRxevFZ5gmMfAsYGVYx
 CuVmJmenFmVm6xVkVJakJuulpG5iBIbp4Ynql3Yw9s3xOMTIxMF4iFGCg1lJhHefu3KsEG9K
 YmVValF+fFFpTmrxIUZpDhYlcd4NvCVhQgLpiSWp2ampBalFMFkmDk6pBsapBjnqLsx5N/3t
 GhJUNpfNLzq2UF/x6AOXpKv3SkM0udzuKQbP2l/FtO1m1NTadw4dzWnbf9590Pft162be2K7
 ny8zU2XLuCewuuyT2/8DOiltL/hj1E2qK7jPeC/m02U6rTxP83EVU33irYrLS8wTzq364X1t
 mfztg0HxE7v870vo8nx6d0+JpTgj0VCLuag4EQBOF+Y5QQIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_001938_649849_D23E4E83 
X-CRM114-Status: GOOD (  11.88  )
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

Move the imx6ul.dtsi include to the dts files so it is easier to reuse
the SOM dtsi for e.g. an i.MX 6ULL SOM.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi      | 1 -
 arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi b/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
index 09a313daedb8..92bf91674056 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
@@ -7,7 +7,6 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/pwm/pwm.h>
-#include "imx6ul.dtsi"
 
 / {
 	model = "PHYTEC phyCORE-i.MX6 UltraLite";
diff --git a/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts b/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts
index 32d90c67a6f2..699dfcbf9a60 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts
+++ b/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts
@@ -5,6 +5,7 @@
  */
 
 /dts-v1/;
+#include "imx6ul.dtsi"
 #include "imx6ul-phytec-phycore-som.dtsi"
 #include "imx6ul-phytec-segin.dtsi"
 #include "imx6ul-phytec-segin-peb-eval-01.dtsi"
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
