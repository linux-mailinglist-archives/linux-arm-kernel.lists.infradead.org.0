Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8D81F39DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 13:36:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFdSp4rWbnYfSUo3L8aZugZe3fi7dMJdqdLpau0Rhcw=; b=Upcoq0j1i0bpr+
	vcNcom+JYu7iQSKU8F6OOMIxNrrXEW2IivH53vbkPkPUsiyHGMdlrQ7LycWiFUfglxR7LaIwB9FPs
	09Z6m3vqQXZZqrye8z4vUX+f7EciVhlpGBSHgO1/HOh9bVfS/eKCxjhsrwVsZpmDUxlGITEaJL5Nn
	NYHtErr4dTMIyVLEzSH6iLU0ijTukJnguPdZbktctoPjdCSUM9eFoSNZt7omD1Xie74AUesZ5Iawj
	yaMEmQDo63RBpQ1nmAeB9u1tW0wijorBD2TKmdYAZ5vE2bFY4rMFslBeIRRUyCbj3WSaLemYKJ0qR
	doQ3kam28mx0Lfa8BPFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jicYn-0007NF-CE; Tue, 09 Jun 2020 11:36:53 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jicYf-0007Mr-Bu
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 11:36:46 +0000
Received: by mail-wm1-x342.google.com with SMTP id g10so2485458wmh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 04:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=fJYvnclAzUmRLcosHFWh9bntbC7vT1JGF1oeBQ8Fq+s=;
 b=P2R1mKLhXQWVtCHOxyai+DAZG41BWFjzm6j5avzQXpSxNuWLd0zI2ZAIIc4x6l13KB
 GEcfW60U9ZqCVsXLm6z7mcme2KgyqBb5RWZc70Hk0AZ6Mtu+pis4mraUV6zQJH8zljMV
 qYWcjAv1XASWjh+/rDLdQNtMWElHzIr/os7SwX0XTelKWCK5SeyY1cJuyvsrbCneQa9F
 aC6/pkYQzN7xovrsGRi9bT5EkdkW63s+3+44tBo9v9cQWQrRqCQlpxOSqUVmholNMdDP
 shbRCf93kJQnue9etZw6zuflr/vzK0Nn9J8yiv593lo4AHo3RmMikB9eQjXZAGG1PiEm
 patA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fJYvnclAzUmRLcosHFWh9bntbC7vT1JGF1oeBQ8Fq+s=;
 b=KmBl0Ne40MSNXKdgm5JNuJQ77VWDwZdwXDDW4wOuXogNMNPQwe/lDsDoklv3yVwn14
 ywV2aMdYqzhoClp7vz36ha3iBW4FZ5hSBJ+hHpJdSuH3EzvcFyS7odm5hvBpNSAExPIt
 3kLgvtsZON797v5jeaaq5L5+AV+LCHs+bepqkSscXExLe6jUvgoTN11IAvXokelDVt+Q
 VKhiFICMvxapNxRK37QtCti9kbjEtsTjPCXyojcHKF3dwdsCkCc0U0gm4LyDH1Kx52qx
 oIO7Tk1Rovvjr1Y6vPCWk/lLq6/YL76RwbB0+hBMT0V5fZ9ExFPiVNtIq8jksYJ82fUn
 wzBg==
X-Gm-Message-State: AOAM5332ox2uEmgRiXHSPLTyVb6uV9zdpRWVrZhO/80CIZBgrE2m1skY
 258d5XQ9vUoRV0ZO8wipYVQ=
X-Google-Smtp-Source: ABdhPJyM2GfdDSPkYVRuDWbPh+MpdEr3Po9Fi8MZXny0ZoMELo/Ho+aLHDQS1ZFhLdAvqQECBsw8NQ==
X-Received: by 2002:a1c:4d11:: with SMTP id o17mr3447033wmh.37.1591702604028; 
 Tue, 09 Jun 2020 04:36:44 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604?
 ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
 by smtp.gmail.com with ESMTPSA id z206sm2699467wmg.30.2020.06.09.04.36.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 04:36:43 -0700 (PDT)
Subject: Re: [PATCH v2 5/6] prctl.2: Add PR_PAC_RESET_KEYS (arm64)
To: Dave Martin <Dave.Martin@arm.com>
References: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
 <1590614258-24728-6-git-send-email-Dave.Martin@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1084d017-54f3-475c-be1b-aabc801d9a71@gmail.com>
Date: Tue, 9 Jun 2020 13:36:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <1590614258-24728-6-git-send-email-Dave.Martin@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_043645_405427_73EECE6E 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Dave,

I've applied this patch (manually, because 4/6 is not yet applied).
I have a question below.

On 5/27/20 11:17 PM, Dave Martin wrote:
> Add documentation for the PR_PAC_RESET_KEYS ioctl added in Linux
> 5.0 for arm64.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Amit Daniel Kachhap <amit.kachhap@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> 
> ---
> 
> Since v1:
> 
>  * Clarify explicitly that PR_PAC_RESET_KEYS is redundant when combined
>    with execve().
> 
>  * Move error condition details into the prctl description, to avoid
>    excessive duplication while keeping keeping related pieces of text
>    closer together.
> 
>  * In lieu of having a separate man page to cross reference for detailed
>    guidance, cross-reference the kernel documentation.
> 
>  * Add safety warning.  This is deliberately vague, pending ongoing
>    discussions with libc folks.
> ---
>  man2/prctl.2 | 80 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 80 insertions(+)
> 

[...]

> +.IP
> +.B Warning:
> +Because the compiler or run-time environment
> +may be using some or all of the keys,
> +a successful

Things got a bit garbled here. I think the next few lines should have been 
at the end.
> +.IP
> +For more information, see the kernel source file
> +.I Documentation/arm64/pointer\-authentication.rst
> +.\"commit b693d0b372afb39432e1c49ad7b3454855bc6bed
> +(or
> +.I Documentation/arm64/pointer\-authentication.txt
> +before Linux 5.3).
> +.B PR_PAC_RESET_KEYS
> +may crash the calling process.
> +The conditions for using it safely are complex and system-dependent.
> +Don't use it unless you know what you are doing.

I applied the following change after your patch; is it okay?

 .IP
 .B Warning:
 Because the compiler or run-time environment
 may be using some or all of the keys,
 a successful
+may crash the calling process.
+The conditions for using it safely are complex and system-dependent.
+Don't use it unless you know what you are doing.
 .IP
 For more information, see the kernel source file
 .I Documentation/arm64/pointer\-authentication.rst
@@ -1020,9 +1023,6 @@ For more information, see the kernel source file
 .I Documentation/arm64/pointer\-authentication.txt
 before Linux 5.3).
 .B PR_PAC_RESET_KEYS
-may crash the calling process.
-The conditions for using it safely are complex and system-dependent.
-Don't use it unless you know what you are doing.
 .\" prctl PR_SET_PDEATHSIG
 .TP
 .BR PR_SET_PDEATHSIG " (since Linux 2.1.57)"

[...]

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
