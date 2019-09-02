Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A47BA4E0A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 05:59:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cZndlfN+EIbO5JCbFVpg4bR2VEjnM9++DnShuHLad/s=; b=l2gEQ8c4NGFNhm
	Z29wxUcaHbO/Ov2nzozOOo5ExzwkgOE30inDuwD9lSgZivsvNTDL6VIg4hJHLI8682bitsq7HHJ6N
	93Xkl4/v4CQP/usUVGBwO0zsVCN9zyikIfAmrMFx8PSG/jyzoq3AzbjIARavG30K6y1D3+5mVFp5k
	eJBg7COBsloTZd/C7fuqRbgSPvAmG3D6n9WCbK4L204VeoMBlU/dnmuiOBjnp9Txhfmc06W2hoAi6
	xqTlW5tdOYhRko9Qwm4ija8Rsfm/DwXhpwuP6wdp9qhrk6/2YUKvBMx2OIaTNPeTmP8i/Z/1leQH7
	sPOkDzcre3AZ66XPEPqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4dUx-0001UP-Dl; Mon, 02 Sep 2019 03:59:23 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4dUF-00013n-Fg
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 03:58:41 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 7E3542A7;
 Sun,  1 Sep 2019 23:58:38 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Sun, 01 Sep 2019 23:58:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=xsC+k1HwgXn/+
 wd1iZbQwarEodEUaIr5qWO1c8wQAQI=; b=lOjcO9clPxBfdHaod1XlxFZiZI9yJ
 dWfw0xyPK9YARHvoGsWi9bctQi2/Dn+JxE0dq7+0yYcYPOb8fqnV+epgciT4ePSu
 m8XOIiQ/PlZeea0yrE4S8oYBGFsTs7mybJ+1tyGxXrDfM0A7p3b4KVcvO8t1fEdh
 Z24GLhVCekRqzf0BtkH+kOwUXgDW2ZMt8tJdoyUQ9K7P9Zdts8mmIkfZIB76T9y8
 Z+yO7XL9UYCmt8A2nidyGiL7QmI2+fYYEjLFdKofRbCrnWvD7b6WgUZhV1+c1BKA
 zpOEsJ9K4VlH/Fopr+jBNa1hxgR6bbbHMi4N1Hbm4QeX/KzY/QbTkhcJg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=xsC+k1HwgXn/+wd1iZbQwarEodEUaIr5qWO1c8wQAQI=; b=vqgvK4r6
 zG8NC4VfqSZe83rjyx3Zy5RVDSff8ATz5Y87iu95arfdrs+iLHnJa91Sp5I+UUoU
 Y5HPIDp+6pdwyVuzN+kallNb+KRn/4TzUZbF5YzcId6XQEADrPJgW6hOx9lin4f0
 61hBYtk6s6pG8SF3XyWc464LpT6fGZwG3odxpWfvG14Ef18rrPkTA04CRFHW4WU7
 eP5msi90hYHcS1eh1KNAqmil7gssLNT83KOWL8RMSiSfwHBjXb1lLNUhGli6sybY
 ZqWmNcmt5pKeGf0PEzzAi/Y07zy2vmv9bdsXTdtMQyumzaF0J6WEF7DDaKTM4vHB
 wcV4669zaUQwDg==
X-ME-Sender: <xms:bpNsXYRuWsdWxpaEHlF-nRtRc4VNUE8-zRpqLmzZw0ssOMdbFaMlSQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudeiledgjeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppedvtdefrdehjedrvdduhedrudejkeenucfrrghrrghmpe
 hmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghrufhi
 iigvpedu
X-ME-Proxy: <xmx:bpNsXbwdflNczVdovtK10XhptWDoorBL8ki3Mb_GS2zxbfeGWa2pxg>
 <xmx:bpNsXQr6eeD6mLegxDBwWpn9ImRt1bNebzpzSOVPiqqPIM_xs-Atyw>
 <xmx:bpNsXe2CPhpcuWDmLlI4UybUVl3EEKqQHJh3TbxG3gdbBpSPYX8kpA>
 <xmx:bpNsXc6DbhuHYSaH-2zbPZLq5q2VdOuir8ZVbuSTpv8A9WbkrY4NTQ>
Received: from localhost.localdomain (203-57-215-178.dyn.iinet.net.au
 [203.57.215.178])
 by mail.messagingengine.com (Postfix) with ESMTPA id 16174D6006C;
 Sun,  1 Sep 2019 23:58:34 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-mmc@vger.kernel.org
Subject: [PATCH v2 2/4] mmc: sdhci-of-aspeed: Drop redundant assignment to
 host->clock
Date: Mon,  2 Sep 2019 13:28:40 +0930
Message-Id: <20190902035842.2747-3-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190902035842.2747-1-andrew@aj.id.au>
References: <20190902035842.2747-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_205839_564289_95846725 
X-CRM114-Status: UNSURE (   9.22  )
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

host->clock is already managed by sdhci_set_ios().

Suggested-by: Ulf Hansson <ulf.hansson@linaro.org>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/mmc/host/sdhci-of-aspeed.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-aspeed.c b/drivers/mmc/host/sdhci-of-aspeed.c
index 96ca494752c5..213b3dbd49ef 100644
--- a/drivers/mmc/host/sdhci-of-aspeed.c
+++ b/drivers/mmc/host/sdhci-of-aspeed.c
@@ -61,7 +61,7 @@ static void aspeed_sdhci_set_clock(struct sdhci_host *host, unsigned int clock)
 	sdhci_writew(host, 0, SDHCI_CLOCK_CONTROL);
 
 	if (clock == 0)
-		goto out;
+		return;
 
 	for (div = 1; div < 256; div *= 2) {
 		if ((host->max_clk / div) <= clock)
@@ -72,9 +72,6 @@ static void aspeed_sdhci_set_clock(struct sdhci_host *host, unsigned int clock)
 	clk = div << SDHCI_DIVIDER_SHIFT;
 
 	sdhci_enable_clk(host, clk);
-
-out:
-	host->clock = clock;
 }
 
 static void aspeed_sdhci_set_bus_width(struct sdhci_host *host, int width)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
