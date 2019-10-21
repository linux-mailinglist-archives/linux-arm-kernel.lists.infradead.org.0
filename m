Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9F8DF642
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 21:49:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k+JDj95ECH66B8xD4xI3vwXi9R3RMOMwOD1o2BpPyBM=; b=oIcDNDwDdl93aF
	9cHULGCop+nAzBom/qvWleQhBclkuPueoIkPr8Pq6+IQskU+uMlkreTPaIKmmm97c/TfofwnfDwo6
	T6fIRhKNVBbRP0HGa+Chx8n9JJXrXmnVfqbRIsD1V/qahmg5ivqay73bcxB9L6flIMyji08kj4qJY
	vARJGd/BeQDCbaqStn2D4Use6OQrCs/4mHLcYExnhnYf6hvUrKeg66neq96Clw+MEmH+Yi/bq0Go6
	0RQAIrlQ/oJgF3kEAYEtu+Egvsm494T6bKtxZKOFay2t0iDD1RlV5WL20+LzOzIVZ5sVZf5nlzpA/
	9CGzZnBjqkrVV1G+HNqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMdgS-0004ap-Lw; Mon, 21 Oct 2019 19:49:40 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMdgA-0004Sr-8c
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 19:49:23 +0000
Received: from pps.filterd (m0148460.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9LJnD2U008589
 for <linux-arm-kernel@lists.infradead.org>; Mon, 21 Oct 2019 12:49:21 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=facebook; bh=NcbL8nY8z7Y/EYpmb1t/mRKcXOScOsowU76+bNY+y98=;
 b=AVb/ovoEWgU+jtRDJhfcnOWSJy36alT2HxQkIbmLR2IBwlb6ISRUx2vPRdaUp6qm9VOw
 9+psoQqf4GFmNtCCXW9RkhyxdhgRvJEMi4k/b3YcK9I4+8W/01gTdw5/+xtWUB9tW6QX
 yZ0a7tOtSt6Q9vY0Zlqt1JOvTekgbevmn4s= 
Received: from maileast.thefacebook.com ([163.114.130.16])
 by mx0a-00082601.pphosted.com with ESMTP id 2vshwr8bqr-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Mon, 21 Oct 2019 12:49:21 -0700
Received: from 2401:db00:2120:81ca:face:0:31:0 (2620:10d:c0a8:1b::d) by
 mail.thefacebook.com (2620:10d:c0a8:82::f) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 21 Oct 2019 12:49:20 -0700
Received: by devvm1794.vll1.facebook.com (Postfix, from userid 150176)
 id 05D8364C3CB8; Mon, 21 Oct 2019 12:49:20 -0700 (PDT)
Smtp-Origin-Hostprefix: devvm
From: Tao Ren <taoren@fb.com>
Smtp-Origin-Hostname: devvm1794.vll1.facebook.com
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>,
 <openbmc@lists.ozlabs.org>
Smtp-Origin-Cluster: vll1c12
Subject: [PATCH 3/4] ARM: dts: aspeed: minipack: include dtsi for common
 network BMC devices
Date: Mon, 21 Oct 2019 12:48:19 -0700
Message-ID: <20191021194820.293556-4-taoren@fb.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021194820.293556-1-taoren@fb.com>
References: <20191021194820.293556-1-taoren@fb.com>
X-FB-Internal: Safe
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-21_05:2019-10-21,2019-10-21 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 mlxlogscore=998
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 adultscore=0 mlxscore=0
 spamscore=0 priorityscore=1501 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-1908290000 definitions=main-1910210190
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_124922_460909_41822FB6 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.153.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Tao Ren <taoren@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch simplifies Minipack device tree by including dtsi to define
devices which are common to Facebook AST2500 Network BMC platforms.

Below is the summary of changes comparing with previous dts version:
  - enabling the second firmware flash.
  - updating firmware flashes' size from 32MB to 64MB.
  - enabling the emmc device in slot #1.

Signed-off-by: Tao Ren <taoren@fb.com>
---
 .../boot/dts/aspeed-bmc-facebook-minipack.dts | 59 ++++++-------------
 1 file changed, 19 insertions(+), 40 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-minipack.dts b/arch/arm/boot/dts/aspeed-bmc-facebook-minipack.dts
index c05478296446..ed1a77c76ce9 100644
--- a/arch/arm/boot/dts/aspeed-bmc-facebook-minipack.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-facebook-minipack.dts
@@ -2,7 +2,7 @@
 // Copyright (c) 2018 Facebook Inc.
 /dts-v1/;
 
-#include "aspeed-g5.dtsi"
+#include "facebook-netbmc-ast2500-common.dtsi"
 
 / {
 	model = "Facebook Minipack 100 BMC";
@@ -76,35 +76,36 @@
 		stdout-path = &uart1;
 		bootargs = "debug console=ttyS1,9600n8 root=/dev/ram rw";
 	};
-
-	memory@80000000 {
-		reg = <0x80000000 0x20000000>;
-	};
 };
 
-&wdt1 {
+&wdt2 {
 	status = "okay";
 	aspeed,reset-type = "system";
 };
 
-&wdt2 {
-	status = "okay";
-	aspeed,reset-type = "system";
+/*
+ * Both firmware flashes are 64MB on Minipack BMC.
+ */
+&fmc_flash0 {
+	partitions {
+		data0@1c00000 {
+			reg = <0x1c00000 0x2400000>;
+		};
+		flash0@0 {
+			reg = <0x0 0x4000000>;
+		};
+	};
 };
 
-&fmc {
-	status = "okay";
-	flash@0 {
-		status = "okay";
-		m25p,fast-read;
-		label = "bmc";
-#include "facebook-bmc-flash-layout.dtsi"
+&fmc_flash1 {
+	partitions {
+		flash1@0 {
+			reg = <0x0 0x4000000>;
+		};
 	};
 };
 
 &uart1 {
-	status = "okay";
-	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_txd1_default
 		     &pinctrl_rxd1_default
 		     &pinctrl_ncts1_default
@@ -120,13 +121,6 @@
 		     &pinctrl_rxd2_default>;
 };
 
-&uart3 {
-	status = "okay";
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_txd3_default
-		     &pinctrl_rxd3_default>;
-};
-
 &uart4 {
 	status = "okay";
 	pinctrl-names = "default";
@@ -134,17 +128,6 @@
 		     &pinctrl_rxd4_default>;
 };
 
-&uart5 {
-	status = "okay";
-};
-
-&mac1 {
-	status = "okay";
-	no-hw-checksum;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_rgmii2_default &pinctrl_mdio2_default>;
-};
-
 &i2c0 {
 	status = "okay";
 	bus-frequency = <400000>;
@@ -423,7 +406,3 @@
 &i2c13 {
 	status = "okay";
 };
-
-&vhub {
-	status = "okay";
-};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
