Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED5110FD36
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:06:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9eNv3u1a0Nw74QWuWog+Q5ZQUvN4sD5KyXRXykptm/Q=; b=ovlfpQXNiTY6j8
	kPZVpnRW/vStzQglLZXFifykWjlWNBqq6fg6bsA3wpRP65SUF8vhMu3sUALTcWSoARvTSfLM89/lj
	GEGCA+g40HGr46g865FucI/FIGigq0brqGtaCQEq5LpowJbop0bcivc4HjukJ4N51dr2671jWKiRp
	BN0wy8rd5nRUGXhwHqb8Ss/22UX8c8CRw0f0GonMbxgjhJJZpofxSVlH8pjDEmsENvoo0yCtmiv1v
	Vg9GHhhtgjexf5A5rdI34CtgEMvLm9nnyt2WHPkH6Wt+UfKOL6nxqrPM92cXFmH4JuPq5Ss2Ix8tG
	VUSmK/j+fbjmbCSIW4jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6x9-0005CC-13; Tue, 03 Dec 2019 12:06:51 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6tx-0001G1-8C
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:03:35 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 453B4223CA;
 Tue,  3 Dec 2019 07:03:32 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 03 Dec 2019 07:03:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=GwW2ZPokeQOuM
 x+qEgChoiysoCIuDajacTWg+pdJvas=; b=ekUTd1xt56OIqNoNCpcmvBQxYPntc
 eE1s4rwx+v4BSTs1ToM9PxpacFP2xBnhzA/jRkjY2vCRPuDmlBzeyqZOZNlU1env
 75hSXMWoGO/KT9lvIB1M16Y9NKiC6zHZFDhsMm7LehBRSz8KJqE2U8kXKy/DK2mz
 /MpJYY/F3JL9kg7mmYLhiwjHdjWGek5RlDDhPfMmHsUi3AvgWDUWUPvVPewiGpQs
 sFBWPTTwgjKLXVzibeh/K1DBMbQyJCr5ThKlq3ILi/J48+Q0i8F0n49tTncmloT4
 jGyxZfzzJkug0tL0p6/ApzzxunN0HuLJnTdRmGWOgj0b27dqXArgKkoiQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=GwW2ZPokeQOuMx+qEgChoiysoCIuDajacTWg+pdJvas=; b=ht/pNLsZ
 k/5XPCDc1YA+RXLQyl1IuaWQy5XmJL5jp4BO9qqbb/xzntE/5ceJ3+eIv8SFVNL6
 9E4Xq5hVQo7BlKEfLjoTu/gCSPavVfhKkV5XYjXpO95DwJ6v5gl2mvrhLoXH/jnq
 kby1X7ltx8LafS+6p17L+NeesrELZ6U1jAQqHr9EG6naHjbOxKAFXUH5wdeBRhJW
 s5s6GHUErFz6RjcXTHhwRJAn/HAlvx1Nn5S0SDcPLsRpWnH7mtvAjF9Cad0RIK54
 2nr5xI2riyliU2Q+WXEUoCte3mO4kw68wnzitUKhfIjx9c49Kpsva2B7WVDO3qoR
 T4pWvvMBGRAU+A==
X-ME-Sender: <xms:FE_mXXmrpuvc96CcaaQ_m6sc53j98lW4e7qMbGPbtPCi8UIsemda2w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejjedgfeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppeduudekrddvuddurdelvddrudefnecurfgrrhgrmhepmh
 grihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihii
 vgepuddu
X-ME-Proxy: <xmx:FE_mXWo3tCS9G8LOecLk-8lyx99qNAaxW_Pnt2Wo3Gjnt4me9VhIcw>
 <xmx:FE_mXU8CGsdSNA7Lth8ckQhiQ6ms9Q5jBkeTsuzMF0WZH-inKI-ctQ>
 <xmx:FE_mXS3ZhMT_WfbF1GH8ja41mlm2746EeXblfe1xCd0-3hGWphpUfw>
 <xmx:FE_mXbPxISBTIvh9cu-_o_h9ybAcVmkN2vT2KlcZ8v9Da-qE2-PEeA>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7035230600AA;
 Tue,  3 Dec 2019 07:03:29 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 13/14] ARM: dts: aspeed-g6: Cleanup watchdog unit address
Date: Tue,  3 Dec 2019 22:34:14 +1030
Message-Id: <eaf3a37fefaa6f05ef7e4b6bb2c41be84c27316f.1575369656.git-series.andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
References: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_040333_420247_B93E7966 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

arch/arm/boot/dts/aspeed-g6.dtsi:204.28-208.6: Warning (simple_bus_reg): /ahb/apb/watchdog@1e7850C0: simple-bus unit address format error, expected "1e7850c0"

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 arch/arm/boot/dts/aspeed-g6.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed-g6.dtsi
index 5f6142d99eeb..ffe0d76c5ac0 100644
--- a/arch/arm/boot/dts/aspeed-g6.dtsi
+++ b/arch/arm/boot/dts/aspeed-g6.dtsi
@@ -385,7 +385,7 @@
 				status = "disabled";
 			};
 
-			wdt4: watchdog@1e7850C0 {
+			wdt4: watchdog@1e7850c0 {
 				compatible = "aspeed,ast2600-wdt";
 				reg = <0x1e7850C0 0x40>;
 				status = "disabled";
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
