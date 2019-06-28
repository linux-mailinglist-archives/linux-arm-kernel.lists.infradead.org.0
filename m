Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7C15913E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 04:39:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9mMMpFjvmtYldN2x6pWrFfEeuHtt7pobrAbZ1Sub00w=; b=C60sALlBMCBUB3
	3yPeO07Z9dYsF1jpoahcyq6xGaoaNQmF/aza7iB/qI0ORvdQqwaXrpvMcjmbzuOJRSLp2IrhEiUz5
	p0dKUXLMztW1wkEwQQZDUbnlE330yERvswXxyCQkhhBc6LYSXsbPANZSJrAU1vMza8yAXvnUDqwsn
	iWeVsafEaRdnL0KG5KU3n+JTtqdD6cLOvw0yc1cHO4ULsn16MD0KcNDnFXOImYawk5AJ7Wn6W/GxU
	fEFmhbLtOYIjrq3h497mMoYxHtx3vgGyWrl7m4N4oIpOjKIiAVYn9vPEGNhKYKRSZJH+EdTAKLvq2
	oz8b7pvk2QWSyenvGqNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hggnU-0002S8-9o; Fri, 28 Jun 2019 02:39:32 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hggnF-0002RH-5H
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 02:39:20 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 815292AF1;
 Thu, 27 Jun 2019 22:39:15 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 27 Jun 2019 22:39:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=yaZ8S1F4kpu7z+66z1meDyHJPf
 imSKA8ebK+XQtSMvQ=; b=NtUdJbkc1H6xTV2I1gWf5YqUN4TAuHw7T6lBKjQdqW
 anSWElodRu3vvtJkIhAGW9GBuDMJ+OCXK8YiAZtaHQ0xn+6b2qRKzMeedsmj4e33
 L4P2AyyQoRZbisN/lEDLaWuzc85pA0+bleB9Tz3/JitwdMpRB3gPDr3FPxSSFX7j
 fi52LZv3OR5CS1PiaI2YYMKGZNmniqHdxx0mxrc0HnzU+y8b3zBgD7/XB7WNixzq
 axipiLsaJO5qo22jLQ2nFNj+gZBxp8hJuos2QHmARFJGTMSRcINCgSBesivJTKiJ
 Zb6DlX1TGKZQ/TdFsG5rlO61sFNPdLMw9E+zMCX9sTXg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=yaZ8S1F4kpu7z+66z
 1meDyHJPfimSKA8ebK+XQtSMvQ=; b=1wH69+gbM+nYJEPjyqCx+VxVugCPiDcZb
 xVbI3FrgkTTrAcTAJQCRwBbqrUkcGDFRGULJAkwQTW5PWux+GroMcqTzUzdXz6Z0
 Gc2+xascjMVMjtsLeQElKVrlCY+BtgOU2r0wxKxGh4Z6y4V/RPu9pPwcXb2ZNTeL
 FH67M8iTbfMuxBQiWiKG1dUoe6LcG/9MMGE20T9Nz3Iuknxv9gGhIoc1xKzwZZ/k
 x3kAJHjYrTPRSgVlebStgrVTGvxa/TNS5a0jGneKgMybE8UXo2a8bNlZjhj5y2MZ
 n6I9J4yb+V2cDNHgMejWHIk8rfxHcn9o4YcHxMoS+AzI/d61cPm6g==
X-ME-Sender: <xms:0n0VXf4vXXZim-nddahFx3PYbz0h9eHXRfbqeFD9uDu8QCVQcODwZA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudelgdeiudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhi
 ugdrrghuqeenucffohhmrghinhepshhpihhnihgtshdrnhgvthenucfkphepvddtvddrke
 durddukedrfedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhi
 ugdrrghunecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:0n0VXYnkZJjFZXe-swgjdqTBDjNLGt6-jADzwyO9MUXnSLF7_Vij5w>
 <xmx:0n0VXQS_V01O7qUlm_VNF49YQerGc5rbEogO6QskTDtCeYJhLj7uIQ>
 <xmx:0n0VXXFclzcNw5DE0TuIlnwYKAhk4-Ukygs9G-kLM9_vCrLGJgzZ8Q>
 <xmx:030VXTVX5_S09UVLkYsCfSas_ol6uZ3C5_4SUe_YrjcwZdWH7S1v_A>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id B68FC380075;
 Thu, 27 Jun 2019 22:39:10 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH v2 0/8] pinctrl: aspeed: Preparation for AST2600
Date: Fri, 28 Jun 2019 12:08:30 +0930
Message-Id: <20190628023838.15426-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_193917_520731_6188F250 
X-CRM114-Status: UNSURE (   8.65  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hello!

The ASPEED AST2600 is in the pipeline, and we have enough information to start
preparing to upstream support for it. This series lays some ground work;
splitting the bindings and dicing the implementation up a little further to
facilitate differences between the 2600 and previous SoC generations.

v2 addresses Rob's comments on the bindings conversion patches. v1 can be found
here:

https://www.spinics.net/lists/linux-gpio/msg40157.html

Please review!

Andrew

Andrew Jeffery (8):
  dt-bindings: pinctrl: aspeed: Split bindings document in two
  dt-bindings: pinctrl: aspeed: Convert AST2400 bindings to json-schema
  dt-bindings: pinctrl: aspeed: Convert AST2500 bindings to json-schema
  MAINTAINERS: Add entry for ASPEED pinctrl drivers
  pinctrl: aspeed: Correct comment that is no longer true
  pinctrl: aspeed: Clarify comment about strapping W1C
  pinctrl: aspeed: Split out pinmux from general pinctrl
  pinctrl: aspeed: Add implementation-related documentation

 .../pinctrl/aspeed,ast2400-pinctrl.yaml       |  81 ++
 .../pinctrl/aspeed,ast2500-pinctrl.yaml       | 134 ++++
 .../bindings/pinctrl/pinctrl-aspeed.txt       | 172 ----
 MAINTAINERS                                   |   9 +
 drivers/pinctrl/aspeed/Makefile               |   2 +-
 drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c    |  94 ++-
 drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c    | 123 ++-
 drivers/pinctrl/aspeed/pinctrl-aspeed.c       | 250 +-----
 drivers/pinctrl/aspeed/pinctrl-aspeed.h       | 549 +------------
 drivers/pinctrl/aspeed/pinmux-aspeed.c        |  96 +++
 drivers/pinctrl/aspeed/pinmux-aspeed.h        | 735 ++++++++++++++++++
 11 files changed, 1312 insertions(+), 933 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
 create mode 100644 Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml
 delete mode 100644 Documentation/devicetree/bindings/pinctrl/pinctrl-aspeed.txt
 create mode 100644 drivers/pinctrl/aspeed/pinmux-aspeed.c
 create mode 100644 drivers/pinctrl/aspeed/pinmux-aspeed.h

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
