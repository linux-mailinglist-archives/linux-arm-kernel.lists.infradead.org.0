Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6F41A9E24
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:52:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AjUS3c0RjBw6ZCTodp8b/ZYmZghP8eRt+QagNZqZaeE=; b=ke+eBQqbHiDyj3
	BwhVXeIT4NruubxH1xHirktSQYuw7f0WzlYK+ZqHb02aN4Oijwxq9wToCF8rpJ70jo0S6DcNIvr3p
	kE3QzDB0Ll58K1UhBEGcyeX1ARGbw20sV+12rAR9m4Yfafp12JAOfAgyqiCtMp+MaEjGo7O8XvQ5W
	7YY8INZmFysEFi2HxQKSLR/q++uABe2BvTnMbPelzs5ZRe4p/EXNJQszQq8mjrbUBN923jrA6arVk
	s7WeNPXNtl6kV+T/Jz3yDUj/DbTBnCq6J9fP62XGvx+mcqgUppgVuk5IEWToH1DOtsOBxQlt0mfcX
	JdWZj5Tfvm3B4cTVuywg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOgam-0004Ue-DT; Wed, 15 Apr 2020 11:52:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOgWR-0006dl-9k
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 11:48:06 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4124E2173E;
 Wed, 15 Apr 2020 11:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586951282;
 bh=uEWfoT1rRavNBuU+4OI50y23RzU1TGMxXF8/lnxtJhQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OUo/NqC0CAcYjDYXipVRI1avzLLse8lek1nqjlGWma70jtpvUU0s3Mtl2d3PVr8bW
 73L3QSWiHubR3rK2U3Iqk4BlX9FkBxN+l6SpDbau3R6jwhLzqMp/BdTTaeuZA2RoSz
 o04fsoLqh9YAuaNQBLLHblKeAyGOnRmuqBkWHH+Q=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 11/21] net: stmmac: dwmac1000: fix out-of-bounds
 mac address reg setting
Date: Wed, 15 Apr 2020 07:47:38 -0400
Message-Id: <20200415114748.15713-11-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415114748.15713-1-sashal@kernel.org>
References: <20200415114748.15713-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_044803_383301_15D174FE 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-stm32@st-md-mailman.stormreply.com,
 Jisheng Zhang <Jisheng.Zhang@synaptics.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>

[ Upstream commit 3e1221acf6a8f8595b5ce354bab4327a69d54d18 ]

Commit 9463c4455900 ("net: stmmac: dwmac1000: Clear unused address
entries") cleared the unused mac address entries, but introduced an
out-of bounds mac address register programming bug -- After setting
the secondary unicast mac addresses, the "reg" value has reached
netdev_uc_count() + 1, thus we should only clear address entries
if (addr < perfect_addr_number)

Fixes: 9463c4455900 ("net: stmmac: dwmac1000: Clear unused address entries")
Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c b/drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c
index 093e58e94075a..3a2edf9f51e22 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c
@@ -214,7 +214,7 @@ static void dwmac1000_set_filter(struct mac_device_info *hw,
 			reg++;
 		}
 
-		while (reg <= perfect_addr_number) {
+		while (reg < perfect_addr_number) {
 			writel(0, ioaddr + GMAC_ADDR_HIGH(reg));
 			writel(0, ioaddr + GMAC_ADDR_LOW(reg));
 			reg++;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
