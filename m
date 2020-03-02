Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 882B4176674
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 22:52:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mhtfKngFf9r0TefXCpQuZMImqF0+dCUf19lvY08Hdiw=; b=fuy9J6v47wFyNX
	sF7MeZPYratRq+ZwJzPV5k04KQVq4pi+EygjWv6RGDURod+qajcT5/OkZ58IcENJnjpZKg6WG/asX
	SL4M78bXcji7pgARpuiGvgsbp+v7WKvaUeLQ666baFREV19kcdlNqmD9lM46H9Ff+zKe6bPPLBjMv
	ZH9uGGoCCj9b8a27gM8wWR/p8+7z8K7hhYtWqsx8qm1u2vLT/dA1mAH7hKkSdZLWul/w+8MjZcCDC
	bFABLdp+mzfsNz1VLYaGOIW7tqKU2FBF73JgDsG569wPhFPHmC7/TMR5Tm7/YE6Np2ddve8wzEpVp
	x+lBDbxj8/IL/rnPmpEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8szM-0008DV-6h; Mon, 02 Mar 2020 21:52:36 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8syA-0007BJ-Ap
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 21:51:24 +0000
Received: by mail-pf1-x443.google.com with SMTP id i13so368189pfe.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 13:51:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A14QEnluAfy61zPlyOAgKgUKJNYdcdSbcWS256De/Mg=;
 b=Btl64gHCqFESo8nzkD/TMtxRWNCqZzrgYn6cwLdnuYB9TEEF7ir6cyZWBScRS44MWv
 TqFMv6lRCB7Mr39FnCTNoC+kxmXGcgFA5Tz6d64AOb5+4tVWJQ79oPnC9H56lGREje9f
 MaS+L9jfToyMU1snIAbPtXgt+O6zUA3X6LQltJ2L+A1BUtrNEwD7gx1mkMhfAqM2ASUB
 Phg4lSUI5S/a7fRw61fSdgk5Fiwxkxf1XZJCoL2B7c4vXZAvJ6asxaT1yif77FlTTAiv
 UK1A+dkkNbxmM+5+uRgC1TnNbaKXbq8GP90rQ1iIfmduAOdgA12H27iqUIXb3GoJ5xLw
 tUhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A14QEnluAfy61zPlyOAgKgUKJNYdcdSbcWS256De/Mg=;
 b=FDqEJ9jVEqRgkB0WJtfFWL7Sv6GohEVHPdcSH2aSX4p2bjfx7CRMO2jOEYh+y81Zwe
 Bp85klD7j/Qf8IChSEDxnm9l+Iv7RRjqgTeGzLb9XqAvgy+iTKhJicfIm2FQPFtXZhfX
 L3I+1u7+u2jXpJYr8JDjXwl/t2NpH+vKbg1RaU4ngIgInfwLPPBdOrKQ/UUDED0R2bkH
 nZsTuTF2IbZHwYUl+UJIb9LmvJmUxCARNc04onBRSgFWyAZeC37ddOY7KvUJQFl523wS
 8+0ABAVszN9XA8249i8uTknnwo9fz7PHLxD8GcCZbmmaF3mMDMR3xeinvUw48MVVdRp8
 30CQ==
X-Gm-Message-State: ANhLgQ08b1W+LtVk5uCtVbBpItFbILIu2sNH9PeCuD/WcJ5eFDK7PyLm
 3svI4LAMBE1fne4NCMyn1Zufegd01VQtirzijGVVKyq3vSc=
X-Google-Smtp-Source: ADFU+vsFiOsjnufNSWTYa5s4zkSsIXKEXTdX92uVw2XZoiuJmVru8rWfMLLCbtJLYVcGqCWGnrQZTfKtxW3jnd4ik6M=
X-Received: by 2002:a63:4d6:: with SMTP id 205mr916704pge.10.1583185878849;
 Mon, 02 Mar 2020 13:51:18 -0800 (PST)
MIME-Version: 1.0
References: <20200302213402.9650-1-natechancellor@gmail.com>
In-Reply-To: <20200302213402.9650-1-natechancellor@gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 2 Mar 2020 13:51:07 -0800
Message-ID: <CAKwvOdn8SgY-C1YRGOcCnTn84MHHGirkDHPfg=mCONmUV_wqSQ@mail.gmail.com>
Subject: Re: [PATCH] coresight: cti: Remove unnecessary NULL check in
 cti_sig_type_name
To: Nathan Chancellor <natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_135122_416071_F5250477 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 2, 2020 at 1:34 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
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

Yep, GCC and Clang both eliminate the false case as impossible:
https://godbolt.org/z/tjbDqR
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

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
>
> --


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
