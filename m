Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D89F1F44
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 20:50:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hqIbV346JinN3yQqsnhyz6SRUxo5gjzYleQg9f5h8aM=; b=GHEBxtHshAJ0VM
	4pYyALMiQL5zPqF/ucGUpcthPDxq0n6lluUq9XTioRmgqzn0KYSXCk2XZ2Lr0wypWm1feKINb/1CW
	Zg2AItBheR9aNdSk1TyFJO7/KYNyH34l88pONlYBX9ZNJuP7xs0z6VERj3vaZiyiwfmDK7MnFXZw2
	mmfqhdKqH/WtRO4WP76ZlrzZPcet/xhSgT4k8PMulohPIGpJ72nkk8nvGE6Xa3U2o07DJdGZt+/Ha
	DQ3IjvyixgIShArCYj1yPEYI+q8w5zU9zFTKBoEuyxlUpCZSXvRgxCrZf/2lmleSOLnqGpZC6FKA4
	lpHvpNn91QfdQ3Gr+cmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSRJj-0000Bk-VF; Wed, 06 Nov 2019 19:50:11 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSRJT-0000BB-M5
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 19:49:58 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 5DCA98365A;
 Thu,  7 Nov 2019 08:49:47 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1573069787;
 bh=qMGdylTyjH/BzjIPsu4mVVVT3VTtcxgSf7MBXN6MV1M=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=b+dGUo26Vm642njRhSmiaoN8E/9bn35fI4qkrwMkz9QUJyS6dQL8pZ+tuE5P5iUYF
 F8R4xATAS/boYg80RYUNt84Zsr7mGTJXuyRng8D1WA+Iqd0V46x0nuDnctVWiqABLB
 np2tNNkQLJNDf5QCtsVluRIVs8NNYh+A0w8laLsQ4tBzUhf1s6eCLkUTI9vj2x87os
 s8h1Ufl3xQTMllJTiFgIiRH8dalzJ/XP6+oVw4AzjAy6GQIhqqGZJo5Jza2e1up2s1
 GTPjzHQxBxmsaRdClKlK/kuBYWVElXXjWyU5YH3BsxsszQ6N8ZLUWXZmksJaf889xm
 LlMuYY42UlA2w==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5dc323d90000>; Thu, 07 Nov 2019 08:49:45 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) with Microsoft SMTP Server
 (TLS) id 15.0.1156.6; Thu, 7 Nov 2019 08:49:47 +1300
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Thu, 7 Nov 2019 08:49:47 +1300
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: "guillaume.tucker@collabora.com" <guillaume.tucker@collabora.com>,
 "yoshihiro.shimoda.uh@renesas.com" <yoshihiro.shimoda.uh@renesas.com>,
 "broonie@kernel.org" <broonie@kernel.org>, "linus.walleij@linaro.org"
 <linus.walleij@linaro.org>, "bgolaszewski@baylibre.com"
 <bgolaszewski@baylibre.com>
Subject: Re: [PATCH] gpio: xgs-iproc: Fix section mismatch on device tree
 match table
Thread-Topic: [PATCH] gpio: xgs-iproc: Fix section mismatch on device tree
 match table
Thread-Index: AQHVk9d2GHMYQw+EyUqkZ/V+4uyDVad84EwAgADUxIA=
Date: Wed, 6 Nov 2019 19:49:46 +0000
Message-ID: <7057fc47ded887fb2780332739afba53e3c33e4a.camel@alliedtelesis.co.nz>
References: <20191105124915.34100-1-broonie@kernel.org>
 <TYAPR01MB45442B7135422BA8D088E29CD8790@TYAPR01MB4544.jpnprd01.prod.outlook.com>
In-Reply-To: <TYAPR01MB45442B7135422BA8D088E29CD8790@TYAPR01MB4544.jpnprd01.prod.outlook.com>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:f81e:1e86:b004:7754]
Content-ID: <44ABDBCC18A6CB4490B129FD6FBE0DD9@atlnz.lc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_114956_249984_1F02D543 
X-CRM114-Status: GOOD (  26.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

(adding Guillamume),

On Wed, 2019-11-06 at 07:08 +0000, Yoshihiro Shimoda wrote:
> Hi Mark,
> 
> > From: Mark Brown, Sent: Tuesday, November 5, 2019 9:49 PM
> > 
> > The table of devicetree identifiers is annotated as __initconst
> > indicating that it can be discarded after kernel boot but it is
> > referenced from the driver struct which has no init annotation leading
> > to a linker warning:
> > 
> > WARNING: vmlinux.o(.data+0x82d58): Section mismatch in reference from the variable bcm_iproc_gpio_driver to the
> > variable .init.rodata:bcm_iproc_gpio_of_match
> > The variable bcm_iproc_gpio_driver references
> > the variable __initconst bcm_iproc_gpio_of_match
> > 
> > Since drivers can be probed after init the lack of annotation on the
> > driver struct is correct so remove the annotation from the match table.
> > 
> > Signed-off-by: Mark Brown <broonie@kernel.org>
> 
> Thank you for the patch! Without this patch, I had encountered another
> issue which my environment caused a panic when I tried to install a usb host
> driver after booted [1]. But, I could resolved the issue after
> I applied this patch. Also, I confirmed this patch could resolved the warning.
> 
> So,
> Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> Tested-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> 
> Best regards,
> Yoshihiro Shimoda
> 
> ---
> [1]
> [  146.541188] Unable to handle kernel paging request at virtual address ffff800011f73540
> [  146.549099] Mem abort info:
> [  146.551885]   ESR = 0x96000007
> [  146.554934]   EC = 0x25: DABT (current EL), IL = 32 bits
> [  146.560238]   SET = 0, FnV = 0
> [  146.563284]   EA = 0, S1PTW = 0
> [  146.566416] Data abort info:
> [  146.569289]   ISV = 0, ISS = 0x00000007
> [  146.573117]   CM = 0, WnR = 0
> [  146.576078] swapper pgtable: 4k pages, 48-bit VAs, pgdp=0000000049e4a000
> [  146.582770] [ffff800011f73540] pgd=000000077ffff003, pud=000000077fffe003, pmd=000000077fffb003, pte=0000000000000000
> [  146.593375] Internal error: Oops: 96000007 [#1] PREEMPT SMP
> [  146.598944] CPU: 0 PID: 106 Comm: kworker/0:1 Not tainted 5.4.0-rc6-next-20191105 #87
> [  146.606766] Hardware name: Renesas Salvator-X 2nd version board based on r8a7795 ES2.0+ (DT)
> [  146.615209] Workqueue: events deferred_probe_work_func
> [  146.620341] pstate: a0000085 (NzCv daIf -PAN -UAO)
> [  146.625132] pc : __of_match_node.part.4+0x3c/0x78
> [  146.629830] lr : of_match_node+0x3c/0x70
> ...
> ---
> 
> 
> So,

I guess that kernelci failure[1] wasn't bogus after all. Sorry again
for the hassle. And Mark, Yoshihiro thanks for the fix and test.

[1] - 
https://lore.kernel.org/lkml/5dbb2acf.1c69fb81.54ce2.2f48@mx.google.com/

> 
> 
> Best regards,
> Yoshihiro Shimoda
> 
> 
> > ---
> >  drivers/gpio/gpio-xgs-iproc.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpio/gpio-xgs-iproc.c b/drivers/gpio/gpio-xgs-iproc.c
> > index a3fdd95cc9e6..bb183f584d92 100644
> > --- a/drivers/gpio/gpio-xgs-iproc.c
> > +++ b/drivers/gpio/gpio-xgs-iproc.c
> > @@ -299,7 +299,7 @@ static int __exit iproc_gpio_remove(struct platform_device *pdev)
> >  	return 0;
> >  }
> > 
> > -static const struct of_device_id bcm_iproc_gpio_of_match[] __initconst = {
> > +static const struct of_device_id bcm_iproc_gpio_of_match[] = {
> >  	{ .compatible = "brcm,iproc-gpio-cca" },
> >  	{}
> >  };
> > --
> > 2.20.1
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
