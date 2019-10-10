Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2488D1E2C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 04:07:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zy1D4DTFui2fbCdybc+YsLMj/IAhurYS9jh0b6DiWkU=; b=DZouqOdp8iv29b
	7PqsBiA+cGbmfJ3BVTsafHpMsFLJxosvg66JNi568bktE03OdN4E7QFcoZGzwq0sYt866ySXY2RmY
	dXb6KI6XQpDHLsnjWiDoZ9cyUnmp3zrEuw0sqzDSs/Dok8bZSmEoRK4R+AmvYiO9hNawe0gc+lfpQ
	QCRkgtJxVgcL16m7pSyAzWmt8qkxPWsQHSc2D9o1tiJ5vadTCH4bxx8q1bpKndoz9SxLrFl6eY/Li
	0mwlmc3vahu7T/90npEmouCtCJ2Qrh6WWFNinj/8tVwcojTXSJA2W4q0ao38KNyt9AjaZN3sBg1AC
	Gevum3iIwnxggvHoK6Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iINrA-0006lS-MC; Thu, 10 Oct 2019 02:07:08 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iINqQ-0006LC-Ez
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 02:06:24 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 80EF421E90;
 Wed,  9 Oct 2019 22:06:21 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 09 Oct 2019 22:06:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=BbKe8lAB6aLlCjfJZgxJtnIxN4
 5+vPNsWUwa92cPHoM=; b=IkjsmFJDTlGNZMhcdiYMZUiNjofp+H76r88IYAzXiN
 WuTBqVVhfNGstxu50I3HT4g3wnANmqXqGnHN7lMrjfRe6QZOj6UqI8vA/N/CDJlT
 /9KQfZ37JV1y92ZVwV51YzXAF2EKohI3H/PGpsexi2NNQEoYPQsDrXM4W0m26B+h
 P8z2Jws7+5JFGcahZGYX9KNUe6XJtH94F2+B7hoQTfswArnzbBnVmzg1mc4Q8pdR
 bsFyXaZ4yw+Nxqkaep0r7JoWva0TrUL0V3ihhpKGXSIQi7JVIVsW/TrTNvr/Z/nm
 EQfR4cC//S5UvMj5T2FHWFypJtQw/6B9UESI+yMj8m4A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=BbKe8lAB6aLlCjfJZ
 gxJtnIxN45+vPNsWUwa92cPHoM=; b=xopbKxbvIBWIRZ2xt2xLRt6jYHaIeBghS
 uxIRxQk+aXuQIzqAqNbEgpy1mtAuUH3vRP21B2tC3O3YXUSdIFoIBDr+ATx5OAM7
 s0ur2yMDmvuhfCN0tuMsJjGkRpfJ9O1kd9WJX2/Q2XZqu2KTegLI2MBlOpHk6pT5
 +hJs8pCPEzjrvVgQzO5YaNsvD2V9DaztoJ9/FefK/Qc6jlWGuI5CfOIgEKya8nWw
 PTt2kRHj1Kq18+5PBIFtYxSc6iUhz6sG/nwSA5nJMSEexiej/knNZ2IaLXcUAixS
 1jfOFdrpl9dTftpXayl4ynrGqhjZyFXlvXofJVv42LqoPpCt6fUrA==
X-ME-Sender: <xms:HZKeXQII42Z69vCLC3eQl4QskYdZGdvDyYSNlH8kP8f6mr2Cih8c7A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedriedvgdehjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhi
 ugdrrghuqeenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecukfhppedvtddvrdekud
 drudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgu
 rdgruhenucevlhhushhtvghrufhiiigvpedu
X-ME-Proxy: <xmx:HZKeXatCnlPNFR-ESBZ4AC0xo6CjE9-Q-CtPma4Z6E1NciFDbKvWBA>
 <xmx:HZKeXdQSDGMF0a4wjnCwi5-NKVucxhimWnp-RD3cB_lvE_4-To8-Fg>
 <xmx:HZKeXQOyv-U6SiPDk-1uTm6J8yuVjUuooDJdNCCdOeyB4ACqj-GwSA>
 <xmx:HZKeXVzii6CfDaNDRUM0xX_ObCob9TA4uzy6bETopK6S16Y8g5R5-w>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 02CF580061;
 Wed,  9 Oct 2019 22:06:17 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-clk@vger.kernel.org
Subject: [PATCH v2 0/2] clk: ast2600: Expose RMII RCLK for MACs 1-4
Date: Thu, 10 Oct 2019 12:37:23 +1030
Message-Id: <20191010020725.3990-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_190622_859652_1D4B918F 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This series is similar to that for the AST2500 but I've split the patches out
as the AST2600 driver is new for 5.4 and I'm hoping we have a chance of
slipping them in. Maybe we can get both series in, but I thought decoupling
them might make it more manageable if not.

Regardless, the blurb:

This series is two small changes enable kernel support for controlling the RMII
RCLK gate on AST2600-based systems. RMII is commonly used for NCSI, which
itself is commonly used for BMC-based designs to reduce cabling requirements
for the platform. NCSI support for the AST2600 is not yet implemented in
u-boot and so unlike the AST2500 the kernel can't rely on RCLK already being
ungated.

v2: Rename some macros and clocks based on feedback from Joel

v1 can be found here: https://lore.kernel.org/linux-clk/20191008113553.13662-1-andrew@aj.id.au/

Please review!

Andrew

Andrew Jeffery (2):
  dt-bindings: clock: Add AST2600 RMII RCLK gate definitions
  clk: ast2600: Add RMII RCLK gates for all four MACs

 drivers/clk/clk-ast2600.c                 | 47 ++++++++++++++++++++++-
 include/dt-bindings/clock/ast2600-clock.h |  4 ++
 2 files changed, 50 insertions(+), 1 deletion(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
