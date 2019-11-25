Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78FF7108EA6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 14:16:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5hMbMR8Po90tR/pvstuAmEiMV5hxLUPrLNA/a2pAP1g=; b=H7hfi74R5oODcv
	JPW27hJC4dn4nl5jd1d6PmW4RJ8ipJd5ihu2IjmT28Bs48/DFL9SWWPKISbqQau2n2u7xCozo6ycX
	VvzwA9x9fql2KQnlyesO669HayVCVtqDADGfUoJwnfL1HIM6OVkY+gpR7jVz20dHHFmcgu8Ri1AJg
	2R7NudfAXobEbgBvLStwHQAsKkPjVIRuVJ+ZahbIUENXFOszF57OFO+AGyPNVA1P+9izgGxHbpxJy
	N7W/JoTr35VG6WUP+aYEtlCNPxcdul4NFk3vR3++MhtpYF5y6t9wG7Tz3jnFMh8uijYnvKZE0Wril
	+Mn/uuEOSzYFPrMVNRKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZEE7-0002m6-EI; Mon, 25 Nov 2019 13:16:27 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZEDy-0002lH-KB
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 13:16:20 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 5DE9920600;
 Mon, 25 Nov 2019 14:16:17 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 4651C2056B;
 Mon, 25 Nov 2019 14:16:17 +0100 (CET)
Subject: Re: [PATCH v1] clk: Add devm_clk_{prepare,enable,prepare_enable}
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <1d7a1b3b-e9bf-1d80-609d-a9c0c932b15a@free.fr>
 <34e32662-c909-9eb3-e561-3274ad0bf3cc@free.fr>
 <20191125125231.GO25745@shell.armlinux.org.uk>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <45730e3c-efc7-4433-4980-e6aefebdcbff@free.fr>
Date: Mon, 25 Nov 2019 14:16:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191125125231.GO25745@shell.armlinux.org.uk>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Mon Nov 25 14:16:17 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_051618_959685_B2DF9CA4 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25/11/2019 13:52, Russell King - ARM Linux admin wrote:

> On Mon, Nov 25, 2019 at 01:46:51PM +0100, Marc Gonzalez wrote:
> 
>> On 15/07/2019 17:34, Marc Gonzalez wrote:
>>
>>> Provide devm variants for automatic resource release on device removal.
>>> probe() error-handling is simpler, and remove is no longer required.
>>>
>>> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
>>> ---
>>>  Documentation/driver-model/devres.rst |  3 +++
>>>  drivers/clk/clk.c                     | 24 ++++++++++++++++++++++++
>>>  include/linux/clk.h                   |  8 ++++++++
>>>  3 files changed, 35 insertions(+)
>>>
>>> diff --git a/Documentation/driver-model/devres.rst b/Documentation/driver-model/devres.rst
>>> index 1b6ced8e4294..9357260576ef 100644
>>> --- a/Documentation/driver-model/devres.rst
>>> +++ b/Documentation/driver-model/devres.rst
>>> @@ -253,6 +253,9 @@ CLOCK
>>>    devm_clk_hw_register()
>>>    devm_of_clk_add_hw_provider()
>>>    devm_clk_hw_register_clkdev()
>>> +  devm_clk_prepare()
>>> +  devm_clk_enable()
>>> +  devm_clk_prepare_enable()
>>>  
>>>  DMA
>>>    dmaenginem_async_device_register()
>>> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
>>> index c0990703ce54..5e85548357c0 100644
>>> --- a/drivers/clk/clk.c
>>> +++ b/drivers/clk/clk.c
>>> @@ -914,6 +914,18 @@ int clk_prepare(struct clk *clk)
>>>  }
>>>  EXPORT_SYMBOL_GPL(clk_prepare);
>>>  
>>> +static void unprepare(void *clk)
>>> +{
>>> +	clk_unprepare(clk);
>>> +}
>>> +
>>> +int devm_clk_prepare(struct device *dev, struct clk *clk)
>>> +{
>>> +	int rc = clk_prepare(clk);
>>> +	return rc ? : devm_add_action_or_reset(dev, unprepare, clk);
>>> +}
>>> +EXPORT_SYMBOL_GPL(devm_clk_prepare);
>>> +
>>>  static void clk_core_disable(struct clk_core *core)
>>>  {
>>>  	lockdep_assert_held(&enable_lock);
>>> @@ -1136,6 +1148,18 @@ int clk_enable(struct clk *clk)
>>>  }
>>>  EXPORT_SYMBOL_GPL(clk_enable);
>>>  
>>> +static void disable(void *clk)
>>> +{
>>> +	clk_disable(clk);
>>> +}
>>> +
>>> +int devm_clk_enable(struct device *dev, struct clk *clk)
>>> +{
>>> +	int rc = clk_enable(clk);
>>> +	return rc ? : devm_add_action_or_reset(dev, disable, clk);
>>> +}
>>> +EXPORT_SYMBOL_GPL(devm_clk_enable);
>>> +
>>>  static int clk_core_prepare_enable(struct clk_core *core)
>>>  {
>>>  	int ret;
>>> diff --git a/include/linux/clk.h b/include/linux/clk.h
>>> index 3c096c7a51dc..d09b5207e3f1 100644
>>> --- a/include/linux/clk.h
>>> +++ b/include/linux/clk.h
>>> @@ -895,6 +895,14 @@ static inline void clk_restore_context(void) {}
>>>  
>>>  #endif
>>>  
>>> +int devm_clk_prepare(struct device *dev, struct clk *clk);
>>> +int devm_clk_enable(struct device *dev, struct clk *clk);
>>> +static inline int devm_clk_prepare_enable(struct device *dev, struct clk *clk)
>>> +{
>>> +	int rc = devm_clk_prepare(dev, clk);
>>> +	return rc ? : devm_clk_enable(dev, clk);
>>> +}
>>> +
>>>  /* clk_prepare_enable helps cases using clk_enable in non-atomic context. */
>>>  static inline int clk_prepare_enable(struct clk *clk)
>>>  {
>>
>> Thoughts? Comments?
> 
> These are part of the clk API rather than the CCF API, and belong in
> drivers/clk/clk-devres.c.

I'm totally confused.

Are you saying that a hypothetical devm_clk_prepare() function should not be
implemented in the same file as the "raw" clk_prepare() ?

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
