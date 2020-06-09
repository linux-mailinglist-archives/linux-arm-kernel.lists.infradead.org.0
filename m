Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B42871F39E4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 13:39:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D6a04JTvObEmiG4c9LVMtUq6aBLsMbXpzsdh1Yb7GSg=; b=DvwaJkfnmBjBm7
	SMATGLd7132mXNXOL1zqIILD8w8wQB+9apkrQ151axXYtJBh46z5bJ+4yPbfECdnjW+0b2PMLQvwO
	isjz7EWXOoLNI1i/LKD5kmc61OwiK/kmzi65VGXRPd7V1aOrmK3SkqzeiPAveGiiWjaiC5kZ0wjaA
	7qwY6gcRBWOK81dJMR5r7ymDpyNTYT3hwwlijRUxYeKc8O7KPY8yFioCmI8SoOEgig/NT0oTNIIDg
	YltUfAofqSQ85BpKnN6hH7Z1uMRfoyrRG++fI5Eu41nTgeP8KFFSiOnm+JUST/FgNy2VOqnQptCuj
	449GOfele1ouABiBDbTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jicb6-00089N-06; Tue, 09 Jun 2020 11:39:16 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jicaw-00088K-H0
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 11:39:08 +0000
Received: by mail-wm1-x343.google.com with SMTP id d128so2793353wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 04:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=uYBS2FbTJMkU9K9/sTTekDcE8lAuwYxQs0Enyn0GFh4=;
 b=UPXSXzPadNXtpPBG+b3ISY5Q3wkVYIv2Hk6fFpgKOqcuYQdxfQ/6zWBT37nJfM2K8r
 mJM6TV9Fc2nR4nDCvRm8FUtNs+V5AYVyBSuAtE2lTwAncgZyMUyytvembRs+oKiPlGaB
 evOYzeI2rw+x0g0qCqJD6XrRLfA4AkW+huoQvf3oEqzuc/gUkor0l6ENFzqk/SWZcf6+
 bcSYuN3QRzumHgNFKHPnonAtTuvTOtM94SexLrdvKW6BioDUFCQQxPLbCQR/R/iSJ+RH
 42AuEneFsGYdRvL+xTfAKieqVCdpPloRBcPpjpYoWRFpc+7HLNlm4xczpd7+gJul25X4
 vLCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uYBS2FbTJMkU9K9/sTTekDcE8lAuwYxQs0Enyn0GFh4=;
 b=dTvC1D3zGUBKrncnGFUUj+ZClaF2edf9Zx+uh0+pnjUBcSHNESRKEB84aJB02Q6KrT
 YxhJywtT4nD7hyoWZnISnPmEuIHKhWCgtB2m/6KkbGvLAwQjuMrjQ5aTd4bbYCsiM9/c
 NEK8MCvUoKsKrD2WqMD7V5Xh/Qaav9l2PUIN2LJrEy24Ahx+9i3Lj8B1cX4wwXb4LMOF
 1QjWTl3tutph4CxqBBXFqvZ198lux6y1PrKpKujPkp92d/dMc3KfopQVZFHP/wf3zFUE
 Caw4lxKEsX7X/kgvAfYcK84Y4+ig2edUMmLPa4gKtENG2fyT5JuML/6FYTMnGaUg5CeE
 UfLw==
X-Gm-Message-State: AOAM533wR/f/MiEOGZxGAwAGGdbEmjJ4p5f3NffJd/C2/aFFwjaceac1
 KypfHPWG/XW8DTH4dGSFb94=
X-Google-Smtp-Source: ABdhPJxD1b9Epq9ZFQsaro+YuV3OpFvitZIyBXepQBnhScmhuVbBvwN5cbdKGpjZ0+sSkLK8kdc/Ug==
X-Received: by 2002:a1c:4189:: with SMTP id o131mr3234375wma.183.1591702744556; 
 Tue, 09 Jun 2020 04:39:04 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604?
 ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
 by smtp.gmail.com with ESMTPSA id s8sm3166724wrm.96.2020.06.09.04.39.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 04:39:04 -0700 (PDT)
Subject: Re: [PATCH v2 4/6] prctl.2: Add SVE prctls (arm64)
To: Dave Martin <Dave.Martin@arm.com>
References: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
 <1590614258-24728-5-git-send-email-Dave.Martin@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <77b02e4a-bfcf-90ef-90ca-73e878b7b649@gmail.com>
Date: Tue, 9 Jun 2020 13:39:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <1590614258-24728-5-git-send-email-Dave.Martin@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_043906_565827_E99ED27C 
X-CRM114-Status: GOOD (  34.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

I've not applied this patch yet, in case you want to make
some changes in response to Will's comments.

I think all of the rest of the patches in the series are now
applied (and pushed to master).

Thanks,

Michael

On 5/27/20 11:17 PM, Dave Martin wrote:
> Add documentation for the the PR_SVE_SET_VL and PR_SVE_GET_VL
> prctls added in Linux 4.15 for arm64.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> 
> ---
> 
> Since v1:
> 
>  * Minor rewordings and typo fixes.
> 
>  * Fix typo'd #define names.
> 
>  * Add type annotation for PR_SVE_SET_VL arg2.
> 
>  * Clarify return value semantics of PR_SVE_SET_VL
> 
>  * Add note to say that the args for PR_SVE_GET_VL are ignored.
> 
>  * Note for PR_SVE_SET_VL that the PR_SVE_VL_LEN_MASK field specifies
>    an upper bound on what vector length to set, not an exact value.
> 
>  * Rework PR_SVE_SET_VL arg2 description to enumerate all possible flag
>    combinations rather than describing the flags independently.
> 
>    Coming up with a clear description of each flag that is independent
>    of the description of the other flag turns out to be hard.
> 
>  * In lieu of having a separate man page to cross reference for detailed
>    guidance, cross-reference the kernel documentation.
> 
>  * Avoid confusing cross-reference to PR_SVE_SET_VL when describing the
>    return value of PR_SVE_GET_VL.
> 
>  * Clarify error conditions for PR_SVE_SET_VL and PR_SVE_GET_VL, and
>    move detail to the individual prctl descriptions to keep related
>    content close together while minimising duplication.
> 
>  * Add safety warning.  This is deliberately vague, pending ongoing
>    discussions with libc folks.
> ---
>  man2/prctl.2 | 160 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 160 insertions(+)
> 
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index cab9915..91df7c8 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -1291,6 +1291,148 @@ call failing with the error
>  .BR ENXIO .
>  For further details, see the kernel source file
>  .IR Documentation/admin\-guide/kernel\-parameters.txt .
> +.\" prctl PR_SVE_SET_VL
> +.\" commit 2d2123bc7c7f843aa9db87720de159a049839862
> +.\" linux-5.6/Documentation/arm64/sve.rst
> +.TP
> +.BR PR_SVE_SET_VL " (since Linux 4.15, only on arm64)"
> +Configure the thread's SVE vector length,
> +as specified by
> +.IR "(int) arg2" .
> +Arguments
> +.IR arg3 ", " arg4 " and " arg5
> +are ignored.
> +.IP
> +The bits of
> +.I arg2
> +corresponding to
> +.B PR_SVE_VL_LEN_MASK
> +must be set to the desired vector length in bytes.
> +This is interpreted as an upper bound:
> +the kernel will select the greatest available vector length
> +that does not exceed the value specified.
> +In particular, specifying
> +.B SVE_VL_MAX
> +(defined in
> +.I <asm/sigcontext.h>)
> +for the
> +.B PR_SVE_VL_LEN_MASK
> +bits requests the maximum supported vector length.
> +.IP
> +In addition,
> +.I arg2
> +must be set to one of the following combinations of flags:
> +.RS
> +.TP
> +.B 0
> +Perform the change immediately.
> +At the next
> +.BR execve (2)
> +in the thread,
> +the vector length will be reset to the value configured in
> +.IR /proc/sys/abi/sve_default_vector_length .
> +.TP
> +.B PR_SVE_VL_INHERIT
> +Perform the change immediately.
> +Subsequent
> +.BR execve (2)
> +calls will preserve the new vector length.
> +.TP
> +.B PR_SVE_SET_VL_ONEXEC
> +Defer the change, so that it is performed at the next
> +.BR execve (2)
> +in the thread.
> +Further
> +.BR execve (2)
> +calls will reset the vector length to the value configured in
> +.IR /proc/sys/abi/sve_default_vector_length .
> +.TP
> +.B "PR_SVE_SET_VL_ONEXEC | PR_SVE_VL_INHERIT"
> +Defer the change, so that it is performed at the next
> +.BR execve (2)
> +in the thread.
> +Further
> +.BR execve (2)
> +calls will preserve the new vector length.
> +.RE
> +.IP
> +In all cases,
> +any previously pending deferred change is canceled.
> +.IP
> +The call fails with error
> +.B EINVAL
> +if SVE is not supported on the platform, if
> +.I arg2
> +is unrecognized or invalid, or the value in the bits of
> +.I arg2
> +corresponding to
> +.B PR_SVE_VL_LEN_MASK
> +is outside the range
> +.BR SVE_VL_MIN .. SVE_VL_MAX
> +or is not a multiple of 16.
> +.IP
> +On success,
> +a nonnegative value is returned that describes the
> +.I selected
> +configuration,
> +which may differ from the current configuration if
> +.B PR_SVE_SET_VL_ONEXEC
> +was specified.
> +The value is encoded in the same way as the return value of
> +.BR PR_SVE_GET_VL .
> +.IP
> +The configuration (including any pending deferred change)
> +is inherited across
> +.BR fork (2)
> +and
> +.BR clone (2).
> +.IP
> +.B Warning:
> +Because the compiler or run-time environment
> +may be using SVE, using this call without the
> +.B PR_SVE_SET_VL_ONEXEC
> +flag may crash the calling process.
> +The conditions for using it safely are complex and system-dependent.
> +Don't use it unless you really know what you are doing.
> +.IP
> +For more information, see the kernel source file
> +.I Documentation/arm64/sve.rst
> +.\"commit b693d0b372afb39432e1c49ad7b3454855bc6bed
> +(or
> +.I Documentation/arm64/sve.txt
> +before Linux 5.3).
> +.\" prctl PR_SVE_GET_VL
> +.TP
> +.BR PR_SVE_GET_VL " (since Linux 4.15, only on arm64)"
> +Get the thread's current SVE vector length configuration.
> +.IP
> +Arguments
> +.IR arg2 ", " arg3 ", " arg4 " and " arg5
> +are ignored.
> +.IP
> +Providing that the kernel and platform support SVE
> +this operation always succeeds,
> +returning a nonnegative value that describes the
> +.I current
> +configuration.
> +The bits corresponding to
> +.B PR_SVE_VL_LEN_MASK
> +contain the currently configured vector length in bytes.
> +The bit corresponding to
> +.B PR_SVE_VL_INHERIT
> +indicates whether the vector length will be inherited
> +across
> +.BR execve (2).
> +.IP
> +Note that there is no way to determine whether there is
> +a pending vector length change that has not yet taken effect.
> +.IP
> +For more information, see the kernel source file
> +.I Documentation/arm64/sve.rst
> +.\"commit b693d0b372afb39432e1c49ad7b3454855bc6bed
> +(or
> +.I Documentation/arm64/sve.txt
> +before Linux 5.3).
>  .\"
>  .\" prctl PR_TASK_PERF_EVENTS_DISABLE
>  .TP
> @@ -1534,6 +1676,8 @@ On success,
>  .BR PR_GET_NO_NEW_PRIVS ,
>  .BR PR_GET_SECUREBITS ,
>  .BR PR_GET_SPECULATION_CTRL ,
> +.BR PR_SVE_GET_VL ,
> +.BR PR_SVE_SET_VL ,
>  .BR PR_GET_THP_DISABLE ,
>  .BR PR_GET_TIMING ,
>  .BR PR_GET_TIMERSLACK ,
> @@ -1817,6 +1961,22 @@ and unused arguments to
>  .BR prctl ()
>  are not 0.
>  .TP
> +.B EINVAL
> +.I option
> +is
> +.B PR_SVE_SET_VL
> +and the arguments are invalid or unsupported,
> +or SVE is not available on this platform.
> +See the description of
> +.B PR_SVE_SET_VL
> +above for details.
> +.TP
> +.B EINVAL
> +.I option
> +is
> +.B PR_SVE_GET_VL
> +and SVE is not available on this platform.
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
