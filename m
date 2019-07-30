Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1357A13C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 08:23:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t8EGvgZJKsCqj90rWzMxWuwRRxUZXOnl1c5c7o6rwxc=; b=W8NEO9y3W1iVnT
	zLFCHk84V9iYxMx13EEkK2aCccJJhiBotrhl21YOUf8NpMC9TxxVoiDow4DyTPnemH0RWnuroO1Ti
	f9X9necgDPym6GM4MgDKetyZp6cqrYcuzE0HtDA1N5tinDQY/pqyUBYGzumNm2ups6g8l9ylQRpGt
	uAYIbP8OHkJmUA6Kc+agVWAW7z86zpzlQWNzqt0+B4lIg9VU0Gr5NIPuh+j8IbBypZM1Kpyf9jsfO
	E16LALKh6BC3EZ0WwmGcnDk2xQIdmt8vy4qoGfq/6F9IEN6gbndz+aqMXc2/KKp+ojZVoAiQMlYdh
	5Az2SLXw5RkSz/OxYm7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsLXq-0008M5-00; Tue, 30 Jul 2019 06:23:34 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsLXU-0008Kd-Ur
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 06:23:14 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id EF934AA7;
 Tue, 30 Jul 2019 02:23:09 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 30 Jul 2019 02:23:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=xUyh/uFx5Pvf1Uq1MZFdHPn+B1
 1pIejp1FpFbo/nfyo=; b=UdN6jB6igo0Ty+DeyvZbWVNSAQaky7Dhy//EXdEPJj
 E3VwBUdaPoGSzU/o4BPLHloGuAkUn1/uTHkiKr3Z2Zug0YNBK9yFPehow5momf0+
 VEaWPHNe2ee0/hy7GYm/yzcjsV9KR13A3tOpiEGXirChmVzj+tCddxXOU42NNXRM
 Mefv7piyNaugsSzVZMUZRVXJMYM5MbfkaGRkuoG+8G5oozljCvgcreRNsz7v7R6x
 maXVSYXJtW4lISQ3cfhTTVP/f/81TShO9PfMm3n87blCXWCV4P8pL5DROHnmF5KN
 QKhV3PL0AB4ZHTuTm8TYHfKX0qBRk7xLYppERpmn9L3g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=xUyh/uFx5Pvf1Uq1M
 ZFdHPn+B11pIejp1FpFbo/nfyo=; b=pKthU7jUwLnIpxgW/pDXAhTnjyuXJJCrB
 EkpB7bOpdZyR2faU3ib1KCN9gxtnxVHtei3Apb1v94NkennpmFfXnYHlR96Dwyjc
 1puma2kqqmVej+v/mbBX/cIxfCuPePFEiWAznUXPzlh60ZOTnuAwNST4oQk8q9MI
 gANZEImUB7gZtYI6mH+qnhuB3DvvE02HjZHpTIssQUf2V3ZsIUdnadxD5eKGxQP5
 ZcDWmeT67Bv3rSKtb4W9uvmymXUFKAghBhF48XZ3avfWFFlzRcU+NHtnsg63U3gE
 /LHSGloyIolNFHBkR3Xfiiomxc0jcka1B7kNmkxFTxqdk1hgb7BNQ==
X-ME-Sender: <xms:TOI_XYrE5sZqkDUxk0kc4FPaANSiAFGzEmZV0dDyVvajl7mWFBURGg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrledvgddutdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegrjhdr
 ihgurdgruheqnecuffhomhgrihhnpehoiihlrggsshdrohhrghenucfkphepvddtvddrke
 durddukedrfedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhi
 ugdrrghunecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:TOI_XS6gMoGcyY4h7_EqJMkEStNAV6W1Dfwx_ej5hA50ggBnju-7zg>
 <xmx:TOI_XYN0is4b6LbHFvcjmzEjeD8XEWrn8A-jdM4nRUg93Z88G-0Wtg>
 <xmx:TOI_XUNXZGeGHXVnckNMX9Oy3YdgOcBmN5amS8wzyWFZNx357wU90A>
 <xmx:TeI_Xd4ayhocA9duTCI7EotOBL6jJ3BDN1iQ80mUnF4il8E8MnIfVQ>
Received: from mistburn.bha-au.ibmmobiledemo.com (bh02i525f01.au.ibm.com
 [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id CAE3880066;
 Tue, 30 Jul 2019 02:23:04 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-mmc@vger.kernel.org
Subject: [PATCH v3 0/2] mmc: Add support for the ASPEED SD controller
Date: Tue, 30 Jul 2019 15:53:14 +0930
Message-Id: <20190730062316.32037-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_232313_177811_E68FB1BF 
X-CRM114-Status: UNSURE (   8.36  )
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

v3 of the ASPEED SDHCI driver makes a bunch of fixes to the driver and the
devicetree binding, including the addition of the AST2600 compatible string.

v2 can be found here:

https://lists.ozlabs.org/pipermail/linux-aspeed/2019-July/002013.html

Please review!

Andrew

Andrew Jeffery (2):
  dt-bindings: mmc: Document Aspeed SD controller
  mmc: Add support for the ASPEED SD controller

 .../devicetree/bindings/mmc/aspeed,sdhci.yaml | 100 ++++++
 drivers/mmc/host/Kconfig                      |  12 +
 drivers/mmc/host/Makefile                     |   1 +
 drivers/mmc/host/sdhci-of-aspeed.c            | 328 ++++++++++++++++++
 4 files changed, 441 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
 create mode 100644 drivers/mmc/host/sdhci-of-aspeed.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
