Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0F911B863
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 17:17:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WExDVB1cDTez4cO2PJcxRmsqZOt0wgg3cngwZltD5pE=; b=B/ofCc1cSHrlqD
	+XmHk3gpeJ+bKfjjKRpbSudaJ8EpfBGWhHZwly/NCM2Rb+IXW5BIiqZ7zM6zVevK6iUIOMxX3gb5M
	fXzSrF5xlIVhVLN0OjmnD1tQPfq1FwdYKH84TtM/bRhZbYJunibb8GeognYk8snEUFkLEdsImXwrk
	SsNZRsNUEmSrjpnzALZ9xOAE8sLIrP5qhD6EI4Sd6dDwhpdtlVGlFa1A/Ah2hCjksom3L9vUZc6HM
	dfmv2HagBCQarh+dsG2WdVBMDZKpGb3OEZrlnpigkGkInJZjjhFGfH+FksSnJdnaHN10+1maQI5Cd
	r8+yvBbiABcgnll7GePQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if4gJ-0004SX-T3; Wed, 11 Dec 2019 16:17:43 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if4gA-0004QX-6K
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 16:17:36 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 6989D20348;
 Wed, 11 Dec 2019 17:17:28 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 3EDE020159;
 Wed, 11 Dec 2019 17:17:28 +0100 (CET)
Subject: Re: [PATCH v1] clk: Convert managed get functions to devm_add_action
 API
To: Robin Murphy <robin.murphy@arm.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>
References: <3d8a58bf-0814-1ec1-038a-10a20b9646ad@free.fr>
 <20191128185630.GK82109@yoga> <20191202014237.GR248138@dtor-ws>
 <f177ef95-ef7e-cab0-1322-6de28f18ecdb@free.fr>
 <c0ccca86-b7b1-b587-60c1-4794376fa789@arm.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <ba630966-5479-c831-d0e2-bc2eb12bc317@free.fr>
Date: Wed, 11 Dec 2019 17:17:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <c0ccca86-b7b1-b587-60c1-4794376fa789@arm.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Wed Dec 11 17:17:28 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_081734_528757_8BF27322 
X-CRM114-Status: GOOD (  20.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-clk <linux-clk@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/12/2019 14:51, Robin Murphy wrote:

> On 02/12/2019 9:25 am, Marc Gonzalez wrote:
>
>> On 02/12/2019 02:42, Dmitry Torokhov wrote:
>>
>>> On Thu, Nov 28, 2019 at 10:56:30AM -0800, Bjorn Andersson wrote:
>>>
>>>> On Tue 26 Nov 08:13 PST 2019, Marc Gonzalez wrote:
>>>>
>>>>> Date: Tue, 26 Nov 2019 13:56:53 +0100
>>>>>
>>>>> Using devm_add_action_or_reset() produces simpler code and smaller
>>>>> object size:
>>>>>
>>>>> 1 file changed, 16 insertions(+), 46 deletions(-)
>>>>>
>>>>>      text	   data	    bss	    dec	    hex	filename
>>>>> -   1797	     80	      0	   1877	    755	drivers/clk/clk-devres.o
>>>>> +   1499	     56	      0	   1555	    613	drivers/clk/clk-devres.o
>>>>>
>>>>> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
>>>>
>>>> Looks neat
>>>>
>>>> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
>>>
>>> This however increases the runtime costs as each custom action cost us
>>> an extra pointer. Given that in a system we likely have many clocks
>>> managed by devres, I am not sure that this code savings is actually
>>> gives us overall win. It might still, I just want to understand how we
>>> are allocating/packing devres structures.
>>
>> I'm not 100% sure what you are saying.
> 
> You reduce the text size by a constant amount, at the cost of allocating 
> twice as much runtime data per clock (struct action_devres  vs. void*). 
> Assuming 64-bit pointers, that means that in principle your ~320-byte 
> saving would be cancelled out at ~40 managed clocks. However, that's 
> also assuming that the minimum allocation granularity is no larger than 
> a single pointer, which generally isn't true, so in reality it depends 
> on whether the difference in data pushes the total struct devres 
> allocation over the next ARCH_KMALLOC_MINALIGN boundary - if it doesn't, 
> the difference comes entirely for free; if it does, the memory cost 
> tradeoff gets even worse.

Aaah... memory overhead. Thanks for pointing it out.

BEFORE

devm_clk_get()
  -> devres_alloc(devm_clk_release, sizeof(*ptr), GFP_KERNEL);
     allocates space for a struct devres + a pointer

struct devres {
	struct devres_node		node;
	/*
	 * Some archs want to perform DMA into kmalloc caches
	 * and need a guaranteed alignment larger than
	 * the alignment of a 64-bit integer.
	 * Thus we use ARCH_KMALLOC_MINALIGN here and get exactly the same
	 * buffer alignment as if it was allocated by plain kmalloc().
	 */
	u8 __aligned(ARCH_KMALLOC_MINALIGN) data[];
};

Not sure what it means for a flexible array member to be X-aligned...

(Since the field's address depends on the start address, which is only
determined at run-time...)

For example, on arm64, ARCH_KMALLOC_MINALIGN appears to be 128 (sometimes).

/*
 * Memory returned by kmalloc() may be used for DMA, so we must make
 * sure that all such allocations are cache aligned. Otherwise,
 * unrelated code may cause parts of the buffer to be read into the
 * cache before the transfer is done, causing old data to be seen by
 * the CPU.
 */
#define ARCH_DMA_MINALIGN	(128)


Unless the strict alignment is also imposed on kmalloc?

So basically, a struct devres starts on a multiple-of-128 address,
first the devres_node member, then padding to the next 128, then the
data member?


/*
 * Some archs want to perform DMA into kmalloc caches and need a guaranteed
 * alignment larger than the alignment of a 64-bit integer.
 * Setting ARCH_KMALLOC_MINALIGN in arch headers allows that.
 */
#if defined(ARCH_DMA_MINALIGN) && ARCH_DMA_MINALIGN > 8
#define ARCH_KMALLOC_MINALIGN ARCH_DMA_MINALIGN
#define KMALLOC_MIN_SIZE ARCH_DMA_MINALIGN
#define KMALLOC_SHIFT_LOW ilog2(ARCH_DMA_MINALIGN)
#else
#define ARCH_KMALLOC_MINALIGN __alignof__(unsigned long long)
#endif


A devres_node boils down to 2 object pointers + 1 function pointer.

Are there architectures supported by Linux where a function pointer
is not the same size as an object pointer? (ia64 maybe?)



OK, I will give this patch some more thought.

But I need to ask: what is the rationale for the devm_add_action API?

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
