Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 657F52CF0A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 20:58:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SOPDLswazNySD28it5vUkECNUzEipKsDs08KIJmlOGI=; b=AF1QPVaiKHgGNSDtu6bym2vcbp
	2QiM3wq7ntSvsYxFVXeANKLZ/IjHdaaGQKefRsfC17B0AdkPtXr0or63OCczX/2X7V2QZO2WwxeJU
	qXvOTnIOT5byddUUnCzdPmldhxqhzqAuLIacugSdofIpixuBZKipQKllYJ5Xe43zL2ZV9Sb+Kxhe5
	QsAB/Xn+AXFE5PsPmTBkG7rCdSBYVypuBSFPzKpp9PmMJyk7tbY0AsJESjvWLxu1qwlScONuCkz7o
	CnAjvhtPL0hwQM6jIgTPThd6l1kVIfBKZ2by9slwJa7RMMfuQMghCYA3/v/A/MLO2SLbMB1ditSlj
	K7T9rZFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVhJ8-00021T-4M; Tue, 28 May 2019 18:58:46 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVhIq-0001oS-09
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 18:58:29 +0000
Received: by mail-qk1-x744.google.com with SMTP id w187so13996889qkb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 11:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XhucoDqEqnE5IO3zat3G4tRAm193qYuPcGMHIH+L2zU=;
 b=AoqND8g3qP79B+O0UVrF8fO2p69BGEPOeTGQuYuHqp66zKyYZadzpKeOoPsOxSiugn
 PGnfA3AM2VeqPvY7cleZibjFsJ80uz9qXNCCwvqff2//yxysbGnFW68QOggPsjvd/ift
 PmKysMP381Hbu2hTHrj5XYQtyWSJ29Zem3uuZk2u/ehcEmR9FFLi1tlfESTmRFU83Y95
 6RL3YGkwPATSMlIXeFqXV8gJxuGn+rfOyhuk27Picfo+gEUdr/cLgrJ5RXrSBGDp9yjW
 OnfNMI1yog/8f7Hnvo0RDdyzIUcmcRTrlpiszUwxqifco/YVyWQAAEj9y8BvMWzOpl2J
 FrWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XhucoDqEqnE5IO3zat3G4tRAm193qYuPcGMHIH+L2zU=;
 b=SADw0yX9lqKGX9sMP6BRKrHjontJqhlymppdWBbHhaDTg+Ok9eXsa6JD2zNQ7UUwi3
 KVh/E2YFdVmNhyXKoxSGE84V+YzFJm7sU573fHNWxcXFpXgh+sUg0/RV0fAQJeQJ7dT2
 gibCes8pF1qB9a0Tp+8OnVJPNgwKbNQN0aDtwpH4oiPXw0XUTMoS/IDvqz4PnokKU6Vj
 +IUvvYRSVHnrhZ9GIBiieudXrKFWvfNM8cD3Wker9kpUMup2+7ImM0C8SVx4qv2qWzEa
 l+0ssvoMahWnr0UxbKlHR5Ym30k5bzn06WkyL3mmlsWO89kndfk0ayvXymz0BPtTXUQq
 arSg==
X-Gm-Message-State: APjAAAV+iPdSiwdk1FIEpQ8DCHClptJOjJIYaM4yksATrtRJYmAjm2wP
 zT5AvUzbuX/w4iXJC1fN/DI=
X-Google-Smtp-Source: APXvYqy0EaVHYgSBF4HE9doh5MzWiaHFBNQVgIKBvf9/mJ8qSUEXFj1f/sXb8G6u4i2eL5b1HU4esQ==
X-Received: by 2002:ae9:ec1a:: with SMTP id h26mr19304158qkg.211.1559069904833; 
 Tue, 28 May 2019 11:58:24 -0700 (PDT)
Received: from fabio-Latitude-E5450.am.freescale.net ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id a139sm5135901qkb.48.2019.05.28.11.58.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 11:58:24 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH 2/3] arm64: dts: imx8mm: Pass the 'ranges' property
Date: Tue, 28 May 2019 15:58:11 -0300
Message-Id: <20190528185812.7103-2-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190528185812.7103-1-festevam@gmail.com>
References: <20190528185812.7103-1-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_115828_039165_31ECE950 
X-CRM114-Status: GOOD (  11.01  )
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

This also aligns with imx8qm.dtsi.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
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
