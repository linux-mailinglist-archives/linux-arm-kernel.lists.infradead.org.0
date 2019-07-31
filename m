Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C567B92B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 07:40:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dky1qWah5KQEJH4c9o48gIuWyrOPRSUQEmcaQynATLI=; b=daF353k4WpAjBZ
	9/bBkZ7wFdY3h58+YW8BXYk/zsXpQyjwetHJ3nEDEKtWGd62B1n8ucfLQL6+7KCZyoqznwF7m/jbc
	phEQuHady8tCuxuGy5HhdxYo1FftjiX8OnTXKtPeNTt1wT7JNnDbKPJJfDEq0Fgew82ysFzVGPmVO
	4cfxuyfsvDDoOyb2QhcluQgw9Pju+CMSNTPDI0o3+30kIkz5S2lybP8Ui1QMze/pk6/m4GADq7FLN
	EbvyuJ6y5T7DKNr5BE3YiH8FwHXQXqAo+QS0+4Goa/dbZEQecJz3aDCTJCl2dMQJ9yHX3r3NxGbxN
	RmFCTfPT5w1fZDAjJwcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hshLp-000431-O0; Wed, 31 Jul 2019 05:40:37 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hshLE-0002b0-Kx
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 05:40:02 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 0E6642D4F;
 Wed, 31 Jul 2019 01:39:54 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 31 Jul 2019 01:39:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=f6SwHiquskKyzal6BVgx/Zrb83
 M7d3YW34Dxd8xOi/I=; b=g7MN1DY1j9rZdpYORY8nL/SkjVPP9amQQ6Ol+aXOL1
 75Cgfy18cKd6+ssH0oOz3n7yYP+nlnPSqod16gcxdXcMx9pE14K2SFSf6/luls5u
 JphFHxcZh/ovi/Q4uGC7Og/ct+1NnN9zCnNk3sa1m+ocS2693kgbjimy3t4qegds
 hZII0pm/H8nklvVIkOOQ3JrwKtCZ7u4DGygNFPhNSA7lKtbH5vxxCsmkOGl7YT5W
 RBbJSRWOqsaK2lK1GMWmf9PMZnZxHagbU29IJaGEtPyserJhpVEoRXthPev7LbGi
 eXngVDCjC0WBidytA0t07ccGFSO9lGSFuVCl8wBYw8uA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=f6SwHiquskKyzal6B
 Vgx/Zrb83M7d3YW34Dxd8xOi/I=; b=i5xBkoT3kOfJ7Fozu8U1x3mCDqVDbaGJi
 hW5j7MVRghRgV4UUqd7BsH+FN1J5Ffey9ZReBvuVB51o9kaDcNQ/tJGbJ1cdw3m1
 jFJcbTap/SsQj4NW7jmsyhcVwGAcN5fwekb6ohoymp4NjfnNCOdtccLepKOo/169
 /7jgkGAWQzcX1gMu3UdiGLLpMnuzOhghv6uqG+KqRdnPzp0drOrRM3cvb70dUcUl
 mveg0t1PJ+C4DvGiVpbFo0iwbQWzvxeGJb0rRUAmglkQwwqpfRBYBFkoEqRUkdNi
 NI2P0sJCs3ehdBaCR0St9p7NktQyf5qW/iv9aPQ7xRgqeACnHvtUg==
X-ME-Sender: <xms:qClBXZXWhe-ZQDDEHt39xzZJV1vT5Nk1WP4T8AYQICf5aoyLv9SzqA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrleeggdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhi
 ugdrrghuqeenucffohhmrghinhepohiilhgrsghsrdhorhhgnecukfhppedvtddvrdekud
 drudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgu
 rdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:qClBXTpGDNuSmIbPncJh21n4Sf0ss0RejHuzWA4hv3rAOLNcRuRxMw>
 <xmx:qClBXaVOdGKEcDyq-7JxJ0S_ajEy6NdCoqsQTywn439lc82Dng4C5w>
 <xmx:qClBXUGdN3rrLeLl3XtvCSrNpwfDySjv8adf7tD_SwRNJ9jE38lxGw>
 <xmx:qilBXVZcJHTBJAO8KEKpy2dp-GtEoJUAEkilKJiKZf9U4ox-z_TfPQ>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 05C728005C;
 Wed, 31 Jul 2019 01:39:47 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v2 0/4] net: phy: Add AST2600 MDIO support
Date: Wed, 31 Jul 2019 15:09:55 +0930
Message-Id: <20190731053959.16293-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_224000_832897_9A0892AE 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, andrew@lunn.ch, f.fainelli@gmail.com,
 linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, joel@jms.id.au, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

v2 of the ASPEED MDIO series addresses comments from Rob on the devicetree
bindings and Andrew on the driver itself.

v1 of the series can be found here:

http://patchwork.ozlabs.org/cover/1138140/

Please review!

Andrew

Andrew Jeffery (4):
  dt-bindings: net: Add aspeed,ast2600-mdio binding
  net: phy: Add mdio-aspeed
  net: ftgmac100: Add support for DT phy-handle property
  net: ftgmac100: Select ASPEED MDIO driver for the AST2600

 .../bindings/net/aspeed,ast2600-mdio.yaml     |  45 +++++
 drivers/net/ethernet/faraday/Kconfig          |   1 +
 drivers/net/ethernet/faraday/ftgmac100.c      |  37 ++++-
 drivers/net/phy/Kconfig                       |  13 ++
 drivers/net/phy/Makefile                      |   1 +
 drivers/net/phy/mdio-aspeed.c                 | 157 ++++++++++++++++++
 6 files changed, 250 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/aspeed,ast2600-mdio.yaml
 create mode 100644 drivers/net/phy/mdio-aspeed.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
