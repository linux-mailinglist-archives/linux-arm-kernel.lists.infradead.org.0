Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B77132643
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 13:36:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gRM3E6CTaAEXaC3/hYkZBfZE/s2BtWHKVHq6POWLu0k=; b=dME
	BqyPtIVI9Hkq5JxFKv4jqPDF1NmN4IEJHIwWgikw4C+Y6dEoALz0k5ev349t1q8t/o1kAY9XRNo6+
	PEIiHqKTY0bBKILUztaGcJIoGRc8GpY/J9rQmFI4/HrXfkGVD+0IgyMJp/FDWj1xvOdxLQfdT9si0
	CeU0b32xopZm0mpqGf1aTaalB9BYmNO/UFWHSLqCvpqCLieBMXJcg6VlkKgUEvyz6DgS5hrY+4vc4
	mxPn2Re73rne/gyMwCv9fgp11I9TqX4NxoJ2C00R03311vuJ+IrDCDOLWux+GlQD6jWcMvIntkiDY
	2x5GoP5HZZaDLKJLbGFqIFM++cdtSdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioo5W-0007jP-NJ; Tue, 07 Jan 2020 12:35:58 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioo5M-0007iB-Ue
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 12:35:52 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 6ECAB40658;
 Tue,  7 Jan 2020 12:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1578400547; bh=qQZag1I8R5PX/PjsmWAZ3BDd3y8GbUX/piPPUPjODLw=;
 h=From:To:Cc:Subject:Date:From;
 b=eSWXXQ1XEyBAb94L/Tyjk35aD4jA749VPpIOlN92dbUc4+RbuSq/toh3E46/7Fgtt
 afCiwBfzvkyRYsS22krlg1wcwCgDUx7DCwefSq9+D1bLuZd7aIrQ0HFilFAAgFGyHx
 lZvwyRduqpK3GEZK8asUKf/SOosLZCZoRDBcWsEsKxfdpCoT921L/JOMMSl/Gpqgsv
 ZzCleRLHHNbjVCJ44qqD9j/YaLywNlTuARm8knGOSJSdcZ76v8xU3IWCgqasxs1mJL
 siY693svDVMEnytCYF2b3dB8XqyhQpweF3LFdIUPVf0wt6rY0zlIN4fuk2o5DaplL7
 bbDKWilKBiVbA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id B3CDBA005C;
 Tue,  7 Jan 2020 12:35:43 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net] net: stmmac: Fixed link does not need MDIO Bus
Date: Tue,  7 Jan 2020 13:35:42 +0100
Message-Id: <5764e60da6d3af7e76c30f63b07f1a12b4787918.1578400471.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_043550_039598_B673768F 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 "kernelci . org bot" <bot@kernelci.org>, Sriram Dash <sriram.dash@samsung.com>,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When using fixed link we don't need the MDIO bus support.

Reported-by: Heiko Stuebner <heiko@sntech.de>
Reported-by: kernelci.org bot <bot@kernelci.org>
Fixes: d3e014ec7d5e ("net: stmmac: platform: Fix MDIO init for platforms without PHY")
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
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: kernelci.org bot <bot@kernelci.org>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Cc: Sriram Dash <sriram.dash@samsung.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
index cc8d7e7bf9ac..4775f49d7f3b 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
@@ -320,7 +320,7 @@ static int stmmac_mtl_setup(struct platform_device *pdev,
 static int stmmac_dt_phy(struct plat_stmmacenet_data *plat,
 			 struct device_node *np, struct device *dev)
 {
-	bool mdio = false;
+	bool mdio = !of_phy_is_fixed_link(np);
 	static const struct of_device_id need_mdio_ids[] = {
 		{ .compatible = "snps,dwc-qos-ethernet-4.10" },
 		{},
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
