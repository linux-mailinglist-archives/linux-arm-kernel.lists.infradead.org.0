Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F05E616ED56
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 18:59:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j0/h0evy5t6ozHSWvpZg16aC9ZVVdrSBUrZqjh0w47g=; b=vCAAjhpoaMB6RX
	wu9t11K42jrHhEn7eM9u6kTmpdEE4oQ3Dn2VEZVUnG3CZ1kMjEFByUz5hEy/limzs1ApDhmkwqmLW
	s4nIwhYqYMij2CPB6vsADLfZF2sMfAZyZDdZT4dlihw6x/nEZAS1tk9FrfVyv/Qoz3ZiDYhdGYknA
	ow52DeFWAs0whDuh5CFLf+gXnUcaPy/EHdDc+zziSFL+imP0oJQVOtSy2LFJ1nUgTCkr9QGQa27LW
	XRjFUyXFpmqAzMIrSUwDb9+WExJPH2gjonfZukH+Mljj+PamhojgIpa6zb5aMe7jnKxbAB17NS9Qj
	fiNN1VD0ZIeYA7/r/gLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6eUA-0003ds-3A; Tue, 25 Feb 2020 17:59:10 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6eTr-0003bj-Jz
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 17:58:54 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id B00822304C;
 Tue, 25 Feb 2020 18:58:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1582653523;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lB2pk3QwAsrPUz2cxLfMUJ8zzwe9Tvz5vwnnziHiFhI=;
 b=I1Os/6L0kMqAOwZ7ecqLI5sNkPYaDuoCRn1eCiNXKc+j+nM0j2KWDCbojdYRuuu9EWdn0J
 Koudk8HEg7I5XdPUL1DXyZhlXL90HDFJ/+z02P9+wzp8ANz+jj9EERX+tqwbD+NrVJMH44
 cd1vjc7XpByH2PKyPL2eGDNuuw/uEec=
From: Michael Walle <michael@walle.cc>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] arm64: dts: ls1028a: sl28: fix on-board EEPROMS
Date: Tue, 25 Feb 2020 18:57:54 +0100
Message-Id: <20200225175756.29508-2-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200225175756.29508-1-michael@walle.cc>
References: <20200225175756.29508-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: B00822304C
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 NEURAL_SPAM(0.00)[0.966]; DKIM_SIGNED(0.00)[];
 DBL_PROHIBIT(0.00)[0.0.0.50:email,0.0.0.57:email];
 RCPT_COUNT_SEVEN(0.00)[8]; MID_CONTAINS_FROM(1.00)[];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c::/31, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_095851_813389_A4AF154B 
X-CRM114-Status: GOOD (  11.64  )
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

The module itself has another EEPROM at 50h on I2C4. The EEPROM on the
carriers is located at 57h on I2C3. Fix that in the device trees.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 .../fsl-ls1028a-kontron-kbox-a-230-ls.dts          |  6 +++---
 .../fsl-ls1028a-kontron-sl28-var3-ads2.dts         | 14 ++++++++------
 .../dts/freescale/fsl-ls1028a-kontron-sl28.dts     |  6 ++++++
 3 files changed, 17 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts
index aaf3c04771c3..32f6c80414bc 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts
@@ -18,10 +18,10 @@
 		     "kontron,sl28", "fsl,ls1028a";
 };
 
-&i2c4 {
-	eeprom@50 {
+&i2c3 {
+	eeprom@57 {
 		compatible = "atmel,24c32";
-		reg = <0x50>;
+		reg = <0x57>;
 		pagesize = <32>;
 	};
 };
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts
index 20fd86746f94..ff4a43986290 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts
@@ -80,6 +80,14 @@
 	};
 };
 
+&i2c3 {
+	eeprom@57 {
+		compatible = "atmel,24c64";
+		reg = <0x57>;
+		pagesize = <32>;
+	};
+};
+
 &i2c4 {
 	status = "okay";
 
@@ -92,12 +100,6 @@
 		assigned-clocks = <&mclk>;
 		assigned-clock-rates = <1250000>;
 	};
-
-	eeprom@50 {
-		compatible = "atmel,24c32";
-		reg = <0x50>;
-		pagesize = <32>;
-	};
 };
 
 &sai5 {
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts
index c60a444ad09d..4ba6aae45ef1 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts
@@ -181,6 +181,12 @@
 
 &i2c4 {
 	status = "okay";
+
+	eeprom@50 {
+		compatible = "atmel,24c32";
+		reg = <0x50>;
+		pagesize = <32>;
+	};
 };
 
 &lpuart1 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
