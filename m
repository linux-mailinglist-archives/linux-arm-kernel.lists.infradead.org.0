Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8991C6EB3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:47:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DmlFOVqlnuW1JStXrBv02IfN3+qXWF0z0YybX2k7mX0=; b=AeMZkQnCD1l5ZE
	WjBgzYBBgC91MU946BLezBfn5kr/RhA88r9aLpNL8PRfH49UDylssrFfpZ91D2dlgrWYUUan9Cia0
	WoB4y2mHD4WWHqwvOky4MNAUoYHG0TbxwV09UYimdGgoxH8ujljiatUpl8o3LqRm+Aizn/O1sxIfI
	TKQYEjT5e845v0+GAGj0X4/2t42KC48DyEp0vEaw+DStL9jjKtvu7jHIlMLEnQrLTKF7cX70LM726
	8PVNDWZowU6/bYjTw/jqTsABqjqOaVwmReevWdkt+oBT6H7kEfJRH49TAYD2H6X9rdhvs2Az0tf0q
	urDaiJpN+6zwb/Fly7Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHaM-0006ux-5m; Wed, 06 May 2020 10:47:30 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHaE-0006uS-Lb
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 10:47:24 +0000
Received: by mail-wm1-x342.google.com with SMTP id h4so2036023wmb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 03:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=U0c/o/ih8XjkFs39T8/w2Mwm5aWOHE3x26AvSmeqkow=;
 b=ByXxKed4vRtB5iUhx98ERXa2zcUOX8CFtZIoDyqobQQJ4GDJvGgI+4leRrmWAI6hPw
 +WhK+co7vjVRa6K0kU2NANHtsOfvy9EYTKk7sfizvaHp45b3sDQHcZm0mTOr+shYNnIF
 UMDzuDL60DVOdgOC0Ux+2fBwwEN3f0qWeg3Q8bc7bghSXlynWtB4K6cIgbLhv3tky2qJ
 /8aNnjhm/qOwaUg6WVffawlKMXKz5PcZe9HADlw91OkPgWOzUD/Xfw/13GwMn4y2ug/H
 P9RNGPFQAHYdxKgHwo1/GxIt9BB8AQgqPTdtDIYKlgZ30NPyZnNUIpeQzBCriumQoUX3
 bkFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=U0c/o/ih8XjkFs39T8/w2Mwm5aWOHE3x26AvSmeqkow=;
 b=MeQp+mlznev0wz2SUBEFWU3znv3mlFIoNO1E5cj8gDv9K3Df6caQp0NUlFJgAylm5g
 RRa6L82Ku3pqNr84v2bm16gQtMXlY8JTEhIlyI6q7WaqqSMk7QZzHpBmp5m7+q2M5zZM
 Lz4JSC3ViiX4BkXis7tb+2i6Caurce5u2iSgOPJSOPmaMvXgBKciXwSyYlcSxvLdhPZm
 QzSJTTugURNfVMaOy9lCAAPA7LF895RvmjV3mE+Td6dFQRU3v+UNr15m0HiV7uowk75T
 FGrIZdzvneKJdzrshBD4ytKO6GKkjbJE6tuVJOEWRQEopbKfbWhiRPzM3P1+iopQG4Nj
 JumQ==
X-Gm-Message-State: AGi0PuZ8BQ4OQ6EWLyJDa2hD+xf6ltEXFcsLwkdALzNP0qfLdhq/oI6a
 4Ofpieg3WkfMC9j38JnqYyj2kzou
X-Google-Smtp-Source: APiQypJ8txgcmPuJN8scqmElYyg8NVhJ5SI+oZnH5Ko3rK0TUA6rrxrBxXMiCzbtry3mhMJeZsL4sw==
X-Received: by 2002:a1c:e444:: with SMTP id b65mr3924139wmh.6.1588762040281;
 Wed, 06 May 2020 03:47:20 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5?
 ([2001:a61:2482:101:a081:4793:30bf:f3d5])
 by smtp.gmail.com with ESMTPSA id l5sm2325865wmi.22.2020.05.06.03.47.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 May 2020 03:47:19 -0700 (PDT)
Subject: Re: RFC: Adding arch-specific user ABI documentation in linux-man
To: Dave Martin <Dave.Martin@arm.com>
References: <20200504153214.GH30377@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <07855941-d0f7-2ec6-819e-e43a8935e29e@gmail.com>
Date: Wed, 6 May 2020 12:47:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200504153214.GH30377@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_034722_708065_D12F08D8 
X-CRM114-Status: GOOD (  24.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mtk.manpages[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, mtk.manpages@gmail.com,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Dave, et al.

On 5/4/20 5:32 PM, Dave Martin wrote:
> Hi all,
> 
> I considering trying to plug some gaps in the arch-specific ABI
> documentation in the linux man-pages, specifically for arm64 (and
> possibly arm, where compat means we have some overlap).

Sounds good to me.

> For arm64, there are now significant new extensions (Pointer
> authentication, SVE, MTE etc.)  Currently there is some user-facing
> documentation mixed in with the kernel-facing documentation in the
> kernel tree, but this situation isn't ideal.
> 
> Do you have an opinion on where in the man-pages documentation should be
> added, and how to structure it?
> 
> 
> Affected areas include:
> 
>  * exec interface

Not sure what the details are here, so I have no opinion yet.
But probably, as additions to execve(2).

>  * aux vector, hwcaps

==> getauxval(3)

>  * arch-specific signals
>  * signal frame

Not sure what the details are here, so I have no opinion yet.

>  * mmap/mprotect extensions

See below.

>  * prctl calls

As additions in prctl(2) would be fine, I think.

>  * ptrace quirks and extensions

See below.

>  * coredump contents

Not sure what the details are here, so I have no opinion yet.
Possibly as additions to core(5).

> Not everything has an obvious home in an existing page, 

Yes.

> and adding
> specifics for every architecture could make some existing manpages very
> unwieldy.

Still, I think it's worth adding details, especially for widely
used architectures.
 
> I think for some arch features, we really need some "overview" pages
> too: just documenting the low-level details is of limited value
> without some guide as to how to use them together.
> 
> 
> Does the following sketch look reasonable?
> 
>  * man7/arm64.7: new page: overview of arm64-specific ABI extensions

I'm a little unclear on what would land in here, but sounds 
reasonable in principle.

>  * man7/sve.7 (or man7/arm64-sve.7 or man7/sve.7arm64): new page:
>    overview of arm64 SVE ABI

Sounds reasonable to me.

>  * man2/arm64-ptrace.2 (or man2/ptrace.2arm64): new page:
>    arm64 ptrace extensions

I think maybe better is: ptrace-arm64.2

I'm agnostic about whether there should be a new page, or whether 
these should be added to ptrace(2). But, we could start with the
idea of a new page.

>  * man2/mmap.2: extend with arm64-specific flags (only two flags, so we
>    add them to the existing man page rather than creating a new one).

Sounds good to me

> etc.
> 
> 
> Ideally, I'd like to adopt a pattern that other arches can follow.

Well, if they do follow. Arch-specific documentation is woefully
thin at the moment. I'm not going to worry too much about the right
pattern (don't let perfect get in the way of good, yadda, yadda),
until I get so much arch-specific documentation that some refactoring
may be required. (I'm not going to hold my breath waiting for that
to happen ;-).)

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
