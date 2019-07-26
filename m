Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1988E75E91
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 07:43:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v2AMkpVWqwA0UIF0Uaet2r1Uu/F5gYc3nyktKOJCQPE=; b=cBMudUeqCwgr4H
	pcv2aDSI/hp10+BTEqTNNhmoP/aUEWGlP00hP4Y3W4vhiXiWNDQNHZcWE72COyylRMVuPJbcuHLru
	itJGhbbN0I3WDz5QB+OoJwterJXrV1Ok0pHwWOrxFqISl52dOGraORjgpdZk8AU8kl7KGio1KZAXg
	jNFyPA8Ri2y9kUEmPz+DELMnAOtJizehBgBZkJ5YU7aEAUoCwh2+G/8JdQ2Z0wfay//3iAdbe6I+x
	f4cT6FwSVZ4mG7vIxnoVMJdUlUDIDvnTaqGGBc/F1RO8FIMUa+Zd5JE4v6bwtGHGfkXEOAirvsM69
	kPO9ydhGZehuiGHPO4bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqt0b-0005OO-CG; Fri, 26 Jul 2019 05:43:13 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqsxt-0003rU-0d
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 05:40:26 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 5D404222D2;
 Fri, 26 Jul 2019 01:40:24 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 26 Jul 2019 01:40:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=/iT1MTk1oKRrE
 njkLxpsHJsTgTurlfgvdf/YXz3Xh0c=; b=QR5/9S5OAR1o9JfaaovYhbPDOOu/m
 nRcQ9F4FGb5xlQjwaVFWi5PGSdziwoDGgQBni42TgFdnoqsK+khHdH1JOwSRLhWY
 aNawF5J+P6o99xKu3rpbwRyA+2aY261t8H1a9mcixArC7E8JfISsaXRQ469HCTFA
 4JLnPB7g3lC3tWuLntagu3CTaRsRMYxxhykuIy4xvQRO2wBxrk66f8d2e9ZS8Aqx
 HFTraM1yS2lWxYmwuWRQU+vnyatKKyjlVhUljnvW0LZk0pvgnycbwZzmAVHAEJJ6
 OhSpvcdUVEeCcZVqxDRJURVjEQ3aEipKM8VIu0H1yuTbwnuRljAdwyXfg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=/iT1MTk1oKRrEnjkLxpsHJsTgTurlfgvdf/YXz3Xh0c=; b=HnH9utGY
 q+bypQ5TAg7SQpLFGakmyV7ul4a0xJWHWrKjZI4SIAQO0QBB3xh2/aPMUJXxfJQI
 1nEZSABOB3j3Yl/c/C7NRdOYr6mjPlpLFT3e7gfIGSe2ZsoaiE7zxxjJ+vgzUvgS
 a0hTGmpXg8TLzdHK2xPif1fQOG9g0bIaBefbaOAVoJEiLAjLOVH+D+QUpdoZPSMU
 DbcewYhJ01KvplSttcZGaupdKvSYPHI1G6XVLFDw+lQmWZgpawDDy0jygj0hOrV+
 CmDTa71sTUk9XlAR4teYwRSahejhmQMM1HFlpyGELpxIw2/TQx32dzm1wApl9EwF
 dNqmLXgfm2NzkA==
X-ME-Sender: <xms:SJI6XVJnmfqlIod26b9fhxMMiuJ1jBxYAqaMSJpUkaX3jOOAq6VHQg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrkeefgdeljecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgep
 he
X-ME-Proxy: <xmx:SJI6XfYvNUQ96KBk3i3O0X_pZ6b07rwvobAeTK6MeTljclwN3lcnXw>
 <xmx:SJI6XXCz0lUE2YFnNDFaGZk5aenft_DjI5-u8LDe8Jt2kQs4y8WfRA>
 <xmx:SJI6XZbZEVrqPJcfYoUbIqy4u1n0i0d7XVbLsNy912fWOc-FJJv4aQ>
 <xmx:SJI6XdeXLTGkF59UyS_ne131-Bi4Zgp1Le4ybwiw5SHu9ukZAN8g9g>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id F0183380076;
 Fri, 26 Jul 2019 01:40:20 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 06/17] ARM: dts: swift: Cleanup gpio-keys-polled properties
Date: Fri, 26 Jul 2019 15:09:48 +0930
Message-Id: <20190726053959.2003-7-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726053959.2003-1-andrew@aj.id.au>
References: <20190726053959.2003-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_224025_453994_CA663DBF 
X-CRM114-Status: UNSURE (   7.59  )
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
 Andrew Jeffery <andrew@aj.id.au>, Adriana Kobylak <anoo@us.ibm.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dtbs_check gave the following warning:

    Warning (avoid_unnecessary_addr_size): /gpio-keys-polled: unnecessary #address-cells/#size-cells without "ranges" or child "reg" property

Cc: Adriana Kobylak <anoo@us.ibm.com>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 arch/arm/boot/dts/aspeed-bmc-opp-swift.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts b/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts
index 2077e8d0e096..9f934509ca1b 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts
@@ -82,8 +82,6 @@
 
 	gpio-keys-polled {
 		compatible = "gpio-keys-polled";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		poll-interval = <1000>;
 
 		scm0-presence {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
