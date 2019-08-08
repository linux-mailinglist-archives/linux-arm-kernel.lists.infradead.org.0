Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BCB866E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 18:21:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ijEVc/kqzSa9inKi9GXpmI/fhIHjAfzxx666OdQceOs=; b=V82FHpUghlV451
	6M/O02z36/nHYB9iA6W9EXNP3cDX+Sg281vZZE01NLBfK30Cn9Rkf3r6KowV2M6tVXBz3+nJaolmR
	FAya9Y6G2BtGnM/9QeGSfoz+NPXyuPgYYQbBlzIqteo/qZ6k1CFUJscQjmUdySJCsMQeH5upkNcwp
	l0f6F2Cn6+9ke+HkhphGtZ4XdAw4SQ22M2pDd0ZIWBNWrJKDW9haDafFB0uAN264tXT72h8164NSC
	iySPKiCJyK0v/n+CSZHM+3IIXvfvi0CZ5V+Y/aVtAXXn1sdMuZ6jQZbmuOwcrJG89IIr3m596fk+1
	mWdNFZ0Hk9c9tQGBD5+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvlAV-0000k9-TG; Thu, 08 Aug 2019 16:21:36 +0000
Received: from mail3-relais-sop.national.inria.fr ([192.134.164.104])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvlAH-0000dp-Hb
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 16:21:23 +0000
X-IronPort-AV: E=Sophos;i="5.64,362,1559512800"; d="scan'208";a="315952490"
Received: from portablejulia.rsr.lip6.fr ([132.227.76.63])
 by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 18:10:53 +0200
Date: Thu, 8 Aug 2019 18:10:53 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: Jonas Gorski <jonas.gorski@gmail.com>
Subject: [PATCH] clk: fix devm_platform_ioremap_resource.cocci warnings
Message-ID: <alpine.DEB.2.21.1908081809160.2995@hadrien>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_092121_920918_F2672BA9 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.2 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.134.164.104 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.1 HDRS_LCASE             Odd capitalization of message header
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Philippe Mathieu-Daud?? <f4bug@amsat.org>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, kbuild-all@01.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: kbuild test robot <lkp@intel.com>

drivers/clk/bcm/clk-bcm63xx-gate.c:174:1-9: WARNING: Use devm_platform_ioremap_resource for hw -> regs

 Use devm_platform_ioremap_resource helper which wraps
 platform_get_resource() and devm_ioremap_resource() together.

Generated by: scripts/coccinelle/api/devm_platform_ioremap_resource.cocci

Fixes: 1c099779c1e2 ("clk: add BCM63XX gated clock controller driver")
CC: Jonas Gorski <jonas.gorski@gmail.com>
Signed-off-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Julia Lawall <julia.lawall@lip6.fr>
---

tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   ecb095bff5d4b8711a81968625b3b4a235d3e477
commit: 1c099779c1e2e8e0e10cdb2aecd4b35f428e9f00 clk: add BCM63XX gated clock controller driver
:::::: branch date: 15 hours ago
:::::: commit date: 6 weeks ago

 clk-bcm63xx-gate.c |    4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

--- a/drivers/clk/bcm/clk-bcm63xx-gate.c
+++ b/drivers/clk/bcm/clk-bcm63xx-gate.c
@@ -146,7 +146,6 @@ static int clk_bcm63xx_probe(struct plat
 {
 	const struct clk_bcm63xx_table_entry *entry, *table;
 	struct clk_bcm63xx_hw *hw;
-	struct resource *r;
 	u8 maxbit = 0;
 	int i, ret;

@@ -170,8 +169,7 @@ static int clk_bcm63xx_probe(struct plat
 	for (i = 0; i < maxbit; i++)
 		hw->data.hws[i] = ERR_PTR(-ENODEV);

-	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	hw->regs = devm_ioremap_resource(&pdev->dev, r);
+	hw->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(hw->regs))
 		return PTR_ERR(hw->regs);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
