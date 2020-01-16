Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8FA13E9F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:41:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uYUveuhlo/ntKteIN8jGOG/Yq9rquS8auAvy5RmJ7yU=; b=Jrt63CzZ9fguQx
	L0bsODuEkmyR52QSwy1I0aNGwij1ECoDSrvmzBUxdLw/2HbjJxdDxjKiv01zKtw90psxFCVWTuOfO
	3HNN8O4rBP5Fpy+PFGdOhWCibSGxYYw6pBElAWzyTDeMQYigt+5bLyRpwWs68rvMwjmULNkrvUHUL
	HqW8kBi9a7GDKpertZS1fByoQBvKUHJZ+R7rD3yf0FWCBX3vAFWXWm5ELrZK9vJK1YLo95rQhOhs4
	aJOGu9hYq1t7hyQ8RdZsbk+wHbzodGcO3chGSt48+XQuU4n91JtkEVJNivVgx7xHbAYpT1Y4laFoQ
	MI+Ihs8SXafGxK8etKWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is98j-0000Hi-SP; Thu, 16 Jan 2020 17:41:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8h1-0005xs-7D
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:12:33 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C8C324690;
 Thu, 16 Jan 2020 17:12:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194746;
 bh=kJDSH6qspOXmPpENhFtEh6iF87PxDG6eFgEJbsH73fE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JZH9jzOt8LMnQ6fqsL53+BeTQ0ZXzKE50ONE75ExOmry7df/a82sFuQzBHilVj5mq
 We26ybxVcGlAbnUEJBpe1s4LIPl5F0o4S+ClbYUTNQ5uWKrtplNZrmjyzZXfW6n7Nh
 YuYEYrSodT3aWIGabFjkJcRirLp8Mode66yaWrzw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 575/671] net: stmmac: gmac4+: Not all Unicast
 addresses may be available
Date: Thu, 16 Jan 2020 12:03:33 -0500
Message-Id: <20200116170509.12787-312-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_091227_387990_A77DAFB4 
X-CRM114-Status: GOOD (  11.55  )
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Sasha Levin <sashal@kernel.org>,
 netdev@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <Jose.Abreu@synopsys.com>

[ Upstream commit 25683bab09a70542b9f8e3e28f79b3369e56701f ]

Some setups may not have all Unicast addresses filters available. Check
the number of available filters before trying to setup it.

Fixes: 477286b53f55 ("stmmac: add GMAC4 core support")
Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
index 48cf5e2b2441..bc8871e7351f 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
@@ -443,7 +443,7 @@ static void dwmac4_set_filter(struct mac_device_info *hw,
 	}
 
 	/* Handle multiple unicast addresses */
-	if (netdev_uc_count(dev) > GMAC_MAX_PERFECT_ADDRESSES) {
+	if (netdev_uc_count(dev) > hw->unicast_filter_entries) {
 		/* Switch to promiscuous mode if more than 128 addrs
 		 * are required
 		 */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
