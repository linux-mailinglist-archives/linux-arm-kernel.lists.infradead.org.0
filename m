Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7476C1467C5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 13:18:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hBU+Pxjyi+88qRrIbDfAMpWRT3cIfe4of1LoLlEz3NU=; b=Vck9eH+gU3GWG6
	QsE+G2EKMejSgcHLtXRgpEZZX08L4FajJsfpSgiDry3E66U+02FrGKlNfWMJaywLvIyUFbnHrKHqj
	+QpRb3KpC3xlxc/JGej7N1wxC2cp3IQsobpRfGwJoevCxTy6ldDNZNE3lAZMOHUKrs0B03s0np4na
	8SikC6KrT2Ek6hQsJtqqYhrYDs/EpaMVQKlEgj/9zl/ptadh5xBf0fulqR9uInKh4Sv9hFbHSa6en
	MEiEQbA8Jp15pNUKlvZ/56NpTfDaGtBMoKKGxqD0WoWIVHV2OtzTgR3hC4ACECcI8aTqw0Gah+1Qh
	8eEf5mcV7l+8O1ZksLnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iubR7-0007VF-RF; Thu, 23 Jan 2020 12:18:13 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iubQv-0007Ui-Qn
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 12:18:03 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 901F22084B;
 Thu, 23 Jan 2020 13:17:59 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 72A25201A4;
 Thu, 23 Jan 2020 13:17:59 +0100 (CET)
Subject: Re: [RFC PATCH v2] clk: Use a new helper in managed functions
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <56c7b6d5-1248-15bd-8441-5d80557455b3@free.fr>
 <CAMuHMdX3kZoEfCeGamreeWq0-Tu2+Mw8MYEbRUZV8wBS+e2K=A@mail.gmail.com>
 <8f1f01a1-b0c7-77d5-7d01-dd53811fa217@free.fr>
 <CAMuHMdW=0Qf=bdE8Vy75wySRV5wzWhgM=-vhXjc0RhLGwomF_g@mail.gmail.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <91058d8f-7075-6baa-6131-cce1ccd160a6@free.fr>
Date: Thu, 23 Jan 2020 13:17:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAMuHMdW=0Qf=bdE8Vy75wySRV5wzWhgM=-vhXjc0RhLGwomF_g@mail.gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Jan 23 13:17:59 2020 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_041802_162637_325400FD 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [marc.w.gonzalez[at]free.fr]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-clk <linux-clk@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/01/2020 11:32, Geert Uytterhoeven wrote:

> On Thu, Jan 23, 2020 at 11:13 AM Marc Gonzalez wrote:
> 
>> A limitation of devm_add_action is that it stores the void *data argument "as is".
>> Users cannot pass the address of a struct on the stack. devm_add() addresses that
>> specific use-case, while being a minimal wrapper around devres_alloc + devres_add.
>> (devm_add_action adds an extra level of indirection.)
> 
> I didn't mean the advantage of devm_add() over devm_add_action(),
> but the advantage of dr_release_t, which has a device pointer.

I'm confused...

	void *devres_alloc(dr_release_t release, size_t size, gfp_t gfp);
	int devm_add_action(struct device *dev, void (*action)(void *), void *data);

devres_alloc() expects a dr_release_t argument; devm_add() is a thin wrapper
around devres_alloc(); ergo devm_add() expects that dr_release_t argument.

devm_add_action() is a "heavier" wrapper around devres_alloc() which defines
a "private" release function which calls a user-defined "action".
(i.e. the extra level of indirection I mentioned above.)

I don't understand the question about the advantage of dr_release_t.


>>>> +       void *data = devres_alloc(func, size, GFP_KERNEL);
>>>> +
>>>> +       if (data) {
>>>> +               memcpy(data, arg, size);
>>>> +               devres_add(dev, data);
>>>> +       } else
>>>> +               func(dev, arg);
>>>> +
>>>> +       return data;
>>>
>>> Why return data or NULL, instead of 0 or -Efoo, like devm_add_action()?
>>
>> My intent is to make devm_add a minimal wrapper (it even started out as
>> a macro). As such, I just transparently pass the result of devres_alloc.
>>
>> Do you see an advantage in processing the result?
> 
> There are actually two questions to consider here:
>   1. Is there a use case for returning the data pointer?
>      I.e. will the caller ever use it?
>   2. Can there be another failure mode than out-of-memory?
>      Changing from NULL to ERR_PTR() later means that all callers
>      need to be updated.

I think I see your point. You're saying it's not good to kick the can down
the road, because callers won't know what to do with the pointer.

Actually, I'm in the same boat as these users. I looked at
devres_alloc -> devres_alloc_node -> alloc_dr -> kmalloc_node_track_caller -> __do_kmalloc

Basically, the result is NULL when something went wrong, but the actual
error condition is not propagated. It could be:
1) check_add_overflow() finds an overflow
2) size > KMALLOC_MAX_CACHE_SIZE
3) kmalloc_slab() or kasan_kmalloc() fail
4) different errors on the CONFIG_NUMA path

Basically, if lower-level functions don't propagate errors, it's not
easy for a wrapper to do something sensible... ENOMEM looks reasonable
for kmalloc-related failures.

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
