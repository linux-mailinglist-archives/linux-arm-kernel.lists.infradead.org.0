Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 921BA16A582
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 12:51:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n+Len5rdSA+3/utUFzRiAvJeQ6Sc57pDf5X0BCtF2es=; b=VKBSYUHf6Zvnoo
	xAs0AuTu8ZeSMXo74MK8oEdCnmpKqa5dzZHx4KwLDNqiZ87ccdU1F+ipysJreBzWYqQr0BjQkZ6Y5
	VGs6Ui29JfWq6CRk7tvwbGjS1Hwe1/UcxGXJ0oLnnRWq3UiB6h6F1e9yIxrKZHf5zFV0cGSFhgIM9
	DawrT6MCTx/HDnPp9X2wV1FpxFjyHTX+ggZT9cwJP4Sqgn1x3UbJzyCJOgRhFz9H/EN0pVeFTXGGD
	/ximj1qcJhSG6WBDmYADLBxRaU8QOr5X/zDnUMtfdlzKHkK08ziQi4lbtgJ+TO2VsKRiaTT6sWnma
	zy6RZiWnxpjKRnJ+KxYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6CGX-00041v-5I; Mon, 24 Feb 2020 11:51:13 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6CGN-000414-UO
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 11:51:05 +0000
Received: from mwalle01.sab.local. (unknown [213.135.10.150])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id DEA2422F00;
 Mon, 24 Feb 2020 12:50:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1582545059;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=AGoftlXtPDkl6tdoN4g4nLlzfqZ5fb+l68Uc8F12Pnk=;
 b=BKZdz9HMC+by7IJBwDLcq7etejsomdPgSJDWZUxFdRgtDW0aDmVaBErBhsFLyj3TSlE5Bb
 8a56/4veaOOn1UewHFAjIdg/LNkByuC5W8LUxW/xxd7Rcay78IUz6ipCIjKTGsqmBwhOjf
 LEYZg2/Lv0btJqKLwKgtXgths71xFCk=
From: Michael Walle <michael@walle.cc>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] arm64: dts: ls1028: sl28: explicitly enable network ports
Date: Mon, 24 Feb 2020 12:50:52 +0100
Message-Id: <20200224115052.27328-1-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: DEA2422F00
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 NEURAL_SPAM(0.00)[0.776]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_SEVEN(0.00)[8]; MID_CONTAINS_FROM(1.00)[];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:12941, ipnet:213.135.0.0/19, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_035104_127142_E421BC02 
X-CRM114-Status: GOOD (  11.84  )
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
 Rob Herring <robh+dt@kernel.org>, Li Yang <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit b9213899d2b0 ("arm64: dts: ls1028a: disable all enetc ports
by default") all the network ports are disabled by default. This makes
sense, but now we have to enable them explicitly in the boards. Do so
for the sl28 module.

Since we are at it. Make sure the second port is only enabled for the
variant 4 of the module. Variant 3 has only one network port.

Signed-off-by: Michael Walle <michael@walle.cc>
---

This patch actually superseeds the following:
  https://lore.kernel.org/linux-devicetree/20200220180919.6069-1-michael@walle.cc/

 arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var4.dts | 1 +
 arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts      | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var4.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var4.dts
index f659e89face8..df212ed5bb94 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var4.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var4.dts
@@ -21,6 +21,7 @@
 &enetc_port1 {
 	phy-handle = <&phy1>;
 	phy-connection-type = "rgmii-id";
+	status = "okay";
 
 	mdio {
 		#address-cells = <1>;
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts
index d221ed471cde..e6ad2f64e64e 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts
@@ -35,6 +35,7 @@
 &enetc_port0 {
 	phy-handle = <&phy0>;
 	phy-connection-type = "sgmii";
+	status = "okay";
 
 	mdio {
 		#address-cells = <1>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
