Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9292A4E0B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 05:59:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mf+n0rBBBS8A33/ZUsFpkN0TLyIBbI90dTdBVTJNGAU=; b=A2TTsw4ja1vrFJ
	02+oFDmhJaEsdnrCU4/rYYYcmTBftlGfLXb7XFOkCzWxkmfjIws5WY1/eW0mZ1Op1P6z/4ZnX07J8
	3dgjXokZPmMpxacKhZZHAOHIwRGja1XsXJMiTbXUEhhhmW9J9yce2o477aYQXXBX/RsbssiEW5OAp
	ZU6HTGMYGP/xv5n8yzBVyN3Hzp6pHL7r04A9fR7RZilx1EKWwAzOo4bv8Fg+DCJAt4OchuoVGqYX9
	1XEk8J3ZjMUgI3eGT8n3UOiCl5c8RvjbVihoy8M+ADbNc8Dgi070KvbkIabQXmHpBgF3C5BqDR09+
	tlijPqwmCiEX0axgxdmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4dVD-0001hb-7j; Mon, 02 Sep 2019 03:59:39 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4dUI-00015C-SL
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 03:58:44 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id D9442442;
 Sun,  1 Sep 2019 23:58:41 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Sun, 01 Sep 2019 23:58:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=cXRTfFQqdR5mw
 B60NN4NI3P3V4eAjFwF/U0/J/otK6E=; b=ONhOpoC9IF8BSiaQVMH3A3B3AOlDu
 j4/JaUKkABmMFeJbLh29lGit+W9i+ybx/s8cIOAOYr4uEiTosSLxuikTJA1c6ERc
 iXyqVNz25QN1qFgDPNdMtcU+WbU3lJS58NPwXPz4sp0GV+xPvBeUcck+NV74kYnm
 ckpZBSWRdNninr+QUX6CEh0r3zmos5h26KUuOJvEs9h7dDC1+eOpf7xt80SWrAfP
 9wZqr8T7S7tR1fHj/LcaEL/BvMTOXz/4vgCrcHk35XkF/ikCGxidp5Ac2XKefChp
 XBeL9zbV61ooK41Wbw6plpbncXJArhkgy8W+m9ancE0h5c/oUDfcyJEHw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=cXRTfFQqdR5mwB60NN4NI3P3V4eAjFwF/U0/J/otK6E=; b=DFFas02t
 K5cpDViCCTFHLKeIX3I1RX7UceJcb2hnEoX5xVAKA57D4OiwkeVELigkZkphw3yF
 MgzgPbHeLz3XMsjSVWQ3Qrck7q/ObvkWeIU6G8W07rQ2Yp6BV/k/xw4EhYenYNnI
 oJJ31Ls1I/+D7wXyNcU/rjwekUI4wVOP2X91rs08GVFKC3VuscQrxYBD3Bi7v7VK
 SJct1W9vSc+K0HNLdogigUxRaNDUyfGtmBF1qPQovf/AUllrQPJ0d4u6sJSYULME
 Gb3DcytlboS03RW4FHDzkRLf8lLpuG2lQpPrB0O5upucXQYyVy5MDNj7koXPXQ7D
 oQOWnfegzmxNuQ==
X-ME-Sender: <xms:cZNsXb4cvStDViK3_BF8IJi63hRpdwhHLdaV0U_0t5fs6gyZK5c2RQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudeiledgjeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppedvtdefrdehjedrvdduhedrudejkeenucfrrghrrghmpe
 hmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghrufhi
 iigvpedu
X-ME-Proxy: <xmx:cZNsXaQ85ptvz8rXx_IvDWp_GRzHRYdgUv23O_CNKm3qG_zcpBXDlQ>
 <xmx:cZNsXa9nsirAbuKaKjCUyLpj32V4rVumeNQLqs2SI38qWmp36DnbhA>
 <xmx:cZNsXbrdqQo89xoKlGnQtCgb7crW5D2wczsc1TgqDZJ0gcDCKHEUwg>
 <xmx:cZNsXSLAlfWirQAInXClPUIjdPd4yCl-vwWKkTHY12hYLnCJ-oyKFw>
Received: from localhost.localdomain (203-57-215-178.dyn.iinet.net.au
 [203.57.215.178])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7A362D6006A;
 Sun,  1 Sep 2019 23:58:38 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-mmc@vger.kernel.org
Subject: [PATCH v2 3/4] mmc: sdhci-of-aspeed: Uphold clocks-on post-condition
 of set_clock()
Date: Mon,  2 Sep 2019 13:28:41 +0930
Message-Id: <20190902035842.2747-4-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190902035842.2747-1-andrew@aj.id.au>
References: <20190902035842.2747-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_205842_965458_85E37394 
X-CRM114-Status: UNSURE (   9.00  )
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

The early-exit didn't seem to matter on the AST2500, but on the AST2600
the SD clock genuinely may not be running on entry to
aspeed_sdhci_set_clock(). Remove the early exit to ensure we always run
sdhci_enable_clk().

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/mmc/host/sdhci-of-aspeed.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-aspeed.c b/drivers/mmc/host/sdhci-of-aspeed.c
index 213b3dbd49ef..c31d74427c49 100644
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
