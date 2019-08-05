Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF6D811BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 07:45:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m4LxEH5fhgi2sQty5s6DP1oAc4oi1aMma39rlh3ZDRA=; b=hut6FnjCZCsZoW
	gvbtvaCCVqmTGbSYLdocXa7wyndtSwuu1cn3GrGkLxJW/6o/hXwCWnFnwPolMvKiLMj3H0ywaVV6k
	7ucCfmtYcSI/Eo3vns/NN6SVLCiKXwPFlz+qQX2htIrggpC57E5YmQlDZ9S7FYP+Woj7yHNI0g8P4
	8QyDIU6J60QhZvgU6DrMoh95Z8B/pFn7xcdbOZ7AJQevV6Wxb28KK9JjkoUorlqSmtZp8bmhbLLD4
	/YuAHwAe9Xds3neJGXyyuCjcq0fLU8ziRhQdLxBNW2RsHC/nQ/OqDbyAE33bkHQnJAszmTwo7CKIF
	kR5ysk6jihLgcUhYfDcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huVod-0001NL-PT; Mon, 05 Aug 2019 05:45:51 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huVoR-0001Mp-PV
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 05:45:41 +0000
Received: by mail-ot1-x343.google.com with SMTP id r21so78077358otq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 22:45:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qsfKjYjCsf5pGaKB27gLmom1CRQ53Y2eR9DqAuao1go=;
 b=WVWleQQGj7idNGkcLWguKl+6s7c9GSJR9Peu1JHRQU1SG0mgaqIgyTthtSMf4Jk4MB
 4zJ0c4qDcqlSmq6yf6Hjlg9nnBa+zohiHYt/DUTpOALEWr5NPVhUD7QpVxAvPPk3CByb
 hjiy+HEn2al9OonxuFaAYvFr+eSprCNZ93R6L8a7UGkNjzNvgO+yMBul6cITiV19EMu/
 P9M8YX+4EFmtC5R0gj5vesO/GH6l0ry/OsadBwEXF82z5zwN589en16FyxjfbKZTi2sJ
 on6n8ozaoK9aPh2pv5AksJyypa2+35YV5XPIkRh8AfDDYtfkYg6cz2eyezjbMOtox8md
 57QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qsfKjYjCsf5pGaKB27gLmom1CRQ53Y2eR9DqAuao1go=;
 b=eskEefSD+OpDJmELfyPNtb5cy7vj2W8tDcX5TaoOb0+vpQwRCdzpaBT1ZnttKHnxhf
 wuxgQHgjPyfNc7apipxbBJ57UnM3tHPLSCcUP0XWlSV82rjIAEZtaQjD5/9Hgb2FQQaA
 T+0Qzl3D01MjJHyLGtyI+q0gWF4GJEyIx5VCrqfxucVSBSTuh38cNhtYKxVf4hZgPN1P
 1Fif4EJDK1twEdrpkN7PgaSglFvPpfgpWYIV/vs88+KLtVtXD20pjnfm+eq0NXODQXVt
 Cw9DZY01MBHDIZWNxi7FFCiMVZDZFaawjGAQz2Lef87YRcCSpj8/pf4Vm2U3Ag6wk504
 mxcg==
X-Gm-Message-State: APjAAAVu/X2A/0sBsV6ocnTn3Glj4+b9oj49weQF1yG/yYSWLDJiK/2M
 XtHcVNrl/zcsEysvhJy/9AgloXJIjZxMrp/OaTZfmg==
X-Google-Smtp-Source: APXvYqynsimY/6Dqk84ghAu9wj0Oshr0r+P73GlacIpKT0W1PHkBUMRBx5KYGo8JN1hrV2qFA92p1qT0zF29I/6VC7Q=
X-Received: by 2002:a9d:7a8b:: with SMTP id l11mr76937428otn.247.1564983938417; 
 Sun, 04 Aug 2019 22:45:38 -0700 (PDT)
MIME-Version: 1.0
References: <74a6462743e3d73a630d2634880d8866daee333e.1564022625.git.baolin.wang@linaro.org>
 <CAPDyKFoNGZRdY3VVf6G9eNBfCyJbN5SUU2+fK24U-mHDX13oFQ@mail.gmail.com>
 <CAMz4kuKOGmGHoYNELG38qYOw71=AaSk33=johskUtOs0KZ0z-g@mail.gmail.com>
 <CAPDyKFrUxTzMr+aJ=mXcVJeiP8f4-8+wAxkbA9n8mJaAn=ftVA@mail.gmail.com>
In-Reply-To: <CAPDyKFrUxTzMr+aJ=mXcVJeiP8f4-8+wAxkbA9n8mJaAn=ftVA@mail.gmail.com>
From: Baolin Wang <baolin.wang@linaro.org>
Date: Mon, 5 Aug 2019 13:45:27 +0800
Message-ID: <CAMz4ku+appDGrAe9yLwzLunUy4K90O1ej2bvA5A=fMbVu_u7Xg@mail.gmail.com>
Subject: Re: [PATCH v5] mmc: host: sdhci: Fix the incorrect soft reset
 operation when runtime resuming
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_224539_840558_37B82BB2 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chunyan Zhang <zhang.lyra@gmail.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2 Aug 2019 at 23:17, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Fri, 26 Jul 2019 at 03:41, Baolin Wang <baolin.wang@linaro.org> wrote:
> >
> > On Thu, 25 Jul 2019 at 21:15, Ulf Hansson <ulf.hansson@linaro.org> wrote:
> > >
> > > - Trimmed cc list
> > >
> > > On Thu, 25 Jul 2019 at 05:14, Baolin Wang <baolin.wang@linaro.org> wrote:
> > > >
> > > > The SD host controller specification defines 3 types software reset:
> > > > software reset for data line, software reset for command line and
> > > > software reset for all. Software reset for all means this reset affects
> > > > the entire Host controller except for the card detection circuit.
> > > >
> > > > In sdhci_runtime_resume_host() function, now we will always do software
> > > > reset for all, which will cause Spreadtrum host controller work abnormally
> > > > after resuming. For Spreadtrum platform that will not power down the SD/eMMC
> > > > card during runtime suspend, we should just do software reset for data
> > > > and command instead doing reset for all.
> > > >
> > > > To fix this issue, this patch introduces a new parameter of
> > > > sdhci_runtime_resume_host() to let it decide if a 'reset for all' shall
> > > > be done or not. Meanwhile changes other host drivers to issue a software
> > > > reset for all to keep the original logic.
> > > >
> > > > Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
> > >
> > > Applied for next, with a little change (renaming the "soft"
> > > in-parameter to soft_reset), thanks!
> >
> > Thanks Ulf :)
> >
> > >
> > > Adrian, if there is anything you want to change, please tell.
> > >
> > > BTW, perhaps this should be applied for fixes and tagged for stable?
> > > Baolin, if so, can point me the commit (or stable tag) the patch
> > > fixes?
> >
> > Yes, since we fixed the PM runtime issue, which will reveal this
> > issue. And I think it still fixes:
> > Fixes: fb8bd90f83c4 ("mmc: sdhci-sprd: Add Spreadtrum's initial host
> > controller")
>
> Make sense. I moved this to the fixes branch and also to took the
> opportunity to clarify the changelog a bit.

Thanks Ulf.

-- 
Baolin Wang
Best Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
