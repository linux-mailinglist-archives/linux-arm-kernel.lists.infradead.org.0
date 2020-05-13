Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2371D0F71
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 12:12:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w1Ca34u4XiBrIDms3V7Kbbv9KDxLmlVQvTJFpIYF8kU=; b=OSDTlN05G6aLR3
	EcfpYQ8uiN15iPq4hpbfT0Iv7dAqhce5EWL+p272fMIV2ZkY5L6EODdKSqNu2h9rcL+V8zix/foAW
	ajjdMVK/4KPKeRu/bC8nndrLL38wrQu5tXou8/aUKnZoh7ndHQKDcYWVBWcppoY2ESX3kmIUvHyKp
	n512A8jszyox+K8rsrXuaiRrXP6et0YUHh+IKz0VeX3pJYXjpokNYbz48IkXUhxtHtW75AhR5B8Zr
	ZW+UNcM252594PXbPHP2VQNjGUGbNABXrztnLAfU5jYkuqCyt+qiFWX5clUqU+yc2gL60bjLZoZOx
	ZffDMqCj8D8mSmqafVSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYoN2-00010I-CS; Wed, 13 May 2020 10:12:12 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYoMp-0000z8-V4
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 10:12:03 +0000
Received: by mail-wm1-x343.google.com with SMTP id n5so12913193wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 03:11:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=F8y9Jq3gM4jt+LNkvpYhKwbQwo4514/fo/ZdMqLGLI8=;
 b=ZwMMB2IacV7HsQvoqLWpSW/PiCKip5jrhaEJ7G7o/FnK8EMktT4jR8gldcVq1mnLqY
 PmkeE2cXase8ji7LXMrUnPQYaMBRxVpMmuz+2NTmfILK9b7lHKIMQOqoL/oaLtOGci/K
 LU+3WUSnn71y/DNKTRgOybruZWs/HcI1B4F0athdTdJ3IPq5cl96IjU/NnqE0aNtZvpG
 oefus/KTRogocWbJ3XrgXQbVOPTrl4xrSGGKEKumPjY8NmHhJi1b4ijxHzWeEhHg8qps
 Z3xuGnX+5O7wRxcWAfg8J7W5TUEByDwzDFSn5C7I1n5dClks5G9AYpRsN7Et7WOdzLIi
 Im3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=F8y9Jq3gM4jt+LNkvpYhKwbQwo4514/fo/ZdMqLGLI8=;
 b=o4wBT8xCllFF/Ge6WwV7grGUNQC6F+b85uKw7NPbqmJyaW93mXXLf/XDdFJsWHbd5R
 uPjSPxheZGHG6nO7hU/WmbqtFdSimvNKX77DGV6sYevSfEgvZnESFqOfxAHXNzDOQv2/
 W6IWc1Bdfbo+kGCOHSJrddaBPU2qKxAZm6FTtvPVasf+iB+iQcnuAmeXavmZhFIq10Qq
 LfCEtZogfa3MGv+53e77KMGc87LIhP9TebhPJGcAPb57CW5QgXZp7C19Ox0Fzy2f8ltw
 VwAMaSpBnqYwDCcijK2ORmdCcQUIp3HynQGbUd2YA5TBfvaH1ErQR8FbNHIjG0ILzTXM
 B/5g==
X-Gm-Message-State: AGi0PuZ49arBjqu1WIt05PwHibHorNtoSvcIwLxUftrUAV9Eb9k+qy6h
 wzAKqrVjRW21E3OclVlVGDI=
X-Google-Smtp-Source: APiQypIb3Ew6x0NQjcegMNVo8m/WukejRHFGgNTeBGsXzuC7NB3o64nEGlIwqb+R1DBBR4xV8CeyDw==
X-Received: by 2002:a1c:df46:: with SMTP id w67mr33850615wmg.130.1589364718727; 
 Wed, 13 May 2020 03:11:58 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5?
 ([2001:a61:2482:101:a081:4793:30bf:f3d5])
 by smtp.gmail.com with ESMTPSA id p8sm26376188wre.11.2020.05.13.03.11.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 03:11:58 -0700 (PDT)
Subject: Re: [PATCH 07/14] prctl.2: Document removal of Intel MPX prctls
To: Dave Martin <Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-8-git-send-email-Dave.Martin@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3201c6e6-bd9e-aef4-fae5-70229e1b1abe@gmail.com>
Date: Wed, 13 May 2020 12:11:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1589301419-24459-8-git-send-email-Dave.Martin@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_031200_000632_0C7ECD8B 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
 Dave Hansen <dave.hansen@linux.intel.com>, mtk.manpages@gmail.com,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/12/20 6:36 PM, Dave Martin wrote:
> The Intel MPX API was removed from Linux 5.4.  See Linux
> commit f240652b6032 ("x86/mpx: Remove MPX APIs")
> 
> Document this change.

Thanks. Patch applied, with Dave H's Acked-by.

Cheers,

Michael

> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> Cc: Dave Hansen <dave.hansen@linux.intel.com>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> ---
>  man2/prctl.2 | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index 7a3fc5c..a84fb1d 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -784,7 +784,7 @@ option enabled.
>  .RE
>  .\" prctl PR_MPX_ENABLE_MANAGEMENT
>  .TP
> -.BR PR_MPX_ENABLE_MANAGEMENT ", " PR_MPX_DISABLE_MANAGEMENT " (since Linux 3.19) "
> +.BR PR_MPX_ENABLE_MANAGEMENT ", " PR_MPX_DISABLE_MANAGEMENT " (since Linux 3.19, removed in Linux 5.4; only on x86) "
>  .\" commit fe3d197f84319d3bce379a9c0dc17b1f48ad358c
>  .\" See also http://lwn.net/Articles/582712/
>  .\" See also https://gcc.gnu.org/wiki/Intel%20MPX%20support%20in%20the%20GCC%20compiler
> @@ -859,6 +859,12 @@ had been called.
>  .IP
>  For further information on Intel MPX, see the kernel source file
>  .IR Documentation/x86/intel_mpx.txt .
> +.IP
> +.\" commit f240652b6032b48ad7fa35c5e701cc4c8d697c0b
> +.\" See also https://lkml.kernel.org/r/20190705175321.DB42F0AD@viggo.jf.intel.com
> +Due to a lack of toolchain support,
> +.BR PR_MPX_ENABLE_MANAGEMENT " and " PR_MPX_DISABLE_MANAGEMENT
> +are not supported by Linux 5.4 or later.
>  .\" prctl PR_SET_NAME
>  .TP
>  .BR PR_SET_NAME " (since Linux 2.6.9)"
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
