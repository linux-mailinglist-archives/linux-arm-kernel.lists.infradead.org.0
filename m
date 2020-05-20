Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 564ED1DA8C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 05:52:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w0g4HYPgXMZdnv5bOoWqwpHv83pGXncVapzXgel/FLY=; b=Ylg41h2RR5hS24
	DDhM7WSCS1laK1fLyDhH0e6t4qRSSEQWhz/KxmPrTbbwE84YfczklWxaVvEk+GQ8yHN3t0tsh2ebu
	+G9IeoUTIIO/6OwAsuO82qxcaZdnuOoYO+prMWo+5ezqAy8QxeaOmzKzQgEKFuucKlNmFJ+MLg8IY
	gvlTUl7mHfsqAPOAUqKT/9V9z7IeQtv4vCPW8CcUb7OnLd6XriHBo7a8kwn5Z774lJyjqrbq0MCfd
	/xnAWqTuNv9lpppsIckXggu2lAejoSMbZ+4OdlLG6P3hFMvZENM8fICV/9qm1rfMkADqPkU59nzae
	HtDPUFQnl/6BjHMO539g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbFmT-0007R2-UG; Wed, 20 May 2020 03:52:33 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbFlv-0007BX-18; Wed, 20 May 2020 03:52:00 +0000
X-UUID: 009e46a9876e40669bd7dbeb78f5df86-20200519
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=H9HMo2U5SEEblUp/6TVWCuE7fKAxS/NcU97DM/Qtj9c=; 
 b=FTWbSWlNtgc+GeoLkr2QStnlzqPq6A2IEiT6p+xDXKgiusyxAqPCzBUiCwYz11L9Qkz2RWBtaNIm5DFGc49uffmsNxBLtS9jCwWGA2i22zyc0Esu417R7OsaVn1PK+WLNAU9Xpc2L/Wlu3fihZ2iYI2h4db0P4jLGY3jD0Guof8=;
X-UUID: 009e46a9876e40669bd7dbeb78f5df86-20200519
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 451162733; Tue, 19 May 2020 19:51:55 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 19 May 2020 20:43:35 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 20 May 2020 11:43:34 +0800
Received: from mtkslt209.mediatek.inc (10.21.15.96) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 20 May 2020 11:43:34 +0800
From: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park
 <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, "Rob
 Herring" <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>, Nishanth Menon <nm@ti.com>, "Stephen
 Boyd" <sboyd@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown
 <broonie@kernel.org>
Subject: [PATCH 11/12] cpufreq: mediatek: add opp notification for SVS support
Date: Wed, 20 May 2020 11:43:06 +0800
Message-ID: <20200520034307.20435-12-andrew-sh.cheng@mediatek.com>
X-Mailer: git-send-email 2.12.5
In-Reply-To: <20200520034307.20435-1-andrew-sh.cheng@mediatek.com>
References: <20200520034307.20435-1-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_205159_085884_E48AEB88 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org,
 "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>, srv_heupstream@mediatek.com,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cpufreq should listen opp notification and do proper actions
when receiving disable and voltage adjustment events,
which are triggered when SVS is enabled.

Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
---
 drivers/cpufreq/mediatek-cpufreq.c | 89 ++++++++++++++++++++++++++++++++++++--
 1 file changed, 85 insertions(+), 4 deletions(-)

diff --git a/drivers/cpufreq/mediatek-cpufreq.c b/drivers/cpufreq/mediatek-cpufreq.c
index 4b479c110cc9..71395ab87ac7 100644
--- a/drivers/cpufreq/mediatek-cpufreq.c
+++ b/drivers/cpufreq/mediatek-cpufreq.c
@@ -42,6 +42,11 @@ struct mtk_cpu_dvfs_info {
 	struct list_head list_head;
 	int intermediate_voltage;
 	bool need_voltage_tracking;
+	struct mutex lock; /* avoid notify and policy race condition */
+	struct notifier_block opp_nb;
+	int opp_cpu;
+	unsigned long opp_freq;
+	int old_vproc;
 };
 
 static LIST_HEAD(dvfs_info_list);
@@ -192,11 +197,16 @@ static int mtk_cpufreq_voltage_tracking(struct mtk_cpu_dvfs_info *info,
 
 static int mtk_cpufreq_set_voltage(struct mtk_cpu_dvfs_info *info, int vproc)
 {
+	int ret;
+
 	if (info->need_voltage_tracking)
-		return mtk_cpufreq_voltage_tracking(info, vproc);
+		ret = mtk_cpufreq_voltage_tracking(info, vproc);
 	else
-		return regulator_set_voltage(info->proc_reg, vproc,
-					     vproc + VOLT_TOL);
+		ret = regulator_set_voltage(info->proc_reg, vproc,
+					    MAX_VOLT_LIMIT);
+	if (!ret)
+		info->old_vproc = vproc;
+	return ret;
 }
 
 static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
@@ -214,7 +224,9 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
 	inter_vproc = info->intermediate_voltage;
 
 	old_freq_hz = clk_get_rate(cpu_clk);
-	old_vproc = regulator_get_voltage(info->proc_reg);
+	old_vproc = info->old_vproc;
+	if (old_vproc == 0)
+		old_vproc = regulator_get_voltage(info->proc_reg);
 	if (old_vproc < 0) {
 		pr_err("%s: invalid Vproc value: %d\n", __func__, old_vproc);
 		return old_vproc;
@@ -231,6 +243,7 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
 	vproc = dev_pm_opp_get_voltage(opp);
 	dev_pm_opp_put(opp);
 
+	mutex_lock(&info->lock);
 	/*
 	 * If the new voltage or the intermediate voltage is higher than the
 	 * current voltage, scale up voltage first.
@@ -242,6 +255,7 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
 			pr_err("cpu%d: failed to scale up voltage!\n",
 			       policy->cpu);
 			mtk_cpufreq_set_voltage(info, old_vproc);
+			mutex_unlock(&info->lock);
 			return ret;
 		}
 	}
@@ -253,6 +267,7 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
 		       policy->cpu);
 		mtk_cpufreq_set_voltage(info, old_vproc);
 		WARN_ON(1);
+		mutex_unlock(&info->lock);
 		return ret;
 	}
 
@@ -263,6 +278,7 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
 		       policy->cpu);
 		clk_set_parent(cpu_clk, armpll);
 		mtk_cpufreq_set_voltage(info, old_vproc);
+		mutex_unlock(&info->lock);
 		return ret;
 	}
 
@@ -273,6 +289,7 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
 		       policy->cpu);
 		mtk_cpufreq_set_voltage(info, inter_vproc);
 		WARN_ON(1);
+		mutex_unlock(&info->lock);
 		return ret;
 	}
 
@@ -288,15 +305,69 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
 			clk_set_parent(cpu_clk, info->inter_clk);
 			clk_set_rate(armpll, old_freq_hz);
 			clk_set_parent(cpu_clk, armpll);
+			mutex_unlock(&info->lock);
 			return ret;
 		}
 	}
 
+	info->opp_freq = freq_hz;
+	mutex_unlock(&info->lock);
+
 	return 0;
 }
 
 #define DYNAMIC_POWER "dynamic-power-coefficient"
 
+static int mtk_cpufreq_opp_notifier(struct notifier_block *nb,
+				    unsigned long event, void *data)
+{
+	struct dev_pm_opp *opp = data;
+	struct dev_pm_opp *new_opp;
+	struct mtk_cpu_dvfs_info *info;
+	unsigned long freq, volt;
+	struct cpufreq_policy *policy;
+	int ret = 0;
+
+	info = container_of(nb, struct mtk_cpu_dvfs_info, opp_nb);
+
+	if (event == OPP_EVENT_ADJUST_VOLTAGE) {
+		freq = dev_pm_opp_get_freq(opp);
+
+		mutex_lock(&info->lock);
+		if (info->opp_freq == freq) {
+			volt = dev_pm_opp_get_voltage(opp);
+			ret = mtk_cpufreq_set_voltage(info, volt);
+			if (ret)
+				dev_err(info->cpu_dev, "failed to scale voltage: %d\n",
+					ret);
+		}
+		mutex_unlock(&info->lock);
+	} else if (event == OPP_EVENT_DISABLE) {
+		freq = dev_pm_opp_get_freq(opp);
+		/* case of current opp item is disabled */
+		if (info->opp_freq == freq) {
+			freq = 1;
+			new_opp = dev_pm_opp_find_freq_ceil(info->cpu_dev,
+							    &freq);
+			if (!IS_ERR(new_opp)) {
+				dev_pm_opp_put(new_opp);
+				policy = cpufreq_cpu_get(info->opp_cpu);
+				if (policy) {
+					cpufreq_driver_target(policy,
+						freq / 1000,
+						CPUFREQ_RELATION_L);
+					cpufreq_cpu_put(policy);
+				}
+			} else {
+				pr_err("%s: all opp items are disabled\n",
+				       __func__);
+			}
+		}
+	}
+
+	return notifier_from_errno(ret);
+}
+
 static int mtk_cpu_dvfs_info_init(struct mtk_cpu_dvfs_info *info, int cpu)
 {
 	struct device *cpu_dev;
@@ -392,11 +463,21 @@ static int mtk_cpu_dvfs_info_init(struct mtk_cpu_dvfs_info *info, int cpu)
 	info->intermediate_voltage = dev_pm_opp_get_voltage(opp);
 	dev_pm_opp_put(opp);
 
+	info->opp_cpu = cpu;
+	info->opp_nb.notifier_call = mtk_cpufreq_opp_notifier;
+	ret = dev_pm_opp_register_notifier(cpu_dev, &info->opp_nb);
+	if (ret) {
+		pr_warn("cannot register opp notification\n");
+		goto out_disable_inter_clock;
+	}
+
+	mutex_init(&info->lock);
 	info->cpu_dev = cpu_dev;
 	info->proc_reg = proc_reg;
 	info->sram_reg = IS_ERR(sram_reg) ? NULL : sram_reg;
 	info->cpu_clk = cpu_clk;
 	info->inter_clk = inter_clk;
+	info->opp_freq = clk_get_rate(cpu_clk);
 
 	/*
 	 * If SRAM regulator is present, software "voltage tracking" is needed
-- 
2.12.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
