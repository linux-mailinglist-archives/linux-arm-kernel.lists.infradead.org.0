Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E411D5ACC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 22:43:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j/rHGSHc+oHa71cEbZWgJ1uaTSqjsgpqFgfyqiyPXeM=; b=og0AmG3xqzB5ie
	LZ3NTeRqs0QlpTXFDqv/2MVQ42YqUxFQEdDtHzky5Ko0/+iEqrLuIlvY3tKNwkbhrkJLVh8rAGLXA
	vliKHpDIVWw1JG9YLmzJveaEFJTSVCKSE5mGB0BCj7mKTyiB1sHnJcA3O3DIAVi8aQMm+Ojf59l0B
	B7zKNv3CnjTMfFhacbniJP+Jr5zi8Fo9E1Ih54DwFbs2k6bBP0E09eeBeLH9AuPYqnJO20YMgSo1G
	xg65amcLPxN7r/whnXVni061zxOMycO8jDNwYzS/lTLEvagtl01VoADoNUFAm3nJzeje5wWVp+voM
	MiydyqxZQZVIRGZqzyFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZhAf-0003T2-Ic; Fri, 15 May 2020 20:43:05 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZhAW-0003SK-Iv
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 20:42:58 +0000
Received: by mail-ej1-x644.google.com with SMTP id se13so3314661ejb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 13:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dz+fWfDJYsM+tFXNBKAA9wqSLEoWW+Ek7ibRNvsSK4A=;
 b=HuhqVP38EnG9v4J11YxP/SXESV/y9N9Mu6eqUgsjR3b5rpD8n4+8IAl9zZCsrjaWmD
 bdt5vMFXqOH9VSAXo2uCH7i/Ba3MPOVWUkfld1CKVR5VAHxoKMI27hnZ8B0isc+6plTd
 3i257scz/DFqUsV55sLUnz31Qoj2gddWUVCcN/YbtfWdubh/Bp+ZHdrWrkIHvntpjws4
 ec5mBj941nZXLGJEuYPzkaPI7Mj7PZqiO4ArfmnD1sh0cjzfSc7MqPcHm2FhD0UCsdnF
 sOKaWk03AmsyDohBerKzNpwjZJQzFJPHDRCfs70bXTfPdYsTCAAUrVQHG1mloMy+PbuF
 YcZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dz+fWfDJYsM+tFXNBKAA9wqSLEoWW+Ek7ibRNvsSK4A=;
 b=I1OGqqg8LDC6L9FsR9QFZxtHoDbLpHdQsA1jKF5yoM+d7XVXQZgdP+LNMKpov7WA77
 /iCzNtvbD2beXl9jRpY+VkWySp5Jer9WNcuJShCXUIj65/UyacTrYwmJitvxaukZDdkc
 pMRjqbOEPi63PMRhQKX+ptDqKaBAbIzmAPCDFBqs3rTvoU9GN0tIs6+6l3Al8dGSPCwx
 FNPyHkNvzsCyRgB1k/ST85YutgsfjF8yyj7PWtQCtbuw4ZIwcIBojsjV0mlggVmGyuHA
 +tXVSUkPEXHVUrpEp5qGzZrojcgB32MMWjHUbmRPL9jBRu7JvbtmB0WkXLaIJz2r7Bcq
 mg2g==
X-Gm-Message-State: AOAM532dJ7ZDXNPz3y1Y+0M3KQ3YXwvZU8m0yi8vyhnCHduWXk9JAXdI
 nk3tvAHE5inN+C2dExkcFGutpQZHOk90upD4ldcCcw==
X-Google-Smtp-Source: ABdhPJxqgAkYgYezisODwIMgNYIOCNmXUdqnBOG6D2B2uk0jS3Oca1lw0nYuQyVFttqz+Kniz2zo7IYbtafB+LdjELA=
X-Received: by 2002:a17:906:55c3:: with SMTP id
 z3mr4688303ejp.180.1589575371237; 
 Fri, 15 May 2020 13:42:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200515172756.27185-1-will@kernel.org>
In-Reply-To: <20200515172756.27185-1-will@kernel.org>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Fri, 15 May 2020 13:42:40 -0700
Message-ID: <CABCJKucXmMD82mQ0rSMjfByXD42htTjkde3TsKTVP-jvuqkZwQ@mail.gmail.com>
Subject: Re: [PATCH 0/6] Clean up Shadow Call Stack patches for 5.8
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_134256_643529_BECE6B4E 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Mark Rutland <mark.rutland@am.com>, kernel-team@android.com,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 10:28 AM Will Deacon <will@kernel.org> wrote:
>
> Hi all,
>
> Here's a series of cleanups I hacked together on top of a modified v13
> of the Shadow Call Stack patches from Sami:
>
>   https://lore.kernel.org/r/20200515172355.GD23334@willie-the-truck
>
> The main changes are:
>
>   * Move code out of arch/arm64 and into the core implementation
>   * Store the full SCS stack pointer instead of the offset
>   * Code simplification and general style things
>
> I'd like to queue this on top early next week so that it can spend some
> quality time in linux-next.
>
> Cheers,
>
> Will
>
> Cc: Sami Tolvanen <samitolvanen@google.com>
> Cc: Kees Cook <keescook@chromium.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Mark Rutland <mark.rutland@am.com>
> Cc: Jann Horn <jannh@google.com>
> Cc: Ard Biesheuvel <ardb@kernel.org>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Cc: <kernel-team@android.com>
>
> --->8
>
> Will Deacon (6):
>   arm64: scs: Store absolute SCS stack pointer value in thread_info
>   scs: Move accounting into alloc/free functions
>   arm64: scs: Use 'scs_sp' register alias for x18
>   scs: Move scs_overflow_check() out of architecture code
>   scs: Remove references to asm/scs.h from core code
>   scs: Move DEFINE_SCS macro into core code
>
>  arch/Kconfig                         |  4 +--
>  arch/arm64/include/asm/scs.h         | 29 ++++------------
>  arch/arm64/include/asm/thread_info.h |  4 +--
>  arch/arm64/kernel/asm-offsets.c      |  2 +-
>  arch/arm64/kernel/entry.S            | 10 +++---
>  arch/arm64/kernel/head.S             |  2 +-
>  arch/arm64/kernel/process.c          |  2 --
>  arch/arm64/kernel/scs.c              |  6 +---
>  include/linux/scs.h                  | 16 +++++----
>  kernel/sched/core.c                  |  3 ++
>  kernel/scs.c                         | 52 +++++++++++++---------------
>  11 files changed, 55 insertions(+), 75 deletions(-)
>
> --
> 2.26.2.761.g0e0b3e54be-goog

Thanks, Will. I tested these on my SCS tree and didn't run into any
issues. Looks good to me.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
