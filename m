Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4EF59164
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 04:42:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BAfSE8c4K9E4rx9TzCuSr4lQPp4KLopI/+nBnL9RrX0=; b=GNlRjfCIjaaY9I
	g2Qc2XdseHgTQvLy3T1/Ez1r0UbRQCSju+dkTBfsFDx0k0O3tDpJ38JSxz8g2uAuuRaQiTXmg8zye
	RV0TuFyK7hoCJomI5v5bdUm79Mkc98vtJQUsAs5GdGNJuD+19YJYJiFvamNDNro7vUqbq/ey6xFeX
	/s+X6+9H0sbkuUFg4Qs0fQeVq1cxl2N3foHYCZB6II+dKX+vwIvmui/IuJ+zDh0/zDWBTAM/7KzBr
	peeoB8ZQc5/txbEcxwWAPDDBY9u5S2y9S8DU51dcECg7NCOfAlRvkLsAYED8oDdDkiU22lHsAQ/Uw
	NyxJ148HFmPVxNFoaXmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hggpr-0005Lv-RC; Fri, 28 Jun 2019 02:41:59 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hggne-0002jk-JD
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 02:39:44 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 7E9093483;
 Thu, 27 Jun 2019 22:39:41 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 27 Jun 2019 22:39:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=ADqhvifrknPuz
 OYzjNxXRssrypRVqiE51aZTMCvODu0=; b=ZFUpCXQy6B8uj0ca88kY34wx9NsTW
 nUjr5VFG7dhZvf8CVFBWzSbgULrOcaxoe9sNPrLvUaj+oL3FhA06vVh5xgVPsG8K
 2j4bbWRrw3sheZhasI/Nw5SaE5C58EESA13xOH5kbckMjZIbSs8d50Tkoe5DMFjT
 GlVs7J1IgpNS6nWgcpVCz6EMZkLGatXOD/mjn4Pqzverr4M+aVDD63hs/SOwxeEV
 gdI7TTIuf4TEDXNdiJ3EdfRe/caTjxuRlT2lXEpnevJJ1IF5XgE/bDtgdJtjC0dM
 kIFhPUQOcC/3oHliOUQ2658UQwORvn33ROO/qzypdW3bMwgCvetbg5r/A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=ADqhvifrknPuzOYzjNxXRssrypRVqiE51aZTMCvODu0=; b=TcvD6wq/
 aS2ba3+jDjzka/vzn1IAo8Td4r8TE0/t1pxAaI4c5PRB6DYCbyNwz3cXMpGglyWB
 iz3OLf+Pd/LmyRKVkPL5Ib9Vs6expRxAJEArw7gWTuLoMiE+lJPwn6K4OpudHOoH
 FykfS3L496SpeQ4dyeNqOIUob3cTOln2H75YU2p5/BGgcf0FkL0r3qb/RBWojZlV
 Ie6aaPzonmsl3ViqvAvn90SeFDigpr75qT67pBCX9QcGMPX6NIfdQE4IAxwF9Iui
 +gSw43orPBJndzNTohgMwaLIxQ1dd62Q3+sZl2t0XM2P58/olpFkF07NwdtV1R/2
 lzfTh3/QlwJbfQ==
X-ME-Sender: <xms:7X0VXYAGuohFMY5g3ytuF5SFQ4MMGGRbnKTqdYf1i2QIuRM01KcW9Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudelgdeiudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughrvgif
 ucflvghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecukfhppedvtddvrd
 ekuddrudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdr
 ihgurdgruhenucevlhhushhtvghrufhiiigvpeef
X-ME-Proxy: <xmx:7X0VXcAt3aDT5XckrP3KkgvKfFd_FWCrgfgZTrQE_bOcgmFaGA1jiw>
 <xmx:7X0VXQJaVibh-beRUVk9rE9lsd826w2OsNjrZTTj8YJRbn5Znjqmrw>
 <xmx:7X0VXeTIa0G12SlZ49phXbBfGYUIwwm2w7JGMwYymGl8eDO8c6An8A>
 <xmx:7X0VXcJxIYy1E3Lqkxq9a_-_8O7rFr5daoopP9pglOX2jGdulDzVxA>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3F15A380074;
 Thu, 27 Jun 2019 22:39:37 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH v2 6/8] pinctrl: aspeed: Clarify comment about strapping W1C
Date: Fri, 28 Jun 2019 12:08:36 +0930
Message-Id: <20190628023838.15426-7-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190628023838.15426-1-andrew@aj.id.au>
References: <20190628023838.15426-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_193942_955618_5A02DEFB 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Johnny Huang <johnny_huang@aspeedtech.com>, ryan_chen@aspeedtech.com,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, openbmc@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Writes of 1 to SCU7C clear set bits in SCU70, the hardware strapping
register. The information was correct if you squinted while reading, but
hopefully switching the order of the registers as listed conveys it
better.

Cc: Johnny Huang <johnny_huang@aspeedtech.com>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
Acked-by: Joel Stanley <joel@jms.id.au>
---
 drivers/pinctrl/aspeed/pinctrl-aspeed.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed.c b/drivers/pinctrl/aspeed/pinctrl-aspeed.c
index 4c775b8ffdc4..b510bb475851 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed.c
@@ -209,7 +209,7 @@ static int aspeed_sig_expr_set(const struct aspeed_sig_expr *expr,
 		if (desc->ip == ASPEED_IP_SCU && desc->reg == HW_STRAP2)
 			continue;
 
-		/* On AST2500, Set bits in SCU7C are cleared from SCU70 */
+		/* On AST2500, Set bits in SCU70 are cleared from SCU7C */
 		if (desc->ip == ASPEED_IP_SCU && desc->reg == HW_STRAP1) {
 			unsigned int rev_id;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
