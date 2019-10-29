Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3F7E8A8B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 15:16:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vSbW8jPzQws2WgNpjIXR9SGMZ5v/HKQD4GBXnqG76JY=; b=hRB0XMCZUN99vxb0xx8v5s9MN8
	zTcPxkSY6XA21Joxy08nV54yFfNspOS21Lu0fuDjfaYovYcl6OYJBwFGsYnmR4gBiIf3vRpgHYipS
	UYgI/d6l+v5KN1KKDx4e9QkpTuCcMVPpJVKNfgek9bOsFwGL0F6qVB20pDMr0WjdbtuGzr/APuPqs
	HxQM/U4jayKXV0kOucj7z6tKFfiPN97/9rqlVWT2+62avM53+TTjwG8rvpqt+LOVfvS/iubiAG4eh
	0Cy3bFSPgky0UJp/F5laV61kg0LYw44gvL02d8oFzBZkoYTRl3/cvNyJp36KoRbMS5Lw7JlJmzlrh
	0xLBloBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPSIY-0003gk-Ia; Tue, 29 Oct 2019 14:16:38 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPSHG-0001kD-Gh
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 14:15:22 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 37710C04DC;
 Tue, 29 Oct 2019 14:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1572358517; bh=AAMOx6e5D47bkbXqXrtoDHy1k1iDqzrTt/zXJAhG2jI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=Jo9fbP/aSDkD2XloCo4ygLMiJ67jBLLL9XrXz9HDmxYq9Mp2cpmLER9DYFGxcRGiF
 VO8cjGxxQkHr6eil+0YRKe2MS13RHMwgW58DUpR8hdSmbN3f9rDyjZXq2erevo+ZuX
 mAMfJ5V9SHJRvhLi9wd7uStLQhZB27S+b7y5tUemBvjTrw/57FSouSMRmbUG9t+S99
 PUVb+oKs9fy1PnMbAp8feZodTOHakd2h/TXgJndBzcl6+CUTZvS5gLqHJa77xLce7z
 X3NC5wNDpNpTfnDKyNwK2qTowg+CkVMg/C47dEk2Snw0DMgvX6FzsQnErzdvUjfZy+
 W2D7tTLVfycLg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id BDEC9A0069;
 Tue, 29 Oct 2019 14:15:14 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 3/9] net: stmmac: xgmac: bitrev32 returns u32
Date: Tue, 29 Oct 2019 15:14:47 +0100
Message-Id: <fc89e2306802511f70d0320a2b82487032cb237e.1572355609.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1572355609.git.Jose.Abreu@synopsys.com>
References: <cover.1572355609.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1572355609.git.Jose.Abreu@synopsys.com>
References: <cover.1572355609.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_071518_603081_7034EC1D 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The bitrev32 function returns an u32 var, not an int. Fix it.

Fixes: 0efedbf11f07 ("net: stmmac: xgmac: Fix XGMAC selftests")
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
---
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
index e24382d00e62..b58522b8f782 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
@@ -463,7 +463,7 @@ static void dwxgmac2_set_filter(struct mac_device_info *hw,
 		value |= XGMAC_FILTER_HMC;
 
 		netdev_for_each_mc_addr(ha, dev) {
-			int nr = (bitrev32(~crc32_le(~0, ha->addr, 6)) >>
+			u32 nr = (bitrev32(~crc32_le(~0, ha->addr, 6)) >>
 					(32 - mcbitslog2));
 			mc_filter[nr >> 5] |= (1 << (nr & 0x1F));
 		}
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
