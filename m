Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BEF01D1127
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 13:21:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hj07+tD7tm5W1Vl+Lf9LsH0ryqCtJNntfbxP7eNLrGo=; b=us7K9jw1PMKnzU
	uUtQWeWxSKec+JgihOMLdLtxrSYdmfk68kqHQxo4yLxgMFifxib0fh6vpQQn83GuG6NnePIbQzfNm
	QnKHv3GmeO8ZkNIr1e5uejfEVIRGYYTdluN+5PS7IL5Y9L/DFwf/5XMg/8tYMFpbjPSvVjE8SWC5c
	TGnjrvGWLdT4f5+hKLl2ZJ5MaS8o1l/bktSfs5atwVd6cF5cOkpDUWV7HWzNFoI0OAELE6HwWIZq9
	qYsL8bUsGcLNRnEEtEByVTRqTxneJfaT+mQL+t11Q/ZofA+86GvROrVRDBqs/LmEG0b6DfmSJoUaN
	kn39fm2V2L0sI1W4HE4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYpS1-0003Q7-SQ; Wed, 13 May 2020 11:21:25 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYpRt-0003P3-HE
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 11:21:19 +0000
Received: by mail-wr1-x441.google.com with SMTP id l11so14494284wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 04:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=jJGX0HJKQeSAIMx0QuPyHcLf5tHScfVxF8rrxRd+KcI=;
 b=ZynZ/iRcE0VPeKlcjAMhPW8FoWXbPsrMrp76LsfHrGYN2u3Aukqnhr/FYgUuZwsyti
 LbMvSIvBRKKFzO0BIAPm7go2rDQ/ImA2r0BlzSHGP91Rmsi1BAxy7Lbp77tlyrbxy5s6
 GDMoaqNZP3JoYQJLEVpBRcWeiDZ59FQqW4GOZWp1GcRnkh/+zPTYtmmcxb4ja4J9D4Xc
 6P4m+vWgs2mutMmnRfjGmup8qM4InsR04ZOd+qvCNiiFpySEezRW1/r6/+6R6eO6iXEB
 OoAt03DuTK6RyIjfySFsS/BgEJcN1ICg2zq0RyjMGtlM4v8MvzzGMMcBC6tEojtvrZT0
 qwiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jJGX0HJKQeSAIMx0QuPyHcLf5tHScfVxF8rrxRd+KcI=;
 b=B3rzi/xwrHMKoSMR8IkVU0h5I7ZTcBO+6hGjj6FFwtzK8I0/k9y4cOq8Xo5Pnh3LVC
 2fTWyYTr7P+Xs0PeRTq8m7f2++DdKaMuopB+hyfVBzZZxNV/3DOEJMeY1jYtxLw1kbLA
 ejpFhUjWbeAWPLLNF+nFdJO+SqqneGsEKblHr/bxZN+vwmr0Q0iRM06HhbIKhmwZ8UN6
 QNFf9pB1VT0SdyDxaCi+BLVs80DmOECn30cPTCgYaQaLiv7QQxJTWtTNUxCNlwTF1G27
 FhCpbVzXH2ISBwZvuybLmqA7n8sFikMhlXl/Grbu60+NWafzZj85qW4LK+tcj6re4Lb1
 KjRw==
X-Gm-Message-State: AOAM530wu5mj9eLanmmHmhCapaPYzEZxbhhKSBMu7faONgTHVug+QdWV
 cG0ZcVbE9Wmpy/CYdT4Ybpw=
X-Google-Smtp-Source: ABdhPJx156skmH5/zruMIOwqYcn513DkFzRi+VMhpVx38bixqxdbWVhqP/3Rq3nuEfRvduOHtOamuw==
X-Received: by 2002:a5d:4491:: with SMTP id j17mr7984918wrq.41.1589368875933; 
 Wed, 13 May 2020 04:21:15 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5?
 ([2001:a61:2482:101:a081:4793:30bf:f3d5])
 by smtp.gmail.com with ESMTPSA id i17sm35842104wml.23.2020.05.13.04.21.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 04:21:15 -0700 (PDT)
Subject: Re: [PATCH 10/14] prctl.2: Add PR_SPEC_INDIRECT_BRANCH for
 SPECULATION_CTRL prctls
To: Dave Martin <Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-11-git-send-email-Dave.Martin@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <bd548916-11c8-a53f-67b5-876c79088258@gmail.com>
Date: Wed, 13 May 2020 13:21:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1589301419-24459-11-git-send-email-Dave.Martin@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_042117_572790_B5E8A955 
X-CRM114-Status: GOOD (  20.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
 mtk.manpages@gmail.com, Thomas Gleixner <tglx@linutronix.de>,
 Tim Chen <tim.c.chen@linux.intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Dave,

On 5/12/20 6:36 PM, Dave Martin wrote:
> Add the PR_SPEC_INDIRECT_BRANCH "misfeature" added in Linux 4.20
> for PR_SET_SPECULATION_CTRL and PR_GET_SPECULATION_CTRL.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> Cc: Tim Chen <tim.c.chen@linux.intel.com>
> Cc: Thomas Gleixner <tglx@linutronix.de>

Thanks. Patch applied, but not yet pushed while I wait to see if any
Review/Ack arrives.

Also, could you please check the tweaks I note below.

> ---
>  man2/prctl.2 | 24 ++++++++++++++++++------
>  1 file changed, 18 insertions(+), 6 deletions(-)
> 
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index e8eaf95..66417cf 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -1213,11 +1213,20 @@ arguments must be specified as 0; otherwise the call fails with the error
>  .\" commit 356e4bfff2c5489e016fdb925adbf12a1e3950ee
>  Sets the state of the speculation misfeature specified in
>  .IR arg2 .
> -Currently, the only permitted value for this argument is
> +Currently, this argument must be one of:
> +.RS
> +.TP
>  .B PR_SPEC_STORE_BYPASS
> -(otherwise the call fails with the error
> +speculative store bypass control, or

s/speculative/enable speculative/

> +.\" commit 9137bb27e60e554dab694eafa4cca241fa3a694f
> +.TP
> +.BR PR_SPEC_INDIRECT_BRANCH " (since Linux 4.20)"
> +indirect branch speculation control.

s/indirect/enable indirect/

> +.RE
> +.IP
> +(Otherwise the call fails with the error
>  .BR ENODEV ).
> -This setting is a per-thread attribute.
> +These settings are per-thread attributes.
>  The
>  .IR arg3
>  argument is used to hand in the control value,
> @@ -1235,13 +1244,16 @@ Same as
>  .BR PR_SPEC_DISABLE ,
>  but cannot be undone.
>  A subsequent
> -.B
> -prctl(..., PR_SPEC_ENABLE)
> +.BR prctl (\c
> +.IR arg2 ,
> +.BR PR_SPEC_ENABLE )
> +with the same value for
> +.I arg2
>  will fail with the error
>  .BR EPERM .
>  .RE
>  .IP
> -Any other value in
> +Any unsupported value in
>  .IR arg3
>  will result in the call failing with the error
>  .BR ERANGE .

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
