Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BABB7842C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 06:39:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Bw8BkLQ0JsS6tSPsaNgk4elmmn94s2fwaHIB6GW8GvE=; b=DHJbsKB/hwc5Pn
	qX+690HhSW30O2Pdro+qXHMRsKdTu3sciow3o/Nk1d7S4cS7+XQq49+huPaGdGV4NzL7ADiowHXHJ
	S4vvqQm8sAYIIdgDS9DoONVGqGn8wLuWPoZlLIK+MKG3gYxQwuBrtKW6apu8H2/URZe6zV7EOz16W
	rwFjT5l3J9Kv5XFgDOTp0ipQlbMSxfzdtqvIqIW4zWeyK1iJrB+PF/fySN/ZvUmmr0uKUI/UlQYsI
	nsE78UcOG5xzAlkuZzPdxxU+bpCPC+f12JRceoW3oYrQMEqxMy70XbBc7ysYkqB9iefV2t6FQr+Ku
	I8hBpK8AfLz6Z7LYAQdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrxRm-0004Mz-BB; Mon, 29 Jul 2019 04:39:42 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrxRd-0004M5-0T
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 04:39:34 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id E8AD31D33;
 Mon, 29 Jul 2019 00:39:28 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 29 Jul 2019 00:39:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=aqDU4EJqoCCG0sbaEmhbBDMZxp
 GS5Qk0n3blj0qrY7s=; b=V0DU1Qt5FZp2J8YCNbDMJyQtL4gS/RKuZT2t0NtFUy
 IDWhwX6cGUDRQa26nQDLF+V6VVDkqGpaFLdbJ7o7Y6Myk5+E/CPSGG/w2y9SjSCi
 en6xKY1hTNyGV3YOtkOXZC7gjEjNh80gduqWqnhCX7E6VgnltjIItXObqeEMTEGl
 9FEx4hzjwax5DtfosqZKs7RG2rOXs3eGJU8y1r0sYIaQPS/yHkekThacH0EpA9b8
 wKccBW0mzv/LWu0/Z98GeXsQh1uzxZBwj+UsKStqBbZXw5ns5sv2jSP/wevw3A4d
 RlUPo5Dk2hTO+CFGUlraDPUeqzMkND00zAUvwfHN3NHg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=aqDU4EJqoCCG0sbaE
 mhbBDMZxpGS5Qk0n3blj0qrY7s=; b=D7o1MtGycyf+htTiAJA4NOCFllGhivzeq
 7hYqitUWcC7lsVKvXIoOhcug1xfHv5m18WatdzHbY9A0iJpmBDhyMYXhEI1UHdcc
 cyp9TNo3XGqKUi1+CrjbeaQQuFamE2wSvC+8WiA8U4kHseelIwO/zKA0dyCxONN9
 J8UHTxZ+bsKzV5Vrp9KBiyVcQ5AbPxX3TDbBAzyClM6pdmyio7U+Gvx40BDZDbKi
 6UKi1yO/4fd0ocnGOCmiJNqIAerQuzJqHBKp21B+thgeWzILAm+y2GpEwFBN7lUh
 Hmp8heM/7GdArQmxiUQJVZlXGJ88faWiMzJvFpJ9sinUNBoIrWauA==
X-ME-Sender: <xms:e3g-XcWXJeCMW08lzP5IQ4N8b_zBlmLVOkeBx_Qxe-zp4UKaopDlXA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrledtgdekgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhi
 ugdrrghuqeenucfkphepvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrihhlfh
 hrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:e3g-Xc6Jo7c1iONOpE6_x2Z9U-0esifmvVZrk7eWf_rKYIvyfAAGpw>
 <xmx:e3g-XTLKV9uNT0_8vZLHnnPFZsR-ZOmGGBSloVn_IONUH07iDuABcQ>
 <xmx:e3g-XdKitd4qu_YK8gF3pFubhbbK4EBCw6x__LyEt3G4KMvMe3ACNg>
 <xmx:gHg-XcMbgkzccTTFY5IJnxncxLjKr1gqTVrlah7BZMhvlwzvPoq7xg>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8E5788005C;
 Mon, 29 Jul 2019 00:39:19 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: netdev@vger.kernel.org
Subject: [PATCH 0/4] net: phy: Add AST2600 MDIO support
Date: Mon, 29 Jul 2019 14:09:22 +0930
Message-Id: <20190729043926.32679-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_213933_266142_F421830C 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
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

This series adds support for the MDIO controllers found in the AST2600. In the
AST2500 and earlier the MDIO controller was embedded in the MAC; this has now
been separated out and the register interface rearranged (again).

Please review!

Andrew

Andrew Jeffery (4):
  dt-bindings: net: Add aspeed,ast2600-mdio binding
  net: phy: Add mdio-aspeed
  net: ftgmac100: Add support for DT phy-handle property
  net: ftgmac100: Select ASPEED MDIO driver for the AST2600

 .../bindings/net/aspeed,ast2600-mdio.yaml     |  61 +++++++
 drivers/net/ethernet/faraday/Kconfig          |   1 +
 drivers/net/ethernet/faraday/ftgmac100.c      |  37 +++-
 drivers/net/phy/Kconfig                       |  13 ++
 drivers/net/phy/Makefile                      |   1 +
 drivers/net/phy/mdio-aspeed.c                 | 159 ++++++++++++++++++
 6 files changed, 268 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/aspeed,ast2600-mdio.yaml
 create mode 100644 drivers/net/phy/mdio-aspeed.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
