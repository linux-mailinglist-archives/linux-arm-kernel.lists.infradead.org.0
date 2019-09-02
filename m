Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04AE5A50C2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 10:03:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RnekjfUoVX39JfKlqv89qORDT+Wi2pWMEhb3f8kcepo=; b=OLyqONK3Jg4C1PidKut2DOYYhK
	JzcGfAr2Aevhe9ckhB3BtPkffWOG1Bggn3OL5NQt8W37dIRwAkF64ZEhLIYIqlUHBIN80sQdw6edS
	6UccI3sHuoHn6rVsWyYYoJH2ndjeVslnq7ElFuBTRNMXyFaHo6sPSfikp7l6koJNPyoVGOrKPmJaV
	/FUBqyoiwKil61uT8ndmiFCwpVNmMxK7WmbhcM7DT2gVTWBU5N9flKICPuoQKVXKsgOtV1SXcFHxh
	aNw5eJXS+IDpRcWQ8D+iGsQkocQqaLPDdNv//Xyt9IcEB8/7x//0rsK8ptJjHW/3/tAQhz2A3c4JI
	XSlFnTyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4hJT-00051S-70; Mon, 02 Sep 2019 08:03:47 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4hIG-00048V-8C
 for linux-arm-kernel@bombadil.infradead.org; Mon, 02 Sep 2019 08:02:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yHbLnMvxKj2M4DaWQCW2Ev23uhadvx8rdz5gzaSjjOk=; b=Br4YdAnOpadzWut+EyWrSULgi
 7fI3ZGjnQ8R74nb0Tq3zUfwnW+8tw/6l6lD5Uwt8GrOFIRk4S72kpBjvsX9wRJobG6bM2RzrCaY4N
 z48cX+ZsQtdN8r6IB81qs1ONfvrN9MiAxrX29GzqtTwHW39GUeQ2Z9tskWfWcl+M4tjLbQPQoh3/g
 H5RHdKCGJMtQ08QMXumKBmzqyyubLkTOqrQHMm44DRKcLkRZVIRV177aytIr7mh38udT5cozTWJmw
 LUj6Z/2qNnM7rIkCx0+eAID4gba2y436RiaBpCHWY7CIJID8uEzvnJ2C8UxL19B63qULO3pSKgk6Y
 28apoEFCQ==;
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4hIV-0003ZE-GO
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 08:02:51 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 77A6AC042B;
 Mon,  2 Sep 2019 08:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567411337; bh=KCQxzNKdPciLpCzMYFXS00/1ZDMQ64xO5mQOdoiRlGM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=HYdjMmlVNEx7t25t6pVED8QCg0+TQDguvdDqz0LGkr0e+OGsJS1KM6jXBTH1ozyIz
 qmLuh6wHWGOv2Uap6+PPZbkpXu+5L+jwCaeoATwOq82tRFrWan9qpiq1+Q659CwxaS
 jZtHlE8ekB7iare0mdQRydJJOtr0FUTm4ddzLjwuZpjdSJOL9TLzdoC+xHTX+adZRP
 HyBrBrTE57gvnDSZVyDpJOCAhVkH5AdSCFpi25Qx+0tum2GSFr/nuFxNWvVOYgDodk
 2tk2Ro96NIEhzHLqX47ATUWr3vMG3O7WIjkkpXmpsCUBg/4uVFk/nPCEhLnqGjuOUf
 9S2RJAdxE9gHA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 307C4A006C;
 Mon,  2 Sep 2019 08:02:15 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 03/13] net: stmmac: Do not return error code in TC
 Initialization
Date: Mon,  2 Sep 2019 10:01:45 +0200
Message-Id: <04b637681f523e26fdc61c31e72d1a90d2b3a2b6.1567410970.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1567410970.git.joabreu@synopsys.com>
References: <cover.1567410970.git.joabreu@synopsys.com>
In-Reply-To: <cover.1567410970.git.joabreu@synopsys.com>
References: <cover.1567410970.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_090248_208688_1F0942C2 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As we can still use the remaining TC callbacks, e.g. CBS. We should not
fail in the initialization only because RX Parser is not available.

Signed-off-by: Jose Abreu <joabreu@synopsys.com>

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
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
index 6c305b6ecad0..8dbbbf181ada 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
@@ -243,8 +243,9 @@ static int tc_init(struct stmmac_priv *priv)
 	struct dma_features *dma_cap = &priv->dma_cap;
 	unsigned int count;
 
+	/* Fail silently as we can still use remaining features, e.g. CBS */
 	if (!dma_cap->frpsel)
-		return -EINVAL;
+		return 0;
 
 	switch (dma_cap->frpbs) {
 	case 0x0:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
