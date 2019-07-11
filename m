Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF743650DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 06:20:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jOd+w+AtKOLVuEHVY3rfskh4vOlsuNiqx6VVFIwK61s=; b=awSQf1tc8qQDAp
	hxeRN1WW4wLlWeH4oV9PxoNjH+hUTmUNBNn5nSLiU0+iY+sG+zH0ZqIZconYq0RJCd4aQQ+J4LJum
	15xbRCLiyny4Wo1tAFSxqAiVzsX+SrNRhHUMWeUocCwtnMDOqBkUu9lF78HaKT9mkZMspbe6G9SG9
	gV6VWcBzYtmasqB+7UVIOqRnAQJepA6y8U8wCj/m8NEIJ8BKK/NF0yKZSwPMxaeQUULjnZjRAIpOQ
	QC0fQsRljSAwIITOR2uBKzOyxReGi9CHGKhXP02OADh/r/huoqg++bCpMbvU79jzrgV9YJS5i8LkF
	oGMZoAVanC9CQEoRzNAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlQZ7-0006Qy-Cc; Thu, 11 Jul 2019 04:20:17 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlQYm-0006QH-IF
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 04:19:58 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id E93472EF8;
 Thu, 11 Jul 2019 00:19:53 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 11 Jul 2019 00:19:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=D+2vsx8lqO236DJVmaN/p1Vy6V
 CmDiyAuomD0yG8gKA=; b=CCJ3BXQquFOJYjeQjsvni7ZIGCxZB5FSivkldz3VMf
 N1EAXqjfnlrW5W8ud2NrDRF+pgNW7fq4Enp8iLTqjrBC0+Dl8UlZZli9i12eN/w0
 AZHDTmkdkzt9WIlale6AzOnpFxLk3s8FSRQ7vb2IMDFCmzxgFY9Su/Ic7soKuO/a
 TolUb/WVuqZqUI+X+xri207s+f2t1+3CVfQxP3noOpFHJl3zclUBxYzR9h5k87Yx
 lsJiEWJhRiuyiQJDV5N5NWf/oLoFklpZT789KdU+Ge6goWHwiR1RSTHZ+XkVPQkc
 s0afp75Ly1zKzr7U2ugncz44O49QoojoUCdKKEaksVfw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=D+2vsx8lqO236DJVm
 aN/p1Vy6VCmDiyAuomD0yG8gKA=; b=kS4vhQmMBnte9IQzEEyj5uDnmtgqKLLCK
 f160Yuri42tbpoI0pyHZf7tArJR31gGYJFumACifqsWs3J43Y339Suzu4Ykbiujb
 uH1AL6svjRELo5VfXPtTvYg2PHKw9tVezH2sc4GfvJGR1mL3lj6ZukC+z2hhsLxS
 2ozGsvkNMu5PCfwdgR4yMwZIUlpT+zMl0VJ3KouwUFJpfEydBhvJV36fSnkJWrVf
 iEgjCl09I0AWzlTLVwwX2eq0u8A0cGr4OdCfC3FyE5oQpjmn7hua4fLFCgcstQSh
 UjClg2l77z6rLbk/SAH4ARnHviCo/0jw0nzflyIm735mY9jxnqewg==
X-ME-Sender: <xms:6LgmXdgmqi3EiquA5u8XIh2ArReVOfm-FeCAAn_vT_fL1n1fAj2l9g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrgeejgdektdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhi
 ugdrrghuqeenucfkphepvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrihhlfh
 hrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:6LgmXdfnDr4TaUMIE0cdLtVB5AT55cpstAXyE3Gc8arQcMP4uDMmNg>
 <xmx:6LgmXQn0wgTWSwvJyASnT1xklvt-QYcSPYHkovI8n2MBSo1Q1e475Q>
 <xmx:6LgmXWvkug9i6n6RIriwnXUvirYuE5zdXo1ZBaQBa4RFla7GmT7EAg>
 <xmx:6bgmXUjTP81wnRhDKoVPRQlfUQ1o0mJhsA1oUK1MkYFmq6wcETQaug>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4342F8005A;
 Thu, 11 Jul 2019 00:19:48 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH 0/6] pinctrl: aspeed: Add AST2600 pinmux support
Date: Thu, 11 Jul 2019 13:49:36 +0930
Message-Id: <20190711041942.23202-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_211956_854716_1D97FD67 
X-CRM114-Status: UNSURE (   9.19  )
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
 johnny_huang@aspeedtech.com, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linus.walleij@linaro.org,
 ryanchen.aspeed@gmail.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

This series adds pinmux support for the AST2600. Some more rework was required
on top of the previous cleanup series, but this rework was focussed on
supporting features of the AST2600 pinmux rather than fixing issues with the
existing infrastructure for the ASPEED drivers. Due to the dependences it's
based on top of pinctrl/devel, so should avoid any more SPDX issues.

ASPEED have been testing the patches on hardware, so even for an initial pass
there's some confidence in the implementation.

Please review!

Andrew

Andrew Jeffery (6):
  dt-bindings: pinctrl: aspeed: Document AST2600 pinmux
  pinctrl: aspeed: Rename pin declaration macros
  pinctrl: aspeed: Add PIN_DECL_3() helper
  pinctrl: aspeed: Add multiple pin group support for functions
  pinctrl: aspeed: Add SIG_DESC_CLEAR() helper
  pinctrl: aspeed: Add AST2600 pinmux support

 .../pinctrl/aspeed,ast2600-pinctrl.yaml       |  128 +
 drivers/pinctrl/aspeed/Kconfig                |    8 +
 drivers/pinctrl/aspeed/Makefile               |    1 +
 drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c    | 1821 +++++++------
 drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c    | 1865 +++++++------
 drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c    | 2395 +++++++++++++++++
 drivers/pinctrl/aspeed/pinmux-aspeed.h        |  227 +-
 7 files changed, 4643 insertions(+), 1802 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/aspeed,ast2600-pinctrl.yaml
 create mode 100644 drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
