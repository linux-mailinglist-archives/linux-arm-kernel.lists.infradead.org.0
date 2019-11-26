Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54631109D51
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 12:53:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tTreoWU7VwTxt0wVtyKz95DW37s4HADxdDtJb9BJ37U=; b=aC+ptgFtf17zIX
	eQ/KfaZB/LQ34bJnctvGfNbXm+kmoNNfp2c9lVZ77B9B7ekOZKyD8jNRd1xnVSf+O39T5nKCwN5WI
	emucz/K1Pmyvdt40rn3jBwaQd7qwTxgaklUjn0kt4lN9iq0qQzGcyTDlInJAD6I65mDL21xqQZoRX
	OA0t+3ia4uXOCYlwouuzshBVI0PtTDWHEWTxrv01Mdv3tLlaCmBS0memp9vvSKn63XqfQ7T8yH5Gg
	kY3vAN3XifMfmtZ6jKZdP8H7a82vUz6XHlClul5ChZBH9TXX96TPJD8lb/jHxbZrQ0pwb1tUi7ys/
	dPgMSEjfWTnDFMXdZXNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZZOq-0003da-UO; Tue, 26 Nov 2019 11:52:57 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZZNQ-0000ES-8m; Tue, 26 Nov 2019 11:51:30 +0000
X-UUID: 09a81b6c8155441b833a190187e6b1e1-20191126
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=iWqfk6oDuIoe2ZVIibV22tBLL9F80zZam9b/+b4ckHU=; 
 b=b+R8CCNkuPGQ2VS750yWCJnEKXaGABEv5vVSHdLu+i0lLJ4qIuRZ9hh8id4qNVJRBpn5uYvFZopcVokniYktHlAqgTLgtHmFFLRZIuUv2cjpgBXr4/fWb//tMt/qzVPTxsneZMf0N1AnmM1hyG7Tyd33NEwXlSUwuK9h+umv4XE=;
X-UUID: 09a81b6c8155441b833a190187e6b1e1-20191126
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1198560919; Tue, 26 Nov 2019 03:51:21 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 26 Nov 2019 03:51:29 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 26 Nov 2019 19:51:12 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 26 Nov 2019 19:51:17 +0800
From: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park
 <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, "Rob
 Herring" <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>, Nishanth Menon <nm@ti.com>, "Stephen
 Boyd" <sboyd@kernel.org>
Subject: [v5,
 PATCH 4/5] cpufreq: mediatek: add opp notification for SVS support
Date: Tue, 26 Nov 2019 19:50:45 +0800
Message-ID: <1574769046-28449-5-git-send-email-andrew-sh.cheng@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1574769046-28449-1-git-send-email-andrew-sh.cheng@mediatek.com>
References: <1574769046-28449-1-git-send-email-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_035128_404947_B16321F5 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, fan.chen@mediatek.com,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>

cpufreq should listen opp notification and do proper actions
when receiving disable and voltage adjustment events,
which are triggered when SVS is enabled.

Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
---
 drivers/cpufreq/mediatek-cpufreq.c | 79 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/drivers/cpufreq/mediatek-cpufreq.c b/drivers/cpufreq/mediatek-cpufreq.c
index 4b0cc50dd93b..7c37ab31230a 100644
--- a/drivers/cpufreq/mediatek-cpufreq.c
+++ b/drivers/cpufreq/mediatek-cpufreq.c
@@ -42,6 +42,10 @@ struct mtk_cpu_dvfs_info {
 	struct list_head list_head;
 	int intermediate_voltage;
 	bool need_voltage_tracking;
+	struct mutex lock; /* avoid notify and policy race condition */
+	struct notifier_block opp_nb;
+	int opp_cpu;
+	unsigned long opp_freq;
 };
 
 static LIST_HEAD(dvfs_info_list);
@@ -231,6 +235,7 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
 	vproc = dev_pm_opp_get_voltage(opp);
 	dev_pm_opp_put(opp);
 
+	mutex_lock(&info->lock);
 	/*
 	 * If the new voltage or the intermediate voltage is higher than the
 	 * current voltage, scale up voltage first.
@@ -242,6 +247,7 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
 			pr_err("cpu%d: failed to scale up voltage!\n",
 			       policy->cpu);
 			mtk_cpufreq_set_voltage(info, old_vproc);
+			mutex_unlock(&info->lock);
 			return ret;
 		}
 	}
@@ -253,6 +259,7 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
 		       policy->cpu);
 		mtk_cpufreq_set_voltage(info, old_vproc);
 		WARN_ON(1);
+		mutex_unlock(&info->lock);
 		return ret;
 	}
 
@@ -263,6 +270,7 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
 		       policy->cpu);
 		clk_set_parent(cpu_clk, armpll);
 		mtk_cpufreq_set_voltage(info, old_vproc);
+		mutex_unlock(&info->lock);
 		return ret;
 	}
 
@@ -273,6 +281,7 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
 		       policy->cpu);
 		mtk_cpufreq_set_voltage(info, inter_vproc);
 		WARN_ON(1);
+		mutex_unlock(&info->lock);
 		return ret;
 	}
 
@@ -288,15 +297,75 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
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
+	struct dev_pm_opp *opp_item;
+	struct mtk_cpu_dvfs_info *info =
+		container_of(nb, struct mtk_cpu_dvfs_info, opp_nb);
+	unsigned long freq, volt;
+	struct cpufreq_policy *policy;
+	int ret = 0;
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
+		freq = info->opp_freq;
+		opp_item = dev_pm_opp_find_freq_ceil(info->cpu_dev, &freq);
+		if (!IS_ERR(opp_item))
+			dev_pm_opp_put(opp_item);
+		else
+			freq = 0;
+
+		/* case of current opp is disabled */
+		if (freq == 0 || freq != info->opp_freq) {
+			// find an enable opp item
+			freq = 1;
+			opp_item = dev_pm_opp_find_freq_ceil(info->cpu_dev,
+							     &freq);
+			if (!IS_ERR(opp_item)) {
+				dev_pm_opp_put(opp_item);
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
@@ -383,11 +452,21 @@ static int mtk_cpu_dvfs_info_init(struct mtk_cpu_dvfs_info *info, int cpu)
 	info->intermediate_voltage = dev_pm_opp_get_voltage(opp);
 	dev_pm_opp_put(opp);
 
+	info->opp_cpu = cpu;
+	info->opp_nb.notifier_call = mtk_cpufreq_opp_notifier;
+	ret = dev_pm_opp_register_notifier(cpu_dev, &info->opp_nb);
+	if (ret) {
+		pr_warn("cannot register opp notification\n");
+		goto out_free_opp_table;
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
