Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 100F412B6B4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 18:44:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XhnSDWrpTOzN3gip/Tjh+g95wFG0yVul+Rj6UAnSZhE=; b=mth0gHAGisEi4U
	6a/lwHP2DxitsV+m+elNkyyTwaZU/dSrCIs2EyYwUn8aVFRRFEqiN6HZgwwP1TCwDeCOoZ+xFWx45
	PrDFHqNwhw80T4q2RYXlYgpTvPUxXg8V175cynA3ntCdZg7H543nGCjHglLRsl8AuDAvPVD3xH2EW
	aMhCF+VygdoA0AKDhlPfmx15fWafHtwpN3d4mouOMS86R37isTyq2I6NYux2nuEoh3AJ8gEXpL3z8
	oykwwVjdVDfAfZIN+qC2NUMDZO8jduqYwNwoqE6BprPEtF/j6z0gO4AZFazWR44xCHZcvYGgpFlJ1
	nMyDnCzo0nzstb7Jx5Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iktfG-0001a8-GW; Fri, 27 Dec 2019 17:44:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iktdI-0008T0-47
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 17:42:42 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B444221582;
 Fri, 27 Dec 2019 17:42:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577468559;
 bh=hWovyhmEjiLOx+RStHpljftNqQBfFJ59Eou4Rnua9cI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=J1+wiuv6w+1iB9dUQ32/oz6OVr4RLg/0p+kJlajr6ECTGKNqlqYcFQaigU3rITp2i
 Lqs6cVrLSAJOGulwFoRRgkt/AzrilSNoofh5SDgOTlalohd4dGVlsMtaXH/YfEUby6
 Bx+QhSV+Awdr2CGc5r0aHOaSDMOglqYgX5Q1ZcGs=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 085/187] pinctrl: aspeed-g6: Fix LPC/eSPI mux
 configuration
Date: Fri, 27 Dec 2019 12:39:13 -0500
Message-Id: <20191227174055.4923-85-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191227174055.4923-1-sashal@kernel.org>
References: <20191227174055.4923-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_094240_233333_5730C2C8 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.4 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: Sasha Levin <sashal@kernel.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, Linus Walleij <linus.walleij@linaro.org>,
 linux-gpio@vger.kernel.org, openbmc@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Jeffery <andrew@aj.id.au>

[ Upstream commit eb45f2110b036e4e35d3f3aaee1c2ccf49d92425 ]

Early revisions of the AST2600 datasheet are conflicted about the state
of the LPC/eSPI strapping bit (SCU510[6]). Conversations with ASPEED
determined that the reference pinmux configuration tables were in error
and the SCU documentation contained the correct configuration. Update
the driver to reflect the state described in the SCU documentation.

Fixes: 2eda1cdec49f ("pinctrl: aspeed: Add AST2600 pinmux support")
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
Link: https://lore.kernel.org/r/20191202050110.15340-1-andrew@aj.id.au
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c | 24 ++++++++--------------
 1 file changed, 8 insertions(+), 16 deletions(-)

diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
index c6800d220920..bb07024d22ed 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
@@ -1088,60 +1088,52 @@ SSSF_PIN_DECL(AF15, GPIOV7, LPCSMI, SIG_DESC_SET(SCU434, 15));
 
 #define AB7 176
 SIG_EXPR_LIST_DECL_SESG(AB7, LAD0, LPC, SIG_DESC_SET(SCU434, 16),
-			  SIG_DESC_CLEAR(SCU510, 6));
-SIG_EXPR_LIST_DECL_SESG(AB7, ESPID0, ESPI, SIG_DESC_SET(SCU434, 16),
 			  SIG_DESC_SET(SCU510, 6));
+SIG_EXPR_LIST_DECL_SESG(AB7, ESPID0, ESPI, SIG_DESC_SET(SCU434, 16));
 PIN_DECL_2(AB7, GPIOW0, LAD0, ESPID0);
 
 #define AB8 177
 SIG_EXPR_LIST_DECL_SESG(AB8, LAD1, LPC, SIG_DESC_SET(SCU434, 17),
-			  SIG_DESC_CLEAR(SCU510, 6));
-SIG_EXPR_LIST_DECL_SESG(AB8, ESPID1, ESPI, SIG_DESC_SET(SCU434, 17),
 			  SIG_DESC_SET(SCU510, 6));
+SIG_EXPR_LIST_DECL_SESG(AB8, ESPID1, ESPI, SIG_DESC_SET(SCU434, 17));
 PIN_DECL_2(AB8, GPIOW1, LAD1, ESPID1);
 
 #define AC8 178
 SIG_EXPR_LIST_DECL_SESG(AC8, LAD2, LPC, SIG_DESC_SET(SCU434, 18),
-			  SIG_DESC_CLEAR(SCU510, 6));
-SIG_EXPR_LIST_DECL_SESG(AC8, ESPID2, ESPI, SIG_DESC_SET(SCU434, 18),
 			  SIG_DESC_SET(SCU510, 6));
+SIG_EXPR_LIST_DECL_SESG(AC8, ESPID2, ESPI, SIG_DESC_SET(SCU434, 18));
 PIN_DECL_2(AC8, GPIOW2, LAD2, ESPID2);
 
 #define AC7 179
 SIG_EXPR_LIST_DECL_SESG(AC7, LAD3, LPC, SIG_DESC_SET(SCU434, 19),
-			  SIG_DESC_CLEAR(SCU510, 6));
-SIG_EXPR_LIST_DECL_SESG(AC7, ESPID3, ESPI, SIG_DESC_SET(SCU434, 19),
 			  SIG_DESC_SET(SCU510, 6));
+SIG_EXPR_LIST_DECL_SESG(AC7, ESPID3, ESPI, SIG_DESC_SET(SCU434, 19));
 PIN_DECL_2(AC7, GPIOW3, LAD3, ESPID3);
 
 #define AE7 180
 SIG_EXPR_LIST_DECL_SESG(AE7, LCLK, LPC, SIG_DESC_SET(SCU434, 20),
-			  SIG_DESC_CLEAR(SCU510, 6));
-SIG_EXPR_LIST_DECL_SESG(AE7, ESPICK, ESPI, SIG_DESC_SET(SCU434, 20),
 			  SIG_DESC_SET(SCU510, 6));
+SIG_EXPR_LIST_DECL_SESG(AE7, ESPICK, ESPI, SIG_DESC_SET(SCU434, 20));
 PIN_DECL_2(AE7, GPIOW4, LCLK, ESPICK);
 
 #define AF7 181
 SIG_EXPR_LIST_DECL_SESG(AF7, LFRAME, LPC, SIG_DESC_SET(SCU434, 21),
-			  SIG_DESC_CLEAR(SCU510, 6));
-SIG_EXPR_LIST_DECL_SESG(AF7, ESPICS, ESPI, SIG_DESC_SET(SCU434, 21),
 			  SIG_DESC_SET(SCU510, 6));
+SIG_EXPR_LIST_DECL_SESG(AF7, ESPICS, ESPI, SIG_DESC_SET(SCU434, 21));
 PIN_DECL_2(AF7, GPIOW5, LFRAME, ESPICS);
 
 #define AD7 182
 SIG_EXPR_LIST_DECL_SESG(AD7, LSIRQ, LSIRQ, SIG_DESC_SET(SCU434, 22),
-			  SIG_DESC_CLEAR(SCU510, 6));
-SIG_EXPR_LIST_DECL_SESG(AD7, ESPIALT, ESPIALT, SIG_DESC_SET(SCU434, 22),
 			  SIG_DESC_SET(SCU510, 6));
+SIG_EXPR_LIST_DECL_SESG(AD7, ESPIALT, ESPIALT, SIG_DESC_SET(SCU434, 22));
 PIN_DECL_2(AD7, GPIOW6, LSIRQ, ESPIALT);
 FUNC_GROUP_DECL(LSIRQ, AD7);
 FUNC_GROUP_DECL(ESPIALT, AD7);
 
 #define AD8 183
 SIG_EXPR_LIST_DECL_SESG(AD8, LPCRST, LPC, SIG_DESC_SET(SCU434, 23),
-			  SIG_DESC_CLEAR(SCU510, 6));
-SIG_EXPR_LIST_DECL_SESG(AD8, ESPIRST, ESPI, SIG_DESC_SET(SCU434, 23),
 			  SIG_DESC_SET(SCU510, 6));
+SIG_EXPR_LIST_DECL_SESG(AD8, ESPIRST, ESPI, SIG_DESC_SET(SCU434, 23));
 PIN_DECL_2(AD8, GPIOW7, LPCRST, ESPIRST);
 
 FUNC_GROUP_DECL(LPC, AB7, AB8, AC8, AC7, AE7, AF7, AD8);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
