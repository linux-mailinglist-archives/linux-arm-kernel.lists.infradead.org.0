Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D4A16ED5C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 18:59:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I0ngV2CKTvRIXi+Ch5u/lgPXhuE9MxE74ZNzAsGXYX4=; b=Gv8pTlloG2VL7t
	BNQd2rIpqgBSqFQz8ey06r5QmpHxba3c3omKc6ALmvtdGseJKFCGgYlWFMo9UbK/YN/hD81tCPsGU
	NRjuwbxQg2MeIaF+M55xAZY5j5D9MsF/kAwLJqQK4p6FojkIWk9WNrG9VmcG61a+9TMcyCh7E/9hE
	9PcZgR/95Cpg9JJJzSg9IqYXsonIu/f2kFicwJym/jOsmxBZE1PQ/wq/uYiL8feuebmEA2VUOswFy
	b7KpUfvQ8V2DrpY1YuI84my1A3DQDdqE10XC8f/u9EXHdk2ukGcGrbT56QvxyMczMynl6B/ywAvDs
	r3reUzPEVGqJ/LrundIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6eUc-00041R-M0; Tue, 25 Feb 2020 17:59:38 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6eTs-0003bl-5y
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 17:58:55 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 5370023058;
 Tue, 25 Feb 2020 18:58:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1582653524;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=p8/7NKL09SHsuEl1uHYny7QPYQ0m0GW+NScMr4x+hvo=;
 b=GZzzv5FmuD9LdgdjEmlpFHDuYp1yHFY1UUoWjJBmrFmBFt5FY0GUIGs0N+7chI7eEPhde7
 Gt5lgQYO24fCT8guHYBuEr8g6iCEPqlAVTO4OBmiquGB6ZrdgStKk7H46fsrb8JOWC92Vo
 F5QPZwcg96lTCHc+qRbz9JhXF8heQAQ=
From: Michael Walle <michael@walle.cc>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] arm64: dts: ls1028a: sl28: expose switch ports in KBox
 A-230-LS
Date: Tue, 25 Feb 2020 18:57:55 +0100
Message-Id: <20200225175756.29508-3-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200225175756.29508-1-michael@walle.cc>
References: <20200225175756.29508-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: 5370023058
X-Spamd-Result: default: False [6.40 / 15.00]; TO_DN_SOME(0.00)[];
 R_MISSING_CHARSET(2.50)[]; NEURAL_SPAM(0.00)[0.961];
 BROKEN_CONTENT_TYPE(1.50)[]; RCPT_COUNT_SEVEN(0.00)[8];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c::/31, country:DE];
 FROM_HAS_DN(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 TAGGED_RCPT(0.00)[dt]; MIME_GOOD(-0.10)[text/plain];
 DKIM_SIGNED(0.00)[];
 DBL_PROHIBIT(0.00)[0.0.0.57:email,0.0.0.10:email,0.0.0.9:email,0.0.0.8:email,0.0.0.7:email];
 MID_CONTAINS_FROM(1.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_095852_373592_DDED368E 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
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

The KBox A-230-LS supports four external ports which are connected to
the internal switch of the LS1028A via QSGMII. Now that the Felix switch
is supported, add these ports in the device tree.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 .../fsl-ls1028a-kontron-kbox-a-230-ls.dts     | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts
index 32f6c80414bc..4e30558485b0 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts
@@ -18,6 +18,29 @@
 		     "kontron,sl28", "fsl,ls1028a";
 };
 
+&enetc_mdio_pf3 {
+	/* BCM54140 QSGMII quad PHY */
+	qsgmii_phy0: ethernet-phy@7 {
+		reg = <7>;
+	};
+
+	qsgmii_phy1: ethernet-phy@8 {
+		reg = <8>;
+	};
+
+	qsgmii_phy2: ethernet-phy@9 {
+		reg = <9>;
+	};
+
+	qsgmii_phy3: ethernet-phy@10 {
+		reg = <10>;
+	};
+};
+
+&enetc_port2 {
+	status = "okay";
+};
+
 &i2c3 {
 	eeprom@57 {
 		compatible = "atmel,24c32";
@@ -25,3 +48,40 @@
 		pagesize = <32>;
 	};
 };
+
+&mscc_felix_port0 {
+	label = "swp0";
+	managed = "in-band-status";
+	phy-handle = <&qsgmii_phy0>;
+	phy-mode = "qsgmii";
+	status = "okay";
+};
+
+&mscc_felix_port1 {
+	label = "swp1";
+	managed = "in-band-status";
+	phy-handle = <&qsgmii_phy1>;
+	phy-mode = "qsgmii";
+	status = "okay";
+};
+
+&mscc_felix_port2 {
+	label = "swp2";
+	managed = "in-band-status";
+	phy-handle = <&qsgmii_phy2>;
+	phy-mode = "qsgmii";
+	status = "okay";
+};
+
+&mscc_felix_port3 {
+	label = "swp3";
+	managed = "in-band-status";
+	phy-handle = <&qsgmii_phy3>;
+	phy-mode = "qsgmii";
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
