Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B691F1981
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 14:59:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HofY05i/wguqcLrk/19XDakCW/wYAzbNKWM5tgCx4Jw=; b=bG1YgRBCcZHh+xpi0fnJ5ydyf
	dXa8JXiyC/NxU7ykiQRx0ocVi13rR98H/VYJH6t6WVlnZQaf5CVdlS9HSB5A8EORbLfat9dpefy7P
	RXU7RpLjzP0+NfTxSWbPBipZvwjD9lAsMcpOJzQwOVVTa7C2IJFJUuoLdSEybArTGcl4WfXiTpEHq
	piXatHNeBvH5nKlpZRPKLDi0WFULm4z/r6sXEGIly/hPvPN0MU7qhYQ19HnoNfbUKOKyT5HII1vXu
	gaUtVNsfN/PpjNC7jfSz2fS+VKkWEqYNa6xFNlhZY1k5BPuG4W0CfO06NoIjDecZE0MVMhvPF//83
	zrgC8b9+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiHNS-0002R3-IG; Mon, 08 Jun 2020 12:59:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiHNB-0002Ow-F4; Mon, 08 Jun 2020 12:59:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EAD0631B;
 Mon,  8 Jun 2020 05:59:28 -0700 (PDT)
Received: from [10.37.12.95] (unknown [10.37.12.95])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 73C403F52E;
 Mon,  8 Jun 2020 05:59:25 -0700 (PDT)
Subject: Re: [PATCH v8 4/8] PM / EM: add support for other devices than CPUs
 in Energy Model
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20200608115155.GY30374@kadam>
 <b347fb60-46d3-e59c-59fa-a2b10932fc49@arm.com> <20200608125127.GN22511@kadam>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <da0debe1-73da-33f1-c24e-154c2123c522@arm.com>
Date: Mon, 8 Jun 2020 13:59:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200608125127.GN22511@kadam>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_055929_595492_043CF1B3 
X-CRM114-Status: GOOD (  17.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kbuild-all@lists.01.org, lkp@intel.com, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, kbuild@lists.01.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 cw00.choi@samsung.com, linux-mediatek@lists.infradead.org, linux-imx@nxp.com,
 linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, Dan Carpenter <error27@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/8/20 1:51 PM, Dan Carpenter wrote:
> On Mon, Jun 08, 2020 at 01:34:37PM +0100, Lukasz Luba wrote:
>> Hi Dan,
>>
>> Thank you for your analyzes.
>>
>> On 6/8/20 12:51 PM, Dan Carpenter wrote:
>>> Hi Lukasz,
>>>
>>> I love your patch! Perhaps something to improve:
>>>
>>> url:    https://github.com/0day-ci/linux/commits/Lukasz-Luba/Add-support-for-devices-in-the-Energy-Model/20200527-180614
>>> base:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git linux-next
>>>
>>> config: i386-randconfig-m021-20200605 (attached as .config)
>>> compiler: gcc-9 (Debian 9.3.0-13) 9.3.0
>>>
>>> If you fix the issue, kindly add following tag as appropriate
>>> Reported-by: kernel test robot <lkp@intel.com>
>>> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
>>>
>>> smatch warnings:
>>> kernel/power/energy_model.c:316 em_dev_register_perf_domain() error: we previously assumed 'dev->em_pd' could be null (see line 277)
>>>
>>> # https://github.com/0day-ci/linux/commit/110d050cb7ba1c96e63ada498979d1fd99529be2
>>> git remote add linux-review https://github.com/0day-ci/linux
>>> git remote update linux-review
>>> git checkout 110d050cb7ba1c96e63ada498979d1fd99529be2
>>> vim +316 kernel/power/energy_model.c
>>>
>>> 0e294e607adaf3 Lukasz Luba     2020-05-27  262  int em_dev_register_perf_domain(struct device *dev, unsigned int nr_states,
>>> 110d050cb7ba1c Lukasz Luba     2020-05-27  263  				struct em_data_callback *cb, cpumask_t *cpus)
>>> 27871f7a8a341e Quentin Perret  2018-12-03  264  {
>>> 27871f7a8a341e Quentin Perret  2018-12-03  265  	unsigned long cap, prev_cap = 0;
>>> 110d050cb7ba1c Lukasz Luba     2020-05-27  266  	int cpu, ret;
>>> 27871f7a8a341e Quentin Perret  2018-12-03  267
>>> 110d050cb7ba1c Lukasz Luba     2020-05-27  268  	if (!dev || !nr_states || !cb)
>>> 27871f7a8a341e Quentin Perret  2018-12-03  269  		return -EINVAL;
>>> 27871f7a8a341e Quentin Perret  2018-12-03  270
>>> 27871f7a8a341e Quentin Perret  2018-12-03  271  	/*
>>> 27871f7a8a341e Quentin Perret  2018-12-03  272  	 * Use a mutex to serialize the registration of performance domains and
>>> 27871f7a8a341e Quentin Perret  2018-12-03  273  	 * let the driver-defined callback functions sleep.
>>> 27871f7a8a341e Quentin Perret  2018-12-03  274  	 */
>>> 27871f7a8a341e Quentin Perret  2018-12-03  275  	mutex_lock(&em_pd_mutex);
>>> 27871f7a8a341e Quentin Perret  2018-12-03  276
>>> 110d050cb7ba1c Lukasz Luba     2020-05-27 @277  	if (dev->em_pd) {
>>>                                                               ^^^^^^^^^^
>>> Check for NULL.
>>>
>>> 27871f7a8a341e Quentin Perret  2018-12-03  278  		ret = -EEXIST;
>>> 27871f7a8a341e Quentin Perret  2018-12-03  279  		goto unlock;
>>> 27871f7a8a341e Quentin Perret  2018-12-03  280  	}
>>> 27871f7a8a341e Quentin Perret  2018-12-03  281
>>> 110d050cb7ba1c Lukasz Luba     2020-05-27  282  	if (_is_cpu_device(dev)) {
>>> 110d050cb7ba1c Lukasz Luba     2020-05-27  283  		if (!cpus) {
>>> 110d050cb7ba1c Lukasz Luba     2020-05-27  284  			dev_err(dev, "EM: invalid CPU mask\n");
>>> 110d050cb7ba1c Lukasz Luba     2020-05-27  285  			ret = -EINVAL;
>>> 110d050cb7ba1c Lukasz Luba     2020-05-27  286  			goto unlock;
>>> 110d050cb7ba1c Lukasz Luba     2020-05-27  287  		}
>>> 110d050cb7ba1c Lukasz Luba     2020-05-27  288
>>> 110d050cb7ba1c Lukasz Luba     2020-05-27  289  		for_each_cpu(cpu, cpus) {
>>> 110d050cb7ba1c Lukasz Luba     2020-05-27  290  			if (em_cpu_get(cpu)) {
>>> 110d050cb7ba1c Lukasz Luba     2020-05-27  291  				dev_err(dev, "EM: exists for CPU%d\n", cpu);
>>> 110d050cb7ba1c Lukasz Luba     2020-05-27  292  				ret = -EEXIST;
>>> 110d050cb7ba1c Lukasz Luba     2020-05-27  293  				goto unlock;
>>> 110d050cb7ba1c Lukasz Luba     2020-05-27  294  			}
>>> 27871f7a8a341e Quentin Perret  2018-12-03  295  			/*
>>> 110d050cb7ba1c Lukasz Luba     2020-05-27  296  			 * All CPUs of a domain must have the same
>>> 110d050cb7ba1c Lukasz Luba     2020-05-27  297  			 * micro-architecture since they all share the same
>>> 110d050cb7ba1c Lukasz Luba     2020-05-27  298  			 * table.
>>> 27871f7a8a341e Quentin Perret  2018-12-03  299  			 */
>>> 8ec59c0f5f4966 Vincent Guittot 2019-06-17  300  			cap = arch_scale_cpu_capacity(cpu);
>>> 27871f7a8a341e Quentin Perret  2018-12-03  301  			if (prev_cap && prev_cap != cap) {
>>> 110d050cb7ba1c Lukasz Luba     2020-05-27  302  				dev_err(dev, "EM: CPUs of %*pbl must have the same capacity\n",
>>> 110d050cb7ba1c Lukasz Luba     2020-05-27  303  					cpumask_pr_args(cpus));
>>> 110d050cb7ba1c Lukasz Luba     2020-05-27  304
>>> 27871f7a8a341e Quentin Perret  2018-12-03  305  				ret = -EINVAL;
>>> 27871f7a8a341e Quentin Perret  2018-12-03  306  				goto unlock;
>>> 27871f7a8a341e Quentin Perret  2018-12-03  307  			}
>>> 27871f7a8a341e Quentin Perret  2018-12-03  308  			prev_cap = cap;
>>> 27871f7a8a341e Quentin Perret  2018-12-03  309  		}
>>> 110d050cb7ba1c Lukasz Luba     2020-05-27  310  	}
>>> 27871f7a8a341e Quentin Perret  2018-12-03  311
>>> 110d050cb7ba1c Lukasz Luba     2020-05-27  312  	ret = em_create_pd(dev, nr_states, cb, cpus);
>>>
>>>
>>> If it's a _is_cpu_device() then it iterates through a bunch of devices
>>> and sets up cpu_dev->em_pd for each.  Presumably one of the devices is
>>> "dev" or this would crash pretty early on in testing?
>>
>> Yes, all of the devices taken from 'cpus' mask will get the em_pd set
>> including the suspected @dev.
>> To calm down this static analyzer I can remove the 'else'
>> in line 204 to make 'dev->em_pd = pd' set always.
>> 199         if (_is_cpu_device(dev))
>> 200                 for_each_cpu(cpu, cpus) {
>> 201                         cpu_dev = get_cpu_device(cpu);
>> 202                         cpu_dev->em_pd = pd;
>> 203                 }
>> 204         else
>> 205                 dev->em_pd = pd;
>>
>>
>> Do you think it's a good solution and will work for this tool?
> 
> It's not about the tool...  Ignore the tool when it's wrong.  But I do
> think the code is slightly more clear without the else statement.
> 
> Arguments could be made either way.  Removing the else statement means
> we set dev->em_pd twice...  But I *personally* lean vaguely towards
> removing the else statement.  :P

Thanks, I will remove the else statement and add your 'Reported-by'

Regards,
Lukasz

> 
> That would make the warning go away as well.
> 
> regards,
> dan carpenter
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
