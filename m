Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 552971D106A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 13:01:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r4IhB+F8OmZ0kJAFnXMNeppuoI748F+l5r0SNwwgimE=; b=FJTPfxlOSueTty
	26/bP38ob1Sa8XhgMmHhp9KZ4v3RBHU85DhSaONdS3plBFt9PRMD5M7HObUTywtZJF0o3+rHV5RJb
	T/ZTJqeKf5N/w/6Bqx+tguGCQ40k2YkmLK+OyCB3BKzfq2aGJeGooAeAyyQ58erFAavO2+4cuhE5r
	GDL3GgsehXk+pi6/Dnq5v90rV9kErb0YuXXvTNnK5d5dIvSf6hAL667tWQilBaaCW0dqBhukvkdaq
	knjphmnkO/8vLaqGg0zP3dbjH8xsZ12jUtaQ7YvruzDVfru3iI6JdCVBP2EopvkAo7MnC/7AxQisI
	TOP0YUdI4D/EKLNJ9mRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYp8d-0005eq-Sg; Wed, 13 May 2020 11:01:23 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYp8V-0005dp-LY
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 11:01:17 +0000
Received: by mail-wm1-x344.google.com with SMTP id e26so26064512wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 04:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7iidg7aCC8jgWSleEvIT2tYsa62o79JfzPXFekGKGM8=;
 b=frs1EdQbQSzttbYZeps+7acS/Ww65s9txJ3+/hAuL4U7wMVqodgsJ+6hT7raUUu+zs
 8f+eyFyVPwH1/glbUYFCsGfXvV2/mk2I7Wec7j1Dmzen46H3XYa1Bvlzl5cRwKY+/jOb
 i/b1g81h7jybvKsNrDOCKWQjqBzxzEDoVvLW2R4q8yI+kX6IYsH/v5P0ule7mn8nP8Qx
 di7xeDNurjVAvqmj9n3w+Kcx/ihil7peyheqrl2UcyhYPwGawUfr5//kp+nnE6LqNKQT
 70BTtDY9w3qB5hp2SvkC9Fx/4lR0sCsVCYoteR9sm52ZkrVG820nvbDfGzX15/wV+QvW
 L96w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7iidg7aCC8jgWSleEvIT2tYsa62o79JfzPXFekGKGM8=;
 b=hKxMfj/2dWP/49eXrBhIx5FRq4XVtBD73xPwNf4GnKfrM46GvpCsk4jzY5gxbKo0Nz
 URYBHGcwVy89PmAnjNYDvYwG8kdnqz1LcaRE0DM4tOArU2VPOyn3S2/XDxOs9a/Cy529
 nm+UasXxMgx1K1uEErZhOdzs4Atj6tpcLe28DJ0uewoDwKgm8eFRT30YzyNTW5/TZkoj
 Idr+utJgOcvRNUcXEsWbEBEs9kXngEGZoDtEpTh+TsVQsXn+hBLTlYaYE4Se/WouIkoR
 T8AH1mSBF3AIuPMVxOuQS6cbqJdIZBm1zS+PwlJXvivSOQP0sx8eiZSj8zArLye3SfaO
 Guhg==
X-Gm-Message-State: AOAM531p/N75O9pCRy0pJunZ3EdNQuWycVGLwGfcBtBKc/4NAboSHf3P
 mRBwPL6L1NnXNp46SRnZUug=
X-Google-Smtp-Source: ABdhPJy/PoJ3S0+LVkut0EAixnl+2hpekBMzQd3ZftzbEWYyBBv8GN0xcQDAGvMPq8TWU0R1XLN9bg==
X-Received: by 2002:a1c:9d50:: with SMTP id g77mr8446120wme.56.1589367674052; 
 Wed, 13 May 2020 04:01:14 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5?
 ([2001:a61:2482:101:a081:4793:30bf:f3d5])
 by smtp.gmail.com with ESMTPSA id s11sm26372204wrp.79.2020.05.13.04.01.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 04:01:13 -0700 (PDT)
Subject: Re: [PATCH 13/14] prctl.2: Add SVE prctls (arm64)
To: Dave Martin <Dave.Martin@arm.com>, Will Deacon <will@kernel.org>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-14-git-send-email-Dave.Martin@arm.com>
 <20200513084351.GB18196@willie-the-truck> <20200513104635.GD21779@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a01fc572-cac8-1932-c3e5-c70184417ca3@gmail.com>
Date: Wed, 13 May 2020 13:01:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200513104635.GD21779@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_040115_735742_45866C06 
X-CRM114-Status: GOOD (  31.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mtk.manpages[at]gmail.com]
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 mtk.manpages@gmail.com, linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 5/13/20 12:46 PM, Dave Martin wrote:
> On Wed, May 13, 2020 at 09:43:52AM +0100, Will Deacon wrote:
>> Hi Dave,
>>
>> On Tue, May 12, 2020 at 05:36:58PM +0100, Dave Martin wrote:
>>> diff --git a/man2/prctl.2 b/man2/prctl.2
>>> index 7f511d2..dd16227 100644
>>> --- a/man2/prctl.2
>>> +++ b/man2/prctl.2
>>> @@ -1291,6 +1291,104 @@ call failing with the error
>>>  .BR ENXIO .
>>>  For further details, see the kernel source file
>>>  .IR Documentation/admin-guide/kernel-parameters.txt .
>>> +.\" prctl PR_SVE_SET_VL
>>> +.\" commit 2d2123bc7c7f843aa9db87720de159a049839862
>>> +.\" linux-5.6/Documentation/arm64/sve.rst
>>> +.TP
>>> +.BR PR_SVE_SET_VL " (since Linux 4.15, only on arm64)"
>>> +Configure the thread's SVE vector length,
>>> +as specified by
>>> +.IR arg2 .
>>> +Arguments
>>> +.IR arg3 ", " arg4 " and " arg5
>>> +are ignored.
>>
>> Bugger, did we forget to force these to zero? I guess we should write the
>> man-page first next time :(

Quite...

> Not an accident, but there does seem to be some inconsistency in policy
> among the various prctls here.

The whole 5-args-for-prctl thing was a bit of a misdesign.

The general preference is that, for new prctls, unused arguments 
should be required to be zero. Historically, there was much
inconsistency.

> glibc explicitly has
> 
> 	extern int prctl (int __option, ...);
> 
> (and nobody has to write _exit(0, 0, 0, 0, 0, 0) after all.)
> 
> Is there some agreed rationale for requiring redundant arguments to be
> supplied explicitly as zero?  For now there are likely to be few users
> of this, so we _might_ get away with changing the behaviour here if it's
> considered important enough.

See above.

> There is no forwards compatibility problem with this prctl though,
> because there are spare bits in arg2 which can "turn on" additional
> args if needed.
> 
> Also, it's implausible that PR_SVE_GET_VL will ever want an argument.
> 
> There are still 2 billion unallocated prctl numbers, so new prctls can
> always be added if there's ever a need to work around these limitations,
> but it seems extremely unlikely.
> 
>>
>>> +.IP
>>> +The bits of
>>> +.I arg2
>>> +corresponding to
>>> +.B SVE_VL_LEN_MASK
>>
>> PR_SVE_LEN_MASK
> 
> Hmm, not sure how that happened.  Good spot!
> 
> I'll recheck that all the names are real when reposting.
> 
>>> +must be set to the desired vector length in bytes.
>>> +In addition,
>>> +.I arg2
>>> +may include zero or more of the following flags:
>>> +.RS
>>> +.TP
>>> +.B PR_SVE_VL_INHERIT
>>> +Inherit the configured vector length across
>>> +.BR execve (2).
>>> +.TP
>>> +.B PR_SVE_SET_VL_ONEXEC
>>> +Defer the change until the next
>>> +.BR execve (2)
>>> +in this thread.
>>
>> (aside, it's weird that we didn't allocate (1<<16) for one of these flags)
> 
> The flag definitions are shared with ptrace: ptrace is the
> SVE_PT_REGS_SVE format selection bit, which isn't relevant to the prctl.
> 
> Maybe it would have made more sense to keep the definitions completely
> separate, but it's there now.
> 
>>> +If
>>> +.B PR_SVE_VL_INHERIT
>>> +is also included in
>>> +.IR arg2 ,
>>> +it takes effect
>>> +.I after
>>> +this deferred change.
>>
>> I find this a bit hard to follow, since it's not clear to me whether the
>> INHERIT flag is effectively set before or after the next execve(). In other
>> words, if both PR_SVE_SET_VL_ONEXEC and PR_SVE_VL_INHERIT are specified,
>> is the vector length preserved or reset on the next execve()?
> 
> It makes no difference, because the ONEXEC handling takes priority over
> the INHERIT handling. But either way INHERIT is never cleared by execve()
> and will apply at subsequent execs().
> 
> Explaining all this properly seems out of scope here.  Maybe this should
> be trimmed down rather than elaborated?  Or perhaps just explain it in
> terms of what the kernel does instead of futile attempts to make it
> intuitive?
> 
> Ultimately I'll probably write a separate page or pages for SVE and other
> arm64 specifics.

(okay.)

>>> +.RE
>>> +.IP
>>> +On success, the vector length and flags are set as requested,
>>> +and any deferred change that was pending immediately before the
>>> +.B PR_SVE_SET_VL
>>> +call is canceled.
>>
>> Huh, turns out 'canceled' is a valid US spelling. Fair enough, but it looks
>> wrong to me ;)
> 
> Yeah, I know, but the man pages do have a documented policy on this...
> 
> prctl.2 has a lot of authors, so having mixed spellings could get
> particularly messy.

Quite. Indeed, that was how things were when I took over as
maintainer: a hodge-podge of British and American spellings,
occasionally even in the same page. I decided we needed
consistency, and though American is not my native spelling,
it seemed the most appropriate convention.

>>
>>> +If
>>> +.B PR_SVE_SET_VL_ONEXEC
>>> +was included in
>>> +.IR arg2 ,
>>> +the returned value describes the configuration
>>> +scheduled to take effect at the next
>>> +.BR execve (2).
>>
>> "describes the configuration" how?
>>
>>> +Otherwise, the effect is immediate and
>>> +the returned value describes the new configuration.
>>> +The returned value is encoded in the same way as the return value of
>>> +.BR PR_SVE_GET_VL .
>>
>> Aha. Maybe move this bit up slightly?
> 
> Yes, I'll reorder that.
> 
>>
>>> +.IP
>>> +If neither of the above flags is included in
>>
>> are included
> 
> Debatable.
> 
> The subject of the verb here is not "flags" (plural), but "neither of
> the above flags" (which is more nuanced, though it can be interpreted
> as singular).  Usage varies, and I don't consider this wrong.

As far as I know, the grammarians are with you on this one,
Dave, and if I was writing carefully, I'd do the same as you.
But, the plural here is also frequent (and so common that I would
hesitate to call it "wrong").

[...]


Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
