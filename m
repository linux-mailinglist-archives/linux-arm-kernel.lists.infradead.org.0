Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CCAA4E0D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 06:00:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLgLtgpv+tZLSj8poXVN8aumyt9s0shtdnRXKfqOGTc=; b=F8bYfYaC8pb7mE
	hMfZdNZxfgPsp0AYrd/meYRlcROyYM8fdlxm35yTnxHrcmt+MJ3DxMdkBfdWCroaX1ry9f0Q/8ZUa
	4IP9rIQAa7iU1mQLRtcCREXBlWpXvglssglcXGD7UWDJ1s/+UXw80avkNIc7wQohP26BZK54FJ11T
	ofDLoLmZTmxkZ0TSp7bgCDV2HTet5oKvhcUt7arpwQfiq1YaPm+F2jV1oN2SeKi1QIwvhRgxFt6ez
	y5WKzWir/V2sg0QqPGeJOV/ctIWlJ5GplH920/014HgSCNpkyBgkZta7pZUA5JUhuYTM/wUzF/Uz7
	GeyQ9I07Swu6du/aVUMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4dVT-0001vZ-Ph; Mon, 02 Sep 2019 03:59:55 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4dUM-00018p-74
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 03:58:47 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 380EF428;
 Sun,  1 Sep 2019 23:58:45 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Sun, 01 Sep 2019 23:58:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=L4EL0S354nCKb
 obvrleuPdmXpWAwO2XcwtXNi/sy4WI=; b=HARQ7LNhsamaQlUi8XrA9c9XgM4ej
 okbinmIfdkOyLMUHlFVu/WfWYSw/P/uFClhEk5UhKy/7Kh1XOn7o2p5B1ebEEC1m
 wJEf/MehcgXONCbfbtBZ1nNj5IbYQ5nIRaiAusgnk8jZPR1/60lHbifnOBhmTYa2
 6T5ZTtzpfM3n4J5iU6nMK9EUtaFrXZLXHTjT9+HQioBA43n1DuH4Opn47cNwgSWC
 xRjJ3w3EA18yEURb4nR2onFCWE37RNvHnkNVGEArpcZw0EELLlnFRdHFew3+auG2
 bi/kwJx+YCp9LLCgfZvo7DuNo0C1/KHguKJajkz7Rh56gJ+F/89mfMqzw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=L4EL0S354nCKbobvrleuPdmXpWAwO2XcwtXNi/sy4WI=; b=K/R8LjBG
 ca3yJTTI1ErfnRSgU3X2raDIqDvDc3ZgFGyInGbt36buGSeTaWLQ22NVYJ2T+0Zt
 vUs8RC03tmdAs/BgBE6yjM8xicWuRngV7nIZInFobiYsiOT8QQDeEYyxpAZw8idh
 BjsSig2OcXirUzOkAp61cmsf257yoL0aKNxsJbeWFKPRqF/YvJFMM0zuLjzsMWEg
 fVS9HtWDMO4Y10SUWRUWCOoqY7bbjkpCVBIdQHEQR7xfRjkoOd7lm/4MevUD92fR
 6NJt+aIsqf25m1FPXScCN7s8BxUIwjNbDHbBP5fcCK7jZcIVm5xlBHvA91s9/n6E
 Gr7ClhgjeKymag==
X-ME-Sender: <xms:dJNsXS4FYebJUzXj6tQWUvzgWm-jkesn8Ws8e7AChMW2KBfR_wc6Cw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudeiledgjeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppedvtdefrdehjedrvdduhedrudejkeenucfrrghrrghmpe
 hmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghrufhi
 iigvpeef
X-ME-Proxy: <xmx:dJNsXeMsWIkZvls6181yCWKzUB2kZBpQ-lMIr2XHPYXkLJt8QKPfwQ>
 <xmx:dJNsXQJs9gqGYmgbdw1I1_rwBwqpW6ZZkPB0QFX-JA9Rn26rC6pX3w>
 <xmx:dJNsXcHe-ta20xQ8kutYalNx7E4OHCXasO3UrAD5cnrE-QjLrXVvlw>
 <xmx:dJNsXYfkF93ocDMrpJ6G9XWLFCNDZm33KA0MKpD-u68-U8yPj3rhRA>
Received: from localhost.localdomain (203-57-215-178.dyn.iinet.net.au
 [203.57.215.178])
 by mail.messagingengine.com (Postfix) with ESMTPA id D8D6AD60062;
 Sun,  1 Sep 2019 23:58:41 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-mmc@vger.kernel.org
Subject: [PATCH v2 4/4] mmc: sdhci-of-aspeed: Allow max-frequency limitation
 of SDCLK
Date: Mon,  2 Sep 2019 13:28:42 +0930
Message-Id: <20190902035842.2747-5-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190902035842.2747-1-andrew@aj.id.au>
References: <20190902035842.2747-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_205846_406783_38D26492 
X-CRM114-Status: GOOD (  12.82  )
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

Add a get_max_clock() handler to sdhci-of-aspeed to report f_max as the
maximum clock rate if it is set. This enables artificial limitation of
the bus speed via max-frequency in the devicetree for e.g. the AST2600
evaluation board where I was seeing errors at 200MHz.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/mmc/host/sdhci-of-aspeed.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-aspeed.c b/drivers/mmc/host/sdhci-of-aspeed.c
index c31d74427c49..a8a5341b526c 100644
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
 		return;
 
+	if (WARN_ON(clock > host->max_clk))
+		clock = host->max_clk;
+
 	for (div = 1; div < 256; div *= 2) {
-		if ((host->max_clk / div) <= clock)
+		if ((parent / div) <= clock)
 			break;
 	}
 	div >>= 1;
@@ -71,6 +79,14 @@ static void aspeed_sdhci_set_clock(struct sdhci_host *host, unsigned int clock)
 	sdhci_enable_clk(host, clk);
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
@@ -97,7 +113,7 @@ static void aspeed_sdhci_set_bus_width(struct sdhci_host *host, int width)
 
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
