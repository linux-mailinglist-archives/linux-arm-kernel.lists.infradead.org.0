Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C673A317F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 09:47:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jjkeR6itIoHZngADsvnYoyi43IqiDgISl2bGoFfAWts=; b=Em3d6RpjE6rttK
	PmvX7ilP+QTM4TmT94EFwMpIxyGG7uAnk2T2I+//roFyfaj3HAGPxzax8EMS8SAj7xbz3r0II0dId
	ApMlpkMphxz3jsQniGcDwjWrVZChG2L9EopeWV+t24PU3rBkY3C466Z8JEOoXEt2gkZHmsqHwrXAl
	xiDyfply/Brkb4cUAKybLV3StGHsoaQ3luvOoseV+cJ3XTVVWnxxb7C7YXk3fFYpXhCIEzfzBG7bg
	ZqBcQIAB4Evzsfr1Dm77//OlscKjKGj7c2yLDB4esbH/LdAJLF8L13lXZhrRnqe99c52Nv8qYUKsC
	rEPciFySX+1MAl0coyCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3bcp-00081I-6x; Fri, 30 Aug 2019 07:47:15 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3bcK-0007oF-FI
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 07:46:47 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id B96E7205DD;
 Fri, 30 Aug 2019 03:46:38 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 30 Aug 2019 03:46:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=ccb4qfASYNJsR
 kcCGbcB3o9/3lt3kvx57ndPsTCioUU=; b=E8m80fGMIH+S8N6Pd12CHP8Mi6K79
 AyQPJwKb8jFTtbRdtgTjeWull3smJBUNDMyXAXYspV0eeicKoHtAUbXeE8Fy/HPO
 d9SwpItWo7OnkecCkC4VyAgIpGRNqxwltHEgpFtYOXLAzjPgW6mKH9D9CiGDH1BI
 cF/OpeUray34sjRba4iJV4OuiwTMGgaL1tUm/hl9ThvprPSVbx7In2v8LZSyQ5Hk
 hCuUqE0MWxvIYZutlrBoyI1GsiUeht6w37yUWM97tvgM0rBhRew/4hC1FnFvdlrw
 cqOFDKQiRQEfXLj8VGODD7cmhlLoAYk4WF3hpeeAMfV5hPTSyR5NpxScA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=ccb4qfASYNJsRkcCGbcB3o9/3lt3kvx57ndPsTCioUU=; b=zxLlQbmT
 QWJ3vE9cvYoCa9WlMmL37M+O7Le9REVQpONgkbVUzPOIYl0HzfChnF2F7JawkjuV
 1Q/tTradg5f2exI4yNOjRMDKFDKCjtXZGe2GkW88t7xuWC0lBEfkN1K/tkBw5Mhu
 g9tTvipqynbFgqIqcHYBJVuIP5cdoqGnPsZfRz4DVaXR9USVD3sofwqV6iI5dnCV
 oo7XWNSFIPv1+vKhQfY7oCBv718cegKesTOrSknT5E6g/ERBBQY1W7tq//4+WURE
 F83Hnaqh872oufgoay0B/l/JwiDfcdOeyCBNF2Tu2kuf/AMhtz7ZGV0PKftsgqi5
 Rc5jgunXd0w3QA==
X-ME-Sender: <xms:XtRoXdCoztIaE-bm9Umb99VL2wb8GR_gBfJq5-kI9eIF4jtoEHTMAQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudeifedguddvudcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfies
 rghjrdhiugdrrghuqeenucfkphepvddtfedrheejrddvudehrddujeeknecurfgrrhgrmh
 epmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfu
 ihiivgeptd
X-ME-Proxy: <xmx:XtRoXfy1jQ6gICTVt4ivGjmly9Ln96hEwLp7xZBrR7ApBDlh1rVgnw>
 <xmx:XtRoXTnR0ZHAfA4lLM3db-JyeW2ERj-y-A9M1kUjLCeePkHqQXUQAA>
 <xmx:XtRoXcFU2vWhAStkhkXUaU4RBQFTeKcIOEJYJlIfiYoUDpMwGwKUOg>
 <xmx:XtRoXULM_gOgWv8WJ67fPT9_C8eIQJQ2UgN17naqRMrNPmIWqFQ1XQ>
Received: from localhost.localdomain (203-57-215-178.dyn.iinet.net.au
 [203.57.215.178])
 by mail.messagingengine.com (Postfix) with ESMTPA id 043FDD6005F;
 Fri, 30 Aug 2019 03:46:34 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-mmc@vger.kernel.org
Subject: [PATCH 1/2] mmc: sdhci-of-aspeed: Uphold clocks-on post-condition of
 set_clock()
Date: Fri, 30 Aug 2019 17:16:43 +0930
Message-Id: <20190830074644.10936-2-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190830074644.10936-1-andrew@aj.id.au>
References: <20190830074644.10936-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_004644_646967_3C5DA932 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
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

The early-exit didn't seem to matter on the AST2500, but on the AST2600
the SD clock genuinely may not be running on entry to
aspeed_sdhci_set_clock(). Remove the early exit to ensure we always run
sdhci_enable_clk().

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/mmc/host/sdhci-of-aspeed.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-aspeed.c b/drivers/mmc/host/sdhci-of-aspeed.c
index d5acb5afc50f..a9175ca85696 100644
--- a/drivers/mmc/host/sdhci-of-aspeed.c
+++ b/drivers/mmc/host/sdhci-of-aspeed.c
@@ -55,9 +55,6 @@ static void aspeed_sdhci_set_clock(struct sdhci_host *host, unsigned int clock)
 	int div;
 	u16 clk;
 
-	if (clock == host->clock)
-		return;
-
 	sdhci_writew(host, 0, SDHCI_CLOCK_CONTROL);
 
 	if (clock == 0)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
