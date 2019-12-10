Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACFA1190C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 20:35:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=viEXPFWR699BF4C5We4zdSyc+fVsnNiAYFb/1oCAIt8=; b=G8inIMmbvafJRwTICdbcC22Igs
	3nVgGbCsagwM7wDWcgp/ipZoci5OEWWTmi6F2R3Bs6+E8/qLuEV74WedEDkJNB9qhvZ+rKJ4GX6Fy
	GxDksWe2y7tMTO0P64YOaF90ZeZFRAdyl2UekaCYfTp31vcCJg6cYnHuFHGs+X5H24+C3DTEQgV/D
	N7Mm8WB0C0K5nBXBXRjsMIif3QVihuBlW0uzyz4wrv8Td3aKo9VeS17ZqP9vH0q3GTVA9pSWleQzO
	SrvlJY4ol8FjTiwmwoLH4C9eyifvo6WyUohHegRXOXmVmFRczKw/a4MslhV0q0x929JKoANqiq52u
	Lpx46pGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ielI3-0006nb-As; Tue, 10 Dec 2019 19:35:23 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ielGr-00058W-6Z
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 19:34:11 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 426DFC0BAB;
 Tue, 10 Dec 2019 19:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576006448; bh=vCs44WsolU5VcZ1RjvraNJ29UNvGkT8Makvl4mwtSgs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=Ku9NxyetEALpDuGj9KjeXbHuofEbbAA11Lq8tx+orJPXVgu9iqvfoXZlhe+LxSsGk
 8Y4KzGMeZXofkeJNcFMutWgyn4cy/ZyHunRGKEZrxIs9FvSwAPtWKHmoTTm7oBqDHN
 Lnct2AzSXSMTQwRhUI2yJLFs0XBSmLxQ1NhfRumXXIjmwa1zr6JZIxIkDbwnsan7V/
 aL4mEgD9rzxnYzRfJPsM06A3kU2J0YpjshLsBKJ4/63LCuWLNtDE4HxX0LwESwS5Tz
 bHvQ6Yx6uDUiGgsndUTBYdwWHgQUVvj5TydNo/7OICkVK+2LYc/rFwdzYyEik4to9S
 s3zbNPEL29hvA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id EA865A0096;
 Tue, 10 Dec 2019 19:34:05 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 4/8] net: stmmac: Only the last buffer has the FCS field
Date: Tue, 10 Dec 2019 20:33:56 +0100
Message-Id: <bc4689a359d189c8ed1573aa6eecd81756a3277c.1576005975.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1576005975.git.Jose.Abreu@synopsys.com>
References: <cover.1576005975.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1576005975.git.Jose.Abreu@synopsys.com>
References: <cover.1576005975.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_113409_306385_5E5EA4E9 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Only the last received buffer contains the FCS field. Check for end of
packet before trying to strip the FCS field.

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
index 2ebac89049ed..8c191e4d35d0 100644
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
