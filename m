Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E39B313EEC4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:11:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OmcMgaJJDdGmfN6KJIjDDECXWGCzHETzVQwxTZqg11k=; b=LGGew6zQjGieh1
	mkr0aiKGm/fRpxdHQQs34YCTcqpwhYtjXQ96u2M2L8cDHdqyF8TauURZ9Ha/ZgADa0t0gBWCm6KUc
	2dohMm6qTWfc8ogIYj3+lRgftDhY0cRZpeI74PfvxMYMP8glIhbxQTjDjltXcOX8iOEJrjaZa5Xvd
	FqM2NLVjmKSHENPGoGgYvPaCOu+S5WKzZKPfAuffUGoXeo7udLx3y7aFDfqZaZJL568AB+FhOvvbd
	Lz+28BTRDQTh31jb/iT3ZSufCfvHaNojwKfySQwt88Tw/u48tThqnIy3ZhhG+av0q2B5Dr3kxq6SQ
	2qlBFoWf9JtJUCi6zyOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9bu-0001zM-OK; Thu, 16 Jan 2020 18:11:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8yq-0000bS-55
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:31:03 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D10C2246A1;
 Thu, 16 Jan 2020 17:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579195851;
 bh=mhqsMtrf4am2dqZbTwA1W0jCaYn2ewriEyEupyszVCs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fYZYPT1JyWgVwHhSX7V7FYrTzKjEnKA+duKaG9N8z1fVSQ95rkh7TDbiUt9+Xiu1K
 w0d8Bni34Jsww5l9qQADu2ExNCK912G9wJhnqO+UrbfCruYv2ukuVTTEtrkMEpvy+i
 5Rz1tQ59bnsfrDzQbId3LlfT0nHgN0IhSzkA5m3c=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 351/371] tty: serial: imx: use the sg count from
 dma_map_sg
Date: Thu, 16 Jan 2020 12:23:43 -0500
Message-Id: <20200116172403.18149-294-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116172403.18149-1-sashal@kernel.org>
References: <20200116172403.18149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_093052_233676_5D38FE9D 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Peng Fan <peng.fan@nxp.com>,
 linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

[ Upstream commit 596fd8dffb745afcebc0ec6968e17fe29f02044c ]

The dmaengine_prep_slave_sg needs to use sg count returned
by dma_map_sg, not use sport->dma_tx_nents, because the return
value of dma_map_sg is not always same with "nents".

Fixes: b4cdc8f61beb ("serial: imx: add DMA support for imx6q")
Signed-off-by: Peng Fan <peng.fan@nxp.com>
Link: https://lore.kernel.org/r/1573108875-26530-1-git-send-email-peng.fan@nxp.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/tty/serial/imx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index aae68230fb7b..a81a5be0cf7a 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -542,7 +542,7 @@ static void imx_dma_tx(struct imx_port *sport)
 		dev_err(dev, "DMA mapping error for TX.\n");
 		return;
 	}
-	desc = dmaengine_prep_slave_sg(chan, sgl, sport->dma_tx_nents,
+	desc = dmaengine_prep_slave_sg(chan, sgl, ret,
 					DMA_MEM_TO_DEV, DMA_PREP_INTERRUPT);
 	if (!desc) {
 		dma_unmap_sg(dev, sgl, sport->dma_tx_nents,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
