Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C288562FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 09:16:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=44G0X7LwpHdzWOpFHrnLArtKZfG2wu3sWoMnWEYIhBo=; b=eNFtxQAKrOMDcC
	tSlJUtHqzIWjVPxCWzGbp5doaHLtnv/qe4S1A5qSrNIfRZhO0AYLeF/+R7gImOVQEblT0Y2wozHMZ
	HDwLlyCIT/KOg1DSUc1DXX67VWT6R46x5sGTrQ+kKeHxwrsLsC3sYHJIdBQCxloIAOghKCby6g/vV
	IdxG6r/tzSMLZqIFk+jMDTzaknKxkWnwgFpY02ZbR3Rk7G5uLKuAMmyvQ1P59nFjlF4iG1zALAQBn
	15xyqoQcbuCv8BieBMu7YpjNvhpdchhYQaRLuoIcDTxWv6zeoxERdt+HAzX6RduuxGN3F7Xu4aY7i
	fG7E6cX1tpQVYmu18HtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg29t-0006GH-Ck; Wed, 26 Jun 2019 07:15:57 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg29g-0006Fq-1P
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 07:15:45 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 150301C0D;
 Wed, 26 Jun 2019 03:15:40 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 26 Jun 2019 03:15:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=jWnT3U2Yd8PxeSNAZtgVSCgMRj
 OIJ80r4MORo/itpzI=; b=S0omCvpXCSNZGkzFEb/fFP8K1x9J5eYLs6pVmWWcCh
 TEPEKCX+ucQP/dX3Dac6dRrz0Oz7E9jmP3VoXi4Jf7BFA+e7BC7yYTBcHP32PSu8
 zSGdyWsXAuYSXZrEEbu378n+WdZWp4lH4RRbicWA5oQJbz2xxwC8QWF7VgQIrw36
 D4CYRu8Oi6WwkyiBRhg6kKVjRxZ+I8Pxc62amLs63Fko6DEftBoLHF4syAnCx29y
 P3xZDiPXnA0wgMW6y/LQVKtv88R6hGLtQqGYJ6JTZUTgylVf6hGv9MA7KHKvnA1w
 r5XGnq5SQu665bEhM0/XxBecmO7DkPQG/Fl3XVa8/Iug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=jWnT3U2Yd8PxeSNAZ
 tgVSCgMRjOIJ80r4MORo/itpzI=; b=tpI9QgLTdpE8CpCxyMjw58lvXc+6nHo3Q
 ZFKdctfd27el5gac2AGGnf5+MLX+ehyz//w7G55ti9mwoLxfni85FthpbOBl4gWE
 Ob6bgaMKGDbOZ1bVme79PTd7Konua0ctQb+S7kDFh9361TSmoD4fl9GYv01BGUTN
 pvQnSo8R/3857b5wf2h/wIoLR1s95vyS3GMbGXU/ORgriagdh89Aj88Fc6O9cZCC
 FsUw+khIf7cuHEQjOckHyssvQCYn6oTFQSlTv55XA5OJ2dXX94hzMRHsHQtvK6lV
 t3mM2mQCT+gkRCO7eVfLPIdl+QlTYFP40Ax60A+PdKe6YBHEwSoig==
X-ME-Sender: <xms:mhsTXeawLyZAI5GrnS6l-vWzUHOeJvmadF8mjKSeMaiPwOequ2riFQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudehgdduudeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegrjhdr
 ihgurdgruheqnecukfhppedvtddvrdekuddrudekrdeftdenucfrrghrrghmpehmrghilh
 hfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:mhsTXcT_FxEgnN8JYjTHrUD6gsCY5oeyPxrndatJ1vsZzXnqwXQ_Kg>
 <xmx:mhsTXQy_4PrGd6zTj2Ulv6whoGjKwbDBD-2YjY-xwzmDDX6O3YseqQ>
 <xmx:mhsTXe0tULIKSwiMJ4drYOHVC8wx0QxRrvR7ADmi_4f0TZ_i9pEnlQ>
 <xmx:nBsTXeZv7d_xKWXNpSht-SawLfNf8pDmUpyDepw3I94un5Yjb2_ItQ>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id B8E81380076;
 Wed, 26 Jun 2019 03:15:34 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH 0/8] pinctrl: aspeed: Preparation for AST2600
Date: Wed, 26 Jun 2019 16:44:22 +0930
Message-Id: <20190626071430.28556-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_001544_398558_B5F14E7D 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
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

Hello!

The ASPEED AST2600 is in the pipeline, and we have enough information to start
preparing to upstream support for it. This series lays some ground work;
splitting the bindings and dicing the implementation up a little further to
facilitate differences between the 2600 and previous SoC generations.

I've added a bit more documentation to the private header to help outline the
structures that are generated from the jungle of macros. There will be some
tweaks to their behaviour in the future series to support multiple pin groups
per function while maintaining the property that improperly describing the
pin/signal/group/function relationships causes a failure to compile.

Regarding the bindings this is my first attempt at using the json-schema
approach. It has previously bugged me that there was no way to enforce the
documented bindings on the devicetree, so I think this is an interesting
development. Hopefully I've done an okay job there. I think I could better
exploit the schema to constrain the function and group names used in the DTS,
but I think that can be left as future work.

Finally I've added myself in MAINTAINERS as the PoC for the drivers to make
sure anyone unfortunate enough to stare at the implementations can ping me
about them.

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

 .../pinctrl/aspeed,ast2400-pinctrl.yaml       |  73 ++
 .../pinctrl/aspeed,ast2500-pinctrl.yaml       | 124 +++
 .../bindings/pinctrl/pinctrl-aspeed.txt       | 172 ----
 MAINTAINERS                                   |   9 +
 drivers/pinctrl/aspeed/Makefile               |   2 +-
 drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c    |  94 ++-
 drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c    | 123 ++-
 drivers/pinctrl/aspeed/pinctrl-aspeed.c       | 250 +-----
 drivers/pinctrl/aspeed/pinctrl-aspeed.h       | 549 +------------
 drivers/pinctrl/aspeed/pinmux-aspeed.c        |  96 +++
 drivers/pinctrl/aspeed/pinmux-aspeed.h        | 735 ++++++++++++++++++
 11 files changed, 1294 insertions(+), 933 deletions(-)
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
