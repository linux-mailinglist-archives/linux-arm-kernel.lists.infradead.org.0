Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D13A75C9A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 03:42:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PNIy3XEfB6kC28jvj6aa54HPSMQFKehpMrXf01dpmVA=; b=Dz6rqST9D8i32x
	1lqbd+S+0nqJNmInHYVAxDawlsBnsD6ijYYGaGpSguKbRqSSSY1fN+EEu0AAxhjfFalZX66SPXssN
	K82RFuovj+EzQpSTY433k6JvkIFXgMHWngkSmMhcGK97WBiN0EBMSdgBSksiOvHGYhVj+W4AFNtG9
	N8ixHSCIRm78bgyowocdQTQv24Vzih0yeS4rt7ayqaXwU7PQhzGQ0BMoFBN8hFilNGW9GNJ8HA2kK
	gty/9W5U9AviemRRk5rMlt7lRSz8B7826jXCIQg8OewzZDaFnyIGuyJGak2eic9LAPyx56wjXnOLq
	bdBua2dX8i38NzINEJ6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqpF1-0006q5-Cd; Fri, 26 Jul 2019 01:41:52 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqpEg-0006oy-Ki
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 01:41:32 +0000
Received: by mail-ot1-x341.google.com with SMTP id b7so3601459otl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 18:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ighPKSSLVjo8m3qhCoJ0gAbnxi1s58viTGow47mPKlI=;
 b=SivHi7DVN/5kj1kctEug37qCMD0Y4G0dfc5wwLJSZ64f/P2VuSg2G7WTD07WUOC4Hk
 rxxWaChjs8o7wfnWwLmlbQ8OYOlR3lbMdZcKEfE6F90I8Kjm+gk3NcHXIXvOzeDlkPfk
 3evz8LbvxeogxUsAFS9lLoNa/rINwlijPMfyl7ncrTa+YEcYAsy8PXoNz+gWrCM8UQZY
 +gxhAVSST2qktUM1bGTq0YbHErr4TDuA0dbj5Msew6oleURvD80nnIB3YuqK0RGUSO2L
 Ytt9t506BJe2mUwjvqUihnX4mRNAiEpIwkHELhzkRSTX0z8PA7ivzMCO5B6itfa1toM9
 mtEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ighPKSSLVjo8m3qhCoJ0gAbnxi1s58viTGow47mPKlI=;
 b=GduauiQWJjJzaKkFtncOY338Zglv+3rOf+ZfOa978rlvQSzXWvI8E/Gvgk4E3AtI5f
 d8h6IrKMTWnArdoSGv9YWAu1dNr5D2AuhsL2VI/+J29qjSuVXrYoXo1VRFYgTCx+fgox
 X6omG2a3Dyq5UGy/uZu0XP2PCEZ6WEYwrw5JhIwd5Q1uTEadEvTvOctQBGl/2zBuKWnd
 /Udn/HYCbyUy0ea6CGwFJssIwJFKot1ByXjEQdk7IkcZKB2x5z/iDmP1EFjDGp7HMncN
 zeGRkG3NGFN5HMuWEg4VZ+asD7m6gWfXM5DX39mjvy28O9HZejHvlwxXk+VpgYWnOo5m
 eATw==
X-Gm-Message-State: APjAAAU1QnGV6e0lUyUckLnFk+IHsNU1/ZkqNLcch/9lQqmQdzxX/3cF
 kVmmCMPqYTwtrCG6AVPAeWNxCQTodersev0hi7sq4w==
X-Google-Smtp-Source: APXvYqxyx07JRG2OJ//qHU18VkEwI2x2E9581akJQa4pUqIN2mPi3uK5y+/G56wo9/97VPLGTgbmLmDZ1qvNCWUbJ6E=
X-Received: by 2002:a9d:529:: with SMTP id 38mr67743332otw.145.1564105286756; 
 Thu, 25 Jul 2019 18:41:26 -0700 (PDT)
MIME-Version: 1.0
References: <74a6462743e3d73a630d2634880d8866daee333e.1564022625.git.baolin.wang@linaro.org>
 <CAPDyKFoNGZRdY3VVf6G9eNBfCyJbN5SUU2+fK24U-mHDX13oFQ@mail.gmail.com>
In-Reply-To: <CAPDyKFoNGZRdY3VVf6G9eNBfCyJbN5SUU2+fK24U-mHDX13oFQ@mail.gmail.com>
From: Baolin Wang <baolin.wang@linaro.org>
Date: Fri, 26 Jul 2019 09:41:15 +0800
Message-ID: <CAMz4kuKOGmGHoYNELG38qYOw71=AaSk33=johskUtOs0KZ0z-g@mail.gmail.com>
Subject: Re: [PATCH v5] mmc: host: sdhci: Fix the incorrect soft reset
 operation when runtime resuming
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_184130_689780_EF249B1E 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Chunyan Zhang <zhang.lyra@gmail.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 25 Jul 2019 at 21:15, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> - Trimmed cc list
>
> On Thu, 25 Jul 2019 at 05:14, Baolin Wang <baolin.wang@linaro.org> wrote:
> >
> > The SD host controller specification defines 3 types software reset:
> > software reset for data line, software reset for command line and
> > software reset for all. Software reset for all means this reset affects
> > the entire Host controller except for the card detection circuit.
> >
> > In sdhci_runtime_resume_host() function, now we will always do software
> > reset for all, which will cause Spreadtrum host controller work abnormally
> > after resuming. For Spreadtrum platform that will not power down the SD/eMMC
> > card during runtime suspend, we should just do software reset for data
> > and command instead doing reset for all.
> >
> > To fix this issue, this patch introduces a new parameter of
> > sdhci_runtime_resume_host() to let it decide if a 'reset for all' shall
> > be done or not. Meanwhile changes other host drivers to issue a software
> > reset for all to keep the original logic.
> >
> > Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
>
> Applied for next, with a little change (renaming the "soft"
> in-parameter to soft_reset), thanks!

Thanks Ulf :)

>
> Adrian, if there is anything you want to change, please tell.
>
> BTW, perhaps this should be applied for fixes and tagged for stable?
> Baolin, if so, can point me the commit (or stable tag) the patch
> fixes?

Yes, since we fixed the PM runtime issue, which will reveal this
issue. And I think it still fixes:
Fixes: fb8bd90f83c4 ("mmc: sdhci-sprd: Add Spreadtrum's initial host
controller")

Thanks.

-- 
Baolin Wang
Best Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
