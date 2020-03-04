Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BFF5179676
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 18:14:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1u96xRJ5FBcaFiPtRqT7FaeTNyeYBI3+bbLG3Z5Hjjs=; b=Bup/Ix+n6MsWe8
	mNFXbXm80MoEUXVl/IysQZjEdmaHiU4FeY8AyMDxOfj2VtUkq2VDjHkj5ibjHMhUrrYiQ/8M1JIyW
	hTGLzXZYRyO6kAk8cvRrI2HvOlKG0xLXyHFd1T+iXtBX7MEWeHv+QRxAd/Q6IE7sBqdmS4G1186Nz
	kI84L+y/b414VjbzUMYf1QxhlAjUCiz99mtreZHV2GrbXTGLpbHOKvX8KBpR+uNtnhfX+p5SoVikS
	budG5/GXaWOhsya4Qxrx9tx4yKhP1W8J0bQLqdEkbg8RXaXGxptkkLE9GsfmRTY5OwvmsyYYj0E3h
	H7/e2/4zGYvjwDhdiiEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Xay-0001wi-2n; Wed, 04 Mar 2020 17:14:08 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Xan-0001wK-Hj
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 17:13:59 +0000
Received: by mail-io1-xd42.google.com with SMTP id d8so61162ion.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 09:13:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4gG3qMsij+Zo/aEE0RJ5aXLnI0RJBhpPpMw/2lBOTbU=;
 b=QYElvh60Cyyn7Y11uZwaVwCuwHUF2lUxPZZFVwXIyOoPle1lfUfdIGhc0pVks7+RrN
 WSlaQacGeMOUoXrTP7pW88wNBfAN9wlCFUj4pvq0RHRtFZf9t9vByx9lZKHPFhA2m9Jj
 JfjAsKvvf+MfcFnD+IMJbV0C4HJonC5kGkJ5/u9yeuEwNBL506h+MOiJ2ed3579CTVlg
 PXndErOXThORJ6OOckQpkShznq7uU5mOapRDuLejjvmLWOA7cB81NTnC+YTfLaDMLvXt
 +CQ67q5o8KfwknVXcRpaHGSuSgXciyyCmzX7FpPl0F0KM9b214VsOIIW8pUV+b4jEjUl
 de9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4gG3qMsij+Zo/aEE0RJ5aXLnI0RJBhpPpMw/2lBOTbU=;
 b=iVimpt8Gz6EDRZDYIZBWKyZqLAcwg3rIJv/P6+mhypY+2WaDadAAfnwE8gsDKClaow
 hhUGMS+vJugjRC2atI6xcQT9M+MV4NVQ8WO/1X18ExrNEgy1iOYeytw3EjCEuIwye7rQ
 zWPYdUWytLLy+BtFzR5V8nO63C6wm1OHOcvEtJwORTzwXobq5hzw93rl5aNI4i5/Eo1T
 grYpFEC7y19fH1Cp8frwXgHgp7vBLIMdIwMfJsJiJfVnL+oBWU0sFIsQkuMa237715t8
 yOEtVZDBHbESIecLAWWuKKBeswCfi4LDvALOvtoVyE5/UwJ5ZSITWdZXDTdlqnKfhSFy
 iJng==
X-Gm-Message-State: ANhLgQ0RcZIHYCKnRsqrbBvyDObDehMjmxzEJWU4vEknYzXESkF04env
 LXsODjQBF+qly4V/JSnWNbb/zwbkIhYVck5J6f/YiyoB
X-Google-Smtp-Source: ADFU+vuOPyKswOKZ61JIBgIoF+EANBFdB2xJk1AnRf0YUvp8KcQ7eG7l91fFfZagGVEMzsrhnPlGrjJNth+JpCUF/ic=
X-Received: by 2002:a6b:8b8c:: with SMTP id n134mr2899306iod.58.1583342036746; 
 Wed, 04 Mar 2020 09:13:56 -0800 (PST)
MIME-Version: 1.0
References: <20200302213402.9650-1-natechancellor@gmail.com>
In-Reply-To: <20200302213402.9650-1-natechancellor@gmail.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 4 Mar 2020 10:13:45 -0700
Message-ID: <CANLsYkz_kh2BWoVy-YervDTRWUT+p8M+-_vUrsu--WF3fjDBPQ@mail.gmail.com>
Subject: Re: [PATCH] coresight: cti: Remove unnecessary NULL check in
 cti_sig_type_name
To: Nathan Chancellor <natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_091357_652781_B8F0FCCC 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux@googlegroups.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2 Mar 2020 at 14:34, Nathan Chancellor <natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> drivers/hwtracing/coresight/coresight-cti-sysfs.c:948:11: warning:
> address of array 'grp->sig_types' will always evaluate to 'true'
> [-Wpointer-bool-conversion]
>         if (grp->sig_types) {
>         ~~  ~~~~~^~~~~~~~~
> 1 warning generated.
>
> sig_types is at the end of a struct so it cannot be NULL.
>
> Fixes: 85b6684eab65 ("coresight: cti: Add connection information to sysfs")
> Link: https://github.com/ClangBuiltLinux/linux/issues/914
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/hwtracing/coresight/coresight-cti-sysfs.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> index abb7f492c2cb..214d6552b494 100644
> --- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> +++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> @@ -945,10 +945,8 @@ cti_sig_type_name(struct cti_trig_con *con, int used_count, bool in)
>         int idx = 0;
>         struct cti_trig_grp *grp = in ? con->con_in : con->con_out;
>
> -       if (grp->sig_types) {
> -               if (used_count < grp->nr_sigs)
> -                       idx = grp->sig_types[used_count];
> -       }
> +       if (used_count < grp->nr_sigs)
> +               idx = grp->sig_types[used_count];
>         return sig_type_names[idx];
>  }

Applied - thanks,
Mathieu

>
> --
> 2.25.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
