Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E56138B23
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 06:44:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2t/ta1HF15IF8zy33lzUCHa3WBJRvNLTF1+FPgBieIE=; b=uFTsuxhKhO5xU5VZ9y3cveNTL
	8hA785001Ps7A5RH0MQ6/FKU1f7Wi1gf82hGBVWW9hW2EyuJCqdvKrwD8eeYK40oN/Or0TqekdnTW
	8EhgeT009sscdCpabU3O+emg2pxfdwQUH9Nxak9iEQLsKxdg84wTcWxpmJ/Q+mVSlorVXu9rjXgrH
	PBz0FUT51KhkNhC1F74KET9JdJ/Mhd9rsRp6sQ7r4tSn1ycxPlLA7rHCZJmDROHGq81Z12hoeBjCv
	uyxq+xxJ8zgSTcTdBZjIrnb2ptdVzrJIgrRERZ2lmSCuEBCwQpuG6i5rwPzKfBPJnVtnLqwJoxU/R
	fdnTKdeig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqsWv-0006en-QU; Mon, 13 Jan 2020 05:44:49 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqsWm-0006eE-TJ
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 05:44:43 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1578894281; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=7ex4PkAYCCqdwDzq6FU5KQv6IouD49JO74n7E0v4kKo=;
 b=GCX9GvrYCQUMF5Uxx2F7xAshH2eHWwYuDg+WCxCg32FpWCN8P3wTgSL3DYyDrPWfbm1TZKlJ
 WZZLmtPToGadEgXCsDg6F8uioV/qzZvCcSqzbO++H1vBGR8qTJlJvocd0ep/h+P2s2s9ht4e
 Z86rWEv55CCZefkiPBQUgnffp8M=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e1c03bf.7f148a5b7298-smtp-out-n03;
 Mon, 13 Jan 2020 05:44:31 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 780DFC433A2; Mon, 13 Jan 2020 05:44:31 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id F3057C43383;
 Mon, 13 Jan 2020 05:44:29 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 13 Jan 2020 11:14:29 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH 2/2] drivers: edac: Add EDAC support for Kryo CPU caches
In-Reply-To: <20191230115030.GA30767@zn.tnic>
References: <cover.1575529553.git.saiprakash.ranjan@codeaurora.org>
 <0101016ed57a6559-46c6c649-db28-4945-a11c-7441b8e9ac5b-000000@us-west-2.amazonses.com>
 <20191230115030.GA30767@zn.tnic>
Message-ID: <585db411bc542bf3f326627b7390e0ca@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_214441_774412_D2ED94BF 
X-CRM114-Status: GOOD (  26.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, psodagud@codeaurora.org,
 linux-arm-msm@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 tsoni@codeaurora.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>, James Morse <james.morse@arm.com>,
 Evan Green <evgreen@chromium.org>, Robert Richter <rrichter@marvell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Boris,

Thanks for the review comments.

On 2019-12-30 17:20, Borislav Petkov wrote:
> On Thu, Dec 05, 2019 at 09:53:18AM +0000, Sai Prakash Ranjan wrote:
>> Kryo{3,4}XX CPU cores implement RAS extensions to support
>> Error Correcting Code(ECC). Currently all Kryo{3,4}XX CPU
>> cores (gold/silver a.k.a big/LITTLE) support ECC via RAS.
> 
> via RAS what? ARM64_RAS_EXTN?
> 
> In any case, this needs James to look at and especially if there's some
> ARM-generic functionality in there which should be shared, of course.
> 

Yes it is ARM64_RAS_EXTN and I have been hoping if James can provide the 
feedback,
it has been some time now since I posted this out.

>> This adds an interrupt based driver for those CPUs and
> 
> s/This adds/Add/
> 

Will correct.

>> +
>> +config EDAC_QCOM_KRYO_POLL
>> +	depends on EDAC_QCOM_KRYO
>> +	bool "Poll on Kryo ECC registers"
>> +	help
>> +	  This option chooses whether or not you want to poll on the Kryo 
>> ECC
>> +	  registers. When this is enabled, the polling rate can be set as a
>> +	  module parameter. By default, it will call the polling function 
>> every
>> +	  second.
> 
> Why is this a separate option and why should people use that?
> 
> Can the polling/irq be switched automatically?
> 

No it cannot be switched automatically. It is used in case some SoCs do 
not support an irq based mechanism for EDAC.
But I am contradicting myself because I am telling that atleast one 
interrupt should be specified in bindings,
so it is best if I drop this polling option for now.

>> +
>>  config EDAC_ASPEED
>>  	tristate "Aspeed AST 2500 SoC"
>>  	depends on MACH_ASPEED_G5
>> diff --git a/drivers/edac/Makefile b/drivers/edac/Makefile
>> index d77200c9680b..29edcfa6ec0e 100644
>> --- a/drivers/edac/Makefile
>> +++ b/drivers/edac/Makefile
>> @@ -85,5 +85,6 @@ obj-$(CONFIG_EDAC_SYNOPSYS)		+= synopsys_edac.o
>>  obj-$(CONFIG_EDAC_XGENE)		+= xgene_edac.o
>>  obj-$(CONFIG_EDAC_TI)			+= ti_edac.o
>>  obj-$(CONFIG_EDAC_QCOM)			+= qcom_edac.o
>> +obj-$(CONFIG_EDAC_QCOM_KRYO)		+= qcom_kryo_edac.o
> 
> What is the difference between this new driver and the qcom_edac one? 
> Can
> functionality be shared?
> 
> Should this new one be called simply kryo_edac instead?
> 

qcom_edac driver is for QCOM system cache(last level cache), it should 
be renamed to qcom_llcc_edac.c.
This new driver is for QCOM Kryo CPU core caches(L1,L2,L3).

Functionality cannot be shared as these two are different IP blocks and 
best kept separate.

>> +
>> +#define DRV_NAME		"qcom_kryo_edac"
>> +
>> +/*
>> + * ARM Cortex-A55, Cortex-A75, Cortex-A76 TRM Chapter B3.3
> 
> Chapter? Where? URL?
> 

I chose this because these TRMs are openly available and if you search 
for these above terms like
"Cortex-A76 TRM Chapter B3.3" in google, then the first search result 
will be the TRM pdf, otherwise
I would have to specify the long URL for the pdf and we do not know how 
long that URL link will be active.

>> +
>> +static const struct error_type err_type[] = {
>> +	{ edac_device_handle_ce, "Kryo L1 Corrected Error"	},
>> +	{ edac_device_handle_ue, "Kryo L1 Uncorrected Error"	},
>> +	{ edac_device_handle_ue, "Kryo L1 Deferred Error"	},
>> +	{ edac_device_handle_ce, "Kryo L2 Corrected Error"	},
>> +	{ edac_device_handle_ue, "Kryo L2 Uncorrected Error"	},
>> +	{ edac_device_handle_ue, "Kryo L2 Deferred Error"	},
>> +	{ edac_device_handle_ce, "L3 Corrected Error"		},
>> +	{ edac_device_handle_ue, "L3 Uncorrected Error"		},
>> +	{ edac_device_handle_ue, "L3 Deferred Error"		},
>> +};
>> +
> 
> All that is not really needed - you can put the whole error type
> detection and dumping in kryo_check_err_type() in nicely readable
> switch-case statement. No need for the function pointers and special
> structs.
> 

How is this not easily readable? If I put this in kryo_check_err_type, 
then
there will be nested switch which I think is not so great in terms of 
readability
since it will not fit in one screen and is just more lines of code.

>> +static struct edac_device_ctl_info __percpu *edac_dev;
>> +static struct edac_device_ctl_info *drv_edev_ctl;
>> +
>> +static const char *get_error_msg(u64 errxstatus)
>> +{
>> +	const struct error_record *rec;
>> +	u32 errxstatus_serr;
>> +
>> +	errxstatus_serr = FIELD_GET(KRYO_ERRXSTATUS_SERR, errxstatus);
>> +
>> +	for (rec = serror_record; rec->error_code; rec++) {
>> +		if (errxstatus_serr == rec->error_code)
>> +			return rec->error_msg;
>> +	}
>> +
>> +	return NULL;
>> +}
>> +
>> +static void dump_syndrome_reg(int error_type, int level,
>> +			      u64 errxstatus, u64 errxmisc,
>> +			      struct edac_device_ctl_info *edev_ctl)
>> +{
>> +	char msg[KRYO_EDAC_MSG_MAX];
>> +	const char *error_msg;
>> +	int cpu;
>> +
>> +	cpu = raw_smp_processor_id();
> 
> Why raw_?
> 

Because we will be calling smp_processor_id in preemptible context and 
if we enable CONFIG_DEBUG_PREEMPT,
we would get a nice backtrace.

[    3.747468] BUG: using smp_processor_id() in preemptible [00000000] 
code: swapper/0/1
[    3.755527] caller is qcom_kryo_edac_probe+0x138/0x2b8
[    3.760819] CPU: 2 PID: 1 Comm: swapper/0 Tainted: G S                
5.4.0-rc7-next-20191113-00009-g8666855d6a5b-dirty #107
[    3.772323] Hardware name: Qualcomm Technologies, Inc. SM8150 MTP 
(DT)
[    3.779030] Call trace:
[    3.781556]  dump_backtrace+0x0/0x158
[    3.785331]  show_stack+0x14/0x20
[    3.788741]  dump_stack+0xb0/0xf4
[    3.792164]  debug_smp_processor_id+0xd8/0xe0
[    3.796639]  qcom_kryo_edac_probe+0x138/0x2b8
[    3.801116]  platform_drv_probe+0x50/0xa8
[    3.805236]  really_probe+0x108/0x360
[    3.808999]  driver_probe_device+0x58/0x100
[    3.813304]  device_driver_attach+0x6c/0x78
[    3.817606]  __driver_attach+0xb0/0xf0
[    3.821459]  bus_for_each_dev+0x68/0xc8
[    3.825407]  driver_attach+0x20/0x28
[    3.829083]  bus_add_driver+0x160/0x1f0
[    3.833030]  driver_register+0x60/0x110
[    3.836976]  __platform_driver_register+0x40/0x48
[    3.841813]  qcom_kryo_edac_driver_init+0x18/0x20
[    3.846645]  do_one_initcall+0x58/0x1a0
[    3.850596]  kernel_init_freeable+0x19c/0x240
[    3.855075]  kernel_init+0x10/0x108
[    3.858665]  ret_from_fork+0x10/0x1c


>> +static int kryo_l1_l2_setup_irq(struct platform_device *pdev,
>> +				struct edac_device_ctl_info *edev_ctl)
>> +{
>> +	int cpu, errirq, faultirq, ret;
>> +
>> +	edac_dev = devm_alloc_percpu(&pdev->dev, *edac_dev);
>> +	if (!edac_dev)
>> +		return -ENOMEM;
>> +
>> +	for_each_possible_cpu(cpu) {
>> +		preempt_disable();
>> +		per_cpu(edac_dev, cpu) = edev_ctl;
>> +		preempt_enable();
>> +	}
> 
> That sillyness doesn't belong here, if at all.
> 

Sorry but I do not understand the sillyness here. Could you please 
explain?

> ...
> 
>> +static void kryo_poll_cache_error(struct edac_device_ctl_info 
>> *edev_ctl)
>> +{
>> +	if (!edev_ctl)
>> +		edev_ctl = drv_edev_ctl;
> 
> That's silly.
> 

Actually its not silly. In case, polling is enabled and on PM exit 
edev_ctl could be NULL.

>> +
>> +	on_each_cpu(kryo_check_l1_l2_ecc, edev_ctl, 1);
>> +	kryo_check_l3_scu_ecc(edev_ctl);
>> +}
> 
> ...
> 
>> +static int qcom_kryo_edac_probe(struct platform_device *pdev)
>> +{
>> +	struct edac_device_ctl_info *edev_ctl;
>> +	struct device *dev = &pdev->dev;
>> +	int ret;
>> +
>> +	qcom_kryo_edac_setup();
> 
> This function needs to have a return value saying whether it did setup
> the hw properly or not and the probe function needs to return here if
> not.

Ok will add a return check.

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
