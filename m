Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B2E5630C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 09:18:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3C9x/Sol2YYLluCJHfHeASW2KPcFDsWu1pi2vBMAaGI=; b=DmJ2PrmRMvDM2f
	WzQfUNZ9J1MQYP+J+eqB9L3eSwOgv0nZOjPxAbCwuxNMFCLfKVtALVLDclFeI3G+P3lVSjm+JG/z9
	dV1R3JwvWW8pg8Dl8cWKG86ihXV5BoQSd90UAiN5Tmg+Mds2w/vMq47KF1elDk/K+6gNzZKM40yeZ
	lCccE0QVpyospksL7wh06+eeBp5SFve5svFlZvqsmiPLT2+j1ePzhdR7C4/XZaNa6wtZOtyKo71hy
	N1xyCY4BDdAI7U2bYeGsDxaOPHLWL44rJh1p6qCivq6t6Ah36pNdtA+KYTfzBD00amjDGmq6jpfEg
	fx4z1i3sVwmGNqeZ2RnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg2CB-0007lh-Ie; Wed, 26 Jun 2019 07:18:19 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg2A3-0006X6-D4
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 07:16:09 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id BE8CD1BF1;
 Wed, 26 Jun 2019 03:16:06 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 26 Jun 2019 03:16:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=sPAC0J8p45pKU
 IB1y6CiuAxrWpJQyOXW/mBGynYgVGo=; b=jS6RELUF8TCzRMu17+SPj9n1b41sJ
 QokyV+t3NTZ9ClJmuKx0pjL6cqJKTvWbOhO0Be25AzkZD1lEGSuBTTWEHRWl5nDE
 9L40m6+fuh2t845SBkcQKcAmMWvmfnZfoRsclfkSWKxQ+uo6BMJHDXbJpvAb8jRC
 +8RKoyzAb4habhgwt3RpnFFtfzwaRpsoo2GcqajxPTWHwj3CL0LWAvm3HJVqPle4
 qNAXNyiZM824YBWjT8fEa6cOXVdT/kL6r2VMLJlTLfb0VUUtW3DsaSdHekg1uOLN
 jQ09zwZ0sEcQWezJYR060JUOwFWG/DQYbSp4aqXI8+4wJ5emRfuGJXyPQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=sPAC0J8p45pKUIB1y6CiuAxrWpJQyOXW/mBGynYgVGo=; b=t8TMror0
 MPgbGjfekJoOyYvbaClZHHC+SIb9IkdsMw18NjLOyETWY3gG2syVjyoOTvh/lB0A
 OEaCm8T8/3MlbMWXcUS6BwY3rld8XbTUWLl0YncyKp6UzwDzN2AhyyL5V7CbeqNK
 BtjQUt+2EBI22iP+WIXqJfoJGMyHB5YECfJsP9/iqnIV55EPaADqDkRABJLq/tMa
 NHTE3zfcpKP7GWJr7vyGwXyblezTigqlcT+g2augAB2zeWqk0mCmSHDhzaWfmdRW
 m99Bs1CpaoL2Py/Bdz4em9WtrOSOtvvjyfVLivY8Rk53nW09D7FQ3/zcs30SSXYL
 2IJv5XG/Cu4ORA==
X-ME-Sender: <xms:thsTXQ2yBSqrxwI-NsK3aKv1468aASSeUtDEw9ixOnP1eDRa8h8ueA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudehgdduudejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppedvtddvrdekuddrudekrdeftdenucfrrghrrghmpehmrg
 hilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghrufhiiigv
 peef
X-ME-Proxy: <xmx:thsTXRifKna8wrjp_t4AM3Es96LpdH4g3QMUIWKEl09Q4ivtlaEudA>
 <xmx:thsTXWYBRN_MJihtVW-SptsH7ZaMl_L8e_nXmj2LpeyvUxBhQFTQmw>
 <xmx:thsTXSNK-GUf8JpuCej_RHncPuEQ_EqwIKBkGkU5ODAg0pEjy-xwuQ>
 <xmx:thsTXQ-BUGlDhmOd80plI751UFHPNUERccd8wFF590q7ighhN_BkOQ>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id DED11380083;
 Wed, 26 Jun 2019 03:16:02 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH 6/8] pinctrl: aspeed: Clarify comment about strapping W1C
Date: Wed, 26 Jun 2019 16:44:28 +0930
Message-Id: <20190626071430.28556-7-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190626071430.28556-1-andrew@aj.id.au>
References: <20190626071430.28556-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_001607_783802_DC493446 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ryan_chen@aspeedtech.com,
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

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
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
