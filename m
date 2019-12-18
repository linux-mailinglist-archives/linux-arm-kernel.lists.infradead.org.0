Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F146124452
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:20:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vwxRVrZyZtBsQY/xPUly95KndxqMRWY+b4aJKe4Pva8=; b=Ji37nHr3bsJQemqBg/1au4arDE
	yt9wqRKzp1mgg9PIQCsr8y3k3hOvKtrHtzBLlXNVNt4QByfcvtDr7iC4TLFtuvDpAiWb2+rN1SwGJ
	Fk8qxYnUEL2uq+W+/9+JQCy9ngfqZSPIoDDxefXI/CnH4l09MxHpZKkgVo9k8rIMakuZJko5OHckI
	i1znUf5NHAVVtzoVFW/1mpdOQWUKeGn1cKCX8sxedqTCLul0R1D6aDPng2PuNZzl9QGz/F3mPwFec
	5ZAMgAMkh+Xan4xtGdzygZxvCjtAAN+vG5Xur7Id5Ad3DVHGiKHZEIXj6I50bJB6B11Adcey4eRcU
	DBh2BW5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWQy-0006Ed-EV; Wed, 18 Dec 2019 10:20:00 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWOw-0004nB-Rm
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:17:58 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 1EFF9C0D6B;
 Wed, 18 Dec 2019 10:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576664273; bh=JURRi4bow/vA5Lu92PxXoSZSHyE6epfPI/NBEYqUmf8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=Y1/Yhc26V5ety9l/L7fk4vTbZiKONrwsVuCLKT2sOCZchVu/YkPyXEWdRz9zrAfDa
 7uEo6eyPyt/4663gK2R7yzZktdyAFHvttita8E8tpfnZjdVVT3ylYTpDB/BF02L+uF
 U8viQ7w5UmeCaAdtpQXQ+OKUasHqgtWUKmpEA0q5sf5hTaETMPW6d+odHqvZ1EogXo
 NmP+9fg1GFBxRUeoydxla6NMI+RjsY50fJUFbzxeHyomiCXEefa6yqHDuvWM1EXRMD
 G/LXQ+FvomF+JhRZzQn27zP4kHDzcDnOyJfiYZM0vHPZ3JTSei11CJzDYPKO3DTMcZ
 okNMmrWUMlVMA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id A35CBA008C;
 Wed, 18 Dec 2019 10:17:51 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net v3 4/9] net: stmmac: Only the last buffer has the FCS field
Date: Wed, 18 Dec 2019 11:17:38 +0100
Message-Id: <b66ef8250e38fd9d958ca566ae310e3e854a800a.1576664155.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1576664155.git.Jose.Abreu@synopsys.com>
References: <cover.1576664155.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1576664155.git.Jose.Abreu@synopsys.com>
References: <cover.1576664155.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_021755_063179_5D6400E9 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
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

Only the last received buffer contains the FCS field. Check for end of
packet before trying to strip the FCS field.

Fixes: 88ebe2cf7f3f ("net: stmmac: Rework stmmac_rx()")
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
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 8b7861909ef9..acb14a96243e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -3644,8 +3644,9 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
 		 * feature is always disabled and packets need to be
 		 * stripped manually.
 		 */
-		if (unlikely(priv->synopsys_id >= DWMAC_CORE_4_00) ||
-		    unlikely(status != llc_snap)) {
+		if (likely(!(status & rx_not_ls)) &&
+		    (likely(priv->synopsys_id >= DWMAC_CORE_4_00) ||
+		     unlikely(status != llc_snap))) {
 			if (buf2_len)
 				buf2_len -= ETH_FCS_LEN;
 			else
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
