Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 888A8784B3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 07:56:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QppVzAa+wLW8LAbBZXk1HPGDUYmlMZRyjIWesQHxWcc=; b=jbw6lMHM9ePHyC
	VbVW3bxR2A3K/kU9SrdW3UYnQe1PCZTp00TOOPbkHmR2cavSrBbFLd27J4RuqW6U7x+3CREgUB5kM
	R1WSPRFFG9R5Ds4eWqOEHR+YifB88DFZ6CzcOo9wyx0WF65mFQB8xb0fc81uIzJo4a5/dR+hBATOj
	RNU5GZQvt4TOkjakYbDcyYZ3q2rfg8WjuLQL06zbpJ1aJeXHAQ1HfowOvS0zU/J6TAQPvlsV6srWR
	85x+X2menmTYNxZEVHtBt6E08DStoQtzLlqlbvlQN/ApXto1GwkgawG7YlP2EjmvzIlKwlfHnSBW5
	7wxUZOKR/D9yP1zG+3qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrye0-0007G3-3M; Mon, 29 Jul 2019 05:56:24 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrydg-0007Eq-6B
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 05:56:05 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 3E7D923B4;
 Mon, 29 Jul 2019 01:56:01 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 29 Jul 2019 01:56:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=OfpAIjgwrhIxtKWdG7PT3qN5Lx
 O1ddFAzrWrq0YndxQ=; b=DDtSuXTrZWwxSPZHXGFgBPzyrn2kD2Tsk9CQ2cPFo2
 HwdGSHgs1xW7Wka/WBgiD8yJ8ttuXVx4ppupaTYO2Ph0YfnkKsnR6vMB/9aM/Cbo
 ThpPcsCqh+CT0oUAaH0owVzXhxC5E6Eyo1dDl199UIUmrN6RR4mfYyZMb4wiE9C4
 hztUKO47As8oVL2Img9NUUjBbpHeaac9RfQ6YFVVWzOF3wCdZYqIQg4EVVhx02yl
 p1JIlPk5AxCsYkSIBKnNFHhYAjVERClCJfH+YsOJ5vQlufDKzBYIkwLk2Ae5cPcj
 3/IXR64cQ8RWr4DXmauWPAyLdROdrbQdAoYo7gBHsNGw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=OfpAIjgwrhIxtKWdG
 7PT3qN5LxO1ddFAzrWrq0YndxQ=; b=cYCvPyschF5SBEvz1HKm/XjqctxFfetnj
 TzoQ4eqKFerOGqiXPbe7oh7dOj0pPiUZsznFZH/x9CIy0zc1UfNv6EqE+u22GcXB
 IqjxetEjaHrEpjbN+n1OP3XYdOU6CrIwWQlrYDg0WVtBX0R88NhZjvA5RZne4CBI
 IUqzQg0eeygANhVac2MtbBv+lqbCka3lmaz6gwUw5cJFn6CrSOr8MFejmMUurUlo
 /6DrfSNRtILJN/noJHuiqUqqGbL5s5GUxb0pfD9/9PTcW9QJe62r+k7EarK50hM4
 /RbSvi5rBOqyVJ+u9BG4IsR6TljD/cgbF/qqfDultKr8uSbUysqSw==
X-ME-Sender: <xms:b4o-XdcpBuXRl_09d53tt9esSgWBM6x_NtUo_vdS0IROrFLk46OEjw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrledtgddutddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegrjhdr
 ihgurdgruheqnecuffhomhgrihhnpehoiihlrggsshdrohhrghenucfkphepvddtvddrke
 durddukedrfedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhi
 ugdrrghunecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:b4o-XVwIVX8QrX3_7b0sKJ-lgAYaNYxq-gtwrJPO0zFgBAwRQDqOmQ>
 <xmx:b4o-XTFFp_JpmAwoE9vB0n4n-RcgJCpSgsJE-ihUpY5tr6G6Dc-nHQ>
 <xmx:b4o-XZyxz41ZXRAK8GIa303GBH5LKmn0eE8iiam95gge_D98pVttyQ>
 <xmx:cYo-XetsSjLix6I3Fyefi_MK2_WMG9a3OB1dMaLDJCHackVkuTVMkw>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id A62D88005C;
 Mon, 29 Jul 2019 01:55:55 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH v2 0/6] pinctrl: aspeed: Add AST2600 pinmux support
Date: Mon, 29 Jul 2019 15:25:58 +0930
Message-Id: <20190729055604.13239-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_225604_547508_D4C39242 
X-CRM114-Status: UNSURE (   9.16  )
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
 johnny_huang@aspeedtech.com, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linus.walleij@linaro.org,
 ryanchen.aspeed@gmail.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This series adds pinmux support for the AST2600. v2 addresses some binding
comments from Rob and has some minor cleanups in the g6 driver implementation.

v1 can be found here:

https://lists.ozlabs.org/pipermail/linux-aspeed/2019-July/001999.html

Please review!

Andrew

Andrew Jeffery (6):
  dt-bindings: pinctrl: aspeed: Document AST2600 pinmux
  pinctrl: aspeed: Rename pin declaration macros
  pinctrl: aspeed: Add PIN_DECL_3() helper
  pinctrl: aspeed: Add multiple pin group support for functions
  pinctrl: aspeed: Add SIG_DESC_CLEAR() helper
  pinctrl: aspeed: Add AST2600 pinmux support

 .../pinctrl/aspeed,ast2600-pinctrl.yaml       |  115 +
 drivers/pinctrl/aspeed/Kconfig                |    8 +
 drivers/pinctrl/aspeed/Makefile               |    1 +
 drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c    | 1821 +++++++------
 drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c    | 1865 +++++++------
 drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c    | 2355 +++++++++++++++++
 drivers/pinctrl/aspeed/pinmux-aspeed.h        |  227 +-
 7 files changed, 4590 insertions(+), 1802 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/aspeed,ast2600-pinctrl.yaml
 create mode 100644 drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
