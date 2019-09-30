Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55990C1D0A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 10:22:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=d9WqcrC6TFeuIpmvAHNJTSp3RUyUW99cfZAbz5fDqBI=; b=NfgWLb7VTF1gEh2v6vtieP97OA
	ltDDuH41MIB55YWAarGAYVm2gIGqy9Ijtk8tfzNawJ3FIieBHnYe2S7AnKvDgk2J7CiOy3QTQSQjP
	7NK9RfymuQpqOUqqffl2/XIGqEls2QoT5TuZLJfy+LvCz+gDbEy9UFPdYRfybnHbIQkpzjRJL8Ojb
	neBwcxiB5EyW1sUUsBiEM0ThzBpQ0DqL1Bv9icxvyOYPfDSmHo9wPfMFglbPsNLGOXzQWG0A5tlBu
	bgA8/dl47tgxBtd0KNukgrL+7rDNsmOF9PeNqUtT3U6OT2uIRQxV5CC34jEwRPZiOZQxqyqgwnHiq
	hm4apWtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEqwI-0000MP-CE; Mon, 30 Sep 2019 08:21:50 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEqu0-0005fM-Ou
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 08:19:34 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 5258EC0375;
 Mon, 30 Sep 2019 08:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1569831567; bh=S7GI3HkMvvWL6lmFVQVhrFffJuCPW83a6Ht7wwi8fK4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=Z0r2k4Ii7GDtTHQkW26DNG82s5QnX3TrrRF3JquodDo9Q8KTYaXvhPjvOW6DkPKuc
 4gG9CK4Z36c28k57CJih1uxablxFGG+RYhiaVJYC4N1beKlcXjzF1UnW9DndXCBmgI
 Nxeo9pXxbwA8HP1ECkLUvxEV008SiZv+B/c2/naAKRZTpqpiuZWhAlcvHyo0S8zQJ2
 GMXyrLJQvQZfKqVFVmD4MMPeyEvcYjLqDuscdsH+xVBuX/a8/VMBInwcnpWp8uM61p
 jWhC6ULFRLUzXDFM0RIpxXQ1DL/u02AASkimT0Y3IR2etK29CHDj0e7ogCEkzs51LE
 AM2sV4Y/tzcbA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 9D3E4A008D;
 Mon, 30 Sep 2019 08:19:23 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH v2 net 8/9] net: stmmac: xgmac: Fix RSS not writing all Keys
 to HW
Date: Mon, 30 Sep 2019 10:19:12 +0200
Message-Id: <08690ac8ac757b272cc6d9383a8ae5f7dc7875a2.1569831229.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1569831228.git.Jose.Abreu@synopsys.com>
References: <cover.1569831228.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1569831228.git.Jose.Abreu@synopsys.com>
References: <cover.1569831228.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_011928_912713_FF058069 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The sizeof(cfg->key) is != ARRAY_SIZE(cfg->key). Fix it. This warning is
triggered when running with cc flag -Wsizeof-array-div.

Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Fixes: 76067459c686 ("net: stmmac: Implement RSS and enable it in XGMAC core")
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
index 6d8ac2ef4fc2..4a1f52474dbc 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
@@ -533,7 +533,7 @@ static int dwxgmac2_rss_configure(struct mac_device_info *hw,
 		return 0;
 	}
 
-	for (i = 0; i < (sizeof(cfg->key) / sizeof(u32)); i++) {
+	for (i = 0; i < (ARRAY_SIZE(cfg->key) / sizeof(u32)); i++) {
 		ret = dwxgmac2_rss_write_reg(ioaddr, true, i, cfg->key[i]);
 		if (ret)
 			return ret;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
