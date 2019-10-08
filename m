Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DDCFCF1D8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 06:42:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LBAr3g5aXQSuKxGrxtVkoH/OHghqi/Wzycur79lAVDs=; b=ViLi7Xo0Fq22jy
	dF6vUesssVjgb+0NxVI9Gx3x+rHjZKEDsDU/w7Ke0DqvACWuDgD8ZcEx4q728E9KZar1f6mXf+OkB
	PW+rfagR9XFBCGsp/LG6QN/WCpqzYLHOaTY5MQGhIIx+sHtd2YbZNYnCDH+2rYZJ+WC94lo7v7elW
	nHJfOs64rIO4EyCctRFhLXLbNqXVo2ws4KqnDQb3YUClOQfBldu36Q0/26FrBfspIoyVpZjXn8E0v
	GBgq+sZJfOHEEvvtBQqqkV39z8D/RxjDeBx/1+ETo0Ctxdel/bT2w51UBzpQGp37I2RVe+81lhRWb
	gwHKWjZWWLwbzvECgtYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHhJv-0007Xt-Lm; Tue, 08 Oct 2019 04:41:59 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHhJR-0007Lk-AO
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 04:41:30 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 9CE865B5D;
 Tue,  8 Oct 2019 00:41:25 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 08 Oct 2019 00:41:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=0/MbfkSuw2RSJPd8KBeC7Wk9MN
 1nZHnVaswofQbs1mU=; b=ZrpVFpTOOLUr64sBh7etgDbjoWGm7uCK3yDAPlhTue
 hLYVj4Q7KB00soEftml2+GO0mjtlHc1jE3ORfpSoyNFs8iR03ZA7u9L4HkMUkaF2
 NpPYt2Sot552QifGSTnFPHnvJSsEZNqCxh9wwIbLswhNWNp5NMqb7Dl8bATnzgKc
 cyD5uTSls3dogAM49fhc10Cgtv5AM3AT/r1NIToOKanZPWeFwvzaWPMcvnCNCP7Z
 B0KUzXMYqxazq8lgauk/78f6UagvrWpS3GvoXQSmhW89eI+UKbgfUaoXk3AXFAiy
 GrKwp2y6SX4BGj9WDapX8Pl+H0+yihKaVnN3cw7ewkJg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=0/MbfkSuw2RSJPd8K
 BeC7Wk9MN1nZHnVaswofQbs1mU=; b=ZPUKBnkCxSpI5JwzWHuQ8agTBBVhyk6S0
 IMNDSRWriNuK47GmfmHCUcQ+sHtDukbA5muJ092G68mDmXD8NYjTwX+ugpshWqoq
 +roaDR4gJYJpzsVdRH5OeXJLVLz5RFsQ3QyiszYv3TOYtItTMLT209nAw++R4mNW
 UBArhO4pPdp3UjLlKjD5GmkBuqrB/OvN1LZY+jl5j7nVckmj6ffSJzn0PZ4JvlZX
 K29uSm1KsRXxvrkUeER7gqhuWVYWlg+SLJaFgVlvdZZNIbt89FPpFCKKhIbULxEr
 EBvclIAsiuJ6pyBlDg6bOhffa9j2l2YcpvsVqG7SkTQUrufYJ0IMw==
X-ME-Sender: <xms:bxOcXc8BvFgpyiyHvHbWz-06VU0PAXJEWfQ7BgYam9zVYgtSgsgsgg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrheekgdekgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhi
 ugdrrghuqeenucfkphepvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrihhlfh
 hrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:bxOcXTWzME8ZicGT72q9I2QUqe8fd9ggwqvj8eDT20M2QM4q12FNpA>
 <xmx:bxOcXRp7VOgsL6egZy3dbIkNPugOaxDFyd-c6Mubf_HF2aYsDnZ8WA>
 <xmx:bxOcXSonE1u_8X41nSABIqcihVA7uvgsLJ_HJwwUXgsrgE1q-aVBmg>
 <xmx:dROcXTJNQq3E_kvFO-nAbGSVguYjon4iMcZkIR7lCi8vMtaoUhHdfQ>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2F35D80064;
 Tue,  8 Oct 2019 00:41:15 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH 0/7] pinctrl: Fixes for AST2600 support
Date: Tue,  8 Oct 2019 15:11:46 +1030
Message-Id: <20191008044153.12734-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_214129_516681_885D032F 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 johnny_huang@aspeedtech.com, linux-aspeed@lists.ozlabs.org,
 linus.walleij@linaro.org, ryanchen.aspeed@gmail.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This series resolves several issues found in testing by Johnny Huang from
ASPEED, who also contributed the patches to fix them. We'll have more patches
from him in the near future (which I'm pretty happy about).

The major issue resolved is the way I grouped the eMMC pins. What I had was
ugly and I want to get rid of it before the binding is solidified with the 5.4
release.

The remaining fixes are minor issues that stem from lack of documentation or
understanding on my part, and at least one brain-fart.

Please review!

Andrew

Andrew Jeffery (4):
  dt-bindings: pinctrl: aspeed-g6: Rework SD3 function and groups
  pinctrl: aspeed-g6: Sort pins for sanity
  pinctrl: aspeed-g6: Fix I2C14 SDA description
  pinctrl: aspeed-g6: Make SIG_DESC_CLEAR() behave intuitively

Johnny Huang (3):
  pinctrl: aspeed-g6: Fix I3C3/I3C4 pinmux configuration
  pinctrl: aspeed-g6: Fix UART13 group pinmux
  pinctrl: aspeed-g6: Rename SD3 to EMMC and rework pin groups

 .../pinctrl/aspeed,ast2600-pinctrl.yaml       |  86 ++++++------
 drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c    | 124 ++++++++----------
 drivers/pinctrl/aspeed/pinmux-aspeed.h        |   3 +-
 3 files changed, 98 insertions(+), 115 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
