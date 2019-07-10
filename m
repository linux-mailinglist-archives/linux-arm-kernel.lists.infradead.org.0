Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6E5647F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 16:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y85zgBzB9LVphbjel3CDousfslz3Tz6/XVb42DR/nI8=; b=B0DmZskZwu2VKi
	QP5b1kJbBya3nbgZ5Ky2ipcVjlir6sg9/IpHujP77RU8yfC88mooCk2nAZur4sHNpzXSuRkqzC6Au
	IGFDeKGaGviqC8C10DaigW8cXJcP9Vg1XonwbbJodlWDFuXGvo/J5lprEaTsm+1U/j1JvP+k7ByIS
	pvoXJGPL3C+/HImHhVwLMaU6+8ntkwrCJRSeSXRo4sh3HH0mevXQFi/bPL8rKhAO4voLi7lxRbcYx
	eniwQXT8GJs5kQGY09gOaqGqVyGB/Sh98o6SKeI4kWTow8cw4lqrT2YjeC57QAZ6BQFzs5rceikVs
	mpwqnxrsfUCBBBBA7WTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlDNd-0000Y9-4Y; Wed, 10 Jul 2019 14:15:33 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlDNL-0000U8-GX
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 14:15:16 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 09CF522110;
 Wed, 10 Jul 2019 10:15:13 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 10 Jul 2019 10:15:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=T/5pb6r/UoVQt8P3l97DTHCU6/
 +Zf8y3qrrQsrsydeA=; b=X2ZKFxpCWG3Vijn9d9lOXXbc0Tm0ZcveoseEiLPESJ
 NIwSCViJpbee2BpHt8yymxP7MdVLg0GO91xe6PLRBhigOi37/mK/XmFR+mo9wGON
 lIqVqlkt2ozpkt1EM66VQChveVJ0JA2kufF+eM+cWJRci2KRLbyjoDYXSwjpiD4/
 Nzptg96Ft0X19C42uR2dpGW6L8r2jIS57RJt5poeeuN+dsYrLuvPAWZ8Pu059Den
 Vb8y8hKhzRi4IRN0ESw6KRoNbosTXTGKuf7PWVwJKza3YswZsUDkiW9/7+9ABpQG
 CIJ+R9R/+/5j/tGbzq+YTMKcpNaZkHWk87zLALvN7NNg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=T/5pb6r/UoVQt8P3l
 97DTHCU6/+Zf8y3qrrQsrsydeA=; b=IcQ5AsDfvkKnRbGfZ6moQEyceuLeKth25
 u9gVS3tkhfdIcS8zFsPNe+GPGvQOd1rWG4kQGTtmvitHkHtjVPogEX1PHn44NK2L
 EXQE+oCOb3sfRv/sY3kX0IAE1HuF3kwrGyd5OfGLTw5p9CJbzjq+Ftb6OsLIl+my
 fND3QEsmO9ydoYBooSJ/v5vp040VsKtUuC4STYhI1rrUk2aEhI3le3z7hoqI7lQ9
 NosJ/lmkmnEFhh7aX0tjPUECWBEOZ8CITaW3ngpm8b0ZdEkwggGC5GOkk6ESd7TS
 f5ZEuAsZikckqMRLSKfx5vP1wd1emIOyeQmNS10MEUFmREFdzH67w==
X-ME-Sender: <xms:7_IlXQpoHYjDQmCVOpHmjt_-tpzTaFGY4XpbHeVYzZSpyPBIa_uMgg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrgeeigdejhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhi
 ugdrrghuqeenucfkphepudegrddvrdekhedrvddvnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgepud
X-ME-Proxy: <xmx:7_IlXdetVpmyM7uZUhUAOnWmVbJG7FsDMXo6el8cQohmnS3MrF-3_A>
 <xmx:7_IlXeLE2LtUOUMDARsIYouBCvUpOZuproX_7c17LH1oeftv9-ACZw>
 <xmx:7_IlXauriFBbV7gwAcvljpN1_T4NWD532XBj-AI6UMofAr747060Ig>
 <xmx:8fIlXXDNKuZJTMZtWUR2d-z9tV5LUB72y9Ot435UDHbg7jfEzdt31g>
Received: from localhost.localdomain
 (ppp14-2-85-22.adl-apt-pir-bras31.tpg.internode.on.net [14.2.85.22])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7E8408005B;
 Wed, 10 Jul 2019 10:15:08 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 0/3] ARM: dts: aspeed: Enable SD controllers
Date: Wed, 10 Jul 2019 23:45:00 +0930
Message-Id: <20190710141503.21026-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_071515_629295_F6D60C7C 
X-CRM114-Status: UNSURE (   5.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This series describes the ASPEED SD controller in relevant devicetree files,
enabling the MMC slots on the AST2500 EVB and Swift machines.

Please review!

Andrew

Andrew Jeffery (2):
  ARM: dts: aspeed: Describe SD controller in DTSIs
  ARM: dts: aspeed: Enable both MMC slots on AST2500 EVB

Joel Stanley (1):
  ARM: dts: aspeed: Enable both MMC slots on Swift

 arch/arm/boot/dts/aspeed-ast2500-evb.dts      | 18 +++++++++++
 .../boot/dts/aspeed-bmc-opp-witherspoon.dts   | 18 +++++++++++
 arch/arm/boot/dts/aspeed-g4.dtsi              | 30 +++++++++++++++++++
 arch/arm/boot/dts/aspeed-g5.dtsi              | 30 +++++++++++++++++++
 4 files changed, 96 insertions(+)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
