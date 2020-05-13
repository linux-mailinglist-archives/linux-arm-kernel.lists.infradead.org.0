Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9421D1345
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 14:53:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KZKxQ7CxEnYEJoz9JlWpJI1hGxPKhrMtFwWXxwoyIj4=; b=dAW4AhzQj10XqWGR2S6FbZkX6
	JJv1+QjwAH84vkVOGRgTAw9U+df3srd6mHq9O1rooGY3tHVprYa7SBQhpPksdHJr87S4uRugHtOH8
	STGjkFQJYookuQNNlKHO8lUoKQpzAAfh0x69ipTRaIB1y9/em3qzhDttQIdzy9Et8rIy/n0cZUrJY
	nCr1jQ3OotfbjCJt5NNaijH0wSLITQzTKP5r08oyle5A+jiGqx6tgV/2a2w52oEFKK7gN0CFB3hSN
	mhXazWVo+kSnNkkZmr3Rs7jaX7XCkJtQ1g+x7ypazrFUvAZqECeNWLglrZ+xXq508MQgVUJ2pLTJG
	QlgF7fjpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYqsr-0005x4-SR; Wed, 13 May 2020 12:53:13 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYqsf-0005wZ-Kf
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 12:53:03 +0000
Received: by mail-qv1-xf44.google.com with SMTP id ep1so8119836qvb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 05:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=vnfrgpoFxGJaJB68G0PLMe3O7CSCW9nax/g5rkjMJIg=;
 b=oKes9yfCt8iLYLqXAPpbI7QwOh5gdVMab7InMMO+IDvEEVKn2F+5CO/QfNhjodL2H4
 Knr5X+ASs+kRBpeLahuJb5saanLeGfuBYV+LQ3wCIQxL8GZANd4euPnyc5DpH7WSfwez
 2VdOi6XDDyIGdErfZX8p+TeqaDi5mcjXZrrgrfAWK1MpAHfNHsIqi14ezu7QN8F4bdHs
 KHdrTzfiRSy/dJIIgJqya3pE0QIigXv/jXU1Tq/2QE4dE2d9vyEGKOAl5DxNT0zgFTJm
 nhz4tFI/Sjf1MBLk+0qzXR3pqIFW9Wcp5wF5hiL7uaDcCJNbjZHTI9HH+O6rZnYxPFiS
 KeSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=vnfrgpoFxGJaJB68G0PLMe3O7CSCW9nax/g5rkjMJIg=;
 b=o3ufj8ZqmSr6cCxzvo9XwOCvC8+JCxkwtgsaSi+zcZ13+0UxkSMCDrCBIkEXYvml7M
 gD/4gmhnJfl7zOsNAVwH9OTYYxzv4jcAihgkRFElc7Nrt0vyLE7S8jmcE6dNqOhEMDh3
 9uYrZbXHDUh562QNTOJpgZfSMF1masHLOxPjdWHhvaenc4B9AgenFtsAFhY5/eQsEbTj
 ss9rB5koRkzmdMy57kpELrrmEe0T2j4dO8+0lI3I/UU9Zqh09X1fDLRr7ygC1CDwhi3r
 q+CGWh293cV6NiQqLDLHwNrzMlZAh/FfQmHlbNwsHNUUG5MFzKT0J6hHDy+f6Aql7Hp+
 aNQA==
X-Gm-Message-State: AGi0PuZFSZMLQZdZHZli2INBnvnG28H35Y7odb+C/fpsEIXbLTleGxVF
 usu6CpCUyejfrHa7m6/2FZmytw==
X-Google-Smtp-Source: APiQypKsodqC9oZhkQXwAznVyvCkHIt8nBznWgddu7FmHdLWksRHFGtiYKblVPj8gIPiC55qsdwvWQ==
X-Received: by 2002:ad4:466f:: with SMTP id z15mr18059221qvv.101.1589374380390; 
 Wed, 13 May 2020 05:53:00 -0700 (PDT)
Received: from ?IPv6:2804:7f0:8283:1510:1c7:af77:437a:ffd0?
 ([2804:7f0:8283:1510:1c7:af77:437a:ffd0])
 by smtp.gmail.com with ESMTPSA id 88sm824883qth.9.2020.05.13.05.52.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 05:52:59 -0700 (PDT)
Subject: Re: [PATCH v3 19/23] arm64: mte: Add PTRACE_{PEEK,POKE}MTETAGS support
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-20-catalin.marinas@arm.com>
 <a7569985-eb85-497b-e3b2-5dce0acb1332@linaro.org>
 <20200513104849.GC2719@gaia>
From: Luis Machado <luis.machado@linaro.org>
Message-ID: <3d2621ac-9d08-53ea-6c22-c62532911377@linaro.org>
Date: Wed, 13 May 2020 09:52:52 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200513104849.GC2719@gaia>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_055301_687088_A047D9C9 
X-CRM114-Status: GOOD (  26.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Omair Javaid <omair.javaid@linaro.org>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Alan Hayward <Alan.Hayward@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/13/20 7:48 AM, Catalin Marinas wrote:
> Hi Luis,
> 
> On Tue, May 12, 2020 at 04:05:15PM -0300, Luis Machado wrote:
>> On 4/21/20 11:25 AM, Catalin Marinas wrote:
>>> Add support for bulk setting/getting of the MTE tags in a tracee's
>>> address space at 'addr' in the ptrace() syscall prototype. 'data' points
>>> to a struct iovec in the tracer's address space with iov_base
>>> representing the address of a tracer's buffer of length iov_len. The
>>> tags to be copied to/from the tracer's buffer are stored as one tag per
>>> byte.
>>>
>>> On successfully copying at least one tag, ptrace() returns 0 and updates
>>> the tracer's iov_len with the number of tags copied. In case of error,
>>> either -EIO or -EFAULT is returned, trying to follow the ptrace() man
>>> page.
>>>
>>> Note that the tag copying functions are not performance critical,
>>> therefore they lack optimisations found in typical memory copy routines.
>>>
>>> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
>>> Cc: Will Deacon <will@kernel.org>
>>> Cc: Alan Hayward <Alan.Hayward@arm.com>
>>> Cc: Luis Machado <luis.machado@linaro.org>
>>> Cc: Omair Javaid <omair.javaid@linaro.org>
>>> ---
>>>
>>> Notes:
>>>       New in v3.
>>>
>>>    arch/arm64/include/asm/mte.h         |  17 ++++
>>>    arch/arm64/include/uapi/asm/ptrace.h |   3 +
>>>    arch/arm64/kernel/mte.c              | 127 +++++++++++++++++++++++++++
>>>    arch/arm64/kernel/ptrace.c           |  15 +++-
>>>    arch/arm64/lib/mte.S                 |  50 +++++++++++
>>>    5 files changed, 211 insertions(+), 1 deletion(-)
>>>
>> I started working on MTE support for GDB and I'm wondering if we've already
>> defined a way to check for runtime MTE support (as opposed to a HWCAP2-based
>> check) in a traced process.
>>
>> Originally we were going to do it via empty-parameter ptrace calls, but you
>> had mentioned something about a proc-based method, if I'm not mistaken.
> 
> We could expose more information via proc_pid_arch_status() but that
> would be the tagged address ABI and tag check fault mode and intended
> for human consumption mostly. We don't have any ptrace interface that
> exposes HWCAPs. Since the gdbserver runs on the same machine as the
> debugged process, it can check the HWCAPs itself, they are the same for
> all processes.

Sorry, I think i haven't made it clear. I already have access to HWCAP2 
both from GDB's and gdbserver's side. But HWCAP2 only indicates the 
availability of a particular feature in a CPU, it doesn't necessarily 
means the traced process is actively using MTE, right?

So GDB/gdbserver would need runtime checks to be able to tell if a 
process is using MTE, in which case the tools will pay attention to tags 
and additional MTE-related registers (sctlr and gcr) we plan to make 
available to userspace.

This would be similar to SVE, where we have a HWCAP bit indicating the 
presence of the feature, but it may not be in use at runtime for a 
particular running process.

The original proposal was to have GDB send PTRACE_PEEKMTETAGS with a 
NULL address and check the result. Then GDB would be able to decide if 
the process is using MTE or not.

> 
> BTW, in my pre-v4 patches (hopefully I'll post v4 this week), I changed
> the ptrace tag access slightly to return an error (and no tags copied)
> if the page has not been mapped with PROT_MTE. The other option would
> have been read-as-zero/write-ignored as per the hardware behaviour.
> Either option is fine by me but I thought the write-ignored part would
> be more confusing for the debugger. If you have any preference here,
> please let me know.
> 

I think erroring out is a better alternative, as long as the debugger 
can tell what the error means, like, for example, "this particular 
address doesn't make use of tags".

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
