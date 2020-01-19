Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C83A8141F12
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 17:32:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NP02iFNkr1t7eAtTCAGE8i/zJ8MFn2RcHP60wYNZqC4=; b=ZNcXu+RIrYlDar
	HNaMhEug/kHHCykZfgLDwfDbmMIOYtluhxDnyV6mtbklq4lYAMwoWNL43OaIGW2KFLllbEjil5ivq
	fYa+hAOLmV+2ll0NfOfzvfLmn0w8s3WLEPdTiinLc73R5HI/Vh0x6oZfbHNKZJh2K4+nBR9MnkPdo
	GtveSO5MOUzoaxdrto687UJwjHeybOuY1gDrgUcm75ELuW1I0/ezoKoq6igGrFRD/8VxL0IM+LNhs
	/WrBrgKr0OzbC5MXDzsKun+grRZyvioAIVX9i5y+tnYHrUvERPDRtuFHPVy+6sRLmDcp2xiZCFk7u
	RRggrbgXCDlKlDfABrKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itDVB-000644-NT; Sun, 19 Jan 2020 16:32:41 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itDTl-000551-Qj
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 16:31:18 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 43B2521A7B;
 Sun, 19 Jan 2020 11:31:06 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sun, 19 Jan 2020 11:31:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=XU3BXx7kzPpiK
 PBvVKiBW6xDC3euYJdkTNurYmc69dU=; b=JMO0rMkTHJ9fBe2zm0/aQ2Y3tzda6
 9/IX67VI1CEN7/TsSgONTdcqgXjO9EXUKYB8ZAsRopACt6JJ0TOZKmEIag2vBJ9Z
 JP85meOTc4J4/bLEREIzoWNF3e2xgiriT9jv4IRcEqq8wQGWKbDFUlnZt5cIUPno
 P6fFBN+H5XVtmHnhlfakWquMruDsZkHbO1i75cD4DSSDKPcvz+QtKXw/DyuE8RWU
 FWGKjFMapd4hGhBA+sikTESJWumsya9TyY0w8Wl1sClH+jyu6c7FLbOLPY8hTtTu
 pcTcC5NwaHFeUZH9e2kLkG+HcG2rvFmV0wd8LcUCDlLpdtS3a+o3RvqhQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=XU3BXx7kzPpiKPBvVKiBW6xDC3euYJdkTNurYmc69dU=; b=cZl1js/U
 oNghvC5cxFsm0vs48w2A2+O3u9E+wr+spCZv9DS3Fi29mrRfYChz8nVJGKIeTtdL
 tPjB/C0pP9UOC5d5X93Jt+sH18g0mUUv9785F0DB+gMvlxXoPLG+2HOzE5cAj3Jo
 WPjVwxAZRcP7Ltxev8qjzTCIuSif7nPatLoqXcGKAfS56dJJBI2b9KsEBR+OalKv
 HUojyB6h6f5oloPWRP+HDfjDhAqYHX7Wi4uLwXZAQmddkPdJvoRCltbus7pWtQG2
 FRoN+b6MfPV8Jk3odp1LPdoOQg1H6cnJgMRBJJ/+QZypfeJPhFnJC5Ie9wBf4Qfj
 HtBrRywAmuK3jQ==
X-ME-Sender: <xms:SoQkXqDAF8l2mYGXFHy3Ni98nmBVCxbRkj0GEHT0U04CfUBAfJ8opg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudefgdekkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhu
 vghlsehshhholhhlrghnugdrohhrghenucevlhhushhtvghrufhiiigvpedu
X-ME-Proxy: <xmx:SoQkXiUhGU7ufDb9EErmLWJRM_gD306q7YX_rcJSPFRB74OdnnY0hg>
 <xmx:SoQkXufZeJnYyzUjmzU5xbVW34HHtRZ8ZTSzqBXulSM-PVIkRgWt0w>
 <xmx:SoQkXjtYBna0KySNl9UF_zg3Nv3Qp3y9JJxwrzMlyRNkvjgIzfwR-A>
 <xmx:SoQkXqRfj68MVCc1H1gPDWzjVBdWWWxxeIS6NC0jlNWNcLKlfbnzEw>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id A7B1480060;
 Sun, 19 Jan 2020 11:31:05 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 3/9] arm64: dts: allwinner: pinebook: Remove unused AXP803
 regulators
Date: Sun, 19 Jan 2020 10:30:58 -0600
Message-Id: <20200119163104.13274-3-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200119163104.13274-1-samuel@sholland.org>
References: <20200119163104.13274-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_083114_175129_2A98AD3A 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Pinebook does not use the CSI bus on the A64. In fact it does not
use GPIO port E for anything at all. Thus the following regulators are
not used and do not need voltages set:

 - ALDO1: Connected to VCC-PE only
 - DLDO3: Not connected
 - ELDO3: Not connected

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 .../boot/dts/allwinner/sun50i-a64-pinebook.dts   | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
index ff32ca1a495e..8e7ce6ad28dd 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
@@ -202,9 +202,7 @@
 };
 
 &reg_aldo1 {
-	regulator-min-microvolt = <2800000>;
-	regulator-max-microvolt = <2800000>;
-	regulator-name = "vcc-csi";
+	regulator-name = "vcc-pe";
 };
 
 &reg_aldo2 {
@@ -267,12 +265,6 @@
 	regulator-name = "vcc-edp";
 };
 
-&reg_dldo3 {
-	regulator-min-microvolt = <3300000>;
-	regulator-max-microvolt = <3300000>;
-	regulator-name = "avdd-csi";
-};
-
 &reg_dldo4 {
 	regulator-min-microvolt = <3300000>;
 	regulator-max-microvolt = <3300000>;
@@ -286,12 +278,6 @@
 	regulator-name = "cpvdd";
 };
 
-&reg_eldo3 {
-	regulator-min-microvolt = <1800000>;
-	regulator-max-microvolt = <1800000>;
-	regulator-name = "vdd-1v8-csi";
-};
-
 &reg_fldo1 {
 	regulator-min-microvolt = <1200000>;
 	regulator-max-microvolt = <1200000>;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
