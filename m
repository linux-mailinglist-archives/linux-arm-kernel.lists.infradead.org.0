Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AA216ED60
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 19:00:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TCpj3UrppOCnMj8UVlvFbh8SHwkMNB1uGhGOtxe3Jo0=; b=Mw4c2OGcpjjLcC
	RQ1QoNJ4LUh15x3/hIc9+tC/O2uJwQf+lsPkB0UIwq0xbLJWY91CRt7RL2szb5lqQ01YTD3xIyt3T
	FZ+4B+Po8Q0Or1VNx6kq7T9WTrkr+ayKjWvprNV5XlxgILNKrWRb0SkOvb5kYBDUamWaoYoko/O3s
	2xP8hlu1I6vMCvrZqOaDvQ5HnLpHycLSMbf0DHvkaoBBWZlKDolE7m45/2dbP0QHrucWXyRspxEMo
	axoh3TgxTxlDddGBXS/e/Z1iIfhuznPd34CPaqeb9zU4T3OD2JMK98VlDjFMEkUnzxEEF0EO5kCJu
	T8cq+Nanq2i44AfJuesA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6eUt-0004JK-Om; Tue, 25 Feb 2020 17:59:55 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6eTr-0003bi-Jl
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 17:58:55 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id E04E323059;
 Tue, 25 Feb 2020 18:58:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1582653525;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=X+cE7/ATdYUr32XspEcbhvNydKCX9kBGmSCPvglvjs8=;
 b=F0r6WWZHqU3eG2ijJgPOL1KCn8tb5abVKJywGF3x2qz1Qis9dWCMe7dcZ5uk2112cY+QOb
 Gy978UuLAvOsSSrZIkXpKoRIAj5PAACwqCTPIeZ6C50jUc1fnalLJd/Ni4UKJilMbvGRpT
 c3fFXVNMozSxYySclei5UGIYMxZyiEc=
From: Michael Walle <michael@walle.cc>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] arm64: dts: ls1028a: sl28: add support for variant 2
Date: Tue, 25 Feb 2020 18:57:56 +0100
Message-Id: <20200225175756.29508-4-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200225175756.29508-1-michael@walle.cc>
References: <20200225175756.29508-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: E04E323059
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 NEURAL_SPAM(0.00)[0.968]; DKIM_SIGNED(0.00)[];
 DBL_PROHIBIT(0.00)[0.0.0.4:email,0.0.0.5:email];
 RCPT_COUNT_SEVEN(0.00)[8]; MID_CONTAINS_FROM(1.00)[];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c::/31, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_095851_811988_F215B2AB 
X-CRM114-Status: GOOD (  16.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Now that there is support for the Felix switch this variant can also be
added. It features two external ports ethernet ports which are connected
to the internal switch core. No direct connection to any of the enetc's
is supported.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 arch/arm64/boot/dts/freescale/Makefile        |  1 +
 .../fsl-ls1028a-kontron-sl28-var2.dts         | 68 +++++++++++++++++++
 2 files changed, 69 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var2.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 0d36c6e64574..c04bfa72d83e 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -6,6 +6,7 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1012a-qds.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1012a-rdb.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-kontron-kbox-a-230-ls.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-kontron-sl28.dtb
+dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-kontron-sl28-var2.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-kontron-sl28-var3-ads2.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-kontron-sl28-var4.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds.dtb
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var2.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var2.dts
new file mode 100644
index 000000000000..0a34ff682027
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var2.dts
@@ -0,0 +1,68 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Device Tree file for the Kontron SMARC-sAL28 board.
+ *
+ * This is for the network variant 2 which has two ethernet ports. These
+ * ports are connected to the internal switch.
+ *
+ * Copyright (C) 2020 Michael Walle <michael@walle.cc>
+ *
+ */
+
+/dts-v1/;
+#include "fsl-ls1028a-kontron-sl28.dts"
+
+/ {
+	model = "Kontron SMARC-sAL28 (TSN-on-module)";
+	compatible = "kontron,sl28-var2", "kontron,sl28", "fsl,ls1028a";
+};
+
+&enetc_mdio_pf3 {
+	phy0: ethernet-phy@5 {
+		reg = <0x5>;
+		eee-broken-1000t;
+		eee-broken-100tx;
+	};
+
+	phy1: ethernet-phy@4 {
+		reg = <0x4>;
+		eee-broken-1000t;
+		eee-broken-100tx;
+	};
+};
+
+&enetc_port0 {
+	status = "disabled";
+	/*
+	 * In the base device tree the PHY was registered in the mdio
+	 * subnode as it is PHY for this port. On this module this PHY
+	 * is connected to a switch port instead and registered above.
+	 * Therefore, delete the mdio subnode as well as the phy-handle
+	 * property here.
+	 */
+	/delete-property/ phy-handle;
+	/delete-node/ mdio;
+};
+
+&enetc_port2 {
+	status = "okay";
+};
+
+&mscc_felix_port0 {
+	label = "gbe0";
+	phy-handle = <&phy0>;
+	phy-mode = "sgmii";
+	status = "okay";
+};
+
+&mscc_felix_port1 {
+	label = "gbe1";
+	phy-handle = <&phy1>;
+	phy-mode = "sgmii";
+	status = "okay";
+};
+
+&mscc_felix_port4 {
+	ethernet = <&enetc_port2>;
+	status = "okay";
+};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
