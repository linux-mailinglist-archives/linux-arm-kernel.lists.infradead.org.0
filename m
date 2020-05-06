Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 443511C6E2C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:16:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7VT1Zkdw3pjCnrRXWPGzWV1YKmYZnAZWSOCRJuXNQ34=; b=cl0c4APowhJnLb
	NLrvLCaaX5UwZQAizkGZ3/Q0tF/NuYrdLmRgrmYlXLjsUACwYznWZUrowJXd+24FOXNJJ1odr0mc+
	yIJmiZzgasE4HEac/H5BklJxaqQi55m3EmIpTkM54sxDpc9yyKylOmpOFfA7YG6O4m3cZZ2Gp1lyc
	FrcQ02mDjaeBCMYr/KX1Go+mfn9G0QekUH24jiVBgV+W31+M9TRm980It3L4vXDzLvG8kkWBXI5Xa
	TT+Nk6BmoX1/+owOkAZ5ELk7GND5ozBHRI46u9FLFII/3Rokfn9eMKEfl7mjbFGCdVTNrhB8wXkVx
	FZ5lxAKc9VmUNv+q4cwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWH6E-0007T2-LZ; Wed, 06 May 2020 10:16:22 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWH66-0007Re-JU
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 10:16:16 +0000
Received: by mail-wm1-x344.google.com with SMTP id u127so1977807wmg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 03:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=PS0DJJtvWuHHfB/gb5wiK+AKxn9b2auIGP2Tdd+Xc6I=;
 b=Lx3XkbsGNc4VdjoTSabW2bJRhuXrArh9dewfOZ8xKEoKDoDNvRPFCNJtrcXLBeLFhq
 /jcZdrPUfau34vhVt+k6oSo25kYeJx9gAVlyUrT79zxcF9s2lVcrUiArEf3rTsZ+4XAF
 vlR+1v3iusahOj24FvnNdDFe6mGxIbSQISH+RWlE+uDAr5MvYBlUAsIjHjpGcjJ3Sc5Y
 6D9pChrhkFsVV6M05nydrHUfqlY3WYqjWjEE6WwXSaNRYr9qMqODePFJA2CfCghqnWYL
 k8yqjrUNEYU8qkHQhCeu4amkRWAYT1SmuoN8uvIa81o1gLMa91yB6W9WkDq3T25e5swK
 TKlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PS0DJJtvWuHHfB/gb5wiK+AKxn9b2auIGP2Tdd+Xc6I=;
 b=ILJttsmZRWspWzLP/lsTN4RIpy0cjOhAoP+gtZjObWl5GYoa5Pm8xGtlPOah89FQaJ
 edwwqurSPZ594TAspR0f+St5UhRJ18n41rUbV6seMJg6+ruwdXfO5B32zSCsd1E0z4yg
 djOXI/vNXN+iS7MIxqxl0AAVkLUn+0cib3p8mQA2BFztTrkSTJsK+13OT9/qAmirKHdh
 d5dU43T1JgSieAdHfdTkmsaL5fHmxIMUaIflZ86iqKZrGknqEEvcsNKvuMinzjqNAaVF
 RiuoZmn47cn1fGewE7QANLuYdC+TQLci48aVwNDh6nNEzVC9/w/dTDaZDvqsodXDNGew
 SVgg==
X-Gm-Message-State: AGi0Pubwx1vrXO1jgLDQ6IJUfERzfp+5P3TNMVlLSNSqtWI/3Ptn3fGP
 wV67Y9Fn2yu5z5JUqyCplJ7mS+kF
X-Google-Smtp-Source: APiQypKK3r/55oUPK8TAeaGZHWQcJDF2vIIMv4dWsYnR7vLm4xlfPl7oghC+AZpwZtof+2deycWcow==
X-Received: by 2002:a1c:5403:: with SMTP id i3mr3969583wmb.10.1588760170997;
 Wed, 06 May 2020 03:16:10 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5?
 ([2001:a61:2482:101:a081:4793:30bf:f3d5])
 by smtp.gmail.com with ESMTPSA id g24sm2057722wrb.35.2020.05.06.03.16.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 May 2020 03:16:10 -0700 (PDT)
Subject: Re: [PATCH 2/2] syscall.2: arm64: Fix syscall number register size
To: Dave Martin <Dave.Martin@arm.com>
References: <1588692280-15878-1-git-send-email-Dave.Martin@arm.com>
 <1588692280-15878-3-git-send-email-Dave.Martin@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <82affb91-8aa9-0316-421a-3ce503e396e0@gmail.com>
Date: Wed, 6 May 2020 12:16:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1588692280-15878-3-git-send-email-Dave.Martin@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_031614_643445_68058018 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
> arm64 is currently documented as receiving the syscall number in
> x8.
> 
> While this is the correct register, the syscall number is a 32-bit
> integer.  Bits [63:32] are ignored by the kernel.
> 
> So it is more correct to say "w8".

Thanks, Dave. Patch applied, with Will's Acked-by.

Cheers,

Michael

> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> ---
>  man2/syscall.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/syscall.2 b/man2/syscall.2
> index 53ab40e..d724651 100644
> --- a/man2/syscall.2
> +++ b/man2/syscall.2
> @@ -203,7 +203,7 @@ alpha	callsys	v0	v0	a4	a3	1, 6
>  arc	trap0	r8	r0	-	-
>  arm/OABI	swi NR	-	r0	-	-	2
>  arm/EABI	swi 0x0	r7	r0	r1	-
> -arm64	svc #0	x8	x0	x1	-
> +arm64	svc #0	w8	x0	x1	-
>  blackfin	excpt 0x0	P0	R0	-	-
>  i386	int $0x80	eax	eax	edx	-
>  ia64	break 0x100000	r15	r8	r9	r10	1, 6
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
