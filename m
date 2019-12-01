Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 101D710E347
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Dec 2019 20:06:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lzmHGIigO8si/9GVI812qD0WBSxxWmp3GksOVqPRRU4=; b=ZbEM+J5bHJdGyPX+7/0IQwSZB
	u/4GzX//dYr9EZ4jqb/ah04CGvrfapgY+4GOAYu2A1I/M4x5FPJwzO47h9K3faMGjudbdzFx0w19e
	kUplwN3DgMZ+27bEz5LlkjyP9C4vvfnmeZpHcu4E+ldTaQfMCCLkA1J743HO5toIHpOmNY7/mkEHA
	+ltzUl+KzIjuOILlSCmTXCwB24MCrO60UIWMm9qCqG8gN9HdC6KI5YL0AI/vmxkJkkNqMH1IQT5Od
	PrApFFzDM7PXAtYTBnq2bPeNUEvrWEVWfaMEMQ0gZ5YYZiQqXGq3SSTbg+0EQ3TWX+DOzk/i85PQe
	9A0pz/wSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibUYI-0002GO-KL; Sun, 01 Dec 2019 19:06:38 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibUYA-0002Fy-2Q
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Dec 2019 19:06:31 +0000
Received: by mail-qk1-x742.google.com with SMTP id d124so15217634qke.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Dec 2019 11:06:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jonmasters-org.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=MYJMRHaiXc+sf5WEZ2y2GPKTcfT0mAf/egNeoJkGqUk=;
 b=jwOVcGbncaHcFffRkMA7LE9/UEhFUaIT8HSLGGQg6lzBye14j5BgANn42w4XkkyUfV
 ZOeYTUI0Dd3YuYKHFmy8XJ288eAiat5tF1T/Annsj7YQszO0ng4s3PnYNlcc6EvK8Mst
 nsUxYHAo+BA5vFB6wpkDCkxk7TWJ8NevfsWgUFUPHAht5Wo6CiF4uhiBp8edAwy1OiuX
 S1Jd1DrmUKk4BtedkskZETWYwSznYKzddZWM91onELxBhwwxx64JfrvTFsVTo8CLYBUB
 zeMcq1mqFwHppbPvN09508FJp8LjKrr8nCXj4xoCiyXtevuoR+S4h+dA+WQi+mdQEGob
 fBEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=MYJMRHaiXc+sf5WEZ2y2GPKTcfT0mAf/egNeoJkGqUk=;
 b=XHRr+4blTXlmfuv28RsfXMuCsajFewnoka5CwFaNL1HFj7P0hRuVfFg2onGH7OIROD
 s3ETvEdut9uYPgmRTk0dSG/QwryEXkBGGKqB89iL09nyOuUR985vtgyScOeSipWrXcNw
 hXG29aP9Qpw4IgaQ/BxP5wkzA9aKZmjIIR3dFjTXIX+Dw2LudfhP435ZO83JBbGik6Ua
 3upk79W4ZPU+BpzLhEsFK2cergbbP/Z3KkrTNo1gQdMuGLt6BLzPjw2HiKZAtg/xaqQw
 rxrnssluzvB/Dze7JtxgauOOI60hIdVV2toCBmz4E26yCRZCWvaryrjzLeBJdblMRuja
 Jeog==
X-Gm-Message-State: APjAAAUcuho/i1Kv7EEPyY5lZ5EoUZBRJFPEIvAoZ9hFoI3EGtOci7Ye
 3HjgplgaM6BeJ/B3p9KxZqbeVA==
X-Google-Smtp-Source: APXvYqxQytCbo+98XXQij13g03gGpSRogXBmEDaQ9V4RHLtJy49OLvXxEnE89dRmw7RtqJlp/u3SRg==
X-Received: by 2002:a05:620a:16a4:: with SMTP id
 s4mr5994651qkj.488.1575227185774; 
 Sun, 01 Dec 2019 11:06:25 -0800 (PST)
Received: from independence.bos.jonmasters.org
 (24-148-33-89.s2391.c3-0.grn-cbr1.chi-grn.il.cable.rcncustomer.com.
 [24.148.33.89])
 by smtp.gmail.com with ESMTPSA id k123sm6414644qkd.4.2019.12.01.11.06.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 01 Dec 2019 11:06:25 -0800 (PST)
Subject: Re: [PATCH 0/2] arm64: Introduce boot parameter to disable TLB flush
 instruction within the same inner shareable domain
To: Will Deacon <will@kernel.org>, "qi.fuli@fujitsu.com" <qi.fuli@fujitsu.com>
References: <20190617143255.10462-1-indou.takao@jp.fujitsu.com>
 <93009dbd-b31c-7364-86d2-21f0fac36676@jp.fujitsu.com>
 <20191101172851.GC3983@willie-the-truck>
From: Jon Masters <jcm@jonmasters.org>
Organization: World Organi{s,z}ation of Broken Dreams
Message-ID: <a06ae400-29b2-d88f-af48-deafd7e355fe@jonmasters.org>
Date: Sun, 1 Dec 2019 11:02:42 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191101172851.GC3983@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_110630_173052_FED914C5 
X-CRM114-Status: GOOD (  19.91  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
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
Cc: "tokamoto@jp.fujitsu.com" <tokamoto@jp.fujitsu.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "maeda.naoaki@fujitsu.com" <maeda.naoaki@fujitsu.com>,
 "misono.tomohiro@fujitsu.com" <misono.tomohiro@fujitsu.com>,
 Itaru Kitayama <itaru.kitayama@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "indou.takao@fujitsu.com" <indou.takao@fujitsu.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/1/19 1:28 PM, Will Deacon wrote:

> On Fri, Nov 01, 2019 at 09:56:05AM +0000, qi.fuli@fujitsu.com wrote:

>> In this thread, I explained that:
>> * I found a performance problem which is caused by TLBI-is instruction.
>> * The problem occurs like this:
>>    1) On a core, OS tries to flush TLB using TLBI-is instruction
>>    2) TLBI-is instruction causes a broadcast to all other cores, and
>>    each core received hard-wired signal
>>    3) Each core check if there are TLB entries which have the specified
>> ASID/VA

(the above confuses implementation with architecture)

<snip>

> I think it's worth bearing in mind that I have little sympathy for the
> problem that you are seeing. As far as I can tell, you've done the
> following:
> 
>    1. You designed a CPU micro-architecture that stalls whenever it receives
>       a TLB invalidation request.

s/SPARC/Arm/ && wire in DVM

>    2. You integrated said CPU design into a system where broadcast TLB
>       invalidation is not filtered and therefore stalls every CPU every
>       time that /any/ TLB invalidation is broadcast.
> 
>    3. You deployed a mixture of Linux and jitter-sensitive software on
>       this system, and now you're failing to meet your performance
>       requirements.
> 
> Have I got that right?
> 
> If so, given that your CPU design isn't widely available, nobody else
> appears to have made this mistake and jitter hasn't been reported as an
> issue for any other systems, it's very unlikely that we're going to make
> invasive upstream kernel changes to support you. I'm sorry, but all I can
> suggest is that you check that your micro-architecture and performance
> requirements are aligned with the design of Linux *before* building another
> machine like this in future.
> 
> I hate to be blunt, but I also don't want to waste your time.

I always tried to ask nicely for the above to be heeded. There's a 
difference between "hi, our implementation doesn't scale, and here's 
why" vs "there's a problem with all TLBIs...". There isn't. The problem 
is the implementation and that should have been called out first thing.

Jon.

-- 
Computer Architect

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
