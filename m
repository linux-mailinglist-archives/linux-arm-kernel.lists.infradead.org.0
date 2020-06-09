Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DEF1F38F7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 13:04:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r16Y4MMhBswXCJNWfV6Oxzzmy5FPHvQdtF0Xfdc2zys=; b=c5hEB65GOUALoF
	yEHejO98wYRu33X2Ft+ZzXnWcFr2TZoJV14I/WagWlwiHJmOuFuLDoQG5E0nTmMiU3uqss5SZWzjo
	GTuZiGbVnYukwXsI7KEWUCSqvRbkh2YQmzb/LYsl8Hxp2rA6G9C/xh8E084ZnbDWDKUjJRq0w5Sky
	0SaQrX77CC8C5a67QqmNLNtR9l1JlGHQgImPLhMprr/wQvruD8gSuAaYa+WyeEhQ5e21xsafFM/oS
	QlgFwpLnRUWQ/YuxmYezZWUgWcxAe06ZuSRrgA4kmKb11FzJ4sCXt/R/J47J3o2XQwG6wL/L3vIdv
	b7RKEzDVSo1Dqh36tBnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jic3a-0005QD-Lv; Tue, 09 Jun 2020 11:04:38 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jic3Q-0005PX-4X
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 11:04:29 +0000
Received: by mail-wm1-x344.google.com with SMTP id g10so2392382wmh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 04:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ujyb+tWeyZXiSOI7kFM4PtVZTwpkfv1rIo/2WZMIeFM=;
 b=YCaO9BxIrpXcbjgYdyvhRxjAwfvslXaquhDh3SuUUsIuU64L9cVq1fUHWpdpTmVF8Y
 idPa/hiheeJtvRapJwAqGVe6UZit/qHqKk1TASL3jUxxQ4hKAlNp6XIV8uEjR8vKuy6I
 kdVAlYFJoNROu+UuTzNF++fPp1OQ3ggl/KLA7DLXjkITx7bM2NkSla5C3WpJ6g9axxO3
 0jwmxDmuhFhE+F10bVhA2jFEmuANagdsOal8pJIm7JN8Pi+JHgAAJBQnA7f7cWr0eqJu
 i6OyOa4AFRlaO8bBlg2l4/WSRCJRgUZQGUz2KZIOLsUWcTMPg3qYAtxSqBtjrxWu3jA0
 eEfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ujyb+tWeyZXiSOI7kFM4PtVZTwpkfv1rIo/2WZMIeFM=;
 b=GhYQOvGa7xf/19BzHh7ccyxu06RT2YtJ1pjSb8gQgYZk6bf2WAfc9wewh5kcx93bbA
 +GLyHJUJfW5Hhunu6zFcVp9Gq4yfFDcnC46LRwuJ9x0+few/shl+vaCxrinnW5wcgv5W
 9ERAENyC42eHUWgy9nRUej4wRrDCQkEt+u3aDQWehEhBt6kWrU5wMU8efRn2iKLO4H9u
 mQexEf6VK0PBGWVRdnf6V40RMoc9tOt34a5Es2VuFJ5Ru3B9gPT/BrfThPbm4TpLedEI
 E5bnqfm9UYIgjDbdtEhk5GbspikbbJ2xzr6wWND8ZbbMFTdIr7Ntf8VWvzc6YV7h0hcg
 fOHg==
X-Gm-Message-State: AOAM530/9hF+FCspd+dShlZBMM1ySt3zoJFwmmVecK13N3cKbeglczn/
 6RzVFoqdHKCFhyeRVsX0A+ORhEMpBPg=
X-Google-Smtp-Source: ABdhPJykZduLXzd+5WgQKFecHBxFtHLEU7thLErXBHjDUooiFg+vf1Tc/J0F2fzYJ1aHhC6eCduJGw==
X-Received: by 2002:a1c:ba86:: with SMTP id k128mr3325517wmf.19.1591700666140; 
 Tue, 09 Jun 2020 04:04:26 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604?
 ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
 by smtp.gmail.com with ESMTPSA id j16sm3478661wre.21.2020.06.09.04.04.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 04:04:25 -0700 (PDT)
Subject: Re: [RFC PATCH v2 6/6] prctl.2: Add tagged address ABI control prctls
 (arm64)
To: Dave Martin <Dave.Martin@arm.com>
References: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
 <1590614258-24728-7-git-send-email-Dave.Martin@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <88ac761e-64b3-e1e3-3cdc-1f413a6d69d6@gmail.com>
Date: Tue, 9 Jun 2020 13:04:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <1590614258-24728-7-git-send-email-Dave.Martin@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_040428_185763_4D2DEBCA 
X-CRM114-Status: GOOD (  28.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mtk.manpages[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Catalin Marinas <catalin.marinas@arm.com>, mtk.manpages@gmail.com,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey folks,

Do we have any review comments for this (extensive!) patch from Dave?

Cheers,

Michael


On 5/27/20 11:17 PM, Dave Martin wrote:
> ** This patch is a draft for review and should not be applied before it
>    has been discussed. **
> 
> Add documentation for the the PR_SET_TAGGED_ADDR_CTRL and
> PR_GET_TAGGED_ADDR_CTRL prctls added in Linux 5.4 for arm64.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
> 
>  man2/prctl.2 | 156 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 156 insertions(+)
> 
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index 3ee2702..062fd51 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -1504,6 +1504,143 @@ For more information, see the kernel source file
>  (or
>  .I Documentation/arm64/sve.txt
>  before Linux 5.3).
> +.\" prctl PR_SET_TAGGED_ADDR_CTRL
> +.\" commit 63f0c60379650d82250f22e4cf4137ef3dc4f43d
> +.TP
> +.BR PR_SET_TAGGED_ADDR_CTRL " (since Linux 5.4, only on arm64)"
> +Controls support for passing tagged userspace addresses to the kernel
> +(i.e., addresses where bits 56\(em63 are not all zero).
> +.IP
> +The level of support is selected by
> +.IR "(unsigned int) arg2" ,
> +which can be one of the following:
> +.RS
> +.TP
> +.B 0
> +Addresses that are passed
> +for the purpose of being dereferenced by the kernel
> +must be untagged.
> +.TP
> +.B PR_TAGGED_ADDR_ENABLE
> +Addresses that are passed
> +for the purpose of being dereferenced by the kernel
> +may be tagged, with the exceptions summarized below.
> +.RE
> +.IP
> +The remaining arguments
> +.IR arg3 ", " arg4 " and " arg5
> +must all be zero.
> +.IP
> +On success, the mode specified in
> +.I arg2
> +is set for the calling thread and the the return value is 0.
> +If the arguments are invalid,
> +the mode specified in
> +.I arg2
> +is unrecognized,
> +or if this feature is disabled or unsupported by the kernel,
> +the call fails with
> +.BR EINVAL .
> +.IP
> +In particular, if
> +.BR prctl ( PR_SET_TAGGED_ADDR_CTRL ,
> +0, 0, 0, 0)
> +fails with
> +.B EINVAL
> +then all addresses passed to the kernel must be untagged.
> +.IP
> +Irrespective of which mode is set,
> +addresses passed to certain interfaces
> +must always be untagged:
> +.RS
> +.IP \(em
> +.BR brk (2),
> +.BR mmap (2),
> +.BR shmat (2),
> +and the
> +.I new_address
> +argument of
> +.BR mremap (2).
> +.IP
> +(Prior to Linux 5.6 these accepted tagged addresses,
> +but the behaviour may not be what you expect.
> +Don't rely on it.)
> +.IP \(em
> +\(oqpolymorphic\(cq interfaces
> +that accept pointers to arbitrary types cast to a
> +.I void *
> +or other generic type, specifically
> +.BR prctl (2),
> +.BR ioctl (2),
> +and in general
> +.BR setsockopt (2)
> +(only certain specific
> +.BR setsockopt (2)
> +options allow tagged addresses).
> +.IP \(em
> +.BR shmdt (2).
> +.RE
> +.IP
> +This list of exclusions may shrink
> +when moving from one kernel version to a later kernel version.
> +While the kernel may make some guarantees
> +for backwards compatibility reasons,
> +for the purposes of new software
> +the effect of passing tagged addresses to these interfaces
> +is unspecified.
> +.IP
> +The mode set by this call is inherited across
> +.BR fork (2)
> +and
> +.BR clone (2).
> +The mode is reset by
> +.BR execve (2)
> +to 0
> +(i.e., tagged addresses not permitted in the user/kernel ABI).
> +.IP
> +.B Warning:
> +Because the compiler or run-time environment
> +may make use of address tagging,
> +a successful
> +.B PR_SET_TAGGED_ADDR_CTRL
> +may crash the calling process.
> +The conditions for using it safely are complex and system-dependent.
> +Don't use it unless you know what you are doing.
> +.IP
> +For more information, see the kernel source file
> +.IR Documentation/arm64/tagged\-address\-abi.rst .
> +.\" prctl PR_GET_TAGGED_ADDR_CTRL
> +.\" commit 63f0c60379650d82250f22e4cf4137ef3dc4f43d
> +.TP
> +.BR PR_GET_TAGGED_ADDR_CTRL " (since Linux 5.4, only on arm64)"
> +Returns the current tagged address mode
> +for the calling thread.
> +.IP
> +Arguments
> +.IR arg2 ", " arg3 ", " arg4 " and " arg5
> +must all be zero.
> +.IP
> +If the arguments are invalid
> +or this feature is disabled or unsupported by the kernel,
> +the call fails with
> +.BR EINVAL .
> +In particular, if
> +.BR prctl ( PR_GET_TAGGED_ADDR_CTRL ,
> +0, 0, 0, 0)
> +fails with
> +.BR EINVAL ,
> +then this feature is definitely unsupported or disabled,
> +and all addresses passed to the kernel must be untagged.
> +.IP
> +Otherwise, the call returns a nonnegative value
> +describing the current tagged address mode,
> +encoded in the same way as the
> +.I arg2
> +argument of
> +.BR PR_SET_TAGGED_ADDR_CTRL .
> +.IP
> +For more information, see the kernel source file
> +.IR Documentation/arm64/tagged\-address\-abi.rst .
>  .\"
>  .\" prctl PR_TASK_PERF_EVENTS_DISABLE
>  .TP
> @@ -1749,6 +1886,7 @@ On success,
>  .BR PR_GET_SPECULATION_CTRL ,
>  .BR PR_SVE_GET_VL ,
>  .BR PR_SVE_SET_VL ,
> +.BR PR_GET_TAGGED_ADDR_CTRL ,
>  .BR PR_GET_THP_DISABLE ,
>  .BR PR_GET_TIMING ,
>  .BR PR_GET_TIMERSLACK ,
> @@ -2057,6 +2195,24 @@ is
>  .B PR_SVE_GET_VL
>  and SVE is not available on this platform.
>  .TP
> +.B EINVAL
> +.I option
> +is
> +.BR PR_SET_TAGGED_ADDR_CTRL
> +and the arguments are invalid or unsupported.
> +See the description of
> +.B PR_SET_TAGGED_ADDR_CTRL
> +above for details.
> +.TP
> +.B EINVAL
> +.I option
> +is
> +.BR PR_GET_TAGGED_ADDR_CTRL
> +and the arguments are invalid or unsupported.
> +See the description of
> +.B PR_GET_TAGGED_ADDR_CTRL
> +above for details.
> +.TP
>  .B ENODEV
>  .I option
>  was
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
