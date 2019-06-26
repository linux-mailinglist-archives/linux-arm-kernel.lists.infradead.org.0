Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 729F65630A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 09:18:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AjJWHBK8kLke2br7UsTuBGRwXX4t12M4GM7Byc6QSAY=; b=VRU5kw+g6/hCR4
	pBmUR6QCqfs7w4wjuGO7sw4TVf2+45+qhMa2ack0px+0q1gOZh10NlPei29tvhuKAurIdvgQPHuI0
	x3jNH9sHxbhgov8h4EUNPfwTKjGDMR8Hoi2/2MVh4aI/BauYwtGgDOtlmCFwkXRsV2q5ZdFY/zKMJ
	jhpeGA4kf9rIRxNAz+DV6cjyXciGnqPVEuaRomPOUOm5+XNVcybOATdzN1ae8u8lw/rWfcrU0O31l
	JKSztDagBlPn1ppc9f5HFJkjhP40gdp/xtQI1LoEviUnwxb3VrwCEhnnRnpNGSBmzWVZmuGEaEHIw
	luXx7lNYh/bpE9WtrAaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg2Bt-0007Xx-2U; Wed, 26 Jun 2019 07:18:01 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg29z-0006Ts-FA
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 07:16:05 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 9F1741C43;
 Wed, 26 Jun 2019 03:16:02 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 26 Jun 2019 03:16:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=pMNNPoQe+cIMw
 sr4Ftl9UjYzpm9TC5xQDxPLRq/8iWw=; b=EII53qjcSoRmTCoxy6HJ8mpMYyOdU
 Ux/7cDyNYEm7mZnHJ3VEFKB67RbgNZRo/xNnkSQCm7IWRvxbwUZyS026w/ohyfFK
 CWhTZjp23bJrFk/H2dNeb1dSUM+3DRlQjT2kQxkSXk6UUsqtpDxsXCv3MlALK7Oa
 hdN+z/8jjWHjElnqCZwkKUujlYaSJWRvCPTWJWKHmXuc0cjqD0JvsksurGyPzSbA
 q1WS2siaCVCqyRyiBij5qpxR0//LrIr0JhojWYdZ38xYGBhpbtxentTCylya1/ui
 7m3Dxam45kt1Ryx6ATFBvwJI9wI86svlEKn+XmU0A1Jon0IJtiqg3Nwew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=pMNNPoQe+cIMwsr4Ftl9UjYzpm9TC5xQDxPLRq/8iWw=; b=OqGgN44J
 wdcFVvWoTKGnXcMHxXvp4ZmIlKzc7FrtD7LhPxkqdQJr/XZZXQZJ2IcuaLQ3vvA1
 h3+0o0G0FTRKOrNq1dKJJ56dbyeFXJpJoaD0sKtmZ7jhCHreMQLQmMGZH0yGKFFM
 uM0J48B0VnbQREVESjMjPhFFfs38VUQsUdwfewHszd4k9P0SrouBOHyibjXEcfHf
 qOAVmyJ9srnUTrcoA9kseww2nnrkJ/nm7qr+BysMpCTdLMNKgLpkL2Pk2jPAQviH
 LmjwKlcJBkT4BqcffjHV044iyATmar5nuscQ7PgNBLaKeeBTn6DgmG6rHQ+CkAho
 dBtU1wFQW/CKRQ==
X-ME-Sender: <xms:shsTXWjurTNokRIg06YfKTJu7OmYb1r62pzxrj4TmgQ2TQytzMTVfg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudehgdduudejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppedvtddvrdekuddrudekrdeftdenucfrrghrrghmpehmrg
 hilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghrufhiiigv
 pedu
X-ME-Proxy: <xmx:shsTXbTnRN7c9pqULVlUcbujM_08ygLDhgGNxQ773PkLXquA4EgEYQ>
 <xmx:shsTXZFMHf9STnAX_TBspcp3o86TJ1LHHun_00MhaLlXEuOojaqdmg>
 <xmx:shsTXTnp7lSNMxhXTZMJ_5eMR3DqRWwJLweIRiSmBCYpKQTPRQCuCw>
 <xmx:shsTXWwSG7xu4OG-kOhNcWrvJBIc-agPSgp0X-h1AhtIMpJ5tlzlFw>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id B8DCA380083;
 Wed, 26 Jun 2019 03:15:58 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH 5/8] pinctrl: aspeed: Correct comment that is no longer true
Date: Wed, 26 Jun 2019 16:44:27 +0930
Message-Id: <20190626071430.28556-6-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190626071430.28556-1-andrew@aj.id.au>
References: <20190626071430.28556-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_001604_141763_9B147AA1 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
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

We have handled the GFX register case for quite some time now.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/pinctrl/aspeed/pinctrl-aspeed.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed.h b/drivers/pinctrl/aspeed/pinctrl-aspeed.h
index 4b06ddbc6aec..c5918c4a087c 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed.h
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed.h
@@ -240,8 +240,7 @@
  * opposed to naming them e.g. PINMUX_CTRL_[0-9]). Further, signal expressions
  * reference registers beyond those dedicated to pinmux, such as the system
  * reset control and MAC clock configuration registers. The AST2500 goes a step
- * further and references registers in the graphics IP block, but that isn't
- * handled yet.
+ * further and references registers in the graphics IP block.
  */
 #define SCU2C           0x2C /* Misc. Control Register */
 #define SCU3C           0x3C /* System Reset Control/Status Register */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
