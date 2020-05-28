Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6E81E581C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:02:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ClXb79krZHSov2NXON03+JT8qZzWQ+dpSwmh4qsBSqU=; b=ifikuQOZaWATPt
	xd+l+nfrULB1L2UoWGxR7hZN615JRhRDYCGf+tpPTzdmubwdJaYfgUQKgndJvNKvTz1RQ7blpFJL/
	ItR1mWfwrQSzX7wz52TPY1qLn7OY8nV6/KE05X2ST4vg8F5sI+u3jnyURosydx0n82LiLUsMLE5HP
	3B25W8kV1xhO6N/R9KYz/Fad2rhRzPz8YumzyRFun51z5seRRM2uV0ay5bN0v7rl7nzrzNV2Ie0Gt
	y4oapau3wT+bh1SLASLxLOYfDlFA1DM9VPh5chkjiOLcMG1RykOPwuyaMri2Bfgiqkwq9Flx7OyRJ
	utjphnPZ8hsSIO3JQ7oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeCYa-0000lZ-Ke; Thu, 28 May 2020 07:02:24 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeCYR-0000bz-FH
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:02:17 +0000
Received: by mail-ej1-x643.google.com with SMTP id h21so30857430ejq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 00:02:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=WaItKJRCBat4XMITP05DOJ0vrN7SQihwq33TZYRmdLs=;
 b=n7vVqx+Z5lnOfcJhZGB36iMnkqTyTgkgBJGJUOOwzYsjkaYIHKFDhL6D+2d2S7eHbe
 RALIc54ulwNDOBjj1iK3Wgmjde11GdMHywyEdRGwCtcaX0Md3GRE8ZJHjM8mFO/ZCQvX
 mClUbvdTMgsEd641E8lm2ST88yshg4Otc6X+ZJuzTYfgjgrRf4i6NmzOGk5rLOYr8YCd
 McfCsuNW4XGwUT0aGxqX1jtWIbG3Ta8+LIPj2dn7+bXZuMY219gG8iBz2hN+RXY1pnuN
 pZLTKXzlsI75VIMNUELkniiwoL1lyZwSthy/27kvRh+kt5FYOoWPBaauZwiZghdC/I9+
 7oAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=WaItKJRCBat4XMITP05DOJ0vrN7SQihwq33TZYRmdLs=;
 b=ZtT6ePd/zi4kIV6DoPJQSbwYQnOEWrjLoifDmt8ndMqJMwLIZ7HMexI+CgmhsP0KkC
 aovFRcjey7rPF+DfAibVEEnnK5C8Y3c+SYqmj2FpZiuMQoHiA1tgq9wOmlo5MLR1+4jd
 tYkXrySgOKvz/I5j6VP2DRzuL8+pLf66u/RCDBY52w1Usaqkn/90u18BgNF9CL7hMN7H
 gfuEfs6rxVfAwQD0CMJYPve3azqrdzoND/YWqdVWBsteElPI6iSd2BKRFHVOSeZS26cq
 8IRapLZ01dgWG4iWs9RIH1EygIifmTEVcDLe7EETXZI6tdxVw6xF6o8/kZRClM3a6v74
 h6OQ==
X-Gm-Message-State: AOAM533bI2Ui/jVx82FhQc/sSneR8QqKI7GtfH8BPVvaBWtEnnnBl0XR
 npZvDjYC2q3KvvaAZBmuRULLoli44EQm7aIF0yw=
X-Google-Smtp-Source: ABdhPJxtQKImAJSqXwa6UQU7yyDXiXDfNjBoTpRYI3HzUIJEZ9dzVyLB6BZLFSMGOK929j1yFP2fQ3GuU9HZceHtCZ8=
X-Received: by 2002:a17:906:2dc8:: with SMTP id
 h8mr1816818eji.108.1590649330841; 
 Thu, 28 May 2020 00:02:10 -0700 (PDT)
MIME-Version: 1.0
References: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
 <1590614258-24728-3-git-send-email-Dave.Martin@arm.com>
In-Reply-To: <1590614258-24728-3-git-send-email-Dave.Martin@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date: Thu, 28 May 2020 09:01:59 +0200
Message-ID: <CAKgNAkhwYASEM+wqaDZQ-ftcB3jnsVN2cXq4E_1ep1rqv+4aLw@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] prctl.2: Add PR_SPEC_INDIRECT_BRANCH for
 SPECULATION_CTRL prctls
To: Dave Martin <Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_000215_517115_8ECD61CF 
X-CRM114-Status: GOOD (  18.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mtk.manpages[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: mtk.manpages@gmail.com
Cc: linux-arch <linux-arch@vger.kernel.org>,
 linux-man <linux-man@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Tim Chen <tim.c.chen@linux.intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

On Wed, 27 May 2020 at 23:18, Dave Martin <Dave.Martin@arm.com> wrote:
>
> Add the PR_SPEC_INDIRECT_BRANCH "misfeature" added in Linux 4.20
> for PR_SET_SPECULATION_CTRL and PR_GET_SPECULATION_CTRL.
>
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> Cc: Tim Chen <tim.c.chen@linux.intel.com>
> Cc: Thomas Gleixner <tglx@linutronix.de>

I had also applied this patch from the email you sent earlier. I've
pushed those changes to master now.

Thanks,

Michael

> ---
>  man2/prctl.2 | 24 ++++++++++++++++++------
>  1 file changed, 18 insertions(+), 6 deletions(-)
>
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index dc99218..b6fb51c 100644
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
> +.\" commit 9137bb27e60e554dab694eafa4cca241fa3a694f
> +.TP
> +.BR PR_SPEC_INDIRECT_BRANCH " (since Linux 4.20)"
> +indirect branch speculation control.
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
> --
> 2.1.4
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
