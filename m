Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C4710805A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 21:27:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M1h+vHaVgAzFPijnMrYkQ0slQfJA2jYYfnzz3FjtgzI=; b=PYS/5LuUq7Ryzz
	ApN6TDGrCXuDEd7K5/xDJGvM2zzD4AqgSyyQQvpwJyU3+MJtVvaDKUbtghxVAU0tZRYPI8a+guhPI
	hk3azSE7ALEYidhW7d4XBN7mAEiNBe4Bkytw2zhg+XA1i1xCWOk4v2avPNOnMx+nKrTeqGXYsmX4F
	C/+PczUS3bsKZBiiXubsvtwWAXLruE2UrVfZttY5Go9skY0XZU1qFFNHVoxNv6kDb7Ix4gPnWVj3j
	5gQJCMxLZaGFfqvvnSHaLPcmFu2yHDBNOAQp2TPshR3ogGdxwqzcCORjBv8OWnLHiJ4ksvGJyJ4fs
	4o4mG4Sx7a+Kthnn9M/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYbzn-0001H3-8y; Sat, 23 Nov 2019 20:27:07 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYbzd-0001Gj-O5
 for linux-arm-kernel@lists.infradead.org; Sat, 23 Nov 2019 20:26:59 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 962BB230E1;
 Sat, 23 Nov 2019 21:26:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1574540815;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=CjnDxDVusQudyzIq4hR+IrWDdu9VSceQ+vJNP8d7HUw=;
 b=EbXaVvxtYVm2vGqA4Jy6YS3h0cZNrkKvUvfmaaKTtmStBnWOI2y1SCiQiNsDSue9HgTQan
 mKgq2+ovvd/HL4ZYGXN1g5b6KYVjhJ9dbQl07WWL7KkpQkHVNJydm1YDifDA2d31kYfA8S
 3X+1UBIGliumiuATh77nmVTmDhMj6CM=
From: Michael Walle <michael@walle.cc>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: sl28: configure the RGMII PHY
Date: Sat, 23 Nov 2019 21:26:24 +0100
Message-Id: <20191123202624.28093-1-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: 962BB230E1
X-Spamd-Result: default: False [6.40 / 15.00]; ARC_NA(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 R_MISSING_CHARSET(2.50)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 TAGGED_RCPT(0.00)[dt]; MIME_GOOD(-0.10)[text/plain];
 BROKEN_CONTENT_TYPE(1.50)[]; NEURAL_SPAM(0.00)[0.146];
 DKIM_SIGNED(0.00)[]; RCPT_COUNT_SEVEN(0.00)[8];
 MID_CONTAINS_FROM(1.00)[]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c::/31, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_122657_943800_D50FD5FA 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

This uses the new AR8031 PHY binding to enable to clock output and switch
the RGMII I/O voltage to 1.8V.

Signed-off-by: Michael Walle <michael@walle.cc>
---
This is not part of the previous series, because it depends on the
following patch series which is currently in net-next:

https://lore.kernel.org/netdev/20191106223617.1655-1-michael@walle.cc/

This is the previous series which this depends on:
https://lore.kernel.org/linux-devicetree/20191123201317.25861-5-michael@walle.cc/

 .../freescale/fsl-ls1028a-kontron-sl28-var4.dts  | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var4.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var4.dts
index 5c8b13108e4d..f659e89face8 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var4.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var4.dts
@@ -11,6 +11,7 @@
 
 /dts-v1/;
 #include "fsl-ls1028a-kontron-sl28.dts"
+#include <dt-bindings/net/qca-ar803x.h>
 
 / {
 	model = "Kontron SMARC-sAL28 (Dual PHY)";
@@ -29,6 +30,21 @@
 			reg = <0x4>;
 			eee-broken-1000t;
 			eee-broken-100tx;
+
+			qca,clk-out-frequency = <125000000>;
+			qca,clk-out-strength = <AR803X_STRENGTH_FULL>;
+
+			vddio-supply = <&vddh>;
+
+			vddio: vddio-regulator {
+				regulator-name = "VDDIO";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+			};
+
+			vddh: vddh-regulator {
+				regulator-name = "VDDH";
+			};
 		};
 	};
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
