Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2197E18125F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 08:50:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I0ngV2CKTvRIXi+Ch5u/lgPXhuE9MxE74ZNzAsGXYX4=; b=HfyjiAF2b9CzRf
	CtrTrPdrf5wDUHKbmsdUZzAyme00E18j7AvftHS2H9FfKMqUJIkBxbmG9yMbtBsdwOB34nAsoPVbv
	8R7LArBB7NMPsIvv9SWMIvLY48jjcO/34MKGkl5d3Po29jy07nSLekwRGJmrxuD65EwW4RpFTLVKN
	2Xb3qtrYbMZBcCqdyVKq4U4uQ+dIXvckarcasu04ywV4ujwfiMwMabY+4h3X/BCVFB45bemQKfVDj
	3sDWEIuWeivpfRSTqRoWCH4MACF/zTaPt56LFSMgtDxezJXt48/pJb5F9qqllGoJim8SQLwba3Kue
	mwcuVnWsIVXttSzmfQYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBw8d-0001h9-Pc; Wed, 11 Mar 2020 07:50:47 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBw7V-0008BE-3i
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 07:49:38 +0000
Received: from mwalle01.sab.local. (unknown [213.135.10.150])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 5582723E7D;
 Wed, 11 Mar 2020 08:49:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1583912975;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=p8/7NKL09SHsuEl1uHYny7QPYQ0m0GW+NScMr4x+hvo=;
 b=ofXpGRZNLYW/b9NlkEARihxw62NCrPsE+3vsCCNUv7ujBGcmvbfnxWUW3yJgU5uHUnPegG
 RfaSCZfrGGUWQqmcv28BJlYF+kKqxyt2A84JOHs3D3OJUP5TghH9DYf6+0t8xM2UiIgoAr
 IoKucXLCmhhY2yPvD5bFFtlIVKrjrM0=
From: Michael Walle <michael@walle.cc>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/4] arm64: dts: ls1028a: sl28: expose switch ports in KBox
 A-230-LS
Date: Wed, 11 Mar 2020 08:49:28 +0100
Message-Id: <20200311074929.19569-4-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200311074929.19569-1-michael@walle.cc>
References: <20200311074929.19569-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: 5582723E7D
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 NEURAL_SPAM(0.00)[0.809]; DKIM_SIGNED(0.00)[];
 DBL_PROHIBIT(0.00)[0.0.0.57:email,0.0.0.8:email,0.0.0.10:email,0.0.0.7:email,0.0.0.9:email];
 RCPT_COUNT_SEVEN(0.00)[8]; MID_CONTAINS_FROM(1.00)[];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:12941, ipnet:213.135.0.0/19, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_004937_323778_CA9C32F5 
X-CRM114-Status: UNSURE (   9.58  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
