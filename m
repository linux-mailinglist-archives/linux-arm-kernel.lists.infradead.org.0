Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DFBD9516
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 17:09:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lMMOgP8mCbP2DqE2ds2ChH+Wjdjj3fkir0rUHBcaBgo=; b=THc7KgCdhPHDxG
	hG/+u7sxKjC/2wCAVsfjSSoRDwxrDMxIGFw9mW5Pv96E6CPE+roslnWO/yBe9Uubo4NJ+s8TaudcT
	t4vareE7QHDw2Uoac0nsP1qoip1ekxNWJLJY3aiAgX5uC3qQr4aMhtfN78l4lByCs0+N+gZLA8je/
	QF86quorj4btaulPRhmxwdeQJ/CygGyTisGBjDZWzOSKIdJPUD2fH4uXiowVVSeUReqObGwjRal5t
	EwukH94tIBB4gAuyFSVNab5C7Th1pMB+FoNQqZbxRvzPLgdF2IQkmNkDVPi42JQ7am3kaHj+nR3fy
	IplMcC/fpahS/lfhPkNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKkvX-0007Ag-Qs; Wed, 16 Oct 2019 15:09:27 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKktf-0005d2-W9
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 15:07:36 +0000
Received: from sntmail10s.snt-is.com (unknown [10.203.32.183])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id 1F6EA7CDEC5;
 Wed, 16 Oct 2019 17:07:30 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail10s.snt-is.com
 (10.203.32.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Wed, 16 Oct
 2019 17:07:29 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Wed, 16 Oct 2019 17:07:29 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: "krzk@kernel.org" <krzk@kernel.org>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, Schrempf Frieder <frieder.schrempf@kontron.de>, "Mark
 Rutland" <mark.rutland@arm.com>, Shawn Guo <shawnguo@kernel.org>, Sascha
 Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team
 <linux-imx@nxp.com>
Subject: [PATCH 07/10] ARM: dts: imx6ul-kontron-n6x1x-s: Add vbus-supply and
 overcurrent polarity to usb nodes
Thread-Topic: [PATCH 07/10] ARM: dts: imx6ul-kontron-n6x1x-s: Add vbus-supply
 and overcurrent polarity to usb nodes
Thread-Index: AQHVhDNtcWNwI7uv4EKgHVctQq99lQ==
Date: Wed, 16 Oct 2019 15:07:29 +0000
Message-ID: <20191016150622.21753-8-frieder.schrempf@kontron.de>
References: <20191016150622.21753-1-frieder.schrempf@kontron.de>
In-Reply-To: <20191016150622.21753-1-frieder.schrempf@kontron.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 1F6EA7CDEC5.A22E5
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: devicetree@vger.kernel.org, festevam@gmail.com,
 kernel@pengutronix.de, krzk@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com,
 robh+dt@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_080732_426892_ED4A89F4 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.69 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Frieder Schrempf <frieder.schrempf@kontron.de>

To silence the warnings shown by the driver at boot time, we add a
fixed regulator for the 5V supply of usbotg2 and specify the polarity
of the overcurrent signal for usbotg1.

Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
 arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi b/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
index 779d75f42268..a2393568488f 100644
--- a/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
+++ b/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
@@ -43,6 +43,13 @@
 		regulator-max-microvolt = <3300000>;
 	};
 
+	reg_5v: regulator-5v {
+		compatible = "regulator-fixed";
+		regulator-name = "5v";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
 	reg_usb_otg1_vbus: regulator-usb-otg1-vbus {
 		compatible = "regulator-fixed";
 		regulator-name = "usb_otg1_vbus";
@@ -189,6 +196,7 @@
 	srp-disable;
 	hnp-disable;
 	adp-disable;
+	over-current-active-low;
 	vbus-supply = <&reg_usb_otg1_vbus>;
 	status = "okay";
 };
@@ -196,6 +204,7 @@
 &usbotg2 {
 	dr_mode = "host";
 	disable-over-current;
+	vbus-supply = <&reg_5v>;
 	status = "okay";
 };
 
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
