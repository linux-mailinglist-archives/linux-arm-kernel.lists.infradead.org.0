Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E18D4A4E08
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 05:59:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XS+PoyKicG7eRWBcNpL3CoNF2oQsSxb7x1uw//TTuIw=; b=GF5b/rBeNUlxmS
	79PFFTP4lhTV2vPziUSYGiBLlaZN8h7FkRC9WulgMxiTXvlgjx/aUspJr9SuNv5FFAloz6MRoUgwY
	8CggmKe8jI6gENCjgImMjYPmDHHdN2dqJdya+FGLofIzfs/4NyL0HA6b8YmThGKrswIKLmjqIq0fk
	CyJVFMWojRINL9phTeTBULEuVODourbvT8sriSzuyVha9cvnKK3wi0USiz7mZzTRlwCnXdOO3nj9U
	fSZ5RPXnZOYtz03aiKPROaum4xD/7jUFbs4qm7MuB/ZPYJpYS5ajnoJoC6iLHMs0TZTj224lIGgnN
	8N6knmq8zfOYkll8YgfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4dUS-00014a-8H; Mon, 02 Sep 2019 03:58:52 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4dUE-00012l-Mh
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 03:58:40 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 55F68450;
 Sun,  1 Sep 2019 23:58:32 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Sun, 01 Sep 2019 23:58:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=VOhxFTWTuM9H7gkE9KIxVk25DQ
 HvnKDRBG22VpBaBTk=; b=P43FNnVVOEKNv88pzmb3bOZUHWeyQoYdI1AoKBjVdB
 TdxNrnGwYGYbduKGDI9SIWCgaDdBPB4KG9jO0JEcrnRCvQGk7kSOQGvcLnLk4XaQ
 icv7rsibFF/uCFB2ZCElaHJwSmCTVrGtC8SnM8TjuASdG5vy0efTdNH/qQznoXxj
 yd+Z4vYnFWujXCxPV8D6yd2M7vjgDU/kPBsJ3PAFdrb9XlALhhLSPxZ1rOpxehwM
 KG6XAOCt1MxhTu+2NvpKnal3TI6FpVFVKup5N4djy+aFhUlBagrLfU4R15+uq+po
 /WDZyR0MC9u3XKEQbrkC41t9id+NvjimqproakzhudzQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=VOhxFTWTuM9H7gkE9
 KIxVk25DQHvnKDRBG22VpBaBTk=; b=M4O7CtZgl7CiZ1eZxNunF1QDxcoK+NCco
 zZ31zPogfbN4hWLaj+giE676uz5QE9ofB/qOCWZx/0DIVtkOWeC4ACXtY7YENYWb
 OrfQrc65w3PyOD4sE3bV0AiNQfEWccvhxHaqKwqWLBnmnj5NeXBF/06PjzhLhZQY
 fiFVgchuUAOJKcLqgxoHcZm+AIkdvEqnVYIfjSR89yGStBFEkmZlQHmymDkDYn7w
 cqE3afsKqULm6zb/I2/0UBE7DrJT6TBMmj6inl53YQTd/ExF9SC8bomceixDaMT4
 dhTP2U3xP/oUv5PkhiAGgEuma3Lk21MDonGUSJ1j70ikXu7iWTooA==
X-ME-Sender: <xms:ZpNsXc4-9rPpjL6EU5z5fM45aUfJygf5eFZrZaeAtTnDV8Z7udLvnw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudeiledgjeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegrjhdr
 ihgurdgruheqnecuffhomhgrihhnpehoiihlrggsshdrohhrghenucfkphepvddtfedrhe
 ejrddvudehrddujeeknecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghj
 rdhiugdrrghunecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:ZpNsXUDWXAHMsiHghKSHf4TvOXSJaV_VJ_JdZf5SomVEAeBnqFwdCg>
 <xmx:ZpNsXRBhwKpdfpWPt1XJqB26YT9qLR-uDNqHQGzsYKri78hwGYw1ww>
 <xmx:ZpNsXUhRAyye0gQ4KbJleMGzGaYTqq-M1uwg00YUWXWrlseoy8EMvg>
 <xmx:Z5NsXTICKl4Q4SRnUGTLlqTnK6mziYfelRGIwxdMsuiN5g71zRzytQ>
Received: from localhost.localdomain (203-57-215-178.dyn.iinet.net.au
 [203.57.215.178])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2F85CD60068;
 Sun,  1 Sep 2019 23:58:26 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-mmc@vger.kernel.org
Subject: [PATCH v2 0/4] mmc: sdhci-of-aspeed: Fixes for AST2600 eMMC support
Date: Mon,  2 Sep 2019 13:28:38 +0930
Message-Id: <20190902035842.2747-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_205838_762188_D610EFC6 
X-CRM114-Status: UNSURE (   6.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ulf.hansson@linaro.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org,
 adrian.hunter@intel.com, linux-kernel@vger.kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

I've added a couple of patches since v1 of this series. The horizon has
broadened slightly with a fix for SPARC builds as well in patch 1/4. Ulf
suggested a minor cleanup on v1 with respect to handling of the current clock
value, so that's now patch 2/4. Patches 3/4 and 4/4 are as they were in v1.

The v1 series can be found here:

https://patchwork.ozlabs.org/cover/1155757/

Please review!

Andrew

Andrew Jeffery (4):
  mmc: sdhci-of-aspeed: Fix link failure for SPARC
  mmc: sdhci-of-aspeed: Drop redundant assignment to host->clock
  mmc: sdhci-of-aspeed: Uphold clocks-on post-condition of set_clock()
  mmc: sdhci-of-aspeed: Allow max-frequency limitation of SDCLK

 drivers/mmc/host/sdhci-of-aspeed.c | 62 ++++++++++++++++++++----------
 1 file changed, 42 insertions(+), 20 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
