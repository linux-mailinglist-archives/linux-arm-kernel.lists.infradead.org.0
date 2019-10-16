Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBC8D8603
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 04:44:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=is/1lfCvOVua64lPHq1aZgy2VotRDIJXL7Q3+N/G++k=; b=hOm+UG4OtTDlMD
	t/YO9vECtInB75OQaBUmJe6wyyQ+SqVq+VqmZPXBGpFtGD71MwojA6NQDFvghfhEHerIPxlUDeZRn
	rBpvV8yiwzMsRvZd8HdY6xbU8Qrc+yoLyOT2WauR4P7TIviYbvyCo7kp5lIuYj4+k9+/WLeLfrEMv
	YugsAWz62vZz8+bh/YuvTTNxcPbptStFY6zkBnY5Egs0OGgkc8zGZkoL/87GuKmz20x7gX60Q3Yzs
	Y3rc8+/VfPyPpQmskMXpXFim9DX/A8o5S+wY3oUA1HI9reGBaK7MwWhCyTX2yRgbXJA8WJCJIbI8F
	q4hRLwLoBSkL/x7HtdXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKZIB-0004vI-96; Wed, 16 Oct 2019 02:44:03 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKZI1-0004u1-Hf; Wed, 16 Oct 2019 02:43:55 +0000
X-UUID: 79678d7d533c46cfac3d4119f5f36175-20191015
X-UUID: 79678d7d533c46cfac3d4119f5f36175-20191015
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1993974949; Tue, 15 Oct 2019 18:43:40 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 15 Oct 2019 19:43:47 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 16 Oct 2019 10:43:46 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 16 Oct 2019 10:43:46 +0800
Message-ID: <1571193828.22071.5.camel@mtksdaap41>
Subject: Re: [v4, 7/8] cpufreq: mediatek: add opp notification for SVS support
From: andrew-sh.cheng <andrew-sh.cheng@mediatek.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Date: Wed, 16 Oct 2019 10:43:48 +0800
In-Reply-To: <20190820033927.72muldasu4xd6wb7@vireshk-i7>
References: <1565703113-31479-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1565703113-31479-8-git-send-email-andrew-sh.cheng@mediatek.com>
 <20190820033927.72muldasu4xd6wb7@vireshk-i7>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_194353_590448_575FBB31 
X-CRM114-Status: GOOD (  22.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Fan Chen =?UTF-8?Q?=28=E9=99=B3=E5=87=A1=29?= <fan.chen@mediatek.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-08-20 at 11:39 +0800, Viresh Kumar wrote:
> On 13-08-19, 21:31, Andrew-sh.Cheng wrote:
> > From: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
> > 
> > cpufreq should listen opp notification and do proper actions
> > when receiving disable and voltage adjustment events,
> > which are triggered when SVS is enabled.
> > 
> > Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
> > ---
> >  drivers/cpufreq/mediatek-cpufreq.c | 78 ++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 78 insertions(+)
> > 
> > diff --git a/drivers/cpufreq/mediatek-cpufreq.c b/drivers/cpufreq/mediatek-cpufreq.c
> > index 4dce41b18369..9820c8003507 100644
> > --- a/drivers/cpufreq/mediatek-cpufreq.c
> > +++ b/drivers/cpufreq/mediatek-cpufreq.c
> > @@ -42,6 +42,10 @@ struct mtk_cpu_dvfs_info {
> >  	struct list_head list_head;
> >  	int intermediate_voltage;
> >  	bool need_voltage_tracking;
> > +	struct mutex lock; /* avoid notify and policy race condition */
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
> > @@ -288,15 +297,74 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
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
> 
> Does this ever get called for your platform ? Why are you using opp disable ?
> Maybe we can avoid it completely.
Hi Viresh~
This is due to SVS feature need to fix Vproc for calibration.
When SVS calibration, it want to disable all opp items, except one with
voltae 1.0V. (SVS will change the voltage field of that opp item, if the
corresponding voltage is not 1.0V)
In this way, SVS can make sure there is no other module, include
thermal, will change Vproc by DVFS driver.
After SVS calibration done, SVS will enable those disabled opp items
back.

> 
> > +		freq = info->opp_freq;
> > +		opp_item = dev_pm_opp_find_freq_ceil(info->cpu_dev, &freq);
> > +		if (!IS_ERR(opp_item))
> > +			dev_pm_opp_put(opp_item);
> > +		else
> > +			freq = 0;
> > +
> > +		/* case of current opp is disabled */
> > +		if (freq == 0 || freq != info->opp_freq) {
> > +			// find an enable opp item
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
> > +					cpufreq_cpu_put(policy);
> > +				}
> > +			} else
> > +				pr_err("%s: all opp items are disabled\n",
> > +				       __func__);
> > +		}
> > +	}
> > +
> > +	return notifier_from_errno(ret);
> > +}
> > +
> >  static int mtk_cpu_dvfs_info_init(struct mtk_cpu_dvfs_info *info, int cpu)
> >  {
> >  	struct device *cpu_dev;
> > @@ -383,11 +451,21 @@ static int mtk_cpu_dvfs_info_init(struct mtk_cpu_dvfs_info *info, int cpu)
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
