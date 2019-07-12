Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A66066503
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 05:32:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F368IYa3jsigik0+IVjgy1n7ORARykFO+mFF7JKqVjA=; b=F/Xymz6c3AQ/PY
	xcVMXK7rgBztvMxLZKVR6984VT3SyJ/91magnepcGEfRE56/eRLsEj3UdeAwHPpSXTf29Opa59NlR
	4S+1tZrdQW45o/4Hh/P25Z34S+fSVewaobk9a/y8cU7gZoDYjjk/GvEtTUqo/ZvUgrPRDKDQPyWqE
	39fatIjaINB1l9vJhTc4lGhWmsSvWGydF5KoOGGVfVXrZLiT8B5v5AVK5PifWGPUq7ygzzCohErOs
	qiL4iM0L/PMP2xB2siPrxjZPaS01m3weqtcAO6d7a7TdOvhIx/n31XZWCDhg1Am37bfzU6h2YnE8H
	QTg7YC8x3wfTXcjal3Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlmIb-0000j1-MS; Fri, 12 Jul 2019 03:32:42 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlmIM-0000hW-5b
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 03:32:27 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 458DB6A;
 Thu, 11 Jul 2019 23:32:20 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 11 Jul 2019 23:32:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=0/ELW1INd9ZqSD2iZt9/xN6YTT
 BSlrGKdOYRNFKIJUg=; b=Fvlec1JqxpZpVwTKbLfwLKFE04wzCcdk8i1EZaFGr2
 ZzpcXbiFhQNj1yx/AEXqDHQ9Sm3gLkC0CYXzTZsSVUbkOYFBsofkPcr3wuwV/FNz
 6w28BN4CKQEwTznF+gw2rrmCUHKSrtPhsPoL9KMm0C8iuqMDEypGZIZ2AfrNTi/Z
 8NHm4HBtBiDHvyybIOgMgG+l9uMb4FdHyX63nGBdm1bStV9R0mvwiqxjxsp/Z5qE
 /1NMdPdd7L69Psx3T6T5zajbxJZL86Kem8/gHO1Hl4PmeR14pD1JdZs75qyGAVPV
 4DU4T+p1LCPojanvrjq4i1Ufw8nL2x/ZTnpqeecMYiOA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=0/ELW1INd9ZqSD2iZ
 t9/xN6YTTBSlrGKdOYRNFKIJUg=; b=Q9mRD1QjsjyrkWoHz3RBxWy8mnvRMPD0i
 55YXDJWdg6+gf170T/VczeiyTaGBYuRg0ZVh9U4zj7qQ6MG5co+2UMP+2q8LGjst
 Xn1RtmERh9h0NtC79ra59js5DJy717Toj6Lw736k5NT7Tly2sRZvE2zxmIdSMC8N
 BC+py1aRqwOsN/Xq8E4bl9n/bKnh+MFaoQb2fuBE4WVBLVXCVoGLxj+yHdVYZJK0
 ieKyvyM2K6qz55lZaWcYUuBg/TqP1Xnafs5sxUjFlsME/MrxnNfmXW0ts4QO/IJu
 fdbDytVQMT+9dA5+bmFgxkqAwwLgGuiCYFsLE2P5zN6CJFNl1Sbxw==
X-ME-Sender: <xms:Q_8nXQSdE5Erss_8QGL61LhbuZjUCt5Mwy_FM3ZOU3CnuyI4AYtndA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrgeelgdejfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhi
 ugdrrghuqeenucffohhmrghinhepohiilhgrsghsrdhorhhgnecukfhppedvtddvrdekud
 drudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgu
 rdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:Q_8nXbQi68ssdcsMFb_0pb_VRRKJyffOPTyfAmIgDfdA-nYAwqZoFg>
 <xmx:Q_8nXZ6UsDQk92KtFurGIkDvBCvvpwSGEVI4kuothvpFXHB2VLheug>
 <xmx:Q_8nXRQjzrie9wXFy0adIKGp-9xxNxNFv40V2CTQFN_XoP7KQujpsg>
 <xmx:RP8nXTwqR9PV6Po46uzcDzzT7U6ki-Rkf2a2xnKl2UeggYyY2im12Q>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5AA238005A;
 Thu, 11 Jul 2019 23:32:15 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-mmc@vger.kernel.org
Subject: [PATCH v2 0/2] mmc: Add support for the ASPEED SD controller
Date: Fri, 12 Jul 2019 13:02:12 +0930
Message-Id: <20190712033214.24713-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_203226_386359_9B74C5C9 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 ryanchen.aspeed@gmail.com, adrian.hunter@intel.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This is v2 of the ASPEED SD controller driver. v2 primarily addresses Rob's
comments on the bindings in v1. The v1 series can be found here:

https://lists.ozlabs.org/pipermail/linux-aspeed/2019-July/001988.html

Please review!

Andrew

Andrew Jeffery (2):
  dt-bindings: mmc: Document Aspeed SD controller
  mmc: Add support for the ASPEED SD controller

 .../devicetree/bindings/mmc/aspeed,sdhci.yaml |  90 +++++
 drivers/mmc/host/Kconfig                      |  12 +
 drivers/mmc/host/Makefile                     |   1 +
 drivers/mmc/host/sdhci-of-aspeed.c            | 326 ++++++++++++++++++
 4 files changed, 429 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
 create mode 100644 drivers/mmc/host/sdhci-of-aspeed.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
