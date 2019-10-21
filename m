Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8249DF64B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 21:50:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y+X6XPSSl+NewgrlO5PM7u4xj/Y0DaeUAtFugXPeZvo=; b=h8/yXSY2R63TfK
	I/XsUcqeOz+25MRgIYWikJtDJJRvqoo5cEcfMP0gWuYWFLZsoMVjxP9LZNHtKwuq0+zVkpF9H44wT
	jiMvhCGKyVClsHMC6txp57cYh4veLjdxwrPCvsbC3z584OTt6TaItOloJdGPXZ+mZMUFPEf9UNRhs
	YtHfQOqMWiI/a9OXNP/kZb7Xgxiu+4J3mJgd03bdnqZONNKu/T9qJ471YTgFbVVScZYRmFqKoui/g
	L7b00ApodVwQSB9CIQyR0SNR+9vZOk9VLH7vCwLx9yz0/nF4D3/G9FYZW/E6MZJoFyGa7Ta1BbgUc
	taSYn2Mk8gONToq+nvwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMdhQ-0006fA-30; Mon, 21 Oct 2019 19:50:40 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30]
 helo=mx0a-00082601.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMdgX-0004s3-Nf
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 19:49:48 +0000
Received: from pps.filterd (m0089730.ppops.net [127.0.0.1])
 by m0089730.ppops.net (8.16.0.42/8.16.0.42) with SMTP id x9LJnMUL020288
 for <linux-arm-kernel@lists.infradead.org>; Mon, 21 Oct 2019 12:49:44 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=facebook; bh=Ratwrh803U9NlsleGXlBzy0pKrtxbkdE3srfUyIxsZA=;
 b=lAenIlR8ss2MRtYvtGJ28PV0+5w8AwY6/Im5bZXZ7JDvWFJ00tBYsBsRAzAxR/ToepGj
 WMtyEggTn5Suuak8gIseW5G98SrtG0Y7yAJenUP8Dt4umuqPDybtqlvX7ytbgnKtAHhP
 YdPqldN0mt23o5f4XUQXOWotzQ93LUSm8ZY= 
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
 by m0089730.ppops.net with ESMTP id 2vqwyygnhc-20
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Mon, 21 Oct 2019 12:49:44 -0700
Received: from 2401:db00:2120:80d4:face:0:39:0 (2620:10d:c081:10::13) by
 mail.thefacebook.com (2620:10d:c081:35::126) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA) id 15.1.1713.5;
 Mon, 21 Oct 2019 12:49:22 -0700
Received: by devvm1794.vll1.facebook.com (Postfix, from userid 150176)
 id F1F1C64C3CB4; Mon, 21 Oct 2019 12:49:19 -0700 (PDT)
Smtp-Origin-Hostprefix: devvm
From: Tao Ren <taoren@fb.com>
Smtp-Origin-Hostname: devvm1794.vll1.facebook.com
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>,
 <openbmc@lists.ozlabs.org>
Smtp-Origin-Cluster: vll1c12
Subject: [PATCH 1/4] ARM: dts: aspeed: add dtsi for Facebook AST2500 Network
 BMCs
Date: Mon, 21 Oct 2019 12:48:17 -0700
Message-ID: <20191021194820.293556-2-taoren@fb.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021194820.293556-1-taoren@fb.com>
References: <20191021194820.293556-1-taoren@fb.com>
X-FB-Internal: Safe
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-21_05:2019-10-21,2019-10-21 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 malwarescore=0 mlxscore=0
 lowpriorityscore=0 suspectscore=0 mlxlogscore=999 impostorscore=0
 spamscore=0 adultscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1910210190
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_124945_933586_7715F281 
X-CRM114-Status: GOOD (  16.20  )
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

Introduce "facebook-netbmc-ast2500-common.dtsi" which is included by all
Facebook AST2500 Network BMC platforms. The major purpose is to minimize
duplicated device entries cross Facebook Network BMC dts files.

Signed-off-by: Tao Ren <taoren@fb.com>
---
 .../dts/facebook-netbmc-ast2500-common.dtsi   | 96 +++++++++++++++++++
 1 file changed, 96 insertions(+)
 create mode 100644 arch/arm/boot/dts/facebook-netbmc-ast2500-common.dtsi

diff --git a/arch/arm/boot/dts/facebook-netbmc-ast2500-common.dtsi b/arch/arm/boot/dts/facebook-netbmc-ast2500-common.dtsi
new file mode 100644
index 000000000000..7a395ba56512
--- /dev/null
+++ b/arch/arm/boot/dts/facebook-netbmc-ast2500-common.dtsi
@@ -0,0 +1,96 @@
+// SPDX-License-Identifier: GPL-2.0+
+// Copyright (c) 2019 Facebook Inc.
+
+#include "aspeed-g5.dtsi"
+
+/ {
+	memory@80000000 {
+		reg = <0x80000000 0x40000000>;
+	};
+};
+
+/*
+ * Update reset type to "system" (full chip) to fix warm reboot hang issue
+ * when reset type is set to default ("soc", gated by reset mask registers).
+ */
+&wdt1 {
+	status = "okay";
+	aspeed,reset-type = "system";
+};
+
+&wdt2 {
+	status = "disabled";
+};
+
+&uart1 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_txd1_default
+		     &pinctrl_rxd1_default>;
+};
+
+&uart3 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_txd3_default
+		     &pinctrl_rxd3_default>;
+};
+
+&uart5 {
+	status = "okay";
+};
+
+&fmc {
+	status = "okay";
+
+	fmc_flash0: flash@0 {
+		status = "okay";
+		m25p,fast-read;
+		label = "spi0.0";
+
+#include "facebook-bmc-flash-layout.dtsi"
+	};
+
+	fmc_flash1: flash@1 {
+		status = "okay";
+		m25p,fast-read;
+		label = "spi0.1";
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			flash1@0 {
+				reg = <0x0 0x2000000>;
+				label = "flash1";
+			};
+		};
+	};
+};
+
+&mac1 {
+	status = "okay";
+	no-hw-checksum;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_rgmii2_default &pinctrl_mdio2_default>;
+};
+
+&rtc {
+	status = "okay";
+};
+
+&vhub {
+	status = "okay";
+};
+
+&sdmmc {
+	status = "okay";
+};
+
+&sdhci1 {
+	status = "okay";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sd2_default>;
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
