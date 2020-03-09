Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBAB17DB28
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 09:37:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cFut+Z+LZm03gVgHu4/p0/cX/BEIxA55keSoNL/fwLQ=; b=GgEw9syoAWPfRGJm/UVOYNYy0G
	mvqIxF0lm2KKn3eE1ifxYAgfR7E6RsYWlCTGfOarAhpoVKZ/wCLt9s5CkLyeuQJ81DKGUnkNy3f6q
	8UWg4oas51kMtvYsqc3dGpjkwkUHCl8kpfEzoW/56mAhe+dmJbj0k8OIR66T5iOqIPxW1BSxdg6Z+
	NB41rjLZsm79LuJVSTWY8t76L9ynSTf+5Vw5+ZGsdXIBRDfkpiTykFUgjbprCu5E47Uua5g0mSDW4
	oEj212n9yQEUNfsUqhA5C/xpYCgQRpioU/SUkdiseEfGVm6AITVOSuqCaSR70yaCH8IxBuMEu5KDN
	+OvF9tCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBDup-0003W3-80; Mon, 09 Mar 2020 08:37:35 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBDu2-0002wz-ME
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 08:36:48 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id F1330C04C1;
 Mon,  9 Mar 2020 08:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1583743004; bh=G3io2HtqWrz75qyPw31i1mMVlC9mUpQx2JEEWDPYGq4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=UE4HnfD9Y4yrPQJP78MfJT9lw1jU3QpfncTPiPFXyfjvW7PEh9FIzKpneVk0wQ7XT
 fIYqs5Nk07lIV0u40Ht7NP0nomYopwWWuXXeRd7bs91XqdtgwyLbd0qJ39GfWd1I6R
 1iLsFtBssXKINU1hgu4KKDrCByE2iMRKsmn/ElRXyN404iRRwljyGIkyhHDlCceORR
 aF4vADoFRFNHLy1NpRRTKgQ5jMDQuI/+4v5ht3kZ4AQT9/W25CnPexj0KFL3uLOoR9
 e8yTWEI5ksEhHApIgDVcYqTRLP2KCZMvKrlQXBpABLjFv3TuGsZ8wPm4BKodLQIMSA
 uXdmQR6FL9qDg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 5E9FAA0071;
 Mon,  9 Mar 2020 08:36:41 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 5/8] net: phylink: Add missing Backplane speeds
Date: Mon,  9 Mar 2020 09:36:24 +0100
Message-Id: <72f937085fd6167f9dd6e8c72e0f7f0a161d8001.1583742616.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1583742615.git.Jose.Abreu@synopsys.com>
References: <cover.1583742615.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1583742615.git.Jose.Abreu@synopsys.com>
References: <cover.1583742615.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_013646_771081_E42DE414 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Andrew Lunn <andrew@lunn.ch>,
 Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-stm32@st-md-mailman.stormreply.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

USXGMII also supports these missing backplane speeds.

Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Cc: Heiner Kallweit <hkallweit1@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/net/phy/phylink.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
index b4367fab7899..47f4ce02d7bc 100644
--- a/drivers/net/phy/phylink.c
+++ b/drivers/net/phy/phylink.c
@@ -312,11 +312,13 @@ static int phylink_parse_mode(struct phylink *pl, struct fwnode_handle *fwnode)
 			phylink_set(pl->supported, 1000baseT_Half);
 			phylink_set(pl->supported, 1000baseT_Full);
 			phylink_set(pl->supported, 1000baseX_Full);
+			phylink_set(pl->supported, 1000baseKX_Full);
 			phylink_set(pl->supported, 2500baseT_Full);
 			phylink_set(pl->supported, 2500baseX_Full);
 			phylink_set(pl->supported, 5000baseT_Full);
 			phylink_set(pl->supported, 10000baseT_Full);
 			phylink_set(pl->supported, 10000baseKR_Full);
+			phylink_set(pl->supported, 10000baseKX4_Full);
 			phylink_set(pl->supported, 10000baseCR_Full);
 			phylink_set(pl->supported, 10000baseSR_Full);
 			phylink_set(pl->supported, 10000baseLR_Full);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
