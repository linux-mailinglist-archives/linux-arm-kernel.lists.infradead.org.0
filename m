Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B7BCD197
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 13:10:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Phip+nJcHNxi8DliRW6TZAgXfs5JNMEp8/oxbx+jJtg=; b=ejMk9u+KPSxYaTtAfTYjvTgANO
	4XeMpNsCAYH3K/YPQFokn0PgHhgqRx1aXv+D61tdOoyuP/8VKPz683wb2VGd6hXDl7nkgku1fn1D7
	2dCtplOfTpV29h4M84QkLwuPONnpG25PjOEU2XHZcg5bvGRpf8y3rgA9HDdlGdZQHBHxdyfQ79tI+
	2+/CTeZNi0lc+A7uhhPuN37Zmdr7NpQZ1HPHAI9QEdy5Eo3mOcOba01csi8K+FRz0cSqQ1ar6X6WL
	eQo0MElVq10GQfxxCEubkNdN++WVL+jg7JuyTBBgOczgTWrbrIRPPrldG5u858SeHhw/qONeLAm8H
	cYy50pwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH4QZ-0004kp-TS; Sun, 06 Oct 2019 11:10:15 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH4PV-0003zD-Et
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 11:09:12 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 04C28C04C4;
 Sun,  6 Oct 2019 11:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1570360147; bh=yJGh0PmYaQMDXz233hMJBanbA6dyu3TtFD0qfFGaroo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=FPCqjj6+4G9rvmQzSnovrxABBMdndyKfp7QJpAyP3yJzX/6i7HYMUWu9g9yHRrAuk
 dKRhAtDKmOz66saLdYFoYUlpLDa/APIRgNIp7kX9WhPh34YDANCFS4g/89+8z3vSI4
 jmDKAvTrb36w+fonwr1ssYwx/KpF6oA3ejFOSOTmNS8O2xGZyvSJCHdLY5YC0GwMrL
 gUXtt7XV00yFfgYmZMWF2K5m/i6UdiHnS6uzddg6/YBvoHSD9FqusV34PQeJbCyM7l
 Jh+jV4fAaLzELM2/tNjkO8kRv/hUP+g6dCT1MvKbQmFWRQXoFj9X0MH2ALiv2/xyN0
 dPC6Hb6Z4VKBQ==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 812F6A005D;
 Sun,  6 Oct 2019 11:09:04 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 1/3] net: stmmac: selftests: Check if filtering is
 available before running
Date: Sun,  6 Oct 2019 13:08:55 +0200
Message-Id: <959930fe0423010540ae9e615449df5cb26da674.1570359800.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1570359800.git.Jose.Abreu@synopsys.com>
References: <cover.1570359800.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1570359800.git.Jose.Abreu@synopsys.com>
References: <cover.1570359800.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_040909_541436_2162D62A 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

We need to check if the number of available Hash Filters is enough to
run the test, otherwise we will get false failures.

Fixes: 091810dbded9 ("net: stmmac: Introduce selftests support")
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
 drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
index cc76a42c7466..ed3926d4471d 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
@@ -496,6 +496,9 @@ static int stmmac_test_hfilt(struct stmmac_priv *priv)
 	if (ret)
 		return ret;
 
+	if (netdev_mc_count(priv->dev) >= priv->hw->multicast_filter_bins)
+		return -EOPNOTSUPP;
+
 	ret = dev_mc_add(priv->dev, gd_addr);
 	if (ret)
 		return ret;
@@ -573,6 +576,8 @@ static int stmmac_test_mcfilt(struct stmmac_priv *priv)
 
 	if (stmmac_filter_check(priv))
 		return -EOPNOTSUPP;
+	if (!priv->hw->multicast_filter_bins)
+		return -EOPNOTSUPP;
 
 	/* Remove all MC addresses */
 	__dev_mc_unsync(priv->dev, NULL);
@@ -611,6 +616,8 @@ static int stmmac_test_ucfilt(struct stmmac_priv *priv)
 
 	if (stmmac_filter_check(priv))
 		return -EOPNOTSUPP;
+	if (!priv->hw->multicast_filter_bins)
+		return -EOPNOTSUPP;
 
 	/* Remove all UC addresses */
 	__dev_uc_unsync(priv->dev, NULL);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
