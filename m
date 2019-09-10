Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D287EAED56
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 16:41:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RAwpbxSGP+JcJe+TtwhfBOFrGOhtGFR3+AwwdL3nZLw=; b=pC/Fv2i4SWjKn27OtfXJyzVPZm
	vNTc/E9M4+YxxQYSqGTZqblxAR6Qt219846K0dgwe2wpW4sZfksYFWIPxrgIu0nK/I5sRREH0a32p
	a+iRBbxAL2nLzQLKSOkIqSiFhZimnfy9hv/fG4smrRiQ5ZR8NeO89kqrO9ydwE8HTUHqFkgulhWSR
	ToLmdljkPijMxRxts7R1e++c/3KQltzi7P8Ugt3LdeuCIj0npnIHnZMkwS8n5iOzLkd+GGq+tdamI
	l7Bc9n4KklFT3OOv95zCBbW8ZBzMQBbwEccbqDO0ZszTMkW6bdS+yG3pnDyzNUIWiGiqrpafdj/Op
	LVjT7epA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7hKx-00020t-W0; Tue, 10 Sep 2019 14:41:44 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7hKn-0001yf-7p
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 14:41:35 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 52123C2B52;
 Tue, 10 Sep 2019 14:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1568126491; bh=lVkOCoCejw+FdVkNi1DEkuCSQsbWp0vzSCTOU+r1FbE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=maG0dwN9sqjrTYcrEmJPWJUP11sOR4TjwYTc/MdWqa86UHYx9amjx7WXN7iAC+X8M
 mVwZWht6k+04SQMQPE5QtONFUn9ZnaRd6EyeW0GuwNmhnvWLsc8MCWaWL5gQsWif08
 rw2+dGz1Pu0ZGhUzzSZHcptwmipKRX9a3Q1QxkcoeNo3F0IHZKwMEN3ceDPjwV2HFq
 j5ttxy0brNyRnkZQboYkwk+J/KxEYILqVO66dtro7EVCKhhzk44R0OhFMkvGcm0YnU
 9Jez7KvcLGghNIGdNV54/Wniet79x2KhVijxtu0YcPYQvgJqStKHup6KA2HvlpgHuL
 AzHmrwhJt99Pg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id DD654A0064;
 Tue, 10 Sep 2019 14:41:29 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 3/6] net: stmmac: xgmac: Reinitialize correctly a
 variable
Date: Tue, 10 Sep 2019 16:41:24 +0200
Message-Id: <cc78134084a4d7c4f2ea35e369c422b71209d021.1568126224.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1568126224.git.joabreu@synopsys.com>
References: <cover.1568126224.git.joabreu@synopsys.com>
In-Reply-To: <cover.1568126224.git.joabreu@synopsys.com>
References: <cover.1568126224.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_074133_311742_535CFC18 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

'value' was being or'ed with a value from another register. This is a
typo and could cause new written value to be wrong. Fix it.

Signed-off-by: Jose Abreu <joabreu@synopsys.com>

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
index 78ac659da279..d5173dd02a71 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
@@ -568,7 +568,7 @@ static void dwxgmac2_update_vlan_hash(struct mac_device_info *hw, u32 hash,
 
 		writel(value, ioaddr + XGMAC_PACKET_FILTER);
 
-		value |= XGMAC_VLAN_VTHM | XGMAC_VLAN_ETV;
+		value = XGMAC_VLAN_VTHM | XGMAC_VLAN_ETV;
 		if (is_double) {
 			value |= XGMAC_VLAN_EDVLP;
 			value |= XGMAC_VLAN_ESVL;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
