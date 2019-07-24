Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2763C729AA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 10:14:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ewrZGFDDdH2Ta5Wc/3AqgibqfYCnEOzqkWbyLW1JpQs=; b=VcTs9qyL15m9eN
	mP/U3bQ7nCg68a6ueZAuyl6XRWtIUTYukCLt1CHsCufFVHerbWYSu1jx7pynXbIJquHldz/xAsO/3
	znuLeWeYeOHx7zGx80jbHkV7nT6thFKeB34+bzNu27QlQnopghuS46K3dFJTnC3t/xCkeG9s5sztz
	GrEjmZ/or+mNacZforWWHB8kLvhn1rHzszLPFPmOLNIq0xPSBAWrbck1/QUfkLNn7Sfj+fg7CpIYX
	jAgcia3DO90TvngxQmCWFLGp6milc0VvfcpV7QS7/1QxdoAiZfvl7fQOncow3HlzNj1TbgOwjeCCe
	2wobUBfjDZOGQCtcrF4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqCPW-0003ML-UO; Wed, 24 Jul 2019 08:14:07 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqCOg-00037j-SF
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 08:13:16 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 40DBA154B;
 Wed, 24 Jul 2019 04:13:14 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 24 Jul 2019 04:13:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=Rv20jGbPNsBjz
 MPKuVs8f/Enkq1CSpk7pUqYsFfVLc0=; b=I4LV+EQVtSheAKaWeKPzvHuWGd5bV
 pPkemqhoVa1emsmTDsB0nNnOBxNJ1WZJ3Y2zAmvW8V04jZojQD3f7M62g5U0V2T0
 kJH8yzQyWzKNExKq2wySEJmX1TB8qgJ6bN/IlxNrNuB4b5lhZ5TiGqss9LVNfeKH
 +nBroxpRlpD14M9eClULT1szZ8BQRZhikzOgCTovsJ7KIctkrPfVIox892lx2KwA
 gLIRGxqgPvtFKyzR7tKYLT9dN+g8LvBvq8XLwCVwStho6gHLCeKxiZAoESP6WQzs
 1BbUvnGoNeEaJbxd94CJDLXvKbWSqCP7qBjllE1YqiDGjFspqnnzJm+ag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=Rv20jGbPNsBjzMPKuVs8f/Enkq1CSpk7pUqYsFfVLc0=; b=OfF3r2Og
 XSyEKBVsSJpUY3RK4ITF6VLSQYr8rzJ8NPzGkC1W4ugmifoAGDdG6Ys70qq72iXi
 arRAx5aiz6VY/4MNf2uY6OUDvoLvA9mWGgAVBiTwV56ZHxL4BYnajE1KlBcWOwzr
 SyVdbpPRx4n+aD4dyY3pl5QASYQTg1rJNMiqbivOP1I6CPdayVLEu+xWPG+MavRY
 UEovJc5b2aH1joW8wywINbqmIi/PkzH5uDEM8XTkoOenxXGYvNLJFjeTtHeIkB6M
 ywglvkNd6lYjvKgEGtfgc2qbgVI/WCbDeqjhVlsaO9tQSAFrwtSAUW92bXV6IfGk
 B02hBd7xdiRxzQ==
X-ME-Sender: <xms:GhM4XWBXR_YVAfHNYj6ryTkEUqFpTYXgEZCti4_aGx7D77DZRW4kWw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrjeelgdduvdelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppedvtddvrdekuddrudekrdeftdenucfrrghrrghmpehmrg
 hilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghrufhiiigv
 pedt
X-ME-Proxy: <xmx:GhM4XYvGKJB_ZnKQrpUyW32LMhvIenl-HsnfBOYMhiE_2YIr-hcZMw>
 <xmx:GhM4XQ59KpWS1I5prOVB2EEugFk_VPjfaCPC0OIQGvZONFKQO3i9Ng>
 <xmx:GhM4XSf5SmweW64-uWMxlNbULxKGUzIpltCqso2d7MnH-FxVnfTHxQ>
 <xmx:GhM4Xbmt7DDcc8Ta96KX3PR2aTs7CeZXkUQo2VIx9UwS0t8GaDx8OQ>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8952680059;
 Wed, 24 Jul 2019 04:13:10 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 1/3] dts: ARM: aspeed: Migrate away from aspeed,
 g[45].* compatibles
Date: Wed, 24 Jul 2019 17:43:11 +0930
Message-Id: <20190724081313.12934-2-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190724081313.12934-1-andrew@aj.id.au>
References: <20190724081313.12934-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_011315_056975_36BA716E 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, lee.jones@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the SoC-specific compatible strings instead.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 arch/arm/boot/dts/aspeed-g4.dtsi | 2 +-
 arch/arm/boot/dts/aspeed-g5.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi b/arch/arm/boot/dts/aspeed-g4.dtsi
index dd4b0b15afcf..7f06dc21dc19 100644
--- a/arch/arm/boot/dts/aspeed-g4.dtsi
+++ b/arch/arm/boot/dts/aspeed-g4.dtsi
@@ -162,7 +162,7 @@
 				#reset-cells = <1>;
 
 				pinctrl: pinctrl {
-					compatible = "aspeed,g4-pinctrl";
+					compatible = "aspeed,ast2400-pinctrl";
 				};
 
 				p2a: p2a-control {
diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index 5b1ca265c2ce..04c97138e18b 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -215,7 +215,7 @@
 				#reset-cells = <1>;
 
 				pinctrl: pinctrl {
-					compatible = "aspeed,g5-pinctrl";
+					compatible = "aspeed,ast2500-pinctrl";
 					aspeed,external-nodes = <&gfx &lhc>;
 
 				};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
