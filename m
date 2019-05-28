Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 400702CF12
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 21:01:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FUq3YVspH5LD25ld3dzL7V3EOe9Uc+I3M/QnVsCFYeU=; b=ElTd/8IUIii2i0k5bJMx0qsjla
	yUr41AR+Y2IG4Gn/S4Q8W4lp309cGCSVMqLO2uX9I4JsURZ5o/Og7ZNFVPV8GgbJIot2piPZx3ZKJ
	N1cMwvbKNmFdheJoc1AMZ+oSCdITu7Zi2dIgoP5XG7Nl4xnTS7YXg6PzQlMK2Kkipeq2ydbOFlB1f
	2XKbIg6DtAuzZM8n+zkk8uOimskJvA9Zz87DuXmePJkgMRC1Wdj2EqaaN0ABWdGCT3M1SNVcPYxgr
	URrP6M9FCqpsiuUhuLO2cgUrJekUSc7A93zKU+Isn3luXb1UcI25tIVAT6b74diZNfCwrYrCmpbXb
	vIKErsKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVhLG-0004Qu-EC; Tue, 28 May 2019 19:00:58 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVhKw-0004Ax-9G
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 19:00:39 +0000
Received: by mail-qk1-x744.google.com with SMTP id a132so24219000qkb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 12:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Zpzb1Oh5nzKBNLv2TvvvYuyzrjhDQSHhaisUN50hI1s=;
 b=qtZp5n7YpN8pjKeNl3ksdbaouL8HxrMCvCBvVaG6650vSLPU9ZlnYXYYl/3JyjFQea
 1P7ucvbtYjpH1i6V8goi+iOI1ZOtgtrby0UirbGg5JK6IzjtJznRNKaZW1yaijAjjRQz
 JBcvANIF7ZCsSWS2Ry3ROuR8Gwse+GzS2kajP1rQj64TddQtzBFy3142Yf9eL1scP3px
 xElBCL4AHqiDQI1X5dfAH3OMdFEsLRWdT1QHhvuCj0lkbXJTnoM8sSTatd07N1h3sT74
 g0oJAllXyA45TSxhwwGr2se99IN1R+K2/IB63CzNobkYzw8P36MzQutpNMP2YXYhsVxY
 VWSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Zpzb1Oh5nzKBNLv2TvvvYuyzrjhDQSHhaisUN50hI1s=;
 b=rSADU5rey8XFFIqbgvSMFIVVJ7qnyqo/DcdM1MGoOLZ+RsrqarNYkGHHLUGUxOMx/+
 JtcSFAl06nhyefZQYrZmfZzsCRZ1hLPOqgm13Vqh+q9j8PNkiCMCMXEYIVAxWccnsE9x
 1ytGI/vyjm0iF/yzUE8x3DH2qRU1rcA01A8jd4UApaCn5cwsghnAS7HoeGga4i8qZu/F
 7v4/eo0XRAg5O1+uZhdbxzzOzrjJevmgX9Iy0SSgD74w/9mPW/Uq4ac30TpsjFVsZBjT
 iIodTHQJdFmw820wfJKuOeVzqRd6I5F7NXRds6IrXPzAdq6Th3RuZmGul618CICTqpuF
 SasQ==
X-Gm-Message-State: APjAAAUlYsjgLX2D3jqzcyubejELrPcDD1ACf+PWp2wm1UHPpj+putVH
 6l+P0nj3vNxOYhf/W6gk/i4=
X-Google-Smtp-Source: APXvYqwsv1pzDLNBc9JPsqLKnaFLY9Iqb9Tsy4nDaSFsavAji/v5Y8u1ACWHwM2YfcQV2O/EU0SfXQ==
X-Received: by 2002:a0c:9e08:: with SMTP id p8mr85506520qve.241.1559070037446; 
 Tue, 28 May 2019 12:00:37 -0700 (PDT)
Received: from fabio-Latitude-E5450.am.freescale.net ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id c16sm5388086qkb.15.2019.05.28.12.00.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 12:00:36 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH v2 2/3] arm64: dts: imx8mm: Pass the 'ranges' property
Date: Tue, 28 May 2019 16:00:22 -0300
Message-Id: <20190528190023.7176-2-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190528190023.7176-1-festevam@gmail.com>
References: <20190528190023.7176-1-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_120038_323653_7011AF0B 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 linux-imx@nxp.com, kernel@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pass the 'ranges' property for each one of the AIPS bus in order
to fix the following build warnings:

arch/arm64/boot/dts/freescale/imx8mm.dtsi:209.23-388.5: Warning (unit_address_vs_reg): /soc/bus@30000000: node has a unit name, but no reg property
arch/arm64/boot/dts/freescale/imx8mm.dtsi:390.23-439.5: Warning (unit_address_vs_reg): /soc/bus@30400000: node has a unit name, but no reg property
arch/arm64/boot/dts/freescale/imx8mm.dtsi:441.23-658.5: Warning (unit_address_vs_reg): /soc/bus@30800000: node has a unit name, but no reg property
arch/arm64/boot/dts/freescale/imx8mm.dtsi:660.23-724.5: Warning (unit_address_vs_reg): /soc/bus@32c00000: node has a unit name, but no reg property

This also aligns with imx8mq.dtsi.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
Changes since v1:
- Fixed typo in "aligns with imx8mq.dtsi"

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index d6803db32e40..b62d7aec8dc2 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -210,7 +210,7 @@
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
-			ranges;
+			ranges = <0x30000000 0x30000000 0x400000>;
 
 			gpio1: gpio@30200000 {
 				compatible = "fsl,imx8mm-gpio", "fsl,imx35-gpio";
@@ -391,7 +391,7 @@
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
-			ranges;
+			ranges = <0x30400000 0x30400000 0x400000>;
 
 			pwm1: pwm@30660000 {
 				compatible = "fsl,imx8mm-pwm", "fsl,imx27-pwm";
@@ -442,7 +442,7 @@
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
-			ranges;
+			ranges = <0x30800000 0x30800000 0x400000>;
 
 			ecspi1: spi@30820000 {
 				compatible = "fsl,imx8mm-ecspi", "fsl,imx51-ecspi";
@@ -661,7 +661,7 @@
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
-			ranges;
+			ranges = <0x32c00000 0x32c00000 0x400000>;
 
 			usbotg1: usb@32e40000 {
 				compatible = "fsl,imx8mm-usb", "fsl,imx7d-usb";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
