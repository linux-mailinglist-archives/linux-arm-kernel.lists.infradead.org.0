Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5B612B6DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 18:46:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T5PYghvA59qwjR043iCY8bAnj6chpDqjwwJh+LjC3TY=; b=jMfLJ+YsNiX3FG
	IZ1dkakCbmliqorBlSTrjqRERLZxNpwjuIskGrgUkBWzbIUCz400VCUEFbc4o6D4dYBmKZ7i5S20/
	Um3zLKBzn0mzS0cZQ6VlKOp2oRYSL/704xw6r+tEXaWXR43sYNUVCYZen7dJguXW9ym7zQiOcu1MC
	V61geYgLjMyeYX/O82q2csygRP18F5Y5JApdFmDfmuLoNEksIystcN2Z5aTUdvCS7WGwUBD5dUie0
	NKO43v5xruZSRWPi5TEGcl9omFhXMp9xurF/Q3z1hS0vS9aiTdo4g2I0DYCDbl1fMFoSsg89hrgQQ
	ie3usrUvybduOcOs7zPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iktgX-0003mR-Bn; Fri, 27 Dec 2019 17:46:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikte6-0000lm-5G
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 17:43:32 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 009BD222C2;
 Fri, 27 Dec 2019 17:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577468609;
 bh=OZUr5Cjv1zABO9ans+RYHATrdhV6+Iz8cCMaXuqXCPw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pFdPpMHTYhw0OCZ4sFSGfXHbDEZbMrBb8tnenig7iYxadOZQHO6MlgUkoAKc6gA8z
 3L/LoGm4qgjQsXuInVuZHE+katDY0AMRSlNAuAem9cmBJZPl9g6ZA8hLkmJ3If/CQP
 MfyG5XTChIQXhIBU9E3Z3J1WyLab+vvuky2a26hU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 129/187] net: gemini: Fix memory leak in
 gmac_setup_txqs
Date: Fri, 27 Dec 2019 12:39:57 -0500
Message-Id: <20191227174055.4923-129-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191227174055.4923-1-sashal@kernel.org>
References: <20191227174055.4923-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_094330_243570_FC8DDDCD 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Navid Emamdoost <navid.emamdoost@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Navid Emamdoost <navid.emamdoost@gmail.com>

[ Upstream commit f37f710353677639bc5d37ee785335994adf2529 ]

In the implementation of gmac_setup_txqs() the allocated desc_ring is
leaked if TX queue base is not aligned. Release it via
dma_free_coherent.

Fixes: 4d5ae32f5e1e ("net: ethernet: Add a driver for Gemini gigabit ethernet")
Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/cortina/gemini.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/cortina/gemini.c b/drivers/net/ethernet/cortina/gemini.c
index a8f4c69252ff..2814b96751b4 100644
--- a/drivers/net/ethernet/cortina/gemini.c
+++ b/drivers/net/ethernet/cortina/gemini.c
@@ -576,6 +576,8 @@ static int gmac_setup_txqs(struct net_device *netdev)
 
 	if (port->txq_dma_base & ~DMA_Q_BASE_MASK) {
 		dev_warn(geth->dev, "TX queue base is not aligned\n");
+		dma_free_coherent(geth->dev, len * sizeof(*desc_ring),
+				  desc_ring, port->txq_dma_base);
 		kfree(skb_tab);
 		return -ENOMEM;
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
