Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33EC9E9F07
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 16:31:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=amaxnWYkUlyVFtjyAQlOnklO9FVnp/JIKoi+U9jzZv4=; b=pHJ3v5UwbWrOP31RByVQDSjCJ4
	SQ94BYtGyfIqUuYnGWqxLV9kHd9PqXcEczddORr7tj+/HbmHDq0fMPn8JlmBCgQSSfuWo9wkApPyb
	USK9mFi8CEUDx4DV6/0jLAPcgoEQUnm1dgPU2JMiaPn8erC51GDhnSapvuWdK9gbFOHyKn7RQPH+w
	L1eCjOVqipmZYa1RPNXpJ8yTNzJt1Rt8eiI9yI/XnRk9t1AcAtINWUvLBGwuFutaHg2Nd/AbHLexG
	djKjb85CkKB7Bss90NgEhiron2HJeV8Vrsb/+QlMesBNgp6DGgg3/0BX3y2+srKYvd454Z4ERs0bW
	Dup+9mJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPpwg-0001lt-4W; Wed, 30 Oct 2019 15:31:38 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPpuE-0007QL-Og
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 15:29:08 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 33041C0DE5;
 Wed, 30 Oct 2019 15:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1572449345; bh=scoltA+WigVvTzqdJe03QvtfADm3p97oUkWlWeL7UFM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=C0JfV5wftejE2Zrc7hs298DB1il00674wv+0PaRxFtNkoGvpmkNNtTFYJ56xnidN1
 ASC+0Bp+rlLpTP8I5d7QuzkcAsG8LsLqVr0WY9fooMt95yhVFfTGQKasuHDyYjAFpd
 wwfn7bGENArpW0UOcDBE43gaHU0+tMDashY/KkBJDGcAmRF5rNJJbxCsmPPUvxX8fa
 BJNIN7zlxrFGqowRw3UQkFZrHvZVMTqV8jGG+EGOSMYOpdzXOt63EQebBLYhhnOjpU
 oT/PRO+FlNRz0SXTEuChQ4TlDTskk1uulbWMQ/eeu6HOAT5NzFA1YPWAUx1EC5D1l4
 7MiGLNceonL9w==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id DD1DCA0064;
 Wed, 30 Oct 2019 15:28:58 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 3/3] net: stmmac: tc: Remove the speed dependency
Date: Wed, 30 Oct 2019 16:28:50 +0100
Message-Id: <e376abc1b9511f9196977b7b4bb2f871dcbd44fe.1572449009.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1572449009.git.Jose.Abreu@synopsys.com>
References: <cover.1572449009.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1572449009.git.Jose.Abreu@synopsys.com>
References: <cover.1572449009.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_082907_007571_4FD2276A 
X-CRM114-Status: GOOD (  10.69  )
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

XGMAC3 supports full CBS features with speeds that can go up to 10G so
we can now remove the maximum speed check of CBS.

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
 drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
index f9a9a9d82233..7d972e0fd2b0 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
@@ -321,8 +321,6 @@ static int tc_setup_cbs(struct stmmac_priv *priv,
 		return -EINVAL;
 	if (!priv->dma_cap.av)
 		return -EOPNOTSUPP;
-	if (priv->speed != SPEED_100 && priv->speed != SPEED_1000)
-		return -EOPNOTSUPP;
 
 	mode_to_use = priv->plat->tx_queues_cfg[queue].mode_to_use;
 	if (mode_to_use == MTL_QUEUE_DCB && qopt->enable) {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
