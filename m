Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9523C15727E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 11:05:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jTBrsYbIxGGs/V6rJosZDPFfu52RHihYTvl+p7nHqw0=; b=uxy1b2/KKBN+ou
	JtfT5LbuiddrSUeTsT+KWUSjoH27DdQtSnJdAbW6jwswCcBbcGYUThHAoVq7Y4GJazXJzrqZaB+gZ
	Vks6cqEy2Q2FOv6v3/T9lUS9h92aUHXAVMTAbSO/UaIjTNQXi4dCaLHTDoyoS2y8pOMtPRmJ3kCwe
	GLvAkKdW10IPSiAOGtOpq9VpJDcF1WpnLQ/O8poXT3Sj8ntYSaWDxv8rwtAxPVNkzw70XG/2lZsbo
	rL3jSsf+GLafDWobQ8ih36rafjg42CtA7LXeGYtM5dTSDs4eB58ypI67J3g1e7NIQqL8OwInOziBN
	adiuovCC3ZT6zFVKUfvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j15wU-0006AQ-Fy; Mon, 10 Feb 2020 10:05:26 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j15wA-0005ng-4T
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 10:05:07 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 347A721EBC;
 Mon, 10 Feb 2020 05:05:05 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 10 Feb 2020 05:05:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=OUh+BFLJI5/m/Us7I80+FqIdT/
 uSz30g4NJ7pLIJY3M=; b=IpUmhiskEa1113T6f3lghkmRosWYCMMN9Cso84Trkf
 ArHV2hNwHuA6RMAAyjbPfu11XeolabRN9LcO6aBrPd1NkABHDJp1wdmlVcvvG7nq
 dcxEppMISFZvbyNaZbuYgOHwq+IrJYKP0i00raNsmEE0CKfVnMEWREJf3AdHF+Hn
 qZEk+qVVOt8FniZ9Jrk8GxGQdoiXS2fw/ivwmzmZSv94tprbVmRWtI+sere4Bxev
 BXRw5Dxf8kcMzIMhR9k42tphKsMiXdXW3hhJ0HCAfYZEazBXTi8TlFEEESkFmR/6
 S+c48cjfPjsQSBKPEEZUetmcObqQgWFVDurGBhT7dAcA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=OUh+BFLJI5/m/Us7I
 80+FqIdT/uSz30g4NJ7pLIJY3M=; b=h/tiJSe5dVcST2lj26ttHoWFJPMC5oPBR
 sNK2eQk0KknT13rEWltwt7gdmT0NNoYwMCAaCi/qOlonHQAMSrk/dDTS2Msdjf1i
 0rM1ilFFCjnDp4dfqGDK/F62K9zLmsxD/sPrVL/rsaxXy1uAX//DfZXhq8w8rM/n
 UTEUdmUurvRKQUnaV1a8NdyvOz7HICUZ3TmUABX8ehRI4fmLpmZK3N8RTskVIwKe
 jg5v+9kUBJq1p0p8XT/J2eROjdbp8iozv++iDGleLmwAPH2pbG/V5oFNuIhqa3Dd
 NRWWDaLauyllFk9vRvDSq0fF6KTuKvvpZbIK0CG4cldYOIoAkGs3A==
X-ME-Sender: <xms:0CpBXo9OtRRWAtXpq6reQyhsyIVLBL7mNmGCCsmd61uUoGom4B1jHg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedriedugddutdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucft
 ihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrdekle
 drieekrdejieenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:0CpBXnA1BLfrQnBabSYNmIFZud7nzwWDPQO234IBYsmAKKf069ogfA>
 <xmx:0CpBXkDWmQl0oU5gTwsEAAl6pZoEUUHRIjraz-33PmGt3IytZ2QYpw>
 <xmx:0CpBXlxa-q7phvH-fovlB5hj2AaXvjgdKK5WHj6SKSggy901O0oscw>
 <xmx:0SpBXiLxGrwCfpjOICENL_6dZQoawTuMtVpdNF_2UA-1Yc9AFb3Agg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D97653280064;
 Mon, 10 Feb 2020 05:05:03 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, dri-devel@lists.freedesktop.org
Subject: [PATCH] dt-bindings: display: sunxi: Fix compatible
Date: Mon, 10 Feb 2020 11:04:55 +0100
Message-Id: <20200210100455.78695-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_020506_362866_80512EE7 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Maxime Ripard <maxime@cerno.tech>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit f5a98bfe7b37 ("dt-bindings: display: Convert Allwinner display
pipeline to schemas") introduced a YAML schema for the Allwinner TCON DT
binding, but the H6 TCON-TV compatible was mistakenly set to fallback on
the A83t's, while the initial documentation and the DT are using R40's.

Fix that.

Fixes: f5a98bfe7b37 ("dt-bindings: display: Convert Allwinner display pipeline to schemas")
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../bindings/display/allwinner,sun4i-a10-tcon.yaml          | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
index 86ad617d2327..5ff9cf26ca38 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
@@ -43,9 +43,13 @@ properties:
         - enum:
           - allwinner,sun8i-h3-tcon-tv
           - allwinner,sun50i-a64-tcon-tv
-          - allwinner,sun50i-h6-tcon-tv
         - const: allwinner,sun8i-a83t-tcon-tv
 
+      - items:
+        - enum:
+          - allwinner,sun50i-h6-tcon-tv
+        - const: allwinner,sun8i-r40-tcon-tv
+
   reg:
     maxItems: 1
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
