Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F8CFB365
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 16:13:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DVs9ygOpuIqnhHGYeZvToAYS4nbbRamixs+j/Oe9MlI=; b=NicLpGyvbW0WaeGRo9QcngOKvc
	0kOZ3Yfn8c3wGgg6u6+2Vf3fR2r322cQ8LhJsFh6tm50Gu8hITzIwsXD66eMA3MHXHbbwovLOM5Q7
	fVTf46jq4frTRz91PYFFgSmODzUIMFexLar8/+0n+y2lqp3CZCaU+147ogJ2P0CYiL59lxhhi3NbQ
	wr+Uc83d4o3hGBrpdRvVWfDYXtNg358f4bB84xEd6rMGZhvDQXdwarcrT8r0g5drLt24mVxRAKA5g
	DGg0FpPqnQELxHmORufsIAF8L85V4ohNI4n8eQOQk0rfPTgcXkBKRH4tWxR84RkpW1SpIG0ztST6F
	fFzuyoWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUuL2-0005cn-Su; Wed, 13 Nov 2019 15:13:44 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUuJj-0004Sk-Vn
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 15:12:26 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 35925C0E96;
 Wed, 13 Nov 2019 15:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1573657941; bh=Ip3ZDkHX7NjVjcJ1Wnwx1pavIU7mIEYu8qbPr6qGCVE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=RKjwJjIbQR+b7Qw8AJQTa1EuVAYkdBYBwdUPUj3HKxK5nhKYKRWpDhx4POpCBI6iX
 sVkFCKeRJssVtG6zlC3NP2ZtrCHf74fupWBYwmK6Cl4m4nS/BYkb0SpRvXvPVJsXSw
 utshHfdZHSs+9K5iyd8GS63XWDYic+ccPqomEDcUHGXJA1Z9zaoY/kX8YB8XBRzFU/
 PxewJ9qPxkGL2xWv51Nm/89hQFqUpw5gvXggVdVfaet7xu0OWOjJq/uHdIk+QTvCUC
 W+6fZLi9+pecHIpgLmfZq4i27xMVKWE2Ety9HT/8Ru/WDY4df82Ap8VvaJdFegOaQM
 OM4kvyazqqGzg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id B5DBDA008F;
 Wed, 13 Nov 2019 15:12:19 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 5/7] net: stmmac: xgmac: Remove uneeded computation
 for RFA/RFD
Date: Wed, 13 Nov 2019 16:12:06 +0100
Message-Id: <6c27de99de61a9dfa65ba163b5d870cac9f6a249.1573657592.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1573657592.git.Jose.Abreu@synopsys.com>
References: <cover.1573657592.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1573657592.git.Jose.Abreu@synopsys.com>
References: <cover.1573657592.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_071224_035449_EDEFD8EB 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.182.47.102 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

RFA and RFD should not be dependent on FIFO size. In fact, the more FIFO
space we have, the later we can activate Flow Control. Let's use
hard-coded values for RFA and RFD for all FIFO sizes with the exception
of 4k, which is a special case.

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
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c | 14 ++------------
 1 file changed, 2 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
index f148cb2061d8..22a7f0cc1b90 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
@@ -183,19 +183,9 @@ static void dwxgmac2_dma_rx_mode(void __iomem *ioaddr, int mode,
 			rfa = 0x01; /* Full-1.5K */
 			break;
 
-		case 8192:
-			rfd = 0x06; /* Full-4K */
-			rfa = 0x0a; /* Full-6K */
-			break;
-
-		case 16384:
-			rfd = 0x06; /* Full-4K */
-			rfa = 0x12; /* Full-10K */
-			break;
-
 		default:
-			rfd = 0x06; /* Full-4K */
-			rfa = 0x1e; /* Full-16K */
+			rfd = 0x07; /* Full-4.5K */
+			rfa = 0x04; /* Full-3K */
 			break;
 		}
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
