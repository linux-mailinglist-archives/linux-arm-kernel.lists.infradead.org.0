Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CFCFC58A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 12:43:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mmF/IJ3NliOqIUnw7RuIeJf+X7iRO8T+HKg41XChbiw=; b=TvNkLwd05EB0iGSdKPmdktwSGh
	A5LcSbrDxGoUhoFYaglcNYwXO/DmFSAxVPG8KC8MVBvGZkser5liv6Vqp3HnTNpVtZVhIGIDLUPVs
	O8IY/3k8/8eSi3A7yBkHl+ZIZ1hEjxCnapMeo4J09mx7BsSIZ/mDUerKLF4AIXiR6BYU11uxRO+gH
	qea3MKdxH8xesCBDLN7nnhLRLAEaoUDHIk2B7NOduhQnGFBbc3Am/zoCnp7qoSXm7FdfwIZ/ntFPH
	8m7Jns/84gQpyxlMm0rCeTIq950HACpwVn46fUG2b+7q6XQmHy+cmrfdRSkeRl3Rf0d7NBA+GiFbA
	YTng5E5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVDWl-0004kv-Ej; Thu, 14 Nov 2019 11:43:07 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVDWa-0004j2-Ib
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 11:42:57 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id E8972C04CE;
 Thu, 14 Nov 2019 11:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1573731775; bh=YXLJfn/0yUG2/3omTVU/b/Ru9qVL71FIWquDK8WQkNM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=kk+svtXN+TKjI5uygnNbtb3Rq0IxEStC1fuV8WYCmKGh5hMm9ssaVuddopzyv93zA
 ezsFOfvvVgZQmZq2F4j3phQfj1xMopK6hIZnwio/yTPaGBkWxxqG5gImrp0ainrFb9
 XLI4FrcCbR+brVNM/pL+ju74wZCUiisN0G55/BBXcELLu1Ty8c5BBrlRt/x3DMKe1f
 MqQV9c7Oo15SMY8La4VqwCwXUVpnnTi6Rbyn9Sg8JWjBQhoABx8uEEjqv88j3wW9wl
 USnD/rKaslxA464Z1zextNK6IwCqg+rn/B7usFM2rUntMsATUVa/SRcocUxSs9cinH
 qxiFDkGJ3QhHA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id A336CA009A;
 Thu, 14 Nov 2019 11:42:53 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH v2 net-next 7/7] net: stmmac: xgmac: Do not enable TBU
 interrupt
Date: Thu, 14 Nov 2019 12:42:51 +0100
Message-Id: <8b462f80863dc66f2b14e0db9e9e309b4870d4ba.1573731453.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1573731453.git.Jose.Abreu@synopsys.com>
References: <cover.1573731453.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1573731453.git.Jose.Abreu@synopsys.com>
References: <cover.1573731453.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_034256_667609_189A0771 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Now that TX Coalesce has been rewritten we no longer need this
additional interrupt enabled. This reduces CPU usage.

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
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
index 99037386080a..e908d80a1d6f 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
@@ -360,7 +360,7 @@
 #define XGMAC_TBUE			BIT(2)
 #define XGMAC_TIE			BIT(0)
 #define XGMAC_DMA_INT_DEFAULT_EN	(XGMAC_NIE | XGMAC_AIE | XGMAC_RBUE | \
-					XGMAC_RIE | XGMAC_TBUE | XGMAC_TIE)
+					XGMAC_RIE | XGMAC_TIE)
 #define XGMAC_DMA_CH_Rx_WATCHDOG(x)	(0x0000313c + (0x80 * (x)))
 #define XGMAC_RWT			GENMASK(7, 0)
 #define XGMAC_DMA_CH_STATUS(x)		(0x00003160 + (0x80 * (x)))
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
