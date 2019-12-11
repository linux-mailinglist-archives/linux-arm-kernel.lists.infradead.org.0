Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FEB811A8F1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 11:31:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tymzP23Gnc81NXT1LcJF6b9Ktb6Sib2S2CKUY0hhp5U=; b=Rec
	PbhzE5qqkLcjooxA7goEMr03zbM3YwQt9erOvQb6a70P0YyouXy8mzOOKoJZRRseVgFP+78fN9GTc
	YGZHpY5IyZq2+tRdKFY9iySqxCwEAKWmRsik7UbZB7EQLLHyR2ZirVvzKjwNUaCHrP93omOhhL29C
	I7tJfbah1q72ibv2YSRQxgel0/b+5cV8woaS2uvIqVtjuzzbVPTC6UXOkqCgQLAE4MXEcQrmyGYE4
	gLOsv5YxkKWkNj0JeFz8oj1DWUOzSGmTHmRu7paZojMB1p02/+M4gCicc3rRismiQE4GUUC7EQOBP
	eevfFZQx3AjU9qh1gN4G2VeWH9Tt56Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iezHV-0000xx-Is; Wed, 11 Dec 2019 10:31:45 +0000
Received: from smtp21.cstnet.cn ([159.226.251.21] helo=cstnet.cn)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iezHO-0000x8-06
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 10:31:40 +0000
Received: from localhost.localdomain (unknown [159.226.5.100])
 by APP-01 (Coremail) with SMTP id qwCowACnrrp+xfBdniUxAw--.217S3;
 Wed, 11 Dec 2019 18:31:27 +0800 (CST)
From: Xu Wang <vulab@iscas.ac.cn>
To: peppe.cavallaro@st.com
Subject: [PATCH] stmmac: platform: Remove unnecessary conditions
Date: Wed, 11 Dec 2019 10:31:24 +0000
Message-Id: <1576060284-12371-1-git-send-email-vulab@iscas.ac.cn>
X-Mailer: git-send-email 2.7.4
X-CM-TRANSID: qwCowACnrrp+xfBdniUxAw--.217S3
X-Coremail-Antispam: 1UD129KBjvdXoW7GFyrAFWDCw1UWF4DZr45Awb_yoWDAwcE93
 W29FnxGF1UJF90kw47Kr43ur92vFyDuF1rJF1DXFW3A34kXas8JFZ8uryUA3WxC342vF9r
 Gwn3KF17A3sxGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUIcSsGvfJTRUUUbw8YjsxI4VW3JwAYFVCjjxCrM7AC8VAFwI0_Gr0_Xr1l1xkIjI8I
 6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AEw4v_Jr0_Jr4l8cAvFVAK0II2c7xJM2
 8CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2IY67AKxVW5JVW7JwA2z4x0Y4vE2Ix0
 cI8IcVCY1x0267AKxVW8JVWxJwA2z4x0Y4vEx4A2jsIE14v26F4UJVW0owA2z4x0Y4vEx4
 A2jsIEc7CjxVAFwI0_Cr1j6rxdM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI
 64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWUJVW8Jw
 Am72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64vIr41l42xK82IYc2Ij64vIr41l4I8I
 3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxV
 WUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAF
 wI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r1j6r4UMIIF0xvE42xK8VAvwI8IcI
 k0rVWrZr1j6s0DMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_
 Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x07je1v3UUUUU=
X-Originating-IP: [159.226.5.100]
X-CM-SenderInfo: pyxotu46lvutnvoduhdfq/1tbiBAoBA102SyGETgAAsH
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_023138_403324_AE117476 
X-CRM114-Status: UNSURE (   6.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [159.226.251.21 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, davem@davemloft.net, joabreu@synopsys.com,
 mcoquelin.stm32@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove conditions where if and else branch are identical.
This issue is detected by coccinelle.

Signed-off-by: Xu Wang <vulab@iscas.ac.cn>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
index bedaff0..1d26691 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
@@ -229,8 +229,6 @@ static int stmmac_mtl_setup(struct platform_device *pdev,
 		plat->tx_sched_algorithm = MTL_TX_ALGORITHM_WFQ;
 	else if (of_property_read_bool(tx_node, "snps,tx-sched-dwrr"))
 		plat->tx_sched_algorithm = MTL_TX_ALGORITHM_DWRR;
-	else if (of_property_read_bool(tx_node, "snps,tx-sched-sp"))
-		plat->tx_sched_algorithm = MTL_TX_ALGORITHM_SP;
 	else
 		plat->tx_sched_algorithm = MTL_TX_ALGORITHM_SP;
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
