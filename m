Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A52610E5C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 07:13:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MZdqCdyLD5810fN1x5bXk2JJiibRTW05vVsfzZ+1esU=; b=YZCJfeU7yKTg1u
	taz0HWLOAp+rMPlqc++7Osvbuh8bvJHqzZA52nkVUtCgXovs8zm//yqfHuVR66c+ET8nq/zDlzyKw
	JaAyoMKRWzmVAtYDV8oL5bXJqyiJpmYsekPlUUS3V1ZjkG0N0x7M4IcERBDTrPnXn/uQ7S6S/oc3K
	yGOB/bV96I3KcFnndNCyNgdfvc1Bu1MDhAocj4Tsnru5gpE8b/Zgskp5tsyXH5OOzJbzsuei+MFIN
	MAY0bpQj5abK0HSm+I7gkl07aV1SrdA5CwDwr1X34FrtmgKqVzCQoMIs5RDsaJcDtWyKZ6Tfhfju8
	G5jQYxMDq3rmz7x1O5jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibexs-0003uq-De; Mon, 02 Dec 2019 06:13:44 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibex7-0003Rd-97
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 06:13:00 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 85EBE22639;
 Mon,  2 Dec 2019 01:12:50 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 02 Dec 2019 01:12:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=0RjErlsd2BgGPzWKY9035wj5+w
 1sayMAH/KmpcDz7N0=; b=ic8mng/k1DqnwT6Gl3dHcq25QjL4puHw+CyRFrcjRO
 SSY7IGpT8mmRmFsxz2qYv3Xc3b9vlyT4Xkfm99QJimK0YafQ+8HOHtAuZoqbNeCZ
 G6u6uerhmJlfdm5cXkRHA+gZ3LjfIn0nzwUQW4PIRiFBXHXBFjuCm2+f/msR5ObV
 /dod50vtchx47qZAvTxev57NgvkjflpWcE4NLA8KCW0Rd1iHWnFNCHBtRY/Rbpz8
 s079MHvJo8fOtdV9CIzjlqTFeLxiwExMHhNBKnPMew7u9Na6/nb5L9FPqc4gOmFZ
 laozeS1WEdrbw+/gAibQSjN2I1nvgcvhouLFBF/WjkjQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=0RjErlsd2BgGPzWKY
 9035wj5+w1sayMAH/KmpcDz7N0=; b=UFQ+ITXGYvmYQjvyDNA2IYiO7w2MnBI1K
 7x9B6Q0St7fwbUcJ4jsJuBKjdZxohm5U+ghYDuMkVWYnFyXPOFKINrbCKBZon5qP
 RYkWFcK8cgT17qA+S3Ind7WAKDZ9Gpo6M6A4xHtTvlF/Czsugw8ZDXrxMYDf746t
 1YXSc53OO7ZiM8d1VxLR7CJx5m7ztoNs2CTvVXc8NC6AciC/7A5qznHxBJIB6/Tv
 1kllmuxdxY08QpsYdwPRM8gOIVaRp1WxYh+HFbpxXebk3L+oLRtLAXwSrrVTDXwH
 xSVnOW8yl8mg+kAPJt63ldKiMlnKvk0eT+aZnfcdFGbUCUBcOGy1w==
X-ME-Sender: <xms:YKvkXTtUo9MuWIb4KRGwNzRSB6KEmk60U2YiyaFwcq6-DNMnor8gww>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejgedgleegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegrjhdr
 ihgurdgruheqnecukfhppeduudekrddvuddurdelvddrudefnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgep
 td
X-ME-Proxy: <xmx:YKvkXQ1ffOumc3312OXu_BO_dhduMphO8uo0uIZE0SeR5zU9UVX1xQ>
 <xmx:YKvkXbO3ESr9sYNGBCOALc6hnrwD1rbGdkvonL0h7minx4vzuGinNQ>
 <xmx:YKvkXQUez-46vBL-lcju1Yhmy76kz6jjcdnItmBN6EiH85gXdEvmJA>
 <xmx:YqvkXdbwbi_GhewCX739IsuQ7ztsMluU8SB46CIkruCFZDo5Y3r35w>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id AE8D080062;
 Mon,  2 Dec 2019 01:12:45 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH 0/7] pinctrl: aspeed-g6: USB and pinconf support
Date: Mon,  2 Dec 2019 16:44:25 +1030
Message-Id: <20191202061432.3996-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_221258_205149_86C76705 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-aspeed@lists.ozlabs.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This series adds USB and pinconf support to the AST2600 pincontrol driver. The
patches have largely been developed by Johnny Huang from ASPEED and have been
used for bringup and verification of the chip. The were developed around the
time of the 5.4 merge window but I got distracted for a while and haven't had
an opportunity to send them until now. They've had a run in the OpenBMC kernel
tree and so shouldn't cause any issues, but given where we are for 5.5 I'm just
getting them in early for 5.6 so we don't miss another release.

Please review!

Andrew Jeffery (1):
  dt-bindings: pinctrl: aspeed-g6: Add USB functions and groups

Johnny Huang (6):
  pinctrl: aspeed-g6: Add AST2600 I3C1 and I3C2 pinmux config
  pinctrl: aspeed-g6: Add support for the AST2600 USB pinmux
  pinctrl: aspeed: Add ASPEED_SB_PINCONF() helper
  pinctrl: aspeed: Move aspeed_pin_config_map to separate source file
  pinctrl: aspeed: Use masks to describe pinconf bitfields
  pinctrl: aspeed-g6: Add AST2600 pinconf support

 .../pinctrl/aspeed,ast2600-pinctrl.yaml       |   9 +-
 drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c    | 170 ++++----
 drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c    | 212 +++++-----
 drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c    | 387 +++++++++++++++++-
 drivers/pinctrl/aspeed/pinctrl-aspeed.c       |  50 +--
 drivers/pinctrl/aspeed/pinctrl-aspeed.h       |  38 +-
 drivers/pinctrl/aspeed/pinmux-aspeed.h        |   1 +
 7 files changed, 640 insertions(+), 227 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
