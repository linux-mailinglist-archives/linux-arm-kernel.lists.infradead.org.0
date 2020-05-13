Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AF81D1004
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 12:40:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/n/g+GeFlWZ4F3g8wFO95I9J/UQVKLTJvnHnUCK4pTk=; b=CSVr7kfAIPbb5g
	NeFw27M8+Ut78X4L702tR9gR1XScn8RDlfBxsTsy5+NhkjdHzb7Tw8E0kpR0366GmwQrhPMEetW4O
	yxtWRQEO/AawsiTVK6KTXcASjDfYPsIwV8eF8sRWMECEmrCAMeLwLYZ2+KI6omQF4NdQ1xUwT87Op
	yjPxrUZFjnVfL2oiwOc+Tetq9UtvlA+XYE4GGgBzFh7vMspTr4DFiOReNHAP4Uhfh/H1aUn4LBVO5
	agRrO5a+5IZwYQAXHCT9kNixvgBVzI4eK4u6qKnYrji1ptmDRwKYQcavE4mxKqc166/N6RVBQk3Je
	J8iGjwID4bQI0hRxzmdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYohv-0007sd-NW; Wed, 13 May 2020 10:33:47 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYofN-0005kk-9e
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 10:31:10 +0000
Received: by mail-wm1-x344.google.com with SMTP id g14so11505867wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 03:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=WRlPoU8j8jwPDdbu/iEeLTAULhB+gxL0ogeD+3+f2B8=;
 b=XozcPwUBAN3+dA4W9nnU+zgOQan+4HU+pt+gflLw5fYFvegZBgHkrktT9R/5pT6edg
 x7tQ9AwDs8fAQBbsD6Uq6TEYQP1xgoJJd74QE/x8LWgTdzr7tbOu2fw+uNksoAOLXaYs
 9TfQKo5bG7KUHG0cM/XwZH0y4uFpEMXg8JGSvR7qOGYfJ7GJ3W9IdIALyUtAy8JkNpsc
 d/icApJoK15gH1zEJjNNq8z+zMZ8dkfbYT/pf5RrbZmLFT0L690eQxGR7a9EKYKFT+oZ
 9EdBnAbMJLG9ledRiH/oE/RiIS5IFBoh90yoBH26XYaZZtvQXzrZbjlHMB0ci3kvVEU6
 XzcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WRlPoU8j8jwPDdbu/iEeLTAULhB+gxL0ogeD+3+f2B8=;
 b=mE7mwepwuZPHFJXIZLMhH8CwN28UA77tcfH9IONMSYqA6MRRP+8tESuj1dBN8XMb/S
 nGy6Guis9FPQw7sBGv8+SiNM/XT/7uG/A/VX3GYqPGqnrgTSZiJIJGUQIzuBM/p28vob
 N139LiCZ9hPRX0abqw5p7GE9GP6cdxc7hSpa0yUAzxYrsXXVQxIngcJIoB9J6F/Tgi0n
 NajKXVVVc0RB8xVA6L2bOIm7jJt/qpvBoqfEiQt1Qo/UK27OFriL+AH7XDhjlkRzUTQR
 ZN/wDpI0IGkARXEOBsdMBDH6AzvTlaVlP2B3nZLz8nWSRetUNYdl/57oXF3TnireOEET
 HKog==
X-Gm-Message-State: AGi0PubeM6hNuoorHo1mZo0jkPYOYbOszs2qE9s3+OHpkfk10mrtI/k8
 Fka2ANtPFK5QqpwVBK9QGReXV/Ki
X-Google-Smtp-Source: APiQypLpGOzwYCoVWRsNFuzxi492AvUZ9/doRvpOE/SaJz+6ar4vHi/W99fz/ONEkCHGCi8ih75ecQ==
X-Received: by 2002:a1c:98c9:: with SMTP id a192mr20356795wme.48.1589365867783; 
 Wed, 13 May 2020 03:31:07 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5?
 ([2001:a61:2482:101:a081:4793:30bf:f3d5])
 by smtp.gmail.com with ESMTPSA id n6sm23976073wrt.58.2020.05.13.03.31.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 03:31:07 -0700 (PDT)
Subject: Re: [PATCH 09/14] prctl.2: tfix minor punctuation in SPECULATION_CTRL
 prctls
To: Dave Martin <Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-10-git-send-email-Dave.Martin@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6322d3db-75d0-7539-b61c-252d222f932f@gmail.com>
Date: Wed, 13 May 2020 12:31:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1589301419-24459-10-git-send-email-Dave.Martin@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_033109_413393_9A4BEE1D 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
 mtk.manpages@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/12/20 6:36 PM, Dave Martin wrote:
> Fix a few very minor bits of punctuation in
> PR_SET_SPECULATION_CTRL and PR_GET_SPECULATION_CTRL.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>

Thanks, Dave. Patch applied.

Cheers,

Michael

> ---
>  man2/prctl.2 | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index 1e04859..e8eaf95 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -1175,13 +1175,13 @@ The return value uses bits 0-3 with the following meaning:
>  .TP
>  .BR PR_SPEC_PRCTL
>  Mitigation can be controlled per thread by
> -.B PR_SET_SPECULATION_CTRL
> +.BR PR_SET_SPECULATION_CTRL .
>  .TP
>  .BR PR_SPEC_ENABLE
>  The speculation feature is enabled, mitigation is disabled.
>  .TP
>  .BR PR_SPEC_DISABLE
> -The speculation feature is disabled, mitigation is enabled
> +The speculation feature is disabled, mitigation is enabled.
>  .TP
>  .BR PR_SPEC_FORCE_DISABLE
>  Same as
> @@ -1228,11 +1228,11 @@ which is one of the following:
>  The speculation feature is enabled, mitigation is disabled.
>  .TP
>  .BR PR_SPEC_DISABLE
> -The speculation feature is disabled, mitigation is enabled
> +The speculation feature is disabled, mitigation is enabled.
>  .TP
>  .BR PR_SPEC_FORCE_DISABLE
>  Same as
> -.B PR_SPEC_DISABLE
> +.BR PR_SPEC_DISABLE ,
>  but cannot be undone.
>  A subsequent
>  .B
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
