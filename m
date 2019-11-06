Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5D8F1FE0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 21:28:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yCinvx5KZohdNuxVDqW0yB67HZo/xnqdvmed5jQvzLw=; b=I993I3SHi7AdQS
	+WQ2vEFeSlBcEtHnd3DrbZ5JKj9eDG+sd2M3B3SGkpBOAFppeyHFanVBQ0cVaZlyV9KJOYqiyETPW
	KKLicGdxJSiEPZCyvqkJ34sRkKyW48cE2peIliBwBiSfBQkmumbfKQHwTQRbZciUUx8tiqY40okFQ
	9EBzUKAYUb+OaUeAYCTHmBsHM8XVdm6Mt0aRjR9HbBBKGLzT/SvVv/ujOw9xebmA7iiNItvnZiCvI
	bJyYxvjFK1Fch8Ku+eR4vTe+UMg7GoRzbNhxCHxRAOGWf26B5IJD88ZlF5sUKG9ZZvHN3OnmR4mHl
	tzHJQTzmEuypOHrz+G3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSRur-0008El-Po; Wed, 06 Nov 2019 20:28:33 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSRug-0007vz-Dt
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 20:28:24 +0000
Received: from [IPv6:2a00:5f00:102:0:5c62:8eff:fefa:67] (unknown
 [IPv6:2a00:5f00:102:0:5c62:8eff:fefa:67])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: gtucker)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 624032902CE;
 Wed,  6 Nov 2019 20:28:19 +0000 (GMT)
Subject: Re: [PATCH] gpio: xgs-iproc: Fix section mismatch on device tree
 match table
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
 "yoshihiro.shimoda.uh@renesas.com" <yoshihiro.shimoda.uh@renesas.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>
References: <20191105124915.34100-1-broonie@kernel.org>
 <TYAPR01MB45442B7135422BA8D088E29CD8790@TYAPR01MB4544.jpnprd01.prod.outlook.com>
 <7057fc47ded887fb2780332739afba53e3c33e4a.camel@alliedtelesis.co.nz>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <0ebb6b2c-52d4-bb53-cb85-1a97adde9249@collabora.com>
Date: Wed, 6 Nov 2019 20:28:16 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <7057fc47ded887fb2780332739afba53e3c33e4a.camel@alliedtelesis.co.nz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_122822_749290_6D26379C 
X-CRM114-Status: GOOD (  21.10  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/11/2019 19:49, Chris Packham wrote:
> (adding Guillamume),
> 
> On Wed, 2019-11-06 at 07:08 +0000, Yoshihiro Shimoda wrote:
>> Hi Mark,
>>
>>> From: Mark Brown, Sent: Tuesday, November 5, 2019 9:49 PM
>>>
>>> The table of devicetree identifiers is annotated as __initconst
>>> indicating that it can be discarded after kernel boot but it is
>>> referenced from the driver struct which has no init annotation leading
>>> to a linker warning:
>>>
>>> WARNING: vmlinux.o(.data+0x82d58): Section mismatch in reference from the variable bcm_iproc_gpio_driver to the
>>> variable .init.rodata:bcm_iproc_gpio_of_match
>>> The variable bcm_iproc_gpio_driver references
>>> the variable __initconst bcm_iproc_gpio_of_match
>>>
>>> Since drivers can be probed after init the lack of annotation on the
>>> driver struct is correct so remove the annotation from the match table.
>>>
>>> Signed-off-by: Mark Brown <broonie@kernel.org>
>>
>> Thank you for the patch! Without this patch, I had encountered another
>> issue which my environment caused a panic when I tried to install a usb host
>> driver after booted [1]. But, I could resolved the issue after
>> I applied this patch. Also, I confirmed this patch could resolved the warning.
>>
>> So,
>> Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
>> Tested-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
>>
>> Best regards,
>> Yoshihiro Shimoda
>>
>> ---
>> [1]
>> [  146.541188] Unable to handle kernel paging request at virtual address ffff800011f73540
>> [  146.549099] Mem abort info:
>> [  146.551885]   ESR = 0x96000007
>> [  146.554934]   EC = 0x25: DABT (current EL), IL = 32 bits
>> [  146.560238]   SET = 0, FnV = 0
>> [  146.563284]   EA = 0, S1PTW = 0
>> [  146.566416] Data abort info:
>> [  146.569289]   ISV = 0, ISS = 0x00000007
>> [  146.573117]   CM = 0, WnR = 0
>> [  146.576078] swapper pgtable: 4k pages, 48-bit VAs, pgdp=0000000049e4a000
>> [  146.582770] [ffff800011f73540] pgd=000000077ffff003, pud=000000077fffe003, pmd=000000077fffb003, pte=0000000000000000
>> [  146.593375] Internal error: Oops: 96000007 [#1] PREEMPT SMP
>> [  146.598944] CPU: 0 PID: 106 Comm: kworker/0:1 Not tainted 5.4.0-rc6-next-20191105 #87
>> [  146.606766] Hardware name: Renesas Salvator-X 2nd version board based on r8a7795 ES2.0+ (DT)
>> [  146.615209] Workqueue: events deferred_probe_work_func
>> [  146.620341] pstate: a0000085 (NzCv daIf -PAN -UAO)
>> [  146.625132] pc : __of_match_node.part.4+0x3c/0x78
>> [  146.629830] lr : of_match_node+0x3c/0x70
>> ...
>> ---
>>
>>
>> So,
> 
> I guess that kernelci failure[1] wasn't bogus after all. Sorry again
> for the hassle. And Mark, Yoshihiro thanks for the fix and test.

Thanks for the follow-up, I'll re-enable bisections in
lab-theobroma-systems then.

It's actually pretty hard to get false positives from this
automated bisection thanks to some checks run on the commit
found, to verify it does cause a boot failure and also verify
that when reverted the problem goes away.  This was a good
example :)

Guillaume

> [1] - 
> https://lore.kernel.org/lkml/5dbb2acf.1c69fb81.54ce2.2f48@mx.google.com/
> 
>>
>>
>> Best regards,
>> Yoshihiro Shimoda
>>
>>
>>> ---
>>>  drivers/gpio/gpio-xgs-iproc.c | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpio/gpio-xgs-iproc.c b/drivers/gpio/gpio-xgs-iproc.c
>>> index a3fdd95cc9e6..bb183f584d92 100644
>>> --- a/drivers/gpio/gpio-xgs-iproc.c
>>> +++ b/drivers/gpio/gpio-xgs-iproc.c
>>> @@ -299,7 +299,7 @@ static int __exit iproc_gpio_remove(struct platform_device *pdev)
>>>  	return 0;
>>>  }
>>>
>>> -static const struct of_device_id bcm_iproc_gpio_of_match[] __initconst = {
>>> +static const struct of_device_id bcm_iproc_gpio_of_match[] = {
>>>  	{ .compatible = "brcm,iproc-gpio-cca" },
>>>  	{}
>>>  };
>>> --
>>> 2.20.1
>>
>>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
