Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD441EBA6B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 13:31:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A+W/F+N5HjJshbH2sLipCsbjEsSlhJJqUJ28nexAvqs=; b=X6f2Hy9Lt87kXwdOsEJ9c0XC9
	EnpEsqxPcvnyolb9cZZKbWwxP4UymdT/pxrdvQ1bDsgcpHW78Urc/2HeFqcRxOKEL4ZElCp8gumxF
	C9hzFTz0H0PUZ3Px8Jl6KZlEnTP+IBZLH8RKfBYOOLKhtojGgLaLLzKnS0ikCbDTRrACu06KtCrxy
	3JI+g5dWTkMnyujW8tWKWjV/jXi+BZ8BheMEQZr6HG8wKulxIVQc7btkHO6DGDpPxvDIq2ZJrRgSm
	+vTxKEYv/iflHmewD8E28o0+40HBA6ZXqQiDtwkq1Q7kFQ03qpaEzXNhXep/XI8XMo/6xdB+YWZoO
	1REWVdc9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg591-0001Ap-LK; Tue, 02 Jun 2020 11:31:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg58v-00019z-Op; Tue, 02 Jun 2020 11:31:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B08A931B;
 Tue,  2 Jun 2020 04:31:37 -0700 (PDT)
Received: from [10.37.12.87] (unknown [10.37.12.87])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 54B5E3F52E;
 Tue,  2 Jun 2020 04:31:27 -0700 (PDT)
Subject: Re: [PATCH v8 4/8] PM / EM: add support for other devices than CPUs
 in Energy Model
To: Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-omap@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-imx@nxp.com
References: <20200527095854.21714-1-lukasz.luba@arm.com>
 <20200527095854.21714-5-lukasz.luba@arm.com>
 <d45e5592-8e11-858b-d3a3-2ec9ce1d1f54@linaro.org>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <7201e161-6952-6e28-4036-bd0f0353ec30@arm.com>
Date: Tue, 2 Jun 2020 12:31:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <d45e5592-8e11-858b-d3a3-2ec9ce1d1f54@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_043141_892605_808441E9 
X-CRM114-Status: GOOD (  18.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org,
 viresh.kumar@linaro.org, liviu.dudau@arm.com, bjorn.andersson@linaro.org,
 bsegall@google.com, festevam@gmail.com, mka@chromium.org, robh@kernel.org,
 amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com, khilman@kernel.org,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com, mgorman@suse.de,
 rui.zhang@intel.com, alyssa.rosenzweig@collabora.com, orjan.eide@arm.com,
 daniel@ffwll.ch, b.zolnierkie@samsung.com, s.hauer@pengutronix.de,
 rostedt@goodmis.org, matthias.bgg@gmail.com, Dietmar.Eggemann@arm.com,
 airlied@linux.ie, tomeu.vizoso@collabora.com, qperret@google.com,
 sboyd@kernel.org, rdunlap@infradead.org, rjw@rjwysocki.net, agross@kernel.org,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,

On 6/1/20 10:44 PM, Daniel Lezcano wrote:
> On 27/05/2020 11:58, Lukasz Luba wrote:
>> Add support for other devices than CPUs. The registration function
>> does not require a valid cpumask pointer and is ready to handle new
>> devices. Some of the internal structures has been reorganized in order to
>> keep consistent view (like removing per_cpu pd pointers).
>>
>> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
>> ---
> 
> [ ... ]
> 
>>   }
>>   EXPORT_SYMBOL_GPL(em_register_perf_domain);
>> +
>> +/**
>> + * em_dev_unregister_perf_domain() - Unregister Energy Model (EM) for a device
>> + * @dev		: Device for which the EM is registered
>> + *
>> + * Try to unregister the EM for the specified device (but not a CPU).
>> + */
>> +void em_dev_unregister_perf_domain(struct device *dev)
>> +{
>> +	if (IS_ERR_OR_NULL(dev) || !dev->em_pd)
>> +		return;
>> +
>> +	if (_is_cpu_device(dev))
>> +		return;
>> +
>> +	mutex_lock(&em_pd_mutex);
> 
> Is the mutex really needed?

I just wanted to align this unregister code with register. Since there
is debugfs dir lookup and the device's EM existence checks I thought it
wouldn't harm just to lock for a while and make sure the registration
path is not used. These two paths shouldn't affect each other, but with
modules loading/unloading I wanted to play safe.
I can change it maybe to just dmb() and the end of the function if it's
a big performance problem in this unloading path. What do you think?

> 
> If this function is called that means there is no more user of the
> em_pd, no?

True, that EM users should already be unregistered i.e. thermal cooling.

> 
>> +	em_debug_remove_pd(dev);
>> +
>> +	kfree(dev->em_pd->table);
>> +	kfree(dev->em_pd);
>> +	dev->em_pd = NULL;
>> +	mutex_unlock(&em_pd_mutex);
>> +}
>> +EXPORT_SYMBOL_GPL(em_dev_unregister_perf_domain);
>>
> 
> 

Thank you for reviewing this.

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
