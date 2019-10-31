Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE4CEAE33
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 12:01:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=u3sF+W5a8/0jwdd6LXiRzW5bhhpcYod+fqeTYx5BcaY=; b=YiXGRBNiSuTtB533VHedDUS8A/
	STwlKA3XT/XVRv00f39Esjyz4d3WXmaBAcxiZHRceZVnt0rL3mlLPKs901wapcqeeuQe/NaSyv64N
	29uuD/6N/nsHT87OUrpps5hvEogeSVMZuIGOajBY1Z2xYrQPcWL9ATwHwVgzkd4DuUd/WI7kxwKaB
	VCXuhvv6sUSol/c0HG0Ea6R2SCRV2Z5XokyOeizLSQmKx12/ynrLon3nVWgXksnHwYZNe/M/iC8RC
	cKfEPtKqejTLkJSi/kYLPC+8BaPGlhSQAD+rguOrAqE0G7uw16tVWUn3HHjTlAlxcMCPH3WHUlsON
	srGYJx0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ8DF-0004S3-09; Thu, 31 Oct 2019 11:01:57 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ8CQ-0003yR-Sd
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 11:01:11 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 88CCFC08B0;
 Thu, 31 Oct 2019 11:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1572519662; bh=DPNAHIwdStIvNykZvPNI9Q22maKuz31rS0G+68nojiE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=ZTj/R19eSI2iloeTgQl4aJ1mHlGqvKW3H0tLYv9z/VN8ooDloOlTK2MCzI79lnjhC
 Unqq8WMfO0mwk1rAoGLbGd+4BIit+foUoT5j3ZcOp1+aA2MRBcaBubUa8W/0l8tmlD
 oCxnDhEAg4x2ernhMVCwzlpOdVKDUUmeL0hUR4C36jF5N3F4QugdtgMOGGxGrTMqPF
 YD8wuQQk1d1NiQymWOXUux7Bhy0Madz99s7dmXzwyVROug3lAj/Z1WcOtHY8GbeImf
 nPwXiXfoT9Jx5YHWUofMzt9NMeVzDMCt2wtCs9zpMhxaSE5jA0sI+PATcCMa3KSJE2
 PCrSiSRbOC3bQ==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 441D3A0077;
 Thu, 31 Oct 2019 11:01:00 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net v2 06/10] net: stmmac: xgmac: Fix TSA selection
Date: Thu, 31 Oct 2019 12:00:44 +0100
Message-Id: <538f8fa299d6527d6ab108c441d37f511297cce9.1572519070.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1572519070.git.Jose.Abreu@synopsys.com>
References: <cover.1572519070.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1572519070.git.Jose.Abreu@synopsys.com>
References: <cover.1572519070.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_040107_055176_002F0BFF 
X-CRM114-Status: GOOD (  10.96  )
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

When we change between Transmission Scheduling Algorithms, we need to
clear previous values so that the new chosen algorithm is correctly
selected.

Fixes: ec6ea8e3eee9 ("net: stmmac: Add CBS support in XGMAC2")
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
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
index b58522b8f782..082f5ee9e525 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
@@ -224,6 +224,7 @@ static void dwxgmac2_config_cbs(struct mac_device_info *hw,
 	writel(low_credit, ioaddr + XGMAC_MTL_TCx_LOCREDIT(queue));
 
 	value = readl(ioaddr + XGMAC_MTL_TCx_ETS_CONTROL(queue));
+	value &= ~XGMAC_TSA;
 	value |= XGMAC_CC | XGMAC_CBS;
 	writel(value, ioaddr + XGMAC_MTL_TCx_ETS_CONTROL(queue));
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
