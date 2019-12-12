Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C61DA11C696
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 08:43:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BrIgE1i+/qxLY5YKVrKfyJ8UtQVE94NiFVGiEY9ychc=; b=Jsm+L93ijeujjIJaoxO6lPOHhB
	IQVWAe0Uqbry+PTw46E2WGSQCRUCBKbiSkmDY7qrGaK5UyFagacTShFM0GYpm1oXvx443dwTIsa7Y
	5MmY9a1o/9iNB1Pp4P/W1oQGQC3n+neisScnxnGpIFjBD78DwhZNQ6qTs0mDyM6jAofHNymL5L4uM
	vX3iKuiYXTg3PTwhXSjzx07zIk/ncaQsRUecimCM0/AtWei6FcBu177gvMT0dCoU+4WrmXSx/3aTs
	px/fVNOG/2w4Z4shiyCBTibHFAEwRxNR9MFQ04+rdhA87dhGyUnQiHtMDVV8DIrTdrV89zco5ZyZl
	btCwkFsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifJ7m-0004Kz-SF; Thu, 12 Dec 2019 07:43:02 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifJ7f-0004JX-2F
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 07:42:56 +0000
Received: by mail-lf1-x142.google.com with SMTP id y19so902986lfl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 23:42:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=PkUsNGoqFdl5gXqJP6bnP2J6yrhC8TrnSK9hjm92v8k=;
 b=NMCNzYEm9Gfegz6VLnF8XP0V5Hn0WezwnX7U9NkH5MQWw+pZmvdE45rMspF3sLqxbF
 ZZnNXwqhT2Q5GUIlC1rnmGWdvyOao7Mv2wdJk0VOhiLJ/8ruwz7CzgzsU9HcBqUHN8xb
 OlyZ2qODoD9obyPBZzL0HLC0LDMy+X8yU/eWI5IZxzHqW/dN5qNLoU6c8k6x83yi0cTH
 yY3XvA65/q1EilVfL5O1Awlr4X/HW8bO8iCGiDKbMOtMsyKX1Owmv2jHdInhOqTPfUY4
 DTV3Brysx5psuGFJ/sIoP9BO6zN1aE1N5mB96sZ/Z4CD9q24KbeourzxSb0xwN0ZLlvx
 75SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PkUsNGoqFdl5gXqJP6bnP2J6yrhC8TrnSK9hjm92v8k=;
 b=s0b6Oi8pN1ZxlCbzyluiGViPQjrIOPZMAInhpqbSmV7+JKVYvMKesE697SGe8KuVMm
 8SnOKMd1/oUFsOeLgnOFXSgKduBXBf8zx84vyMZo6Gr8lHD89QrfOLmrfqP7D/qNMynv
 mk3L1cUV9nElRQVNSGspmWO2icTUUr2xqbuWpEc3os9AL7iTaluyJk+aecu9YEMieeYu
 p83Cz1tyJEREDkHl78+NpBOeKqBIfoMDdXcraM86qZoLAMeD1FQ3eOEDc9ih5Ff7a9YF
 0+Qs2do1RnFrdwl/2zI2JlRR58Y0Hr3gkpi/qvrlxkeiVNFHWkW4JaugR5rQYgXa1ebT
 T0Zg==
X-Gm-Message-State: APjAAAWrduZsh/sgR47HcKwNspRcHpIxLDKlUtXNIFHneA0stagiPBvG
 gOuyi85fxQqtenZVDE5shig=
X-Google-Smtp-Source: APXvYqw61Nc9c1M7/MZ1ZVdl9tv4GQZF2ss+5I1aVe+a5lUKM/oLVCrLyFH8YTXcNcxBfb4SaCbXuQ==
X-Received: by 2002:ac2:5975:: with SMTP id h21mr4695940lfp.165.1576136571817; 
 Wed, 11 Dec 2019 23:42:51 -0800 (PST)
Received: from [192.168.68.108] (115-64-122-209.tpgi.com.au. [115.64.122.209])
 by smtp.gmail.com with ESMTPSA id
 v5sm2444547ljk.67.2019.12.11.23.42.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Dec 2019 23:42:51 -0800 (PST)
Subject: Re: [PATCH v2 4/4] powerpc: Book3S 64-bit "heavyweight" KASAN support
To: Daniel Axtens <dja@axtens.net>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linuxppc-dev@lists.ozlabs.org,
 linux-s390@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kasan-dev@googlegroups.com, christophe.leroy@c-s.fr,
 aneesh.kumar@linux.ibm.com, Dmitry Vyukov <dvyukov@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>
References: <20191210044714.27265-1-dja@axtens.net>
 <20191210044714.27265-5-dja@axtens.net>
 <71751e27-e9c5-f685-7a13-ca2e007214bc@gmail.com>
 <875zincu8a.fsf@dja-thinkpad.axtens.net>
 <2e0f21e6-7552-815b-1bf3-b54b0fc5caa9@gmail.com>
 <87wob3aqis.fsf@dja-thinkpad.axtens.net>
From: Balbir Singh <bsingharora@gmail.com>
Message-ID: <1bffad2d-db13-9808-afc9-5594f02dcf01@gmail.com>
Date: Thu, 12 Dec 2019 18:42:40 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <87wob3aqis.fsf@dja-thinkpad.axtens.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_234255_135036_260A292B 
X-CRM114-Status: GOOD (  24.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bsingharora[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/12/19 1:24 am, Daniel Axtens wrote:
> Hi Balbir,
> 
>>>>> +Discontiguous memory can occur when you have a machine with memory spread
>>>>> +across multiple nodes. For example, on a Talos II with 64GB of RAM:
>>>>> +
>>>>> + - 32GB runs from 0x0 to 0x0000_0008_0000_0000,
>>>>> + - then there's a gap,
>>>>> + - then the final 32GB runs from 0x0000_2000_0000_0000 to 0x0000_2008_0000_0000
>>>>> +
>>>>> +This can create _significant_ issues:
>>>>> +
>>>>> + - If we try to treat the machine as having 64GB of _contiguous_ RAM, we would
>>>>> +   assume that ran from 0x0 to 0x0000_0010_0000_0000. We'd then reserve the
>>>>> +   last 1/8th - 0x0000_000e_0000_0000 to 0x0000_0010_0000_0000 as the shadow
>>>>> +   region. But when we try to access any of that, we'll try to access pages
>>>>> +   that are not physically present.
>>>>> +
>>>>
>>>> If we reserved memory for KASAN from each node (discontig region), we might survive
>>>> this no? May be we need NUMA aware KASAN? That might be a generic change, just thinking
>>>> out loud.
>>>
>>> The challenge is that - AIUI - in inline instrumentation, the compiler
>>> doesn't generate calls to things like __asan_loadN and
>>> __asan_storeN. Instead it uses -fasan-shadow-offset to compute the
>>> checks, and only calls the __asan_report* family of functions if it
>>> detects an issue. This also matches what I can observe with objdump
>>> across outline and inline instrumentation settings.
>>>
>>> This means that for this sort of thing to work we would need to either
>>> drop back to out-of-line calls, or teach the compiler how to use a
>>> nonlinear, NUMA aware mem-to-shadow mapping.
>>
>> Yes, out of line is expensive, but seems to work well for all use cases.
> 
> I'm not sure this is true. Looking at scripts/Makefile.kasan, allocas,
> stacks and globals will only be instrumented if you can provide
> KASAN_SHADOW_OFFSET. In the case you're proposing, we can't provide a
> static offset. I _think_ this is a compiler limitation, where some of
> those instrumentations only work/make sense with a static offset, but
> perhaps that's not right? Dmitry and Andrey, can you shed some light on
> this?
> 

From what I can read, everything should still be supported, the info page
for gcc states that globals, stack asan should be enabled by default.
allocas may have limited meaning if stack-protector is turned on (no?)

> Also, as it currently stands, the speed difference between inline and
> outline is approximately 2x, and given that we'd like to run this
> full-time in syzkaller I think there is value in trading off speed for
> some limitations.
> 

Full speed vs actually working across different configurations?

>> BTW, the current set of patches just hang if I try to make the default
>> mode as out of line
> 
> Do you have CONFIG_RELOCATABLE?
> 
> I've tested the following process:
> 
> # 1) apply patches on a fresh linux-next
> # 2) output dir
> mkdir ../out-3s-kasan
> 
> # 3) merge in the relevant config snippets
> cat > kasan.config << EOF
> CONFIG_EXPERT=y
> CONFIG_LD_HEAD_STUB_CATCH=y
> 
> CONFIG_RELOCATABLE=y
> 
> CONFIG_KASAN=y
> CONFIG_KASAN_GENERIC=y
> CONFIG_KASAN_OUTLINE=y
> 
> CONFIG_PHYS_MEM_SIZE_FOR_KASAN=2048
> EOF
> 

I think I got CONFIG_PHYS_MEM_SIZE_FOR_KASN wrong, honestly I don't get why
we need this size? The size is in MB and the default is 0. 

Why does the powerpc port of KASAN need the SIZE to be explicitly specified?

Balbir Singh.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
