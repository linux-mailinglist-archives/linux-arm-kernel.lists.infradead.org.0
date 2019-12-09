Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8EA2116722
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 07:56:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cWiuHdaiMgosKqSLKrxnRSrYDG/fM8LepqpTmXIqp3I=; b=igt7DTw/pKKIYF
	Sbl6BS6Z8IzmuOP8wPFUy7JR3Bb7uCrhlNNqXcykYiPFZ2o3oUMJ01VHDfhU79iPEoN9gVpqPp8Nx
	ombJq63tlRLbyREWYusyHWLuRx0aKXpDkkoqp8otpHDifQxKyoG85uhIHDk7SRwOn1AJpkCbPYJ1l
	Xk5sV7O2KlHbKFdy0TZDbaNOmHtim4ViZqyYYGsa+EUPp4orN+fziK27bljYLW/VNYVjWDV8jwHpf
	DbAAXwXvM9V3wMxVOcrxI04/8NS5WsZYBQ4FnR+BIlMojaoTr103H93+SCsovNFDI3FwbH7OpHRCA
	CR6RAyk21xWG1TS9F1Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieCyT-0003ns-L7; Mon, 09 Dec 2019 06:56:53 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieCyC-0003mL-Vo; Mon, 09 Dec 2019 06:56:38 +0000
X-UUID: 4d62a2cee3ed436daab271754322b8ea-20191208
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=NwH/k4QAq6ojuaZ3B597ruNnoEUu3cfO5mIjHS2A7mk=; 
 b=dCdt6VmW1ml8+g0J7GCb8+8uCfDrTihs4sHdfKOu4jE3qYDSrudSyRpFQ2s0n+IpXUe6xgmbjmRefh68qbOyWPU2A6GWJ3QsGAjJtlLGsvD5DpzmIDFQrAy/qNQwImac0F75HChW3Lno2JpuowWt7wasbvmvmr1KcWcMzU4r3Ko=;
X-UUID: 4d62a2cee3ed436daab271754322b8ea-20191208
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1585875982; Sun, 08 Dec 2019 22:56:32 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 8 Dec 2019 22:57:25 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Dec 2019 14:56:04 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 9 Dec 2019 14:56:13 +0800
Message-ID: <1575874588.13494.4.camel@mtksdaap41>
Subject: Re: [v5, PATCH 4/5] cpufreq: mediatek: add opp notification for SVS
 support
From: andrew-sh.cheng <andrew-sh.cheng@mediatek.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Date: Mon, 9 Dec 2019 14:56:28 +0800
In-Reply-To: <20191127083619.etocnhpyyut3hzwq@vireshk-i7>
References: <1574769046-28449-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1574769046-28449-5-git-send-email-andrew-sh.cheng@mediatek.com>
 <20191127083619.etocnhpyyut3hzwq@vireshk-i7>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 055794366DCA413A558EB6AF1AA4D139DE65065F2E78E9C27BA2A86B749303B62000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_225637_055262_61BBD2B8 
X-CRM114-Status: GOOD (  21.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 linux-pm@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org, Chanwoo
 Choi <cw00.choi@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, fan.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-11-27 at 14:06 +0530, Viresh Kumar wrote:
> On 26-11-19, 19:50, Andrew-sh.Cheng wrote:
> > diff --git a/drivers/cpufreq/mediatek-cpufreq.c b/drivers/cpufreq/mediatek-cpufreq.c
> > index 4b0cc50dd93b..7c37ab31230a 100644
> > --- a/drivers/cpufreq/mediatek-cpufreq.c
> > +++ b/drivers/cpufreq/mediatek-cpufreq.c
> > @@ -42,6 +42,10 @@ struct mtk_cpu_dvfs_info {
> >  	struct list_head list_head;
> >  	int intermediate_voltage;
> >  	bool need_voltage_tracking;
> > +	struct mutex lock; /* avoid notify and policy race condition */
> 
> Will a read-write lock be better suited here for performance reasons ?
Thank you for advice, I will check it.
> 
> > +	struct notifier_block opp_nb;
> > +	int opp_cpu;
> > +	unsigned long opp_freq;
> >  };
> >  
> >  static LIST_HEAD(dvfs_info_list);
> > @@ -231,6 +235,7 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
> >  	vproc = dev_pm_opp_get_voltage(opp);
> >  	dev_pm_opp_put(opp);
> >  
> > +	mutex_lock(&info->lock);
> >  	/*
> >  	 * If the new voltage or the intermediate voltage is higher than the
> >  	 * current voltage, scale up voltage first.
> > @@ -242,6 +247,7 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
> >  			pr_err("cpu%d: failed to scale up voltage!\n",
> >  			       policy->cpu);
> >  			mtk_cpufreq_set_voltage(info, old_vproc);
> > +			mutex_unlock(&info->lock);
> >  			return ret;
> >  		}
> >  	}
> > @@ -253,6 +259,7 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
> >  		       policy->cpu);
> >  		mtk_cpufreq_set_voltage(info, old_vproc);
> >  		WARN_ON(1);
> > +		mutex_unlock(&info->lock);
> >  		return ret;
> >  	}
> >  
> > @@ -263,6 +270,7 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
> >  		       policy->cpu);
> >  		clk_set_parent(cpu_clk, armpll);
> >  		mtk_cpufreq_set_voltage(info, old_vproc);
> > +		mutex_unlock(&info->lock);
> >  		return ret;
> >  	}
> >  
> > @@ -273,6 +281,7 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
> >  		       policy->cpu);
> >  		mtk_cpufreq_set_voltage(info, inter_vproc);
> >  		WARN_ON(1);
> > +		mutex_unlock(&info->lock);
> >  		return ret;
> >  	}
> >  
> > @@ -288,15 +297,75 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
> >  			clk_set_parent(cpu_clk, info->inter_clk);
> >  			clk_set_rate(armpll, old_freq_hz);
> >  			clk_set_parent(cpu_clk, armpll);
> > +			mutex_unlock(&info->lock);
> >  			return ret;
> >  		}
> >  	}
> >  
> > +	info->opp_freq = freq_hz;
> > +	mutex_unlock(&info->lock);
> > +
> >  	return 0;
> >  }
> >  
> >  #define DYNAMIC_POWER "dynamic-power-coefficient"
> >  
> > +static int mtk_cpufreq_opp_notifier(struct notifier_block *nb,
> > +				    unsigned long event, void *data)
> > +{
> > +	struct dev_pm_opp *opp = data;
> > +	struct dev_pm_opp *opp_item;
> > +	struct mtk_cpu_dvfs_info *info =
> > +		container_of(nb, struct mtk_cpu_dvfs_info, opp_nb);
> 
> Do the assignment after all definitions, instead of awkwardly breaking
> the line here.
Got it, will change it.
> 
> > +	unsigned long freq, volt;
> > +	struct cpufreq_policy *policy;
> > +	int ret = 0;
> > +
> > +	if (event == OPP_EVENT_ADJUST_VOLTAGE) {
> > +		freq = dev_pm_opp_get_freq(opp);
> > +
> > +		mutex_lock(&info->lock);
> > +		if (info->opp_freq == freq) {
> > +			volt = dev_pm_opp_get_voltage(opp);
> > +			ret = mtk_cpufreq_set_voltage(info, volt);
> > +			if (ret)
> > +				dev_err(info->cpu_dev, "failed to scale voltage: %d\n",
> > +					ret);
> > +		}
> > +		mutex_unlock(&info->lock);
> > +	} else if (event == OPP_EVENT_DISABLE) {
> > +		freq = info->opp_freq;
> > +		opp_item = dev_pm_opp_find_freq_ceil(info->cpu_dev, &freq);
> 
> name it new_opp instead of opp_item.
Got it, will change it.
> 
> > +		if (!IS_ERR(opp_item))
> > +			dev_pm_opp_put(opp_item);
> > +		else
> > +			freq = 0;
> > +
> 
> What is the purpose of the above code ?
When dev_pm_opp_find_freq_ceil() doesn't find matching opp item, freq
value won't be set.
Set it as 0 for below checking
> 
> > +		/* case of current opp is disabled */
> > +		if (freq == 0 || freq != info->opp_freq) {
> > +			// find an enable opp item
> 
> Use proper commenting style please.
Got it, will change it.
> 
> > +			freq = 1;
> > +			opp_item = dev_pm_opp_find_freq_ceil(info->cpu_dev,
> > +							     &freq);
> > +			if (!IS_ERR(opp_item)) {
> > +				dev_pm_opp_put(opp_item);
> > +				policy = cpufreq_cpu_get(info->opp_cpu);
> > +				if (policy) {
> > +					cpufreq_driver_target(policy,
> > +						freq / 1000,
> > +						CPUFREQ_RELATION_L);
> 
> Why don't you simply call this instead of all the code in the else
> block ?
These else code is used to check "current opp item is disabled or not".
If not, do nothing.
If current opp item is disabled, need to find an not-disabled opp item,
and set frequency to it.
> 
> > +					cpufreq_cpu_put(policy);
> > +				}
> > +			} else {
> > +				pr_err("%s: all opp items are disabled\n",
> > +				       __func__);
> > +			}
> > +		}
> > +	}
> > +
> > +	return notifier_from_errno(ret);
> > +}
> > +
> >  static int mtk_cpu_dvfs_info_init(struct mtk_cpu_dvfs_info *info, int cpu)
> >  {
> >  	struct device *cpu_dev;
> > @@ -383,11 +452,21 @@ static int mtk_cpu_dvfs_info_init(struct mtk_cpu_dvfs_info *info, int cpu)
> >  	info->intermediate_voltage = dev_pm_opp_get_voltage(opp);
> >  	dev_pm_opp_put(opp);
> >  
> > +	info->opp_cpu = cpu;
> > +	info->opp_nb.notifier_call = mtk_cpufreq_opp_notifier;
> > +	ret = dev_pm_opp_register_notifier(cpu_dev, &info->opp_nb);
> > +	if (ret) {
> > +		pr_warn("cannot register opp notification\n");
> > +		goto out_free_opp_table;
> > +	}
> > +
> > +	mutex_init(&info->lock);
> >  	info->cpu_dev = cpu_dev;
> >  	info->proc_reg = proc_reg;
> >  	info->sram_reg = IS_ERR(sram_reg) ? NULL : sram_reg;
> >  	info->cpu_clk = cpu_clk;
> >  	info->inter_clk = inter_clk;
> > +	info->opp_freq = clk_get_rate(cpu_clk);
> >  
> >  	/*
> >  	 * If SRAM regulator is present, software "voltage tracking" is needed
> > -- 
> > 2.12.5
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
