Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4529C1EC2C0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 21:31:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tim5UJhd31wCl49qLlIDSwE8JavOJpC8PF/jUZd768U=; b=FiXmq4z1e/QkOn
	1/sez+GIr6ClXXt/3k/y/C6N54rZmAcTq19+/ZKoNrC1aBNN7SYPc0/g4Kg2WXCHVFfJPyBJMNJOE
	fL4WECmq4UoMwGog7ZMyBcIiS/RPnh9+VJzlo4SI0T+LoEUtlABETn3ooOVuLFIhwqTa8yocZrlHw
	bwGJXalD1vMGGNItYL1jwmE8QuKcR8I0als3bFddrv0z/LPG7hYcXcIzXXJDNq5Wrc2F06XbMbmfn
	WAEcCU1LWpez4NxiPkjfzK0/i+kBw2xTKDJAVUZ5HdphhcomAYYkFMPkTwBXakPF11T2PlLyvHm5X
	FH2LIGnVfFTLKFhRGPCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgCd0-0005SW-70; Tue, 02 Jun 2020 19:31:14 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgCcu-0005S4-4W
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 19:31:09 +0000
Received: by mail-pg1-x542.google.com with SMTP id o8so174394pgm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 12:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=6w+XkUkU5h5LP0oH8IvcLuw6U3W/97W5DvOiXSMn/mA=;
 b=WgkU/r3jMF9n33U8WloHJaM9zXFQJe2XsKzRsi/9mRzHgTDM8IZ97uCi0DdfxuBerD
 26V8O/NVxAOOvlGJyZO9cfboF+5RY/Lp2TTyeRE9QzjgRLbAvonU6TpkcjihKBsoOVpF
 QahWqbXJnNbkfidvMqq9c7UQcS2luBejKZl+olP8pzlszbI5SGw/956jai2htH3Lh9Bc
 2tbSkAvw14Q2ds0/JMN7GjEs7y59z2iCOULnoF2g77jIleJ84sjve+uNP/KO8FVQmuN5
 K95bNpISSjfOJFkStw24uui2/zSOmjMaiPW4GT0qMVAiV78fu1CWTEb9n5Qtn6vCpox3
 x5MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6w+XkUkU5h5LP0oH8IvcLuw6U3W/97W5DvOiXSMn/mA=;
 b=jsCTFOfSFfXzR16AdpqwL5+VdRYUkDpgv5B1Al5vuYLP58k20TKnBzyOEfByfgyJb+
 aaoe4nibFaFtVKuRjM9rMuF7bxRycvOJ2RPSaDmyFUZxWOqQ193iCFoHBBRJeWfEOhmk
 /Z6c7v5TAedejCdc5Zg1MUq0ljfpG5UpD3qQ1677vvJbcIGq3VsDwQ+hVG2eaxJnr9fd
 VjOb/Aqz6lBSwlzQLrz7gzcBKjYis7paYzSJIk7H64k88/8rWzlRvYnJxMQT6QzkmjHl
 FnZ3md0yRiLYmILTwS28XFwRALnyzw2mHJFcE2FQ/vSqxYhZxgZtCkOjLVm3fHZibTHA
 0NOA==
X-Gm-Message-State: AOAM5334Dv0UwhC19VFGWUyoPiRt43HIvEIaRB9X6TGE4hTU+ltNZOVL
 aWIozztbWl5T7p5cKGiaK72fow==
X-Google-Smtp-Source: ABdhPJyv+MI97viRmZ6Mwyl2wRJj7hDq6oxKKSr+JdzibxHzmCC73fMp5Fx+ItV+U3VgzYvK9x8iAw==
X-Received: by 2002:a17:90a:d809:: with SMTP id
 a9mr823280pjv.212.1591126267247; 
 Tue, 02 Jun 2020 12:31:07 -0700 (PDT)
Received: from ?IPv6:2a02:8084:e84:2480:228:f8ff:fe6f:83a8?
 ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
 by smtp.gmail.com with ESMTPSA id e12sm3086572pfj.137.2020.06.02.12.31.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 02 Jun 2020 12:31:06 -0700 (PDT)
Subject: Re: [PATCH RESEND v3 0/6] arm64: add the time namespace support
To: Andrei Vagin <avagin@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
References: <20200602180259.76361-1-avagin@gmail.com>
From: Dmitry Safonov <dima@arista.com>
Message-ID: <3906fa01-1b3c-76f7-5587-b1f5cf6b6066@arista.com>
Date: Tue, 2 Jun 2020 20:31:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200602180259.76361-1-avagin@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_123108_178177_9FF88D7E 
X-CRM114-Status: GOOD (  22.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrei,

On 6/2/20 7:02 PM, Andrei Vagin wrote:
> Allocate the time namespace page among VVAR pages and add the logic
> to handle faults on VVAR properly.
> 
> If a task belongs to a time namespace then the VVAR page which contains
> the system wide VDSO data is replaced with a namespace specific page
> which has the same layout as the VVAR page. That page has vdso_data->seq
> set to 1 to enforce the slow path and vdso_data->clock_mode set to
> VCLOCK_TIMENS to enforce the time namespace handling path.
> 
> The extra check in the case that vdso_data->seq is odd, e.g. a concurrent
> update of the VDSO data is in progress, is not really affecting regular
> tasks which are not part of a time namespace as the task is spin waiting
> for the update to finish and vdso_data->seq to become even again.
> 
> If a time namespace task hits that code path, it invokes the corresponding
> time getter function which retrieves the real VVAR page, reads host time
> and then adds the offset for the requested clock which is stored in the
> special VVAR page.
> 
> v2: Code cleanups suggested by Vincenzo.
> v3: add a comment in __arch_get_timens_vdso_data.
> 
> Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Dmitry Safonov <dima@arista.com>
> 
> v3 on github (if someone prefers `git pull` to `git am`):
> https://github.com/avagin/linux-task-diag/tree/arm64/timens-v3

Thanks for adding arm64 support, I've looked through patches and don't
see any major problems.

Reviewed-by: Dmitry Safonov <dima@arista.com>

> 
> Andrei Vagin (6):
>   arm64/vdso: use the fault callback to map vvar pages
>   arm64/vdso: Zap vvar pages when switching to a time namespace
>   arm64/vdso: Add time napespace page
>   arm64/vdso: Handle faults on timens page
>   arm64/vdso: Restrict splitting VVAR VMA
>   arm64: enable time namespace support
> 
>  arch/arm64/Kconfig                            |   1 +
>  .../include/asm/vdso/compat_gettimeofday.h    |  11 ++
>  arch/arm64/include/asm/vdso/gettimeofday.h    |   8 ++
>  arch/arm64/kernel/vdso.c                      | 134 ++++++++++++++++--
>  arch/arm64/kernel/vdso/vdso.lds.S             |   3 +-
>  arch/arm64/kernel/vdso32/vdso.lds.S           |   3 +-
>  include/vdso/datapage.h                       |   1 +
>  7 files changed, 147 insertions(+), 14 deletions(-)
> 

Thanks,
          Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
