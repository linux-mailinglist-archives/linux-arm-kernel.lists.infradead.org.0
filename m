Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 569CEAB36B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 09:43:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WHJ13LzuHU6s48Sn0XwiEAZojnPQMF5SJjN8OX4c0o0=; b=DMtd0jN4c2FM2lZXOs4KAKpA8c
	FmjRImu9mNgN8u0TLCkeOHlMIYArsJ2PXccvJnutgf0hpYADGqIlU4SpMtd8iW3Uz8k3w/HmfkG0s
	dSFaUN4g83lw5vDHOpSIhRwaFBDLZyst6rgsKiGF/gw68K33mZGfxoaBFicFeqsNaoGQ/xDIbOSGH
	Yrzn8koa/O0/Yw9RBVb41iCrzr1g95zIJldE+yzPNNoEOlulGcN7Mgsvu/doNxfFpoMF+DmIrzzyr
	j7TcSUyxgGhbBYUcUweFkN7dj3h/OypqtwYNT1ZHHgrYQXMoJlPl2ETM0TM7JroYmxT/BKOsVVlZU
	0/o88h7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i68tf-0006q0-B4; Fri, 06 Sep 2019 07:43:07 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i68s6-0005h5-Pn
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 07:41:33 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 23683C0E03;
 Fri,  6 Sep 2019 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567755688; bh=1i/geIHgBQLLy7LPimv2MIzVFeg/Cl2TeuERvfMsPYk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=UKDD5M3QsYIJSRZ7L9o99VGsWgvjEfmNmPwUfpdbQebZ8qBBDEJY4wRUNpNkuTO7v
 R3FngN05ExpqQxQWK/icr3lKvhAY0ywtmn5/8r/PqTuIsg4ydYiO5Cl3boXasgE2E1
 ZBhMsqDhvK405Rng3quH4TxJhW6j1zrVtFK7j/OgQEMgEsip9DpF1zKdV85M5cwbk/
 9Urvg/z/EQ+Wi1K1i8RF2Tu89qxCxwVO1+5f8j9PrzaUVeCAA4l+c/b9s3P79xPQvG
 Ij8OoXdWTGC/xipH4+25Qj+IkdTl35l43Ax/SERJpxFqYUXnOcrslIoNG2o1KpVRHz
 xzGrdurzMs3PA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id A5E9BA005D;
 Fri,  6 Sep 2019 07:41:26 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 1/5] net: stmmac: selftests: Add missing checks for
 support of SA
Date: Fri,  6 Sep 2019 09:41:13 +0200
Message-Id: <3b38421ddf3d8c4e40400f990999d548b8c459b5.1567755423.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1567755423.git.joabreu@synopsys.com>
References: <cover.1567755423.git.joabreu@synopsys.com>
In-Reply-To: <cover.1567755423.git.joabreu@synopsys.com>
References: <cover.1567755423.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_004130_840010_4739F5F1 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add checks for support of Source Address Insertion/Replacement before
running the test.

Signed-off-by: Jose Abreu <joabreu@synopsys.com>

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
index 305d24935cf4..dce34c081a1e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
@@ -1057,6 +1057,9 @@ static int stmmac_test_desc_sai(struct stmmac_priv *priv)
 	struct stmmac_packet_attrs attr = { };
 	int ret;
 
+	if (!priv->dma_cap.vlins)
+		return -EOPNOTSUPP;
+
 	attr.remove_sa = true;
 	attr.sarc = true;
 	attr.src = src;
@@ -1076,6 +1079,9 @@ static int stmmac_test_desc_sar(struct stmmac_priv *priv)
 	struct stmmac_packet_attrs attr = { };
 	int ret;
 
+	if (!priv->dma_cap.vlins)
+		return -EOPNOTSUPP;
+
 	attr.sarc = true;
 	attr.src = src;
 	attr.dst = priv->dev->dev_addr;
@@ -1094,6 +1100,9 @@ static int stmmac_test_reg_sai(struct stmmac_priv *priv)
 	struct stmmac_packet_attrs attr = { };
 	int ret;
 
+	if (!priv->dma_cap.vlins)
+		return -EOPNOTSUPP;
+
 	attr.remove_sa = true;
 	attr.sarc = true;
 	attr.src = src;
@@ -1114,6 +1123,9 @@ static int stmmac_test_reg_sar(struct stmmac_priv *priv)
 	struct stmmac_packet_attrs attr = { };
 	int ret;
 
+	if (!priv->dma_cap.vlins)
+		return -EOPNOTSUPP;
+
 	attr.sarc = true;
 	attr.src = src;
 	attr.dst = priv->dev->dev_addr;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
