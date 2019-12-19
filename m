Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9920A125D73
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 10:17:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aKn+l6SysoHQmKyxSirtnk0vjtwkv7M0nVOw8KRAj/4=; b=lj3gPEAVNOQRrm
	aU5rOBvbIAdEprgsGL6Y3sVwrMXhUsdW1CamcPVzNjYfTiM8GMdEPBtdR8OZAvj+Exd1xmPxgDbXJ
	R3npEw8T8bbY+leA6u+4qlfjo9rQM45XE1+pWWwUD/uyYj1+LIqz8Zuneoft4q79QolKXnFHQ7PrZ
	fT0jLi0bwWYAdRsZfye7hPlxHUpT7QAgCYNgG+hhda+ORYZbLcsmTSsTqLBWIqZetcllerb/pZbIK
	epz2BlSgxVu3EOkYd239vTfid04gdfGSJDPXlB1/+RQqivOK4I2UoA3hEtmEdyQNfIlP7bwxEORas
	ZJGSuC20WVkybwi8ZUfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihrve-0007GT-Se; Thu, 19 Dec 2019 09:17:06 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihruR-0006EC-DH
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 09:15:52 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 9696B4B1;
 Thu, 19 Dec 2019 04:15:50 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Thu, 19 Dec 2019 04:15:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=zvJfQqvVGnBDj
 JR+8wcaXxHfqShynCJEtw76QvclxPM=; b=eNRVJisrcfp9D7agDYt1WVcVeBlKB
 PERuDJY7BB0rWqt+X/7NKLKfn0gXhMln2sFEIM+Zl3VS5HrZ8Hj/0ZP2DQ1Kguzp
 /cDh+cTTS0tMszt3HAPe8R6mzXcbEwhua5ePkuEFIG0DK1jyABp0Ze0iPR8CtoIB
 pBImEy3g03S94BCR1vfdJ/+z8FA4qx70yQ8O/4Px9zFtELvK6iJFEKmW8THkCZfx
 fj/vnJras/fcQRNnrrrG06OuqYt1AEikPxjIoJNrXng5jN79ta/SdJMzICx7w3bF
 LEOoWbcIJ6P4WA/C29ikco+PjKjYlBv2A9ANbZuEPzz+01N5vQYarjizw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=zvJfQqvVGnBDjJR+8wcaXxHfqShynCJEtw76QvclxPM=; b=DCDsaVPs
 OmStWHiVL+m+CjLYVALuixbXMjwFUyum7jUwCbFQ5IfUehjPsZhyO2denYQ0grNP
 LcXJlKLSZM4aK/8U4RKGFc11lw7uBr1K3MlJHq0yZxG+9cwemtNDo5m/cB+Bvbbv
 wyrNXOop9yzH+/oK8TJd+chYvGDrD+Acgbj5MllZs0cV4764W9LMB9isMpBt/JF+
 tH6sE27JaYT1CfIvrgvkA8LE7pM1IZc0UZ+3sCQzqYXz9YBnnRlHNenNwC9Ash/g
 uthITJKCcsQOSfZo3qoWfb5d1/fNlnXJy13ZkQglGogrVFls2VdA5A3EIYs9BB3t
 NZ/528OqCMuTMQ==
X-ME-Sender: <xms:xj_7XVUYmuWqqQbFxWfVsvGFf5PpFhjEOMV3hl-ceS31vSS6KDodHA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdduuddgtdduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrgigihhmvgestggv
 rhhnohdrthgvtghhqeenucfkphepledtrdekledrieekrdejieenucfrrghrrghmpehmrg
 hilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthhenucevlhhushhtvghrufhi
 iigvpeef
X-ME-Proxy: <xmx:xj_7XZ2v-fkXyk1EKP6r0O_pd5KPoH3RZRqLwg5MzBzwswF2jedSag>
 <xmx:xj_7XcbAfY-84ykwOWHVnuB9CnyNk5H42KC60yFItnqGvKv150pgww>
 <xmx:xj_7XcoBRI0fliBOgq-kIzpwu8atmVnWU7j7H1pEYGTPN2n7DUGv6A>
 <xmx:xj_7XUEFN_jfaGaE3su-zxxwhkYuucyWCaCxVbV72dbbs9zR8WOr1Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id C5CF18005B;
 Thu, 19 Dec 2019 04:15:49 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>,
	Maxime Ripard <mripard@kernel.org>
Subject: [PATCH 5/5] ARM: dts: sun9i: Remove useless reset and clock names
Date: Thu, 19 Dec 2019 10:15:39 +0100
Message-Id: <20191219091539.948530-5-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191219091539.948530-1-maxime@cerno.tech>
References: <20191219091539.948530-1-maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_011551_487062_BACF195C 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MMC configuration clock controller in the A80 definition has a
clock-names and reset-names property, even though the binding for that
controller doesn't declare it.

Remove it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun9i-a80.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/sun9i-a80.dtsi b/arch/arm/boot/dts/sun9i-a80.dtsi
index dd292a670921..3b533e85da43 100644
--- a/arch/arm/boot/dts/sun9i-a80.dtsi
+++ b/arch/arm/boot/dts/sun9i-a80.dtsi
@@ -530,9 +530,7 @@
 			compatible = "allwinner,sun9i-a80-mmc-config-clk";
 			reg = <0x01c13000 0x10>;
 			clocks = <&ccu CLK_BUS_MMC>;
-			clock-names = "ahb";
 			resets = <&ccu RST_BUS_MMC>;
-			reset-names = "ahb";
 			#clock-cells = <1>;
 			#reset-cells = <1>;
 			clock-output-names = "mmc0_config", "mmc1_config",
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
