Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F266C0060
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 09:50:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OQ36sP9s6FHK8dc2BERp9iHz4Up06+Wwfr/tpikFd1M=; b=MWD+KzIh6TgtZW+a0fwFVSBBOC
	CXBRJmVoeVs6jY9UfAMsjQBOImtveBvweF0C+djRtRrHE/JCi7p9x48cJMRgNMJ/PuXhn2M99Tvgd
	xfI6yFWe/eASL4GRpcxP/fnfmngypqXUrKrC2L03Ho3zCYb5dfeyOGQWjOxV0jxqzApfYy6C/bntN
	qF4eaJQMk1QM2qJrzXSiJDfMtFuzAZaNfhfxmsKyF8cswU5OUhKbZq2/4pqM4vvNul0mrUNddWkqS
	S91f7dBVrUt5jXDiZ36u+KIuKokX0GHXG13ge11nEuy6cDC+HU/prO0wnjhH+k1xHZ9FS17GhGDwx
	7OtrZRIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDl0j-0001KS-Hk; Fri, 27 Sep 2019 07:49:53 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDl07-0000f9-Bj
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 07:49:16 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id EB3CAC0CEE;
 Fri, 27 Sep 2019 07:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1569570551; bh=w6MXqfF4WO8Qi/JIy8H5/V4nJcusg0KueWRh6mbOpiU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=eXuXOmm4keIvNntZUoY0pTVRk7mhBflETDmGyDIHWQqATcgAqZ+FkZA2fKQq0K4uc
 7qRGIPncvU/d3q13h+YZmiiHlFtLdFeLmRuLQx0eHA0Kd+LLdQUNn6iAw2AgsTsMWh
 /UjTT4pu/nX/lEx4ERoMko/zvSpU5N5qJutC75CqvPcomQgNK7/dPcScvT3gkAcbf7
 +ZwTmY71tapk3aNjWEz8cfwIZnemOl+bvLrmrRXFc46QNLb5m6ZwXY5jWhKY2fqRps
 Hbi3MR9yENixtbONW9Nf2PhjmJKs2MDLknu43zjYGbRb5zNQZg0pxQ/9vyuDTHnZjn
 2QOTq3iAbf2Bw==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 95262A0091;
 Fri, 27 Sep 2019 07:49:09 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 8/8] net: stmmac: xgmac: Fix RSS not writing all Keys to HW
Date: Fri, 27 Sep 2019 09:48:56 +0200
Message-Id: <80dd26ecf7fc82c88dc378d78210df5dd4138812.1569569778.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1569569778.git.Jose.Abreu@synopsys.com>
References: <cover.1569569778.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1569569778.git.Jose.Abreu@synopsys.com>
References: <cover.1569569778.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_004915_408790_CA2704C6 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The sizeof(cfg->key) is != ARRAY_SIZE(cfg->key). Fix it.

Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Fixes: 76067459c686 ("net: stmmac: Implement RSS and enable it in XGMAC core")
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
Cc: Nick Desaulniers <ndesaulniers@google.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
index 6d8ac2ef4fc2..4a1f52474dbc 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
@@ -533,7 +533,7 @@ static int dwxgmac2_rss_configure(struct mac_device_info *hw,
 		return 0;
 	}
 
-	for (i = 0; i < (sizeof(cfg->key) / sizeof(u32)); i++) {
+	for (i = 0; i < (ARRAY_SIZE(cfg->key) / sizeof(u32)); i++) {
 		ret = dwxgmac2_rss_write_reg(ioaddr, true, i, cfg->key[i]);
 		if (ret)
 			return ret;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
