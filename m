Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 376797EAF1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 06:07:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FqtJ7FRRFYA83QzW/NWz2K4cqPVEb77YBAhdgI56kpw=; b=n87UGi9fnjRK/j
	AsZ6O/UHS+Grdib4S0cxo+Rf6k4D6gfXKAiVj8RXOIKcfAx9h3oOCmHvQgkhc3UT+EKLADasXbnpj
	kVIJWgTQyT5K5RqGfRG9R4+y4tUez49oe3qv2AfjkUpPgCZtj5kQ1Wdwnbun90RZVGoKTbsHecQlO
	QMr134Nw43IVLh5lQ2SVQGs1wZO5LlJupm4MFzi7OBhCt/Eu2qmOpfuFaajZ807ibJluXlYmm6Z7V
	h+XKv8ZWEu3w+pEplLSpEUU989kDLOgsWuWhpaVesjE0Gpgpc9x3HPhWGGuIuIzS5oRSZylruvfHF
	Dx0d9q9Bu13Go8VabebQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htOqS-0007x6-FI; Fri, 02 Aug 2019 04:07:08 +0000
Received: from mx0a-00082601.pphosted.com ([67.231.145.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htOqH-0007wl-2c
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 04:06:58 +0000
Received: from pps.filterd (m0044008.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7244Ekl019880
 for <linux-arm-kernel@lists.infradead.org>; Thu, 1 Aug 2019 21:06:56 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=facebook;
 bh=/JGpj5xaIqABlRNKSRJRUdgMyRc4OpMWr0QtO1VevWQ=;
 b=onz3slllYo8MESWYShIb/EGwAuE4C4aWnH+fyHBGBapjltSy7YoxSa8z5rf6gRRJE3JW
 SkKrUxBXtMO/JQ50ispRMGhUgS/sjQ42mYx05jsGGcFtmX3sFKhBK0WvduuJCJMnTP9z
 EPLNGLe0EsPG9E0S+ZJ1zI/rzrl2xMRn0Ic= 
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
 by mx0a-00082601.pphosted.com with ESMTP id 2u430v2bgm-4
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Thu, 01 Aug 2019 21:06:56 -0700
Received: from mx-out.facebook.com (2620:10d:c081:10::13) by
 mail.thefacebook.com (2620:10d:c081:35::125) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA) id 15.1.1713.5;
 Thu, 1 Aug 2019 21:06:54 -0700
Received: by devvm24792.prn1.facebook.com (Postfix, from userid 150176)
 id E273C1888669A; Thu,  1 Aug 2019 21:06:52 -0700 (PDT)
Smtp-Origin-Hostprefix: devvm
From: Tao Ren <taoren@fb.com>
Smtp-Origin-Hostname: devvm24792.prn1.facebook.com
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>,
 <openbmc@lists.ozlabs.org>
Smtp-Origin-Cluster: prn1c35
Subject: [PATCH v2] ARM: dts: aspeed: Add Facebook Wedge40 BMC
Date: Thu, 1 Aug 2019 21:06:50 -0700
Message-ID: <20190802040650.1224903-1-taoren@fb.com>
X-Mailer: git-send-email 2.17.1
X-FB-Internal: Safe
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-02_02:, , signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908020041
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_210657_125455_CC98865B 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.145.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Add initial version of device tree for Facebook Wedge40 AST2400 BMC
platform.

Signed-off-by: Tao Ren <taoren@fb.com>
Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
---
 Changes in v2:
 - remove "debug" from bootargs.

 arch/arm/boot/dts/Makefile                    |   1 +
 .../boot/dts/aspeed-bmc-facebook-wedge40.dts  | 141 ++++++++++++++++++
 2 files changed, 142 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed-bmc-facebook-wedge40.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 39a05a10a2a2..dfc1011eb3f2 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1273,6 +1273,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
 	aspeed-bmc-facebook-cmm.dtb \
 	aspeed-bmc-facebook-minipack.dtb \
 	aspeed-bmc-facebook-tiogapass.dtb \
+	aspeed-bmc-facebook-wedge40.dtb \
 	aspeed-bmc-facebook-yamp.dtb \
 	aspeed-bmc-intel-s2600wf.dtb \
 	aspeed-bmc-inspur-fp5280g2.dtb \
diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-wedge40.dts b/arch/arm/boot/dts/aspeed-bmc-facebook-wedge40.dts
new file mode 100644
index 000000000000..aaa77a597d1a
--- /dev/null
+++ b/arch/arm/boot/dts/aspeed-bmc-facebook-wedge40.dts
@@ -0,0 +1,141 @@
+// SPDX-License-Identifier: GPL-2.0+
+// Copyright (c) 2018 Facebook Inc.
+/dts-v1/;
+
+#include "aspeed-g4.dtsi"
+
+/ {
+	model = "Facebook Wedge 40 BMC";
+	compatible = "facebook,wedge40-bmc", "aspeed,ast2400";
+
+	aliases {
+		/*
+		 * Override the default uart aliases to avoid breaking
+		 * the legacy applications.
+		 */
+		serial0 = &uart5;
+		serial1 = &uart1;
+		serial2 = &uart3;
+		serial3 = &uart4;
+	};
+
+	chosen {
+		stdout-path = &uart3;
+		bootargs = "console=ttyS2,9600n8 root=/dev/ram rw";
+	};
+
+	memory@40000000 {
+		reg = <0x40000000 0x20000000>;
+	};
+};
+
+&wdt1 {
+	status = "okay";
+	aspeed,reset-type = "system";
+};
+
+&wdt2 {
+	status = "disabled";
+};
+
+&fmc {
+	status = "okay";
+	flash@0 {
+		status = "okay";
+		m25p,fast-read;
+		label = "fmc0";
+#include "facebook-bmc-flash-layout.dtsi"
+	};
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
+&uart4 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_txd4_default
+		     &pinctrl_rxd4_default>;
+};
+
+&uart5 {
+	status = "okay";
+};
+
+&mac1 {
+	status = "okay";
+	no-hw-checksum;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_rgmii2_default &pinctrl_mdio2_default>;
+};
+
+&i2c0 {
+	status = "okay";
+};
+
+&i2c1 {
+	status = "okay";
+};
+
+&i2c2 {
+	status = "okay";
+};
+
+&i2c3 {
+	status = "okay";
+};
+
+&i2c4 {
+	status = "okay";
+};
+
+&i2c5 {
+	status = "okay";
+};
+
+&i2c6 {
+	status = "okay";
+};
+
+&i2c7 {
+	status = "okay";
+};
+
+&i2c8 {
+	status = "okay";
+};
+
+&i2c9 {
+	status = "okay";
+};
+
+&i2c10 {
+	status = "okay";
+};
+
+&i2c11 {
+	status = "okay";
+};
+
+&i2c12 {
+	status = "okay";
+};
+
+&i2c13 {
+	status = "okay";
+};
+
+&vhub {
+	status = "okay";
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
