Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E44148501
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 13:11:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A+hSPKpEGtBfahjZtjkMj2tohGy9kJL8YDIHZHR8xbI=; b=B5BXukD7wiAog1
	b29SISHQmS2uHO+JBJpwDlYiWkvsMCBwVJJSvyJ8gW6kg9h3TZX2Ci00vC4rAQZDxezv4lmrqVp8D
	gPAm/R9DJrfZTHeN1PkaV5Ut0/chSJcRXRs3m4ugin05qNSfyYzSp/naX4EjnspmDH4GliH6v0WMC
	LKS+GtAjZNteoKJ3ivPvI10xmi9Ogmt+Jv/kexDRW9aoF1oZtTRrK02U8nfdZHeIRKBkJL7J0wpen
	FrXXVN5SYNu51U/Ky9JJMXjaqz9vHbG5+1ycyhke+HxgNh38MJ5EK9dA0j37NQ8HQvz5kXKIS2m92
	GUGk49oM/1ixOYTHp2mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuxns-0008U6-9w; Fri, 24 Jan 2020 12:11:12 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuxnh-0008R2-Dr
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 12:11:02 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00OCAviN115358;
 Fri, 24 Jan 2020 06:10:57 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579867857;
 bh=u8GDMQWkvTPZQR05J917eZkNCR3bRNJDSQNATGVb7H4=;
 h=From:To:CC:Subject:Date;
 b=QMhUnlNdyr1XLJd4FcqdkWT3mVGKkHdmMyi0AHZMbk6SaD6AkHyxKwJiBfj/ShwFD
 Hl5T13rlsXSQGv3MkIr9TTvS9A2z5onRPdlWFHX4YmhIQq4iMQCeilxCXMIeH1qdiz
 41ky8C9h/yffjhBYSkG+Tt1F+xJGQzS/9/PN/f1o=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00OCAvwP120718;
 Fri, 24 Jan 2020 06:10:57 -0600
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 24
 Jan 2020 06:10:57 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 24 Jan 2020 06:10:57 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00OCAt7w065837;
 Fri, 24 Jan 2020 06:10:55 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <bcousson@baylibre.com>, <tony@atomide.com>
Subject: [PATCH] ARM: dts: dra7-evm: Rename evm_3v3 regulator to vsys_3v3
Date: Fri, 24 Jan 2020 14:11:39 +0200
Message-ID: <20200124121139.28657-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_041101_510060_61B73252 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On the new schematics it is renamed and the same name is used on other
dra7 boards.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 arch/arm/boot/dts/dra7-evm.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/dra7-evm.dts b/arch/arm/boot/dts/dra7-evm.dts
index de7f85efaa51..af06a55d1c5c 100644
--- a/arch/arm/boot/dts/dra7-evm.dts
+++ b/arch/arm/boot/dts/dra7-evm.dts
@@ -61,10 +61,10 @@ aic_dvdd: fixedregulator-aic_dvdd {
 		regulator-max-microvolt = <1800000>;
 	};
 
-	evm_3v3: fixedregulator-evm3v3 {
+	vsys_3v3: fixedregulator-vsys3v3 {
 		/* Output of Cntlr A of TPS43351-Q1 on dra7-evm */
 		compatible = "regulator-fixed";
-		regulator-name = "evm_3v3";
+		regulator-name = "vsys_3v3";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		vin-supply = <&evm_12v0>;
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
