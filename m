Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 274558E4B5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 08:00:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jsJzT7besz0hL0J3/9BbAEB8e20XC39JJN55bEEEyMs=; b=WhEck1vlaANCoc
	8kFT484tulHf79lDojc+9v/n0DdhtC0H+OOR6WvLz+JhbfMLJ617p6iHsf11iTvjB90V0A9MeJxlV
	D7/xdL/az+XJ0X8m+z8Npt7NJLoBeWN6OO9++5rlbaU9mJbL/wYD907q0enRYRyIM6bUkjxSc29a/
	b9EiPDu9YWVVlmHpBqQ4CUjvEYpnTbnLt5cIdhUcmXm/8KvJvRMGDi2fsna4OoN3H68DZqIZBVrHM
	tt+Tr/GVlDUkK1pNuolv9vVEmErpqnEOzeDURO6tsB3f2S1T1gPPMSplCKLFhDnekEc9plj46ahLr
	mS30DWssnzel+i+OUafA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy8oQ-0004z9-Ai; Thu, 15 Aug 2019 06:00:38 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy8o9-0004xx-8r; Thu, 15 Aug 2019 06:00:22 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 23:00:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,388,1559545200"; d="scan'208";a="352148825"
Received: from pipin.fi.intel.com (HELO pipin) ([10.237.72.175])
 by orsmga005.jf.intel.com with ESMTP; 14 Aug 2019 23:00:17 -0700
From: Felipe Balbi <balbi@kernel.org>
To: Vicente Bergas <vicencb@gmail.com>
Subject: Re: kexec on rk3399
In-Reply-To: <4fc3e5b5-31fe-41f6-8031-b37454f21437@gmail.com>
References: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
 <c6993a1e-6fc2-44ab-b59e-152142e2ff4d@gmail.com> <87v9uzaocj.fsf@gmail.com>
 <4fc3e5b5-31fe-41f6-8031-b37454f21437@gmail.com>
Date: Thu, 15 Aug 2019 09:00:16 +0300
Message-ID: <87sgq3t1cf.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_230021_355232_89FA40F5 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-usb@vger.kernel.org, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi,

Vicente Bergas <vicencb@gmail.com> writes:
>> Vicente Bergas <vicencb@gmail.com> writes:
>>> On Monday, July 22, 2019 4:31:27 PM CEST, Vicente Bergas wrote:
>>>> Hi, i have been running linux on rk3399 booted with kexec fine until 5.2
>>>> From 5.2 onwards, there are memory corruption issues as reported here:
>>>> http://lkml.iu.edu/hypermail/linux/kernel/1906.2/07211.html
>>>> kexec has been identified as the principal reason for the issues.
>>>> 
>>>> It turns out that kexec has never worked reliably on this platform, ...
>>> 
>>> Thank you all for your suggestions on where the issue could be.
>>> 
>>> It seems that it was the USB driver.
>>> Now using v5.2.8 booted with kexec from v5.2.8 with a workaround and
>>> so far so good. It is being tested on the Sapphire board.
>>> 
>>> The workaround is:
>>> --- a/drivers/usb/dwc3/dwc3-of-simple.c
>>> +++ b/drivers/usb/dwc3/dwc3-of-simple.c
>>> @@ -133,6 +133,13 @@
>>>  	return 0;
>>>  }
>>>  
>>> +static void dwc3_of_simple_shutdown(struct platform_device *pdev)
>>> +{
>>> +	struct dwc3_of_simple *simple = platform_get_drvdata(pdev);
>>> +
>>> +	reset_control_assert(simple->resets);
>>> +}
>>> +
>>>  static int __maybe_unused dwc3_of_simple_runtime_suspend(struct device 
>>> *dev)
>>>  {
>>>  	struct dwc3_of_simple	*simple = dev_get_drvdata(dev);
>>> @@ -190,6 +197,7 @@
>>>  static struct platform_driver dwc3_of_simple_driver = {
>>>  	.probe		= dwc3_of_simple_probe,
>>>  	.remove		= dwc3_of_simple_remove,
>>> +	.shutdown	= dwc3_of_simple_shutdown,
>>>  	.driver		= {
>>>  		.name	= "dwc3-of-simple",
>>>  		.of_match_table = of_dwc3_simple_match,
>>> 
>>> If this patch is OK after review i can resubmit it as a pull request.
>>
>> not a pull request, just send a patch using git send-email
>>
>>> Should a similar change be applied to drivers/usb/dwc3/core.c ?
>>
>> Is it necessary? We haven't had any bug reports regarding that. Also, if
>> we have reset control support in the core driver, why do we need it in
>> of_simple? Seems like of_simple could just rely on what core does.
>
> the workaround has been tested patching only core.c with
> --- a/drivers/usb/dwc3/core.c
> +++ b/drivers/usb/dwc3/core.c
> @@ -1561,6 +1561,13 @@
>  	return 0;
>  }
>  
> +static void dwc3_shutdown(struct platform_device *pdev)
> +{
> +	struct dwc3 *dwc = platform_get_drvdata(pdev);
> +
> +	reset_control_assert(dwc->reset);
> +}
> +
>  #ifdef CONFIG_PM
>  static int dwc3_core_init_for_resume(struct dwc3 *dwc)
>  {
> @@ -1866,6 +1873,7 @@
>  static struct platform_driver dwc3_driver = {
>  	.probe		= dwc3_probe,
>  	.remove		= dwc3_remove,
> +	.shutdown	= dwc3_shutdown,
>  	.driver		= {
>  		.name	= "dwc3",
>  		.of_match_table	= of_match_ptr(of_dwc3_match),
>
> and leaving dwc3-of-simple.c as is, the issue persisted.

That's because your reset controller is not passed to dwc3 core, only to
your glue layer.

-- 
balbi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
