Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDF21FC821
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 10:03:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jk3CH/+aATh64XAOQmAIzTNZItBOJk3P8Q9ut9d0Tgc=; b=YjZj/Mnrj9F8PQ
	KFXGQVYO1aS6yGgau95NzPDJ0mwDScG+sjcvUo2y1ssZDseba+aVcDhhxvzvcDMeWNsvjYDAFIPAg
	PlKcin2LgRAs9X9/Z5oYXS9MuJftfbtYBMS49nZ+7Kx+htTjQMRxPPVaZte4NuJqKX3RuQIJdvEnF
	f5gF16813jG6zuI7iwNULUBuw+7CgWFWeiKkkyDfl8ONYbFKJ7etEBSWxGljDLRfXVB3Z/6LvE34X
	gIhMggHajaYyCjClnY3w0wOwlT1x3npx8+O1/4+2I0kFUxXRdtow9AySIIvgVCWYiv61fDLjHzPTA
	Ddycl7a6G1TpfKldig5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlT2T-0001xY-9Z; Wed, 17 Jun 2020 08:03:17 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlT2I-0001x1-Fq; Wed, 17 Jun 2020 08:03:09 +0000
X-UUID: f544309c53a1442897d55060d445e58a-20200617
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=0HOZa9j+9fkdQaY26UxuOdPw9ifk6l7kLfYgFy9+ZnU=; 
 b=i+VsbvSmLghAdavtiAjonxALPvewa95RmZMZ3whiRt0XoWy6giyxGXAQ3X5azBLu11eoQw5PJYhMCtXsdnOWifQ+p7HEYhQfYsKkeUXFO3Vd+q5gNhDs2xJU8FzO8BdiJFRyvEzyhHz10aoSr8LcTxDCByLuByxZBp54jLydmNQ=;
X-UUID: f544309c53a1442897d55060d445e58a-20200617
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 432653373; Wed, 17 Jun 2020 00:02:39 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 17 Jun 2020 00:59:28 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 17 Jun 2020 15:59:24 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 17 Jun 2020 15:59:25 +0800
Message-ID: <1592380766.1237.4.camel@mtksdaap41>
Subject: Re: [PATCH 06/12] PM / devfreq: Add cpu based scaling support to
 passive_governor
From: andrew-sh.cheng <andrew-sh.cheng@mediatek.com>
To: Chanwoo Choi <cw00.choi@samsung.com>
Date: Wed, 17 Jun 2020 15:59:26 +0800
In-Reply-To: <d0bc8877-6d41-f54e-1c4c-2fadbb9dcd0b@samsung.com>
References: <20200520034307.20435-1-andrew-sh.cheng@mediatek.com>
 <CGME20200520034335epcas1p45a321a1a878fb7cd7b9c9ada0a474ef7@epcas1p4.samsung.com>
 <20200520034307.20435-7-andrew-sh.cheng@mediatek.com>
 <64b81eea-641c-811d-9830-718b28db4188@samsung.com>
 <1591098190.30729.15.camel@mtksdaap41>
 <d0bc8877-6d41-f54e-1c4c-2fadbb9dcd0b@samsung.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_010306_547018_4E6EA471 
X-CRM114-Status: GOOD (  39.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 srv_heupstream@mediatek.com, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Mark Brown <broonie@kernel.org>, linux-pm@vger.kernel.org, "Rafael J
 . Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-mediatek@lists.infradead.org,
 Sibi Sankar <sibis@codeaurora.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-06-03 at 13:07 +0900, Chanwoo Choi wrote:
> Hi Andrew-sh.Cheng,
> 
> Do you know that why cannot show the patches sent from you on mailing list?
> 
> Even if you sent them to linux-pm mailing list, I cannot find
> your patches on linux-pm's patchwork[1] and others.
> [1] https://patchwork.kernel.org/project/linux-pm/list/
> 
> Could you find you patch on mailing list?
> Do you use git send-email when you send these patches?
> 
> I used the thunderbird tool and gmail for reading the patches.
> When I tried to read the original source of this patch,
> it looks like that the body of patch is encoded.
> I cannot read the plain text of patch body.
> - When gmail, use 'Show original'
> - When thunderbird, use 'More -> View Source'
> 
> If I'm missing something to check this patch,
> please let me know. I'll fix my environment.
> It is strange situation on my case.
> 

Hi Chanwoo Choi~
I cannot find the patch in linux-pm, either.
It should be firewall problem of MTK. (I got some notify from IT.)
I will request the right to send mail to "linux-pm@vger.kernel.org"
Thank you for reminding.

> 
> On 6/2/20 8:43 PM, andrew-sh.cheng wrote:
> > On Thu, 2020-05-28 at 15:14 +0900, Chanwoo Choi wrote:
> >> Hi Andrew-sh.Cheng,
> >>
> >> Thanks for your posting. I like this approach absolutely.
> >> I think that it is necessary. When I developed the embedded product,
> >> I needed this feature always. 
> >>
> >> I add the comments on below.
> >>
> >>
> >> And the following email is not valid. So, I dropped this email
> >> from Cc list.
> >> Saravana Kannan <skannan@codeaurora.org>
> >>
> >>
> >> On 5/20/20 12:43 PM, Andrew-sh.Cheng wrote:
> >>> From: Saravana Kannan <skannan@codeaurora.org>
> >>>
> >>> Many CPU architectures have caches that can scale independent of the
> >>> CPUs. Frequency scaling of the caches is necessary to make sure that the
> >>> cache is not a performance bottleneck that leads to poor performance and
> >>> power. The same idea applies for RAM/DDR.
> >>>
> >>> To achieve this, this patch adds support for cpu based scaling to the
> >>> passive governor. This is accomplished by taking the current frequency
> >>> of each CPU frequency domain and then adjust the frequency of the cache
> >>> (or any devfreq device) based on the frequency of the CPUs. It listens
> >>> to CPU frequency transition notifiers to keep itself up to date on the
> >>> current CPU frequency.
> >>>
> >>> To decide the frequency of the device, the governor does one of the
> >>> following:
> >>> * Derives the optimal devfreq device opp from required-opps property of
> >>>   the parent cpu opp_table.
> >>>
> >>> * Scales the device frequency in proportion to the CPU frequency. So, if
> >>>   the CPUs are running at their max frequency, the device runs at its
> >>>   max frequency. If the CPUs are running at their min frequency, the
> >>>   device runs at its min frequency. It is interpolated for frequencies
> >>>   in between.
> >>>
> >>> Andrew-sh.Cheng change
> >>> dev_pm_opp_xlate_opp to dev_pm_opp_xlate_required_opp devfreq->max_freq
> >>> to devfreq->user_min_freq_req.data.freq.qos->min_freq.target_value
> >>> for kernel-5.7
> >>>
> >>> Signed-off-by: Saravana Kannan <skannan@codeaurora.org>
> >>> [Sibi: Integrated cpu-freqmap governor into passive_governor]
> >>> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> >>> Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
> >>> ---
> >>>  drivers/devfreq/Kconfig            |   2 +
> >>>  drivers/devfreq/governor_passive.c | 278 ++++++++++++++++++++++++++++++++++---
> >>>  include/linux/devfreq.h            |  40 +++++-
> >>>  3 files changed, 299 insertions(+), 21 deletions(-)
> >>>
> >>> diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
> >>> index 0b1df12e0f21..d9067950af6a 100644
> >>> --- a/drivers/devfreq/Kconfig
> >>> +++ b/drivers/devfreq/Kconfig
> >>> @@ -73,6 +73,8 @@ config DEVFREQ_GOV_PASSIVE
> >>>  	  device. This governor does not change the frequency by itself
> >>>  	  through sysfs entries. The passive governor recommends that
> >>>  	  devfreq device uses the OPP table to get the frequency/voltage.
> >>> +	  Alternatively the governor can also be chosen to scale based on
> >>> +	  the online CPUs current frequency.
> >>>  
> >>>  comment "DEVFREQ Drivers"
> >>>  
> >>> diff --git a/drivers/devfreq/governor_passive.c b/drivers/devfreq/governor_passive.c
> >>> index 2d67d6c12dce..7dcda02a5bb7 100644
> >>> --- a/drivers/devfreq/governor_passive.c
> >>> +++ b/drivers/devfreq/governor_passive.c
> >>> @@ -8,11 +8,89 @@
> >>>   */
> >>>  
> >>>  #include <linux/module.h>
> >>> +#include <linux/cpu.h>
> >>> +#include <linux/cpufreq.h>
> >>> +#include <linux/cpumask.h>
> >>>  #include <linux/device.h>
> >>>  #include <linux/devfreq.h>
> >>> +#include <linux/slab.h>
> >>>  #include "governor.h"
> >>>  
> >>> -static int devfreq_passive_get_target_freq(struct devfreq *devfreq,
> >>> +static unsigned int xlate_cpufreq_to_devfreq(struct devfreq_passive_data *data,
> >>
> >> Need to change 'unsigned int' to 'unsigned long'
> > Get it.
> 
> If you add the blank line before/after of your reply,
> it is better to catch your reply. Please add the blank line for me.
> 

Thank you for teaching this norm~

> >> .
> >>
> >>> +					     unsigned int cpu)
> >>> +{
> >>> +	unsigned int cpu_min, cpu_max, dev_min, dev_max, cpu_percent, max_state;
> >>
> >> Better to define them separately as following and then need to rename
> >> the variable. Usually, use the 'min_freq' and 'max_freq' word for
> >> the minimum/maximum frequency.
> >>
> >> 	unsigned int cpu_min_freq, cpu_max_freq, cpu_curr_freq, cpu_percent;
> >> 	unsigned long dev_min_freq, dev_max_freq, dev_max_state,
> >>
> >> The devfreq used 'unsigned long'. The cpufreq used 'unsigned long'
> >> and 'unsigned int'. You need to handle them properly.
> > Get it.
> > For cpu_freq, I separate it into "unsigned long cpu_curr_freq" and
> > "unsigned int cpu_curr_freq_khz"
> >>
> >>
> >>> +	struct devfreq_cpu_state *cpu_state = data->cpu_state[cpu];
> >>> +	struct devfreq *devfreq = (struct devfreq *)data->this;
> >>> +	unsigned long *freq_table = devfreq->profile->freq_table;
> >>
> >> In this function, use 'cpu' work for cpufreq and use 'dev' for devfreq.
> >> So, I think 'dev_freq_table' is proper name instead of 'freq_table'
> >> for the readability.
> >>
> >> 	freq_table -> dev_freq_table
> >>
> >>> +	struct dev_pm_opp *opp = NULL, *cpu_opp = NULL;
> >>
> >> In the get_target_freq_with_devfreq(), use 'p_opp' indicating
> >> the OPP of parent device. For the consistency, I think that
> >> use 'p_opp' instead of 'cpu_opp'. 
> >>
> >>> +	unsigned long cpu_freq, freq;
> >>
> >> Define the 'cpu_freq' on above with cpu_min_freq/cpu_max_freq definition.
> >> 	cpu_freq -> cpu_curr_freq.
> > Get it.
> > Will modify them for readability.
> >>
> >>> +
> >>> +	if (!cpu_state || cpu_state->first_cpu != cpu ||
> >>> +	    !cpu_state->opp_table || !devfreq->opp_table)
> >>> +		return 0;
> >>> +
> >>> +	cpu_freq = cpu_state->freq * 1000;
> >>> +	cpu_opp = devfreq_recommended_opp(cpu_state->dev, &cpu_freq, 0);
> >>> +	if (IS_ERR(cpu_opp))
> >>> +		return 0;
> >>> +
> >>> +	opp = dev_pm_opp_xlate_required_opp(cpu_state->opp_table,
> >>> +					    devfreq->opp_table, cpu_opp);
> >>> +	dev_pm_opp_put(cpu_opp);
> >>> +
> >>> +	if (!IS_ERR(opp)) {
> >>> +		freq = dev_pm_opp_get_freq(opp);
> >>> +		dev_pm_opp_put(opp);
> >>
> >> Better to add the 'out' goto statement.
> >> If you use 'goto out', you can reduce the one indentation
> >> without 'else' statement.
> > Get it.
> >> 	
> >>
> >>> +	} else {
> >>
> >> As I commented, when dev_pm_opp_xlate_required_opp() return successfully
> >> , use 'goto out'. We can remove 'else' and then reduce the unneeded indentation.
> >>
> >>
> >>> +		/* Use Interpolation if required opps is not available */
> >>> +		cpu_min = cpu_state->min_freq;
> >>> +		cpu_max = cpu_state->max_freq;
> >>> +		cpu_freq = cpu_state->freq;
> >>> +
> >>> +		if (freq_table) {
> >>> +			/* Get minimum frequency according to sorting order */
> >>> +			max_state = freq_table[devfreq->profile->max_state - 1];
> >>> +			if (freq_table[0] < max_state) {
> >>> +				dev_min = freq_table[0];
> >>> +				dev_max = max_state;
> >>> +			} else {
> >>> +				dev_min = max_state;
> >>> +				dev_max = freq_table[0];
> >>> +			}
> >>> +		} else {
> >>> +			if (devfreq->user_max_freq_req.data.freq.qos->max_freq.target_value
> >>> +			    <= devfreq->user_min_freq_req.data.freq.qos->min_freq.target_value)
> >>> +				return 0;
> >>> +			dev_min =
> >>> +			devfreq->user_min_freq_req.data.freq.qos->min_freq.target_value;
> >>> +			dev_max =
> >>> +			devfreq->user_max_freq_req.data.freq.qos->max_freq.target_value;
> >>
> >> I think it is not proper to access the variable of pm_qos structure directly.
> >> Instead of direct access, you have to use the exported PM QoS function such as
> >> - pm_qos_read_value(devfreq->dev.parent, DEV_PM_QOS_MIN_FREQUENCY);
> >> - pm_qos_read_value(devfreq->dev.parent, DEV_PM_QOS_MAX_FREQUENCY);
> > Get it.
> >>
> >>> +		}
> >>> +		cpu_percent = ((cpu_freq - cpu_min) * 100) / cpu_max - cpu_min;
> >>> +		freq = dev_min + mult_frac(dev_max - dev_min, cpu_percent, 100);
> >>> +	}
> >>
> >>
> >> I think that you better to add 'out' jump label as following:
> >>
> >> out:
> >>
> >>> +
> >>> +	return freq;
> >>> +}
> >>> +
> >>> +static int get_target_freq_with_cpufreq(struct devfreq *devfreq,
> >>> +					unsigned long *freq)
> >>> +{
> >>> +	struct devfreq_passive_data *p_data =
> >>> +				(struct devfreq_passive_data *)devfreq->data;
> >>> +	unsigned int cpu, target_freq = 0;
> >>
> >> Need to define 'target_freq' with 'unsigned long' type.
> > Get it.
> >>
> >>> +
> >>> +	for_each_online_cpu(cpu)
> >>> +		target_freq = max(target_freq,
> >>> +				  xlate_cpufreq_to_devfreq(p_data, cpu));
> >>> +
> >>> +	*freq = target_freq;
> >>> +
> >>> +	return 0;
> >>> +}
> >>> +
> >>> +static int get_target_freq_with_devfreq(struct devfreq *devfreq,
> >>>  					unsigned long *freq)
> >>>  {
> >>>  	struct devfreq_passive_data *p_data
> >>> @@ -23,16 +101,6 @@ static int devfreq_passive_get_target_freq(struct devfreq *devfreq,
> >>>  	int i, count, ret = 0;
> >>>  
> >>>  	/*
> >>> -	 * If the devfreq device with passive governor has the specific method
> >>> -	 * to determine the next frequency, should use the get_target_freq()
> >>> -	 * of struct devfreq_passive_data.
> >>> -	 */
> >>> -	if (p_data->get_target_freq) {
> >>> -		ret = p_data->get_target_freq(devfreq, freq);
> >>> -		goto out;
> >>> -	}
> >>> -
> >>> -	/*
> >>>  	 * If the parent and passive devfreq device uses the OPP table,
> >>>  	 * get the next frequency by using the OPP table.
> >>>  	 */
> >>> @@ -102,6 +170,37 @@ static int devfreq_passive_get_target_freq(struct devfreq *devfreq,
> >>>  	return ret;
> >>>  }
> >>>  
> >>> +static int devfreq_passive_get_target_freq(struct devfreq *devfreq,
> >>> +					   unsigned long *freq)
> >>> +{
> >>> +	struct devfreq_passive_data *p_data =
> >>> +				(struct devfreq_passive_data *)devfreq->data;
> >>> +	int ret;
> >>> +
> >>> +	/*
> >>> +	 * If the devfreq device with passive governor has the specific method
> >>> +	 * to determine the next frequency, should use the get_target_freq()
> >>> +	 * of struct devfreq_passive_data.
> >>> +	 */
> >>> +	if (p_data->get_target_freq)
> >>> +		return p_data->get_target_freq(devfreq, freq);
> >>> +
> >>> +	switch (p_data->parent_type) {
> >>> +	case DEVFREQ_PARENT_DEV:
> >>> +		ret = get_target_freq_with_devfreq(devfreq, freq);
> >>> +		break;
> >>> +	case CPUFREQ_PARENT_DEV:
> >>> +		ret = get_target_freq_with_cpufreq(devfreq, freq);
> >>> +		break;
> >>> +	default:
> >>> +		ret = -EINVAL;
> >>> +		dev_err(&devfreq->dev, "Invalid parent type\n");
> >>> +		break;
> >>> +	}
> >>> +
> >>> +	return ret;
> >>> +}
> >>> +
> >>>  static int update_devfreq_passive(struct devfreq *devfreq, unsigned long freq)
> >>>  {
> >>>  	int ret;
> >>> @@ -156,6 +255,140 @@ static int devfreq_passive_notifier_call(struct notifier_block *nb,
> >>>  	return NOTIFY_DONE;
> >>>  }
> >>>  
> >>> +static int cpufreq_passive_notifier_call(struct notifier_block *nb,
> >>> +					 unsigned long event, void *ptr)
> >>> +{
> >>> +	struct devfreq_passive_data *data =
> >>> +			container_of(nb, struct devfreq_passive_data, nb);
> >>> +	struct devfreq *devfreq = (struct devfreq *)data->this;
> >>> +	struct devfreq_cpu_state *cpu_state;
> >>> +	struct cpufreq_freqs *freq = ptr;
> >>
> >> How about changing 'freq' to 'cpu_freqs'?
> >>
> >> In the drivers/cpufreq/cpufreq.c, use 'freqs' name indicating
> >> the instance of 'struct cpufreq_freqs'. And in order to
> >> identfy, how about adding 'cpu_' prefix for variable name?
> >>
> >>> +	unsigned int current_freq;
> >>
> >> Need to define curr_freq with 'unsigned long' type
> >> and better to use 'curr_freq' variable name.
> > It is good to change current_freq to curr_freq, but why should it us
> > 'unsigned long'?
> > I think it is 'unsigned int'.
> 
> I think that 'curr_freq' is proper. Yes, it is 'unsigned int'.
> When you changing the cpu frequency to device frequency,
> recommend to handle them between unsigned int and unsigned long.
> 

Got it.

> >>
> >>> +	int ret;
> >>> +
> >>> +	if (event != CPUFREQ_POSTCHANGE || !freq ||
> >>> +	    !data->cpu_state[freq->policy->cpu])
> >>> +		return 0;
> >>> +
> >>> +	cpu_state = data->cpu_state[freq->policy->cpu];
> >>> +	if (cpu_state->freq == freq->new)
> >>> +		return 0;
> >>> +
> >>> +	/* Backup current freq and pre-update cpu state freq*/
> >>> +	current_freq = cpu_state->freq;
> >>> +	cpu_state->freq = freq->new;
> >>> +
> >>> +	mutex_lock(&devfreq->lock);
> >>> +	ret = update_devfreq(devfreq);
> >>> +	mutex_unlock(&devfreq->lock);
> >>> +	if (ret) {
> >>> +		cpu_state->freq = current_freq;
> >>> +		dev_err(&devfreq->dev, "Couldn't update the frequency.\n");
> >>> +		return ret;
> >>> +	}
> >>> +
> >>> +	return 0;
> >>> +}
> >>> +
> >>> +static int cpufreq_passive_register(struct devfreq_passive_data **p_data)
> >>> +{
> >>> +	struct devfreq_passive_data *data = *p_data;
> >>> +	struct devfreq *devfreq = (struct devfreq *)data->this;
> >>> +	struct device *dev = devfreq->dev.parent;
> >>> +	struct opp_table *opp_table = NULL;
> >>> +	struct devfreq_cpu_state *state;
> >>
> >> For the readability, I thinkt 'cpu_state' is proper instead of 'state'.
> > Get it.
> >>
> >>> +	struct cpufreq_policy *policy;
> >>> +	struct device *cpu_dev;
> >>> +	unsigned int cpu;
> >>> +	int ret;
> >>> +
> >>> +	get_online_cpus();
> >>
> >> Add blank line.
> > Get it.
> >>
> >>> +	data->nb.notifier_call = cpufreq_passive_notifier_call;
> >>> +	ret = cpufreq_register_notifier(&data->nb,
> >>> +					CPUFREQ_TRANSITION_NOTIFIER);
> >>> +	if (ret) {
> >>> +		dev_err(dev, "Couldn't register cpufreq notifier.\n");
> >>> +		data->nb.notifier_call = NULL;
> >>> +		goto out;
> >>> +	}
> >>> +
> >>> +	/* Populate devfreq_cpu_state */
> >>> +	for_each_online_cpu(cpu) {
> >>> +		if (data->cpu_state[cpu])
> >>> +			continue;
> >>> +
> >>> +		policy = cpufreq_cpu_get(cpu);
> >>
> >> cpufreq_cpu_get() might return 'NULL'. I think you need to handle
> >> return value as following:
> >>
> >> 		if (!policy) {
> >> 			ret = -EINVAL;
> >> 			goto out;
> >> 		} else if (PTR_ERR(policy) == -EPROBE_DEFER) {
> >> 			goto out;
> >> 		} else if (IS_ERR(policy) {
> >> 			ret = PTR_ERR(policy);
> >> 			dev_err(dev, "Couldn't get the cpufreq_poliy.\n");
> >> 			goto out;
> >> 		}
> >>
> >> If cpufreq_cpu_get() return successfully, to do next.
> >> It reduces the one indentaion.
> >>
> >>
> > Get it.
> >>
> >>> +		if (policy) {
> >>> +			state = kzalloc(sizeof(*state), GFP_KERNEL);
> >>> +			if (!state) {
> >>> +				ret = -ENOMEM;
> >>> +				goto out;
> >>> +			}
> >>> +
> >>> +			cpu_dev = get_cpu_device(cpu);
> >>> +			if (!cpu_dev) {
> >>> +				dev_err(dev, "Couldn't get cpu device.\n");
> >>> +				ret = -ENODEV;
> >>> +				goto out;
> >>> +			}
> >>> +
> >>> +			opp_table = dev_pm_opp_get_opp_table(cpu_dev);
> >>> +			if (IS_ERR(devfreq->opp_table)) {
> >>> +				ret = PTR_ERR(opp_table);
> >>> +				goto out;
> >>> +			}
> >>> +
> >>> +			state->dev = cpu_dev;
> >>> +			state->opp_table = opp_table;
> >>> +			state->first_cpu = cpumask_first(policy->related_cpus);
> >>> +			state->freq = policy->cur;
> >>> +			state->min_freq = policy->cpuinfo.min_freq;
> >>> +			state->max_freq = policy->cpuinfo.max_freq;
> >>> +			data->cpu_state[cpu] = state;
> >>
> >> Add blank line.
> >>
> >>> +			cpufreq_cpu_put(policy);
> >>> +		} else {
> >>> +			ret = -EPROBE_DEFER;
> >>> +			goto out;
> >>> +		}
> >>> +	}
> >>
> >> Add blank line.
> > Get it.
> >>> +out:
> >>> +	put_online_cpus();
> >>> +	if (ret)
> >>> +		return ret;
> >>> +
> >>> +	/* Update devfreq */
> >>> +	mutex_lock(&devfreq->lock);
> >>> +	ret = update_devfreq(devfreq);
> >>> +	mutex_unlock(&devfreq->lock);
> >>> +	if (ret)
> >>> +		dev_err(dev, "Couldn't update the frequency.\n");
> >>> +
> >>> +	return ret;
> >>> +}
> >>> +
> >>> +static int cpufreq_passive_unregister(struct devfreq_passive_data **p_data)
> >>> +{
> >>> +	struct devfreq_passive_data *data = *p_data;
> >>> +	struct devfreq_cpu_state *cpu_state;
> >>> +	int cpu;
> >>> +
> >>> +	if (data->nb.notifier_call)
> >>> +		cpufreq_unregister_notifier(&data->nb,
> >>> +					    CPUFREQ_TRANSITION_NOTIFIER);
> >>> +
> >>> +	for_each_possible_cpu(cpu) {
> >>> +		cpu_state = data->cpu_state[cpu];
> >>> +		if (cpu_state) {
> >>> +			if (cpu_state->opp_table)
> >>> +				dev_pm_opp_put_opp_table(cpu_state->opp_table);
> >>> +			kfree(cpu_state);
> >>> +			cpu_state = NULL;
> >>> +		}
> >>> +	}
> >>> +
> >>> +	return 0;
> >>> +}
> >>> +
> >>>  static int devfreq_passive_event_handler(struct devfreq *devfreq,
> >>>  				unsigned int event, void *data)
> >>>  {
> >>> @@ -165,7 +398,7 @@ static int devfreq_passive_event_handler(struct devfreq *devfreq,
> >>>  	struct notifier_block *nb = &p_data->nb;
> >>>  	int ret = 0;
> >>>  
> >>> -	if (!parent)
> >>> +	if (p_data->parent_type == DEVFREQ_PARENT_DEV && !parent)
> >>>  		return -EPROBE_DEFER;
> >>
> >> If you modify the devfreq_passive_event_handler() as following,
> >> you can move this condition for DEVFREQ_PARENT_DEV into 
> >> (register|unregister)_parent_dev_notifier.
> >>
> >> 	switch (event) {                                                                                  
> >> 	case DEVFREQ_GOV_START:                                               
> >> 		ret = register_parent_dev_notifier(p_data);
> >> 		break;
> >> 	case DEVFREQ_GOV_STOP:                                             
> >> 		ret = unregister_parent_dev_notifier(p_data);
> >> 		break;
> >> 	default: 
> >> 		ret = -EINVAL;
> >> 		break;
> >> 	}
> >>                                                                                               
> >> 	return ret;
> >>
> > Get it.
> >>>  
> >>>  	switch (event) {
> >>> @@ -173,13 +406,24 @@ static int devfreq_passive_event_handler(struct devfreq *devfreq,
> >>>  		if (!p_data->this)
> >>>  			p_data->this = devfreq;
> >>>  
> >>> -		nb->notifier_call = devfreq_passive_notifier_call;
> >>> -		ret = devfreq_register_notifier(parent, nb,
> >>> -					DEVFREQ_TRANSITION_NOTIFIER);
> >>> +		if (p_data->parent_type == DEVFREQ_PARENT_DEV) {
> >>> +			nb->notifier_call = devfreq_passive_notifier_call;
> >>> +			ret = devfreq_register_notifier(parent, nb,
> >>> +						DEVFREQ_TRANSITION_NOTIFIER);
> >>> +		} else if (p_data->parent_type == CPUFREQ_PARENT_DEV) {
> >>> +			ret = cpufreq_passive_register(&p_data);
> >>
> >> I think that we better to collect the code related to notifier registration
> >> into one function like devfreq_pass_register_notifier() instead of
> >> cpufreq_passive_register() as following: I think it is more simple and readable.
> >>
> >> If you have more proper function name of register_parent_dev_notifier,
> >> please give your opinion.
> >>
> >> 	int register_parent_dev_notifier(struct devfreq_passive_data **p_data)
> >> 		switch (p_data->parent_type) {
> >> 		case DEVFREQ_PARENT_DEV:
> >> 			nb->notifier_call = devfreq_passive_notifier_call;
> >> 			ret = devfreq_register_notifier(parent, nb,
> >> 			break;
> >> 		case CPUFREQ_PARENT_DEV:
> >> 			cpufreq_register_notifier(...)
> >> 			...
> >> 			break;
> >> 		}
> > Not fully understanding.
> > Do you mean expanding cpufreq_passive_register()?
> 
> Yes and rename it for both cpufreq and devfreq.
> 
> > I think leave it in function will be with clean for this code segment.
> 
> I want that one function handle the notifier register
> for both cpufreq and devfreq so that we make it more simply as following:
> On the step hanling the governor event, don't need to consider
> the type of parent device of devfreq deivce with this style.
> 
> 	case DEVFREQ_GOV_START:
> 		ret = register_notifier(...);
> 		break;
> 	case DEVFREQ_GOV_STOP:
> 		ret = unregister_notifier(...);
> 		break;
> 

Got it.
I will call the same function register_parent_dev_notifier() in case
DEVFREQ_GOV_START, checking parent_type and doing corresponding jobs
inside register_parent_dev_notifier()

> > 
> >> 		
> >>
> >>> +		} else {
> >>> +			ret = -EINVAL;
> >>> +		}
> >>>  		break;
> >>>  	case DEVFREQ_GOV_STOP:
> >>> -		WARN_ON(devfreq_unregister_notifier(parent, nb,
> >>> -					DEVFREQ_TRANSITION_NOTIFIER));
> >>> +		if (p_data->parent_type == DEVFREQ_PARENT_DEV)
> >>> +			WARN_ON(devfreq_unregister_notifier(parent, nb,
> >>> +						DEVFREQ_TRANSITION_NOTIFIER));
> >>> +		else if (p_data->parent_type == CPUFREQ_PARENT_DEV)
> >>> +			cpufreq_passive_unregister(&p_data);
> >>> +		else
> >>> +			ret = -EINVAL;
> >>
> >> ditto. unregister_parent_dev_notifier(struct devfreq_passive_data **p_data)
> > Get it.
> 
> ditto. As I aboved commented.
> 
> >>
> >>>  		break;
> >>>  	default:
> >>>  		break;
> >>> diff --git a/include/linux/devfreq.h b/include/linux/devfreq.h
> >>> index a4b19d593151..04ce576fd6f1 100644
> >>> --- a/include/linux/devfreq.h
> >>> +++ b/include/linux/devfreq.h
> >>> @@ -278,6 +278,32 @@ struct devfreq_simple_ondemand_data {
> >>>  
> >>>  #if IS_ENABLED(CONFIG_DEVFREQ_GOV_PASSIVE)
> >>>  /**
> >>> + * struct devfreq_cpu_state - holds the per-cpu state
> >>> + * @freq:	the current frequency of the cpu.
> >>> + * @min_freq:	the min frequency of the cpu.
> >>> + * @max_freq:	the max frequency of the cpu.
> >>> + * @first_cpu:	the cpumask of the first cpu of a policy.
> >>> + * @dev:	reference to cpu device.
> >>> + * @opp_table:	reference to cpu opp table.
> >>> + *
> >>> + * This structure stores the required cpu_state of a cpu.
> >>> + * This is auto-populated by the governor.
> >>> + */
> >>> +struct devfreq_cpu_state {> +	unsigned int freq;
> >>
> >> It is better to change from 'freq' to 'curr_freq'
> >> for more correct expression.
> > Get it.
> >>
> >>> +	unsigned int min_freq;
> >>> +	unsigned int max_freq;
> >>> +	unsigned int first_cpu;
> >>> +	struct device *dev;
> >>
> >> How about changing the name 'dev' to 'cpu_dev'?
> > Okay.
> >>
> >>
> >>> +	struct opp_table *opp_table;
> >>> +};
> >>
> >> devfreq_cpu_state is only handled by within driver/devfreq/governor_passive.c.
> >>
> >> So, you can move it into drivers/devfreq/governor_passive.c
> >> and just add the definition into include/linux/devfreq.h as following:
> >> It is able to prevent the access of variable of 'struct devfreq_cpu_state'
> >> outside.
> >>
> >> 	struct devfreq_cpu_state;
> > Get it.
> >>
> >>> +
> >>> +enum devfreq_parent_dev_type {
> >>> +	DEVFREQ_PARENT_DEV,
> >>> +	CPUFREQ_PARENT_DEV,
> >>> +};
> >>> +
> >>> +/**
> >>>   * struct devfreq_passive_data - ``void *data`` fed to struct devfreq
> >>>   *	and devfreq_add_device
> >>>   * @parent:	the devfreq instance of parent device.
> >>> @@ -288,13 +314,15 @@ struct devfreq_simple_ondemand_data {
> >>>   *			using governors except for passive governor.
> >>>   *			If the devfreq device has the specific method to decide
> >>>   *			the next frequency, should use this callback.
> >>> - * @this:	the devfreq instance of own device.
> >>> - * @nb:		the notifier block for DEVFREQ_TRANSITION_NOTIFIER list
> >>> + * @parent_type		parent type of the device
> >>
> >> Need to add ':' at the end of word. -> "parent_type:".
> >>
> >>> + * @this:		the devfreq instance of own device.
> >>> + * @nb:			the notifier block for DEVFREQ_TRANSITION_NOTIFIER list
> >>
> >> I knew that you make them with same indentation.
> >> But, actually, it is not related to this patch like clean-up code.
> >> Even if it is not pretty, you better to don't touch 'this' and 'nb' indentaion.
> > Get it.
> >>
> >>> + * @cpu_state:		the state min/max/current frequency of all online cpu's
> >>>   *
> >>>   * The devfreq_passive_data have to set the devfreq instance of parent
> >>>   * device with governors except for the passive governor. But, don't need to
> >>> - * initialize the 'this' and 'nb' field because the devfreq core will handle
> >>> - * them.
> >>> + * initialize the 'this', 'nb' and 'cpu_state' field because the devfreq core
> >>> + * will handle them.
> >>>   */
> >>>  struct devfreq_passive_data {
> >>>  	/* Should set the devfreq instance of parent device */
> >>> @@ -303,9 +331,13 @@ struct devfreq_passive_data {
> >>>  	/* Optional callback to decide the next frequency of passvice device */
> >>>  	int (*get_target_freq)(struct devfreq *this, unsigned long *freq);
> >>>  
> >>> +	/* Should set the type of parent device */
> >>> +	enum devfreq_parent_dev_type parent_type;
> >>> +
> >>>  	/* For passive governor's internal use. Don't need to set them */
> >>>  	struct devfreq *this;
> >>>  	struct notifier_block nb;
> >>> +	struct devfreq_cpu_state *cpu_state[NR_CPUS];
> >>>  };
> >>>  #endif
> >>>  
> >>>
> >>
> >>
> > 
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
