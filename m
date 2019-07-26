Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB0875E9D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 07:47:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H5uX6sUfHZ9LYwFbG7AHDDC5+j06QBaig3F9tSggkgA=; b=cWzJ8OWWRJAZqk
	SGREG2rlOZChOEJWMyigVckohIJwnSxKtOOExrFWCoWwMT/+U5UEz6j7V9hUnO3EInXgDAfWVwaXU
	rrxxlybzySbMx6NmOJsRGGgRPNeyGoaHP6bs2yc8/7ndSQdbdVRYNnGh4aC2YG1ubkytIicgMJ1uy
	uCsVR6QnpngH9qJPFmGCcADXO7oIlXe+DiTHpRdFo9Nc2xKSYp4tV0PCBQvLgSRelvwI5c19cX2xh
	wX+MhMItUB+BhLsIx6EftrP2MMGh3Qb5oEckSjUng5kki8uKjlblga103EVOjrvrQMd7vTa81CiZ7
	hKOYGcxduZTvimo9WO1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqt4E-0000sv-H6; Fri, 26 Jul 2019 05:46:58 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqsya-0004HQ-1r
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 05:41:11 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 277D22224B;
 Fri, 26 Jul 2019 01:41:07 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 26 Jul 2019 01:41:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=gpQ1TBb0gwUJc
 OfeiYZ/1OgEUFC0/0yn8lBHazBW8Sk=; b=N2ogfR9EL8GAAUlIsTuOCcKcOu2l9
 fQksDy9ZkEpZghafwmcTx2Kwxh/Ox78H+HXCBaG7Y7NM98DQng9kSDAQqnuj+0wW
 Gc5bPsoDV89UuiGoVGThgfZ2J7tiZFdCvJI+aVNgWnl11h9/H9uCCCfUZByd7FTi
 jmUKFg2NEMazRmdiy9A6RC/TvBa2SloDsdwhVmxhaPoE++C5s+d2D772/h1ni1vP
 Qi1KrcS3s19YAmbWWZM8A+iEN/IHN4MIpg7WGxm60h9OupwgxqBOO8+vtPMWXx7L
 +wLvoW6aXzxAhUH7kM+03PwYHSUKDGifwbP4kwiyQhEH+YBwDGPEKrC8w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=gpQ1TBb0gwUJcOfeiYZ/1OgEUFC0/0yn8lBHazBW8Sk=; b=HHIyDzef
 AIIXwLiMxyIeoukhw9CgcKpL3tBMyfC3eHtSzAz8S6m60whuXhlcEVs/XXPHJS//
 Aog9P+GWBzZU9dCeqGi9/nAKQxZDLepEjeeefDnhIBNaaacUjvMQHLneTyZ56tj4
 zGDFgafejSYLie9J0H1mTORx1S4QhyDzb4oE+/DkuH4ch52OAtCSeVz3LkGjkHNJ
 sCq3xy0AdrDoHQDjCGGOa0Dn9XQTEz9ZbNXAOTykyWfnPx62b0QQi5uz0qJa9pST
 FSqjcyN4lb5pmcOrxPJppl2gGlkzKrBLzwHGAZxyLghCbyJRLurFUh+kbU5aywm0
 hLOh6EdQVUgqhA==
X-ME-Sender: <xms:cpI6XZEcbn3fSDDUFJ7lNu33qz7iK8ahZ5H2VMgwES4YKyvih6MsJw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrkeefgdellecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgep
 ie
X-ME-Proxy: <xmx:c5I6XTl5N3jGXD3_pBBmB4V4DB1l1Qq3HKFT4ksPQf3NofmV2lr2eg>
 <xmx:c5I6Xc1ypw1ImXXi5AloArgD54VkaEzzJsc8zGMRBKtvFZWSO72nJQ>
 <xmx:c5I6XXQFtRDaiwYuAUuAE1rk-ii4_r5sIecq8TJdvy4ObiouTEGIgA>
 <xmx:c5I6Xdr3XglFJ_lg_o9iGf2V-HmM1M7MQi-zsP6lnilYk6b26gB9vw>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id A3F6D380074;
 Fri, 26 Jul 2019 01:41:03 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [RFC PATCH 17/17] ARM: dts: aspeed-g5: Sort LPC child nodes by unit
 address
Date: Fri, 26 Jul 2019 15:09:59 +0930
Message-Id: <20190726053959.2003-18-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726053959.2003-1-andrew@aj.id.au>
References: <20190726053959.2003-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_224108_284285_B29E75F4 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, joel@jms.id.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Lets try to maintain some sort of sanity.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 arch/arm/boot/dts/aspeed-g5.dtsi | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index 50ba58dc5093..99d2995a43db 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -423,17 +423,18 @@
 						status = "disabled";
 					};
 
-					lhc: lhc@20 {
-						compatible = "aspeed,ast2500-lhc";
-						reg = <0x20 0x24 0x48 0x8>;
-					};
-
 					lpc_reset: reset-controller@18 {
 						compatible = "aspeed,ast2500-lpc-reset";
 						reg = <0x18 0x4>;
 						#reset-cells = <1>;
 					};
 
+					lhc: lhc@20 {
+						compatible = "aspeed,ast2500-lhc";
+						reg = <0x20 0x24 0x48 0x8>;
+					};
+
+
 					ibt: ibt@c0 {
 						compatible = "aspeed,ast2500-ibt-bmc";
 						reg = <0xc0 0x18>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
