Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D4A1244B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:34:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eRNnIcztQM37HYeOL+o4u2ioFlwTcD/dbfK4Nf3uqpU=; b=dHLzf6HbphMFXzQa18MvHs//if
	wPfBkK62kMux1PS4KaMbt3cYYw/gm2u5AhcA+u5Ky/KTjlaFZKDIFQsdds5zdaLN8ttgfiownqGQd
	I9IB6kMHgcf60EphDe+RE9nG5cFvb8b2dyHfCQvF4sSRiTsUD96wt8rzjD0grcjjGumCQUHx467fm
	anUn2KvWLba8OBm12Pu12sNayj/1m87/OC93CSvpV9IWJUAqipAb5eNTxB7NciJnIyGtTRAD5mmo3
	huK6QuQIYLt3MgmL+RZJ+hV95KqZpxP982I7TH1f8blQ9APPvLBxPlGdfhL0UAKu+cG31d05E/J++
	lovmyzrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWet-0008Go-IO; Wed, 18 Dec 2019 10:34:23 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWdw-0007jK-46
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:33:25 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id CCF06405B6;
 Wed, 18 Dec 2019 10:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576665201; bh=NqYgoG4N+CA+T3+NK/nF/LTn5Xa1/5AeYl4s82cl6kE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=fBKXcAW+A3rIFhqSuoRbmtCbbnWHTRh/HI6S1wenqZmSPJ1af95MDqlsB+IKwWXj6
 /znR+RUDoImyK8y65oYIQXFTIgoKAZ9t63bPQUV4yVOCNk4njG1m7g+u19s7CeXnyX
 juIN51Dyc/Kuk8n544K7HMEO5NO3XphqNkBMmGjWdng3fTX+6iWVBSPwNbixhE2D4q
 87gM2sfHx8hpIAOb8A34LyE3eWKOBux19eLrxxZKiKLJ2UX0BPt5s7/TaHK6Cjb9cp
 TRrja6sEVCkKvEg5ETxrmgQdD/5vA03okxO1azDobuQGD8DGTckmKp9Qmb8j4p+kgx
 /1H8svjZBZ83g==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 7BA85A0093;
 Wed, 18 Dec 2019 10:33:19 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 3/7] net: stmmac: Integrate EST with TAPRIO scheduler
 API
Date: Wed, 18 Dec 2019 11:33:07 +0100
Message-Id: <ca0279680277fd5b84bf115548e537732294fb94.1576664870.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1576664870.git.Jose.Abreu@synopsys.com>
References: <cover.1576664870.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1576664870.git.Jose.Abreu@synopsys.com>
References: <cover.1576664870.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_023324_215629_B4743330 
X-CRM114-Status: GOOD (  16.71  )
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
 Alexandre Torgue <alexandre.torgue@st.com>, Richard.Ong@synopsys.com,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Boon Leong <boon.leong.ong@intel.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Andre Guedes <andre.guedes@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have the EST code for XGMAC and QoS we can use it with the
TAPRIO scheduler. Integrate it into the main driver and use the API to
configure the EST feature.

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
 drivers/net/ethernet/stmicro/stmmac/hwif.h        |   5 +
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c |   2 +
 drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c   | 108 ++++++++++++++++++++++
 3 files changed, 115 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/hwif.h b/drivers/net/ethernet/stmicro/stmmac/hwif.h
index 399f91d7ea55..e9355d05b3c2 100644
--- a/drivers/net/ethernet/stmicro/stmmac/hwif.h
+++ b/drivers/net/ethernet/stmicro/stmmac/hwif.h
@@ -519,6 +519,7 @@ struct stmmac_priv;
 struct tc_cls_u32_offload;
 struct tc_cbs_qopt_offload;
 struct flow_cls_offload;
+struct tc_taprio_qopt_offload;
 
 struct stmmac_tc_ops {
 	int (*init)(struct stmmac_priv *priv);
@@ -528,6 +529,8 @@ struct stmmac_tc_ops {
 			 struct tc_cbs_qopt_offload *qopt);
 	int (*setup_cls)(struct stmmac_priv *priv,
 			 struct flow_cls_offload *cls);
+	int (*setup_taprio)(struct stmmac_priv *priv,
+			    struct tc_taprio_qopt_offload *qopt);
 };
 
 #define stmmac_tc_init(__priv, __args...) \
@@ -538,6 +541,8 @@ struct stmmac_tc_ops {
 	stmmac_do_callback(__priv, tc, setup_cbs, __args)
 #define stmmac_tc_setup_cls(__priv, __args...) \
 	stmmac_do_callback(__priv, tc, setup_cls, __args)
+#define stmmac_tc_setup_taprio(__priv, __args...) \
+	stmmac_do_callback(__priv, tc, setup_taprio, __args)
 
 struct stmmac_counters;
 
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index da80866d0371..bb03e39f3051 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -4066,6 +4066,8 @@ static int stmmac_setup_tc(struct net_device *ndev, enum tc_setup_type type,
 						  priv, priv, true);
 	case TC_SETUP_QDISC_CBS:
 		return stmmac_tc_setup_cbs(priv, priv, type_data);
+	case TC_SETUP_QDISC_TAPRIO:
+		return stmmac_tc_setup_taprio(priv, priv, type_data);
 	default:
 		return -EOPNOTSUPP;
 	}
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
index 7d972e0fd2b0..58d4ce094381 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
@@ -591,9 +591,117 @@ static int tc_setup_cls(struct stmmac_priv *priv,
 	return ret;
 }
 
+static int tc_setup_taprio(struct stmmac_priv *priv,
+			   struct tc_taprio_qopt_offload *qopt)
+{
+	u32 size, wid = priv->dma_cap.estwid, dep = priv->dma_cap.estdep;
+	struct plat_stmmacenet_data *plat = priv->plat;
+	struct timespec64 time;
+	int i, ret = 0;
+
+	if (!priv->dma_cap.estsel)
+		return -EOPNOTSUPP;
+
+	switch (wid) {
+	case 0x1:
+		wid = 16;
+		break;
+	case 0x2:
+		wid = 20;
+		break;
+	case 0x3:
+		wid = 24;
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	switch (dep) {
+	case 0x1:
+		dep = 64;
+		break;
+	case 0x2:
+		dep = 128;
+		break;
+	case 0x3:
+		dep = 256;
+		break;
+	case 0x4:
+		dep = 512;
+		break;
+	case 0x5:
+		dep = 1024;
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	if (!qopt->enable)
+		goto disable;
+	if (qopt->num_entries >= dep)
+		return -EINVAL;
+	if (!qopt->base_time)
+		return -ERANGE;
+	if (!qopt->cycle_time)
+		return -ERANGE;
+
+	if (!plat->est) {
+		plat->est = devm_kzalloc(priv->device, sizeof(*plat->est),
+					 GFP_KERNEL);
+		if (!plat->est)
+			return -ENOMEM;
+	} else {
+		memset(plat->est, 0, sizeof(*plat->est));
+	}
+
+	size = qopt->num_entries;
+
+	priv->plat->est->gcl_size = size;
+	priv->plat->est->enable = qopt->enable;
+
+	for (i = 0; i < size; i++) {
+		s64 delta_ns = qopt->entries[i].interval;
+		u32 gates = qopt->entries[i].gate_mask;
+
+		if (delta_ns > GENMASK(wid, 0))
+			return -ERANGE;
+		if (gates > GENMASK(31 - wid, 0))
+			return -ERANGE;
+		if (qopt->entries[i].command != TC_TAPRIO_CMD_SET_GATES)
+			return -EOPNOTSUPP;
+
+		priv->plat->est->gcl[i] = delta_ns | (gates << wid);
+	}
+
+	/* Adjust for real system time */
+	time = ktime_to_timespec64(qopt->base_time);
+	priv->plat->est->btr[0] = (u32)time.tv_nsec;
+	priv->plat->est->btr[1] = (u32)time.tv_sec;
+
+	priv->plat->est->ctr[0] = (u32)(qopt->cycle_time % NSEC_PER_SEC);
+	priv->plat->est->ctr[1] = (u32)(qopt->cycle_time / NSEC_PER_SEC);
+
+	ret = stmmac_est_configure(priv, priv->ioaddr, priv->plat->est,
+				   priv->plat->clk_ptp_rate);
+	if (ret) {
+		netdev_err(priv->dev, "failed to configure EST\n");
+		goto disable;
+	}
+
+	netdev_info(priv->dev, "configured EST\n");
+	return 0;
+
+disable:
+	priv->plat->est->enable = false;
+	stmmac_est_configure(priv, priv->ioaddr, priv->plat->est,
+			     priv->plat->clk_ptp_rate);
+	return ret;
+}
+
 const struct stmmac_tc_ops dwmac510_tc_ops = {
 	.init = tc_init,
 	.setup_cls_u32 = tc_setup_cls_u32,
 	.setup_cbs = tc_setup_cbs,
 	.setup_cls = tc_setup_cls,
+	.setup_taprio = tc_setup_taprio,
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
