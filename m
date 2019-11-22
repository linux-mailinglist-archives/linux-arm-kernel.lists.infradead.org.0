Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF30C1077EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 20:19:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9xZB0bAU4Faj6hKDwSmwQdsmYF4yZVMW6wFyXnnKSG4=; b=rkxyKDnoPbJ23g
	gpyjaKHiFAeD5KyK1kcQALI/ZUX0mdJwBJ2KWbELFIRVn1/2pgWwCdrKjb85yZj87KwracH1VTEi+
	0TWl8vF+vxYicl6TO4sghH09y1APzh/yTda4Uf0HbF8pSAxc4S2nzjFK4VODh6Vf/KTCcENQh5pge
	gtgf/Ay/0Gae8vMgdNqUBbaAHSsONlwYCrXLaR3366vUf+crvlxFkcMLC+sTFH8wy70Jev2H7EH2T
	1unC6khAljOW9Lft2yz1EKfhkqo6ZK6qloWEhAsax/CC8P3MCDx0B9ONZzzkGuM8ONSncmu7CtQGi
	85KH57DFANtp31pJoCSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYESl-0004LE-4m; Fri, 22 Nov 2019 19:19:27 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYESb-0004Kt-1h
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 19:19:18 +0000
Received: by mail-wm1-x343.google.com with SMTP id l17so8624645wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 11:19:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=VzSG4IDFJoO9U5gAwofBeajt4Puo4tKVyaveV20TUSM=;
 b=chlXO6Uek922cZDjmHyNkX+Tg9N0l6XIDtfqolRHlhRrTqtjfNyxJ9UEb03mvLwEn3
 dyWafFaES/l9NzJvLBaePoDUNqPp6RCGSuhKBqxc2Cf5+ZM+XYgaEKxOccvkYod1L0bH
 yrbH6aGT5p0wNRVQwyGqQ+eT5a9bRoEeJXcKuS+YE02+oGSQrLiJZ6wlqx8IhikE6d47
 9n0YTaSEZi55uEBDs5lHk5Cy0MwTNddgrllAKAa9skes4kvIe1+emgBVbXdHn0HYfQb2
 wXilDHyUQE7ye+N6Vo3skUIO1XQVGrNqgagX1xja2takC/VOAX4yvjksA+frfNv8QpU/
 3Gjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VzSG4IDFJoO9U5gAwofBeajt4Puo4tKVyaveV20TUSM=;
 b=Obzdbeo48Rj119hLZO4K6vRa1uewbsBdM6xyN/Tq30vhi8qBrFc4VkT/FsGUe3fdUs
 geUiuIMQZf3ACgvmfW1GKKARagAlmk5tdpYOVCQU63BXhDJi1iW9CWDv26/YCrbOfq0s
 DDWxv9UkPXtVZus6bK/DwZU6M9uQsZSAouZk074XT0d21uRY3P+NFhY+L5KrhYKGmmMt
 czzCXIYT7k2gGNQkGNKcBIY/Tk91JsJnanZX1xOvjEl5t6XfWkWlGeQp4MRcOkihdI4o
 K/cHbnJPJP0s3cfMSMkKfXnPs4Q9s/VioNF6u3lH3U9XuQewvP2ql/XbppZts0VFVKls
 lgJw==
X-Gm-Message-State: APjAAAVIV065nuf4HX9x1tChMPQb4OyyssY/0XFQpd/cLrp6Jggx4Lnj
 0nS8YNZgLaeacdmM+c5okb3D54+c+A+F4Q==
X-Google-Smtp-Source: APXvYqwxR3WP655AMmLmzu6tBI+nRa8gkS+QC3hgzmBdA7f0ovAUJyx+rkATtb35EJEOjMCgIQPLtw==
X-Received: by 2002:a7b:c40e:: with SMTP id k14mr9648683wmi.87.1574450352838; 
 Fri, 22 Nov 2019 11:19:12 -0800 (PST)
Received: from [10.0.0.120] (host-87-242-235-70.ppp.onetel.net.uk.
 [87.242.235.70])
 by smtp.gmail.com with ESMTPSA id x6sm9136029wrw.34.2019.11.22.11.19.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 22 Nov 2019 11:19:11 -0800 (PST)
Subject: Re: [PATCH v2 07/14] arm64: initialize and switch ptrauth kernel keys
To: Amit Daniel Kachhap <amit.kachhap@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
 <1574166746-27197-8-git-send-email-amit.kachhap@arm.com>
From: Richard Henderson <richard.henderson@linaro.org>
Openpgp: preference=signencrypt
Message-ID: <432f8082-c34f-8036-8c5e-fd1fcec9aa17@linaro.org>
Date: Fri, 22 Nov 2019 19:19:09 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1574166746-27197-8-git-send-email-amit.kachhap@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_111917_120591_AC2B3CD8 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/19/19 12:32 PM, Amit Daniel Kachhap wrote:
> --- a/arch/arm64/include/asm/asm_pointer_auth.h
> +++ b/arch/arm64/include/asm/asm_pointer_auth.h
> @@ -35,11 +35,25 @@ alternative_if ARM64_HAS_GENERIC_AUTH
>  alternative_else_nop_endif
>  	.endm
>  
> +	.macro ptrauth_keys_install_kernel tsk, tmp1, tmp2, tmp3
> +	mov	\tmp1, #THREAD_KEYS_KERNEL
> +	add	\tmp1, \tsk, \tmp1
> +alternative_if ARM64_HAS_ADDRESS_AUTH
> +	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KERNEL_KEY_APIA]
> +	msr_s	SYS_APIAKEYLO_EL1, \tmp2
> +	msr_s	SYS_APIAKEYHI_EL1, \tmp3
> +	isb
> +alternative_else_nop_endif
> +	.endm

Any reason you didn't put the first two insns in the alternative?

You could have re-used tmp1 instead of requiring tmp3, but at no point are we
lacking tmp registers so it doesn't matter.


r~

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
