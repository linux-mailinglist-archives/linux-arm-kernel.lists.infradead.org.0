Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC19A317E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 09:47:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5k4zYLVG5LbP8ZYZIv0VQ5QWnUreAMnFHdckTXM+8AE=; b=SJv9ODPPSjSXBt
	cocSb7WbX6BHLynJrvA2jM9Eaziko2lheNNHQf98tlOjoeXlD760N7vFj4Wlz6idTzqfpzeRKZDLO
	1MzbNLMCZTM9fSWaZrtobwxpHh6JuDkirVNSwPRrexT+KJ0ZCCxC0xgJlFJlINlkF17FQykOWIzTd
	nJqMJ/jRe1wK8rhTLiBEB2bS8yBDRhf4jdVYz6IIr1yHJUJ2gxqThdvRZ8gfL5UHDdEzJznhMazLm
	dfeH9SieRuiPGaGUSd/YOWm7zYwYqbO+7f5DOqKnDnKiqIRPxGMMD92JLaVKZROxVj7H/mSQ8vHLo
	swZ3p6YxEDsKQi4KVJuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3bd2-0008EP-8y; Fri, 30 Aug 2019 07:47:28 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3bcK-0007oq-JW
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 07:46:47 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 5D68120A34;
 Fri, 30 Aug 2019 03:46:42 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 30 Aug 2019 03:46:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=2Kccgmz9rjelR
 IO9aczulPQlBm48n9tsTFBim9C8Ml0=; b=Gm2vqLZREqLxAukDM2yV1i9iRpLfD
 kGEaAs8Or3YMclJd02jJ/gWPn+ixd82VkTgoIgv5rDbSoh0tdu9mMFLCIrQabSrJ
 t0JP8ZnYtiJ7/4tEZQUDc0kFBR1qxJWYRk7/GB9QxKhX4u4MFvRKHJ50ICU1NhU9
 dhepCKIw+dM3jSCVp844BFWK6iHbN2W1VYtCLwClOFwQQNE67MgI7qAvTPSba8QU
 0tM/q00t2Jahn1e2zEayOEgmHDitp158M6csj43vdXwF+W+R+vba5dUBdLL0mhn8
 DJVpWUzhp83qi+hDZGgIwPw/NTY5u47E9SAEWLCUEgo5cDVhyUjVT2FSw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=2Kccgmz9rjelRIO9aczulPQlBm48n9tsTFBim9C8Ml0=; b=gGd/ZFur
 YFw1xQhxP0fenQwUuAJeUJ9AT7Z86GjJCtNWV7jp8s2f0OkCFjrDM54UheVpcvhA
 VBzzRGbtOQb+/1r/SxJwf42YPfQA6ysXEI+xvwkYrkLF1SQwTV52NYQzv/5sTsAo
 sfiVJ8QFx8FsiWHdAap09KGlbxeZXoQUCWFzykDBG3YiQQc5yJKRbbgFJsd2ivEH
 Ypp33OTOT6dKZMNtCAP725KG4t6IyMokaVXRRKA2C2x3xXr9NyHrt4oss/tUg9Hq
 TL0L19WM5fXfTXS63dx2y9VDgY2OaJta9h2zTC2h4jnXonPISmh74ck7S7FnJ4nD
 xv+ILEoNi1cRdg==
X-ME-Sender: <xms:YtRoXW5coA30Yg9-8ujHS4OCJT0dOkZzBQESCUuxdq7GRpB5lXvL7w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudeifedguddvudcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfies
 rghjrdhiugdrrghuqeenucfkphepvddtfedrheejrddvudehrddujeeknecurfgrrhgrmh
 epmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfu
 ihiivgeptd
X-ME-Proxy: <xmx:YtRoXbRhpxaTEEZY-MQ__dgsXKyp9mTTATLlEPrVUWABIn62YcCMMQ>
 <xmx:YtRoXTNUZEAS98Uur4qxtkIG_a9MjoqWPBx_bxYHmqq5YwORKn_O6Q>
 <xmx:YtRoXZrikDXWjnbU3CF2bWYcvLIjwdhp-Ddty2rbYsBMqKZvAP1GkA>
 <xmx:YtRoXcKKvyBVr4a9so2vV2qm05RAkgmdr1XO74g7wKsXnf_UUOgNmg>
Received: from localhost.localdomain (203-57-215-178.dyn.iinet.net.au
 [203.57.215.178])
 by mail.messagingengine.com (Postfix) with ESMTPA id 14361D60057;
 Fri, 30 Aug 2019 03:46:38 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-mmc@vger.kernel.org
Subject: [PATCH 2/2] mmc: sdhci-of-aspeed: Allow max-frequency limitation of
 SDCLK
Date: Fri, 30 Aug 2019 17:16:44 +0930
Message-Id: <20190830074644.10936-3-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190830074644.10936-1-andrew@aj.id.au>
References: <20190830074644.10936-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_004644_781191_EF576A82 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ulf.hansson@linaro.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org,
 ryanchen.aspeed@gmail.com, adrian.hunter@intel.com,
 linux-kernel@vger.kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a get_max_clock() handler to sdhci-of-aspeed to report f_max as the
maximum clock rate if it is set. This enables artificial limitation of
the bus speed via max-frequency in the devicetree for e.g. the AST2600
evaluation board where I am seeing errors at 200MHz.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/mmc/host/sdhci-of-aspeed.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-aspeed.c b/drivers/mmc/host/sdhci-of-aspeed.c
index a9175ca85696..5cc00abcd71f 100644
--- a/drivers/mmc/host/sdhci-of-aspeed.c
+++ b/drivers/mmc/host/sdhci-of-aspeed.c
@@ -52,16 +52,24 @@ static void aspeed_sdc_configure_8bit_mode(struct aspeed_sdc *sdc,
 
 static void aspeed_sdhci_set_clock(struct sdhci_host *host, unsigned int clock)
 {
+	struct sdhci_pltfm_host *pltfm_host;
+	unsigned long parent;
 	int div;
 	u16 clk;
 
+	pltfm_host = sdhci_priv(host);
+	parent = clk_get_rate(pltfm_host->clk);
+
 	sdhci_writew(host, 0, SDHCI_CLOCK_CONTROL);
 
 	if (clock == 0)
 		goto out;
 
+	if (WARN_ON(clock > host->max_clk))
+		clock = host->max_clk;
+
 	for (div = 1; div < 256; div *= 2) {
-		if ((host->max_clk / div) <= clock)
+		if ((parent / div) <= clock)
 			break;
 	}
 	div >>= 1;
@@ -74,6 +82,14 @@ static void aspeed_sdhci_set_clock(struct sdhci_host *host, unsigned int clock)
 	host->clock = clock;
 }
 
+static unsigned int aspeed_sdhci_get_max_clock(struct sdhci_host *host)
+{
+	if (host->mmc->f_max)
+		return host->mmc->f_max;
+
+	return sdhci_pltfm_clk_get_max_clock(host);
+}
+
 static void aspeed_sdhci_set_bus_width(struct sdhci_host *host, int width)
 {
 	struct sdhci_pltfm_host *pltfm_priv;
@@ -100,7 +116,7 @@ static void aspeed_sdhci_set_bus_width(struct sdhci_host *host, int width)
 
 static const struct sdhci_ops aspeed_sdhci_ops = {
 	.set_clock = aspeed_sdhci_set_clock,
-	.get_max_clock = sdhci_pltfm_clk_get_max_clock,
+	.get_max_clock = aspeed_sdhci_get_max_clock,
 	.set_bus_width = aspeed_sdhci_set_bus_width,
 	.get_timeout_clock = sdhci_pltfm_clk_get_max_clock,
 	.reset = sdhci_reset,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
