Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F571C6DF4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:05:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nS8WsPbiFcXkd7nn9xChbtAuH7i24/v9fF+/xsmB8yc=; b=lYM4B6z3V3vrGy
	gw2DxZNNl54jTMJOQbRsrgdJ57FPoxzRaGzkP3FLGe2Fb+GhRzWw9urkW0ieOYO/IiW06myMhtNnV
	6v/Vrfuba/jjoI3jV9dXjVC464Z6Rxr7+aR0L1s0UYcRbe/THaybOnhgHHNs37h4DvCbqmZbBXYgC
	+CC4U27Bqd20bgAgChiHiXAbCQ50Xd/kVrai/tf7Ymv3LDh4MfCoAzFh7OdjROpQzYbBYll76ing0
	3g0j+7lMSXaCUOADwmljxS0wze530nZGzgEcpscn7mVmkNVc9G8iPDwVe1YccjH+1RYzgrR4AMcRn
	XH8LNJMIzjtCVGRwILWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWGvY-00084k-UL; Wed, 06 May 2020 10:05:20 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWGvJ-0006ok-Es
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 10:05:07 +0000
Received: by mail-wr1-x444.google.com with SMTP id l18so1464335wrn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 03:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=NxZqzWyEj0NmstSGm40xlfZ/BVYKGfWkncwyeDK+Wnc=;
 b=YvZHQ2cJwfn9kiQ40TOGasnK5VDEtv6DIUkzD+dGvO00Xb/tZgL46RZwgQQhXg208U
 WjPFQjC43OTwbWlf3EVe0vmPFWHClz9QXjDy1kEfAUnWip5DVpZrHnE/eZFFzpGY+T/o
 CiZko+LxoIyGmaPkdQdGDjFkWgCLVKHsdvjlRIQYomNi0jf2XfKXTkH2/H+uvqj1zvoe
 /sZXMvuWnVehc43zaO4CQOPcXmYMycE5mGiIE3nULFEtGA3BHNqi2XK5+wnankebtJvA
 Dqo2BAxYdyRKKZnAFjgpWL6hmfOiGYKrS/4AXV8sWIlxB2+KAGVafjnKp/f+io+2zgul
 gRvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NxZqzWyEj0NmstSGm40xlfZ/BVYKGfWkncwyeDK+Wnc=;
 b=N7gHESwsnnRDBZP5kQVHX1CJLP5RI1L1k+MjLfQCt+U5XjM6DsrRvkzFZEHWPujA2i
 P4fxg00FblCyTOO7Oh38g8ZR701PxY5n97akoH2PypxW7F/4gjp5ynDHR8xAYiZEKXxF
 b3n8WarzGI6UsSsuzmRDBkvf7tzlAwZ3MTivLijtmupaneGwVNpKKA3LrXwJEO3zumzK
 dt8IcKXlt7ihEdVZXB07rdiWjQdXZuQ1MhmvxdhspajI2boaE6XyNi1J6eGgnImeuwbq
 ljITGu4ZeEbwI4Wx7NjMnUFqvGRkKppiyCfCkmjEJepi+pPaYgfLvhZPHOnQLRukgsVL
 o2Mw==
X-Gm-Message-State: AGi0PubU4CzMUNkv4zP7r2tI9zVnLQcyap3t5V7LIRHH2E3USBxqGsGt
 zENJEBBylsL9kCu7QbbodaclOWc2
X-Google-Smtp-Source: APiQypJFVKH6FR4lDoS4yRXAF+COQ6L3cC0ZlAl0JudzrcF7KI7gSy9tcwkBp/Ze5II+f50b4ED9gA==
X-Received: by 2002:a5d:4005:: with SMTP id n5mr8537915wrp.242.1588759503213; 
 Wed, 06 May 2020 03:05:03 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5?
 ([2001:a61:2482:101:a081:4793:30bf:f3d5])
 by smtp.gmail.com with ESMTPSA id c25sm2195384wmb.44.2020.05.06.03.05.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 May 2020 03:05:02 -0700 (PDT)
Subject: Re: [PATCH 1/2] syscall.2: arm: Use real register names for arm/OABI
To: Dave Martin <Dave.Martin@arm.com>
References: <1588692280-15878-1-git-send-email-Dave.Martin@arm.com>
 <1588692280-15878-2-git-send-email-Dave.Martin@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9c75b89f-be1e-52a7-e98c-46b7dfe89d1d@gmail.com>
Date: Wed, 6 May 2020 12:05:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1588692280-15878-2-git-send-email-Dave.Martin@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_030505_521551_1F96417F 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: linux-man@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, mtk.manpages@gmail.com,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/5/20 5:24 PM, Dave Martin wrote:
> The arm OABI syscall interface is currently documented in terms of
> register name aliases defined by the ARM Procedure Call Standard
> (APCS).  However, these don't make sense in the context of a binary
> interface that doesn't comply (or need to comply) with APCS.
> 
> Use the real architectural register names instead.
> 
> The names a1-a4, v1... are just aliases for r0-r3, r4... anyway, so
> the interface is just the same regardless of which set of names is
> used.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>

Thanks, Dave. Patch applied, with Russell's Acked-by added.

Cheers,

Michael

> ---
>  man2/syscall.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/syscall.2 b/man2/syscall.2
> index f2b277b..53ab40e 100644
> --- a/man2/syscall.2
> +++ b/man2/syscall.2
> @@ -201,7 +201,7 @@ Arch/ABI	Instruction	System	Ret	Ret	Error	Notes
>  _
>  alpha	callsys	v0	v0	a4	a3	1, 6
>  arc	trap0	r8	r0	-	-
> -arm/OABI	swi NR	-	a1	-	-	2
> +arm/OABI	swi NR	-	r0	-	-	2
>  arm/EABI	swi 0x0	r7	r0	r1	-
>  arm64	svc #0	x8	x0	x1	-
>  blackfin	excpt 0x0	P0	R0	-	-
> @@ -332,7 +332,7 @@ Arch/ABI	arg1	arg2	arg3	arg4	arg5	arg6	arg7	Notes
>  _
>  alpha	a0	a1	a2	a3	a4	a5	-
>  arc	r0	r1	r2	r3	r4	r5	-
> -arm/OABI	a1	a2	a3	a4	v1	v2	v3
> +arm/OABI	r0	r1	r2	r3	r4	r5	r6
>  arm/EABI	r0	r1	r2	r3	r4	r5	r6
>  arm64	x0	x1	x2	x3	x4	x5	-
>  blackfin	R0	R1	R2	R3	R4	R5	-
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
