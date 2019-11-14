Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03013FC58E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 12:43:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=i+mEcul6jB/eK3U6heeC04uAATOEzLqtltrh8hQjT/4=; b=mnV5rihllVI3tOYtt4UqEVpvXk
	i8U73y4xJ75PmyI84prG2tyxW5D+Us2NlD46OiKEQqwogdAjiyxabbigIt5VgtdNEY6FIviNt7e4R
	L+gP1vTrjoQqJOr7F9+t0yKaZa5QyYhAP5BtxgmaU9MolwiTdw4Fsc1nFjYlkG+C3Vnie7Vm5I8pU
	0iqea7bkvcG9eEVqD3Av0GJmlhq9/eMM80r6gjPtQ+eEyAZPsNmqRGC2i5zGsXddEKp+yt25VIk75
	yNLmpmq3mxd8+cA+iYILFRKHvO9LxLKro/PaWhWxfviGVqJ8Tn++wU3eLc7KzWtEhJzaVHv5qy/Z/
	r6fM0m2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVDX4-0004uc-T5; Thu, 14 Nov 2019 11:43:26 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVDWa-0004j4-Ia
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 11:42:58 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id C060BC04C8;
 Thu, 14 Nov 2019 11:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1573731775; bh=KKVx+oqQZP4dQlAUJA6wFUEq0IlyboPfcCFPWcHMXD0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=Ylx3rom1ImKxxxPU5n0Ds2lfjMwGcDxauvy1LIqQaO3jatIdNqtrmpSPzMjqrO4W8
 5tcNMN1BIU1UD3Gkp4H2r9p+OYId9kvKwOU7+PxdyQGO0s29iphD8JuLZO16SB6+C+
 BzaYGJ+Ko8vhALsRuf3LTopMp2l73dEmbLr76KiWC241xvqg8K0QeoLyKGxNLtNvm+
 ANq6YDcRFCQxOtnxExpEmvsNUgHBxjJYT7ivXjeziClKuZrbBlHgxtkbRLSPGWNVQz
 cvcFO9aeDoQVow6bFABX07semUmBPWDUxFIuYo6XtfUBUAs9E5ryfs9HW6LXI8UEBT
 ZNZ6zDyZ88S8A==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 4AECEA007F;
 Thu, 14 Nov 2019 11:42:53 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH v2 net-next 1/7] net: stmmac: Do not set RX IC bit if RX
 Coalesce is zero
Date: Thu, 14 Nov 2019 12:42:45 +0100
Message-Id: <eb2098f87994ad2c25563602c17179efd3529888.1573731453.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1573731453.git.Jose.Abreu@synopsys.com>
References: <cover.1573731453.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1573731453.git.Jose.Abreu@synopsys.com>
References: <cover.1573731453.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_034256_664540_27534F3F 
X-CRM114-Status: GOOD (  12.37  )
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

We may only want to use the RX Watchdog so lets check if RX Coalesce
settings are non-zero and only set the RX Interrupt on Completion bit if
its not.

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
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 39b4efd521f9..7939ef7e23b7 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -3440,7 +3440,11 @@ static inline void stmmac_rx_refill(struct stmmac_priv *priv, u32 queue)
 		rx_q->rx_count_frames += priv->rx_coal_frames;
 		if (rx_q->rx_count_frames > priv->rx_coal_frames)
 			rx_q->rx_count_frames = 0;
-		use_rx_wd = priv->use_riwt && rx_q->rx_count_frames;
+
+		use_rx_wd = !priv->rx_coal_frames;
+		use_rx_wd |= rx_q->rx_count_frames > 0;
+		if (!priv->use_riwt)
+			use_rx_wd = false;
 
 		dma_wmb();
 		stmmac_set_rx_owner(priv, p, use_rx_wd);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
