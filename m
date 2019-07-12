Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C5266511
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 05:37:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BvycmgggqzZkQLFiDkPVM4bAt2z8x8F7OCfQd7UXjy0=; b=pApFTnHJCK/EHh
	KSj4RmqJWCmsB6NBVUrS5Kncg+mGrmdkkUOrInOP8KF9fVY9bTpreZ/68DZ1BmknGGMdAkOSZDdpB
	Kmin4gIF2N+FrZot44k39GtvpaiWvvY2HTzqsxrdgAnbcp9YtIVUn5kXUXrBggC96Tj24U34HDT3I
	EZnywKDVtsmNu1I8YcT6/BLKVluI3XgcpOJVZmTHxJkPzqmcWam67jFEmAnRYIbt3HnYUDPA8N0u2
	Fo4/PlvXI+wxDhdD3Z5YbxdvBEIA4URcdWeekxPd1HbQpqyaf3YbqqsC+09Gmh0tcA8VJ/anQiKON
	H87ieakJGqmOPLDG71/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlmNY-00036a-Ue; Fri, 12 Jul 2019 03:37:49 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlmNK-00035i-Rb
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 03:37:36 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 774A922196;
 Thu, 11 Jul 2019 23:37:33 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 11 Jul 2019 23:37:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=bzkTfMhJlLnueEo28/kxpkBvpN
 8gKMiWuRYbkXw0wjU=; b=Rfe5+eXuxJ6UQh2jCP3Gqz+NopKtTMxWrzCwbz4LhT
 GFwII3XdQoBAmEwDZaM/mLwBANHg0fyPh9F/xYmqJ2z+YsLFKVaaDlyRFPsFaT00
 bKOWlpiRrTiBjBOtqWEotqGC/AHOudz3mREpmUkoYa78goN/1rpkL0CKooiYOMHz
 XwAz3s0TELWyVkFYJ1ktRtfCrEPlmPxXG4up+FWrpdgcTgnfGIdDPmrWY0R7dbaj
 tu+HLw+7L3zC+a/WBw0m6dgRM22ge7RM2m9YsinZcwQ3WWI3+0+ifZ1V8J2Ad5fs
 6mRUM83E/B8sN67V5EIkU2dBAGRGscClJuxbBAQRwo9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=bzkTfMhJlLnueEo28
 /kxpkBvpN8gKMiWuRYbkXw0wjU=; b=FuxgV8Iu6kVa+P6POmQGOd86Wc3QaIgiG
 tuGsH3tiyc2Xr0eJIguy3YMVCU/o0A1Oyr/GRi0IRqXNYGCaSnOfSeea74BgQ/A/
 Mh3xChOqJu2D//+qpQaU1wdCIhDhbRzy19Jr78VwmxSRlIOFn/lRjo3WF3wnjir2
 jy89HESCc5n0pKuXmqyWZWcRzudt3N2Q7JpUAbdrnicsxTzrg6nFt5IpO/SVkxAn
 zO4swmB53LysJC3pla9xvTzxefmMe8qMWY8lwJa/2XGbpBDx3+ERWJDD5tJlwDLP
 D2avjKMLR7txmiV5fnIrQM50Fel/n3Hy5xeakwuXJoAZV2BPPvpug==
X-ME-Sender: <xms:fAAoXfmQB6Kgou_Ho2-YWzYiwAPU3OcZ9A6AFijvQkZEYPJunjfutg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrgeelgdejgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhi
 ugdrrghuqeenucffohhmrghinhepohiilhgrsghsrdhorhhgnecukfhppedvtddvrdekud
 drudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgu
 rdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:fAAoXdmAMLXHke1Mf8skr-Vq7j-4-Q_cv18c-YFYIBr41b5Mj7RfXA>
 <xmx:fAAoXUiiGLzAG6mb9J2WXHfRVmbOdyV4IuS8wURvH9cKO5HBuZLaSA>
 <xmx:fAAoXeUh8t6Y6wJP0QRSh7--ISy-pr2fDu0pPZjT3PEMZqGwAU3OAQ>
 <xmx:fQAoXfC0A5rLU7UzjxpmPtJ-mNAG26uYezfbToU_LtZ-8xmuLUn9rw>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5E968380079;
 Thu, 11 Jul 2019 23:37:29 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH v2 0/2] ARM: dts: aspeed: Enable SD controllers
Date: Fri, 12 Jul 2019 13:07:24 +0930
Message-Id: <20190712033726.25237-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_203734_967937_F4143125 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, Andrew Jeffery <andrew@aj.id.au>,
 ryanchen.aspeed@gmail.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

v2 drops the "Swift" patch that accidentally modified witherspoon.dts instead
(thanks Joel), and leaves sdhci1 disabled on the EVB. v1 of the series can be
found here:

https://lists.ozlabs.org/pipermail/linux-aspeed/2019-July/001984.html

v2 reflects some of the changes driven by Rob's review of the bindings document
in v1 of the driver series:

https://lists.ozlabs.org/pipermail/linux-aspeed/2019-July/001994.html

As ever, please review!

Andrew

Andrew Jeffery (2):
  ARM: dts: aspeed: Describe SD controllers
  ARM: dts: aspeed: Enable first MMC slot on AST2500 EVB

 arch/arm/boot/dts/aspeed-ast2500-evb.dts | 11 ++++++++++
 arch/arm/boot/dts/aspeed-g4.dtsi         | 28 ++++++++++++++++++++++++
 arch/arm/boot/dts/aspeed-g5.dtsi         | 28 ++++++++++++++++++++++++
 3 files changed, 67 insertions(+)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
