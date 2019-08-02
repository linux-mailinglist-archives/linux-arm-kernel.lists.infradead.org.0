Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4167FD5E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 17:17:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O8z4RRjbeW1Sn19qdTXMzRBvGBUW2KMU+0ZcjSKq6eA=; b=u9nQzZ0HW/bQj+
	Ma2ndhcK8GxaNynwBotM7DCEHHHq5ROOYw6s99CsebMnkGRZzJhdMk1rYLYqmbrZZSHJNdHaIFw8j
	b8dBDpcEzN4V/ojWmpIaexaT7Ayi/2m6T3eIqZVcdJwXmMzktDMXIhUs5mGJPhkcQhcL9YHWK/S9G
	UqowodTLrd0E84/s6ydQkt3GdrXcUDrZb2cFQRKKfHgQgSoAO57kWw0ZGEL9H/C/J5lDRBsHLSKC+
	nz/hiTxomCUfhRkve1SotaRTBuf8MBKT9AOlHYz7VoTQ6STPbiYz7al8F02zoCaaCu4uYbI1j1tJa
	tK2/AsZpJ4WjbrHjGz+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htZJ5-00067E-2p; Fri, 02 Aug 2019 15:17:23 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htZIx-00064g-TF
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 15:17:17 +0000
Received: by mail-vk1-xa42.google.com with SMTP id o19so15443398vkb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 08:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=am7VE97nq7ZCmyomVd2COANpZQyhG+APNd3r/OoUU8U=;
 b=BF0SB7AG4ut6fyvBHWEJHFmQpNcjCG/QXxAAJS/MFj9ASooOeUQ5thcsW0/uqjQ/gc
 HZTpZ8ckknuiN4hM3GcMD/JD3lUY1R0hbkxbYW9lzigzMgkm4KDtebOf79sVXLTcEPRu
 lVgOz27jxYFnbmqlUuv3p7iI3ITblLXTCvWUteXAGGjbTjxT9IOQewW3v04Qal0Vd0Kd
 CDyyltnc8QUHjcWtW9/kzMfjW08/g/lYPj7PLUGmQj4iQqmXlQ8TnJOrzYp7fqLtbCzt
 397e25T9NR4itzF05i+5wsImZyD5IF/PJYNiRtNU+rv3DBxT9ICNSmaca3Y7A2b22Rle
 9GVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=am7VE97nq7ZCmyomVd2COANpZQyhG+APNd3r/OoUU8U=;
 b=aQGQ9odaaZp6l5fdzEJx9sQoZD1Jt6lwNLuhesBU0B22HMXkSlkdv1wztJFMD0JlDS
 raSubf1anDuBVuUoYFfYpEF+Ge5fjm5lduI3eYtj7Elwrjt5D1X6EChaoEFFDVtXX2qR
 VK8jPltaQpCyFtgZDTzx4kCcLdvuJ/iKgo6cSPyHAWjHP8r6c6rQllnip2w+TdFt7aic
 c9Bb4UoATLq8yhfRmbmWwH6Dco9IlbqcEcDuePeVKuZhP5fW/m00RCKrNBA/cx9/ia5J
 njfpCpznEjDc3cu0Zx6iIzDiP5x6mvRbkahSfo0hxLEdHw1fJZ5Go0YzxzZDFR7sZFVY
 4k9Q==
X-Gm-Message-State: APjAAAXmZJr2AznzSDG+b28KZdT6CY7q7WH6Wr8Ol9LMmeevZLuoAXwf
 HyaTUXtwQTtSclvNZfcGf65yBSTY9Zj3+coXXYTCoGPR
X-Google-Smtp-Source: APXvYqzVQw8kB+1j21L33BZtSuag8+GbzvjmhwXIEvKgNDa3JbbTqxZRiSDmv4Xhj7zIIO2fTODFwifqyIfQ5/sgWQ8=
X-Received: by 2002:a1f:f282:: with SMTP id q124mr53607626vkh.4.1564759033184; 
 Fri, 02 Aug 2019 08:17:13 -0700 (PDT)
MIME-Version: 1.0
References: <74a6462743e3d73a630d2634880d8866daee333e.1564022625.git.baolin.wang@linaro.org>
 <CAPDyKFoNGZRdY3VVf6G9eNBfCyJbN5SUU2+fK24U-mHDX13oFQ@mail.gmail.com>
 <CAMz4kuKOGmGHoYNELG38qYOw71=AaSk33=johskUtOs0KZ0z-g@mail.gmail.com>
In-Reply-To: <CAMz4kuKOGmGHoYNELG38qYOw71=AaSk33=johskUtOs0KZ0z-g@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 2 Aug 2019 17:16:36 +0200
Message-ID: <CAPDyKFrUxTzMr+aJ=mXcVJeiP8f4-8+wAxkbA9n8mJaAn=ftVA@mail.gmail.com>
Subject: Re: [PATCH v5] mmc: host: sdhci: Fix the incorrect soft reset
 operation when runtime resuming
To: Baolin Wang <baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_081715_943629_9CECDB7C 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Fri, 26 Jul 2019 at 03:41, Baolin Wang <baolin.wang@linaro.org> wrote:
>
> On Thu, 25 Jul 2019 at 21:15, Ulf Hansson <ulf.hansson@linaro.org> wrote:
> >
> > - Trimmed cc list
> >
> > On Thu, 25 Jul 2019 at 05:14, Baolin Wang <baolin.wang@linaro.org> wrote:
> > >
> > > The SD host controller specification defines 3 types software reset:
> > > software reset for data line, software reset for command line and
> > > software reset for all. Software reset for all means this reset affects
> > > the entire Host controller except for the card detection circuit.
> > >
> > > In sdhci_runtime_resume_host() function, now we will always do software
> > > reset for all, which will cause Spreadtrum host controller work abnormally
> > > after resuming. For Spreadtrum platform that will not power down the SD/eMMC
> > > card during runtime suspend, we should just do software reset for data
> > > and command instead doing reset for all.
> > >
> > > To fix this issue, this patch introduces a new parameter of
> > > sdhci_runtime_resume_host() to let it decide if a 'reset for all' shall
> > > be done or not. Meanwhile changes other host drivers to issue a software
> > > reset for all to keep the original logic.
> > >
> > > Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
> >
> > Applied for next, with a little change (renaming the "soft"
> > in-parameter to soft_reset), thanks!
>
> Thanks Ulf :)
>
> >
> > Adrian, if there is anything you want to change, please tell.
> >
> > BTW, perhaps this should be applied for fixes and tagged for stable?
> > Baolin, if so, can point me the commit (or stable tag) the patch
> > fixes?
>
> Yes, since we fixed the PM runtime issue, which will reveal this
> issue. And I think it still fixes:
> Fixes: fb8bd90f83c4 ("mmc: sdhci-sprd: Add Spreadtrum's initial host
> controller")

Make sense. I moved this to the fixes branch and also to took the
opportunity to clarify the changelog a bit.

Thanks and kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
