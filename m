Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6F91E5804
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 08:58:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9pCGftdaKDlCKPh35aVQLOokv4AEryPXpsRI2+yISf8=; b=Wr0zlNpd6ZRw4h
	3g6EVa0fBdDgzeXZ3dP4HtAZ3jEwScmY7vuO/lXmLfIO2aGoVzSVmsiHoRWhMSY6u368ZE8GUR9O4
	FuzcgBfoNGK1B9xsUTQ4b5Gc8AaPglkGbaYx6e1cD8Lqtt4IoWby1QjTZSYlpLBPXXtSQJDuUEz34
	nlZ2LNRmXR8jbJ+BMTyNpfpcUGQhApja8tQaNaCfobFYiLhTfkmE2QyfqVD5vfzlyqh2lEIrjRNbe
	iqKTVWwwivuL4uME5hS7SEx9Jd2ppwgXmE8lKMveLvMDTSSUVhOnnJevSmzNmCFRsGacjrBMNyv5d
	lXtF7DgDTVw4R5Cht6kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeCUS-0005tT-Vm; Thu, 28 May 2020 06:58:09 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeCUL-0005sl-KK
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 06:58:03 +0000
Received: by mail-ej1-x644.google.com with SMTP id k11so5634969ejr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 23:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=l30+XH7GIqcPUFeaZG9f/zXlLL1cUH8oN11gUUpIQH8=;
 b=t/IILzIyVUFJKLVaKcWqmVulVV3hiYboHW7owxFQMjo4HkTxeqiIsWaaSi3tTSXQGG
 JyD/vL32GnFKt7rYUM1qP4DY80SPsqSSuI2uxfO1vn+MwSc1L5ijQ6E62up8o9IT0NBW
 UWBqRM499LidI+guRHky7fd5LI/B9TwFXwQYqLa0Rt8jNCFftaM8QM1DrWDjje9TcDWx
 F2d62XVAKpy6CAMNUDe1YEBMiD7GOdU2wUX2wKiQWMXcI9hSto4X9kcyiZ0R7u9uHdJo
 x1utqSDzWcHW+N8BB20XbgfeOQTBLrU+50zkBsPrZjmLnfHUw+CagIdoSgh6Jy0SRJ2L
 ++uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=l30+XH7GIqcPUFeaZG9f/zXlLL1cUH8oN11gUUpIQH8=;
 b=DNHPCdcqOI+KQns+8itpAZAloO3/KdtM8IccYmpdU5TjwPDglp2rGzi9pw3Mylw/9y
 iP93I4PSRN/pIPrr57La9yXy+pMBm+le4TonavK5ITNX/QzeNRoDeiRz/aVz26aTxagH
 TIvFr10jC1/noqhx4b+1/QLrqAT5vtDUqrPuMC6NUqavoFKri8/AupAqQ62emk2Hxmid
 XYaEWB6xyHIUsc5aWrXC3i5Gt/MjO66QH1TQXvwefL6O5lZDfZaqwlieZr8YqvP0Js7Y
 wDQmPV9ifW9tFv62n5Fk/lUUFdsLMfHshsfseG56OH296LsTSOS2ftoxtBDOC7mNd/lb
 9ryA==
X-Gm-Message-State: AOAM532swazPScxID5+hqMW6mYurxJegtn32VEdG1zjsiElChL7vqdAr
 7sTT5yu20WLaPA/B4Xxkgnk2So24kSeokvBm93c=
X-Google-Smtp-Source: ABdhPJwIUqdDsy4Ne4drAA5CiYn8Fuz53Xu/Z9G4g6JWO0nsFtF7JHCXsyBvqrV+JFPNGYy9fdNYyuD2DqhoY2pJa/g=
X-Received: by 2002:a17:906:8492:: with SMTP id
 m18mr1660565ejx.168.1590649080199; 
 Wed, 27 May 2020 23:58:00 -0700 (PDT)
MIME-Version: 1.0
References: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
 <1590614258-24728-4-git-send-email-Dave.Martin@arm.com>
In-Reply-To: <1590614258-24728-4-git-send-email-Dave.Martin@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date: Thu, 28 May 2020 08:57:49 +0200
Message-ID: <CAKgNAkg4P4GTVEoVXZd6yzpr97S0H+N8pdtwptJXaJBHfLAzKQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] prctl.2: Add PR_SPEC_DISABLE_NOEXEC for
 SPECULATION_CTRL prctls
To: Dave Martin <Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_235801_684735_01704FF8 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
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
 linux-arm-kernel@lists.infradead.org, Waiman Long <longman@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

On Wed, 27 May 2020 at 23:18, Dave Martin <Dave.Martin@arm.com> wrote:
>
> Add the PR_SPEC_DISABLE_NOEXEC mode added in Linux 5.1
> for the PR_SPEC_STORE_BYPASS "misfeature" of
> PR_SET_SPECULATION_CTRL and PR_GET_SPECULATION_CTRL.
>
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> Cc: Waiman Long <longman@redhat.com>
> Cc: Thomas Gleixner <tglx@linutronix.de>

I had already applied your earlier send of this patch (in a private
branch). I'll push those changes shortly.

Cheers,

Michael

> ---
>  man2/prctl.2 | 22 ++++++++++++++++++++--
>  1 file changed, 20 insertions(+), 2 deletions(-)
>
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index b6fb51c..cab9915 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -1187,6 +1187,12 @@ The speculation feature is disabled, mitigation is enabled.
>  Same as
>  .B PR_SPEC_DISABLE
>  but cannot be undone.
> +.TP
> +.BR PR_SPEC_DISABLE_NOEXEC " (since Linux 5.1)"
> +Same as
> +.BR PR_SPEC_DISABLE ,
> +but but the state will be cleared on
> +.BR execve (2).
>  .RE
>  .IP
>  If all bits are 0,
> @@ -1251,6 +1257,17 @@ with the same value for
>  .I arg2
>  will fail with the error
>  .BR EPERM .
> +.\" commit 71368af9027f18fe5d1c6f372cfdff7e4bde8b48
> +.TP
> +.BR PR_SPEC_DISABLE_NOEXEC " (since Linux 5.1)"
> +Same as
> +.BR PR_SPEC_DISABLE ,
> +but but the state will be cleared on
> +.BR execve (2).
> +Currently only supported for
> +.I arg2
> +equal to
> +.B PR_SPEC_STORE_BYPASS.
>  .RE
>  .IP
>  Any unsupported value in
> @@ -1899,11 +1916,12 @@ was
>  .BR PR_SET_SPECULATION_CTRL
>  and
>  .IR arg3
> -is neither
> +is not
>  .BR PR_SPEC_ENABLE ,
>  .BR PR_SPEC_DISABLE ,
> +.BR PR_SPEC_FORCE_DISABLE ,
>  nor
> -.BR PR_SPEC_FORCE_DISABLE .
> +.BR PR_SPEC_DISABLE_NOEXEC .
>  .SH VERSIONS
>  The
>  .BR prctl ()
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
