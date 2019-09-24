Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8450ABD2A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 21:28:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=InyfUeUqcaKkOWevsRgBFKbzuIc3SC2CRwfCvmVdtCU=; b=QCqyNjGY47jSDs
	B2j7Co21p/2bPsjKukjE/jFvf+b1BYsYYJZ4J68A/WhjL905yGlaq56dko+i3X9MOCqnPLB8b8O+3
	osRGmLkyfvMbzKTr1DXMtJ82jTDgCHyAKDIzOBIyAFgJwT+Os1y94MGhsMH0qtQZg60e7t8SQV977
	rEsupf7QzDkOdNSKmDrV+ky7+EJ5GkVN8ZxTaqSP+P4UwrbXUzlDuXjeZO10zLGFoT8KiINQn6Gxj
	+l6M3IhYStRmF6P6HsYRu00sfFVMtW7UlaxHMprL6zzAjpqxA+LfPFPBq7J4vtUu5MBN3LhnAqBnD
	H2EMe11R7BIt9jjPfiHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCqUV-0002CB-S4; Tue, 24 Sep 2019 19:28:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCqUE-0002BL-ON; Tue, 24 Sep 2019 19:28:36 +0000
Received: from localhost (unknown [12.206.46.61])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 18522207FD;
 Tue, 24 Sep 2019 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569353313;
 bh=KNm17kkxor66VdGhhJBe2OzE01FhjjH4x17NwGXbGgY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p/XrcU1724gDhWdyzGXZav5Hr/kh1vN0DQqFItFYoE3frNSHwNclV1tKyMNhZm591
 q2eJz83yXSm2JOEMGkZwlWcpqYqjcpn2HyoXRrqpO7RZRDp5bG2n5SHvvLvLYlSyOn
 Ds2B0KBDmWdZYwmBpvIb5SmdOFbZk4H/AfihU4/A=
Date: Tue, 24 Sep 2019 12:27:31 -0700
From: Vinod Koul <vkoul@kernel.org>
To: Satendra Singh Thakur <sst2005@gmail.com>
Subject: Re: Re: [PATCH 0/9] added helper macros to remove duplicate code
 from probe functions of the platform drivers
Message-ID: <20190924192731.GE3824@vkoul-mobl>
References: <20190918102715.GO4392@vkoul-mobl>
 <2356e29bca5bdfa901534bb32a2782185eb0415f.1568909689.git.sst2005@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2356e29bca5bdfa901534bb32a2782185eb0415f.1568909689.git.sst2005@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_122834_831029_6FD5CE77 
X-CRM114-Status: GOOD (  22.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: lars@metafoo.de, maxime.ripard@bootlin.com, sean.wang@mediatek.com,
 linux-kernel@vger.kernel.org, afaerber@suse.de, dmaengine@vger.kernel.org,
 wens@csie.org, agross@kernel.org, linux-mediatek@lists.infradead.org,
 satendrasingh.thakur@hcl.com, manivannan.sadhasivam@linaro.org,
 matthias.bgg@gmail.com, dan.j.williams@intel.com, shawnguo@kernel.org,
 jun.nie@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21-09-19, 20:27, Satendra Singh Thakur wrote:
> On Wed, Sep 18, 2019 at 3:57 PM, Vinod Koul wrote:
> > On 15-09-19, 12:30, Satendra Singh Thakur wrote:
> > > 1. For most of the platform drivers's probe include following steps
> > > 
> > > -memory allocation for driver's private structure
> > > -getting io resources
> > > -io remapping resources
> > > -getting irq number
> > > -registering irq
> > > -setting driver's private data
> > > -getting clock
> > > -preparing and enabling clock
> >
> > And we have perfect set of APIs for these tasks!
> Hi Vinod,
> Thanks for the comments.
> You are right, we already have set of APIs for these tasks.
> The proposed macros combine the very same APIs to remove 
> duplicate/redundant code.
> A new driver author can use these macros to easily write probe 

Nope they can write each APIs, know the exact flow and do it!

> function without having to worry about signatures of internal APIs.
> In the past, people have combined some of them e.g.
> a) clk_prepare_enable combines clk_prepare and clk_enable

As it is clock, it is called in sequence, whereas different drivers may
have different sequencing.

Btw I am not for adding maanged irq functions, they are really not the
correct way to manage!

> b) devm_platform_ioremap_resource combines
> platform_get_resource (for type IORESOURCE_MEM)
> and devm_ioremap_resource
> c) module_platform_driver macro encompasses module_init/exit 
> and driver_register/unregister functions.

All examples you are quoting do a set of functions (clk, resources etc
and not do N things!

> The basic idea is to simplyfy coding.
> > > 2. We have defined a set of macros to combine some or all of
> > > the above mentioned steps. This will remove redundant/duplicate
> > > code in drivers' probe functions of platform drivers.
> > 
> > Why, how does it help and you do realize it also introduces bugs
> This will make probe function shorter by removing repeated code.
> This will also reduce bugs caused due to improper handling
> of failure cases because of these reasons:
> a) If the developer calls each API individualy one might miss
> proper handling of the failure for some API; Whereas the macro
> properly handles failure of each API.
> b) Macros are devres compatible which leaves less room for
> memory leaks.

No we review the code and if we miss we fix later!

> Yes, the macros which enable clock and request irqs
> might cause bugs if they are not used carefully.
> For instance, enabling the clock or requesting the irq
> earlier than actually required. So, the macros with _clk
> and _irq, _all suffix should be used carefully.

Precisely!


> Please let me know if I miss any specific type of bug
> here.
> > 
> > > devm_platform_probe_helper(pdev, priv, clk_name);
> > > devm_platform_probe_helper_clk(pdev, priv, clk_name);
> > > devm_platform_probe_helper_irq(pdev, priv, clk_name,
> > > irq_hndlr, irq_flags, irq_name, irq_devid);
> > > devm_platform_probe_helper_all(pdev, priv, clk_name,
> > > irq_hndlr, irq_flags, irq_name, irq_devid);
> > > devm_platform_probe_helper_all_data(pdev, priv, clk_name,
> > > irq_hndlr, irq_flags, irq_name, irq_devid);
> > > 
> > > 3. Code is made devres compatible (wherever required)
> > > The functions: clk_get, request_irq, kzalloc, platform_get_resource
> > > are replaced with their devm_* counterparts.
> > 
> > We already have devres APIs for people to use!
> Yes, we have devres APIs and many drivers do use them.
> But still there are many which don't use them.
> The proposed macros provides just another way to use devres APIs.
> > > 
> > > 4. Few bugs are also fixed.
> > 
> > Which ones..?
> The bug is that the failure of request_irq 
> is not handled properly in mtk-hsdma.c. This is fixed in patch [5/9].
> https://lkml.org/lkml/2019/9/15/35

Please send the fix individually and I would be glad to review.

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
