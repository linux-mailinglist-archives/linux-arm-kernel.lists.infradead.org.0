Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1381418124F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 08:50:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3d5z7Wm4955vfEfvSj1N+yddOEFF5KjA2U8rM4sG1gI=; b=MDgk1SDSY8JJtD
	RLENwlyBmLcwy3ch3eWTftWe7Ip0pJ0ZFzEBMYSxgnsUKjkZZFFLTf8OredNC9iwIM6oCGGCOXuIY
	RayZUOm8eLFyj9Fk7UxE3a+jpHNwdrrL1lMPMpzdi+sO21hVoC3HIO8UVSnwkPhP6WA2k7sQwEGlG
	r4P7dy3NJxhGyXwNHV/NbFm2vsSC/ZZxbutE1warQyn6ivFrnR0YoOXQ4tV1pGd6EN7yhZI86kzjC
	OZdrH0+tGib/0Jl4V2DuQzOQGXdLJq/H0YsIR44WkDsXAVnsA8zZbjV6byOTFeRM080wfgnzpKVdA
	SN8dBKr7rgfUCqTcRaGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBw85-0008OM-Dt; Wed, 11 Mar 2020 07:50:13 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBw7T-0008Aq-Ps
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 07:49:37 +0000
Received: from mwalle01.sab.local. (unknown [213.135.10.150])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 0669B23E6B;
 Wed, 11 Mar 2020 08:49:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1583912974;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=H+shfEljEGXLgMj8oCzuuOTVihWvQe0vDlgP5vJ+jlA=;
 b=OPVZTVk2AwH5cCom634oqm8TeHSk+5Wv7Xj6XZVv8RuvoqDOH8xdgyCQXlHOKDt7ZSpFb2
 n/KsmwRR+e+LHGwPejeLcWMaRWra1vDDXiVwsgav52PxvLKcTvFDq0hhz7D+6I66m3swON
 oW86W3VVCeKPAL47ONGBWYQ9XObhY6k=
From: Michael Walle <michael@walle.cc>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/4] arm64: dts: freescale: sl28: add SPI flash
Date: Wed, 11 Mar 2020 08:49:26 +0100
Message-Id: <20200311074929.19569-2-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200311074929.19569-1-michael@walle.cc>
References: <20200311074929.19569-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: 0669B23E6B
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 NEURAL_SPAM(0.00)[0.802]; DKIM_SIGNED(0.00)[];
 DBL_PROHIBIT(0.00)[0.0.0.0:email]; RCPT_COUNT_SEVEN(0.00)[8];
 MID_CONTAINS_FROM(1.00)[]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:12941, ipnet:213.135.0.0/19, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_004935_991388_A35E330E 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
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

There is a SPI flash on this carrier connected to the third DSPI
controller. Add it.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 .../dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts | 9 +++++++++
 .../boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts      | 6 ++++++
 2 files changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts
index 7de55f2aa7dc..7aee14193dbd 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts
@@ -68,6 +68,15 @@
 	};
 };
 
+&dspi2 {
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		m25p,fast-read;
+		spi-max-frequency = <100000000>;
+		reg = <0>;
+	};
+};
+
 &i2c4 {
 	status = "okay";
 
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts
index e6ad2f64e64e..58603bce5b0e 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts
@@ -17,6 +17,8 @@
 		crypto = &crypto;
 		serial0 = &duart0;
 		serial1 = &duart1;
+		spi0 = &fspi;
+		spi1 = &dspi2;
 	};
 
 	chosen {
@@ -24,6 +26,10 @@
 	};
 };
 
+&dspi2 {
+	status = "okay";
+};
+
 &duart0 {
 	status = "okay";
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
