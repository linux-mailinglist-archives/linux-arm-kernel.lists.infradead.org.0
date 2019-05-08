Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C14172B9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 09:40:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+b4NrKG3RG3I+fk78xfqo7CYE+82bZMz1l/NpA9JSEo=; b=IsEB4coegkaZrJ
	mE3VhYYoZgYGNnpdRwZabSk5iugmIoJ4x7pojp/d3Aypq1VvBrNbJDXcNcIMF/wvY1WInc9H7BbUn
	4omHmDH5U/QCIuXeO/HrRYG3NHE3C441b/VXocXyHcD9D2MgNf77fKySdy6kwBBubfJ3xrDmalE4N
	hzQgWkX5Zd0oFTbUTy/Nk6kb4obLTlo4QihNBFCHS9QttpG1UVMkvYrtvbxZkFYl92sOCjFutmI+/
	X09F7qnIYxKAXFhNc+feXTHUYaK9CtvSJeNlFoPbsUW2ctggWh87vlkq/5HsnqxJx0dSt/xX9tcBQ
	PCS5btBhf2RDF4b9CRZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOHBU-0005SF-V8; Wed, 08 May 2019 07:40:12 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOHBL-0004fK-65
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 07:40:05 +0000
Received: by mail-qk1-x743.google.com with SMTP id a64so5943422qkg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 00:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kdzNGG6w8busuuDVf/UQqEgzyyAeZLA0QEhPPerzhfg=;
 b=mGDwoD4U62ey6G7SruSx83RUQNe+cXi/7VIMvqL9+ahBUlgPNQwS98dYlXxeQxQ8Bk
 IFuhOGwxWtAVuqezODZivYfjrX+e6ntlFVnvGVkxIp8xa9mms3GEcgUcVyeOzSv2/dj5
 /BZw0T/c0G6FkPHM4B0kzgTFXOIZmj9mSHFqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kdzNGG6w8busuuDVf/UQqEgzyyAeZLA0QEhPPerzhfg=;
 b=DacBmcw4zHvjxgBDhx78QbvhlBTl1feEgGkXKlrjapaWJa2QPezXKbxUUOXdnS3JJ0
 3OSM64e5lwjVyidjs0yOSjlTVRyCMcOMcc43ZruT4UssoJhoZPFyBiEM/qvLA/sju2Tn
 MApaHNw9LlfKLbdFmCUxEHVDZ9hNDCZcEDVMOH0aevw01eoX9AlKV9J4W56MkmFnKWQj
 H43QdjGcjPmzsR/mZvRaBwSbp0BRnlMb7oFY2wS0XCtdHraIUH0q1mwhtHE/Mf2sSNND
 Q8IqRyBtKWv7V54635hpnupttmBlZ5hD7i+Gk15SO12R+Jf/dj8YlCiKwhXbTbWlYukS
 Jbug==
X-Gm-Message-State: APjAAAWGib05WQqIHXt0jIGj2uuvvbuj6jvw4rX7cdem1R1hLeCDSvBy
 339REadHHJk6wJ3WNDfNOghpfpmB4vYXJDI3VnczDw==
X-Google-Smtp-Source: APXvYqysbcDT6bwWGV2HclOY8NZruV58WYxSqPpErYEwFdjc/fTQZKoLsn3w/8kJFVIKm/xaLb0gQ5MJd+XlaYmy6fc=
X-Received: by 2002:a05:620a:1670:: with SMTP id
 d16mr15764186qko.288.1557301201879; 
 Wed, 08 May 2019 00:40:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190429032551.65975-1-drinkcat@chromium.org>
 <20190429032551.65975-2-drinkcat@chromium.org>
 <1556804888.28808.6.camel@mtksdaap41>
 <CANMq1KAugRiL+-bAFijEM7NngLSoOUQtN=rNV5+YYdJ12u+jVQ@mail.gmail.com>
 <CAGp9LzqdYapagHUH1uuuHRR+j5JcphN7hhM2SyZoXQFCP8_fSw@mail.gmail.com>
In-Reply-To: <CAGp9LzqdYapagHUH1uuuHRR+j5JcphN7hhM2SyZoXQFCP8_fSw@mail.gmail.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 8 May 2019 16:39:50 +0900
Message-ID: <CANMq1KCzy45RYR-8Y6zeCj+xzOk6QUJvTA8aB8LYZ7zmORmiGQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: mediatek: Add mtk_eint_pm_ops to common-v2
To: Sean Wang <sean.wang@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_004003_258317_614AFB1F 
X-CRM114-Status: GOOD (  33.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Chuanjia Liu <Chuanjia.Liu@mediatek.com>,
 Linus Walleij <linus.walleij@linaro.org>, lkml <linux-kernel@vger.kernel.org>,
 Evan Green <evgreen@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 linux-gpio@vger.kernel.org,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 4, 2019 at 2:09 AM Sean Wang <sean.wang@kernel.org> wrote:
>
> Hi, Nicolas
>
> On Thu, May 2, 2019 at 5:53 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
> >
> > On Thu, May 2, 2019 at 9:48 PM Yingjoe Chen <yingjoe.chen@mediatek.com> wrote:
> > >
> > > On Mon, 2019-04-29 at 11:25 +0800, Nicolas Boichat wrote:
> > > > pinctrl variants that include pinctrl-mtk-common-v2.h (and not
> > > > pinctrl-mtk-common.h) also need to use mtk_eint_pm_ops to setup
> > > > wake mask properly, so copy over the pm_ops to v2.
> > > >
> > > > It is not easy to merge the 2 copies (or move
> > > > mtk_eint_suspend/resume to mtk-eint.c), as we need to
> > > > dereference pctrl->eint, and struct mtk_pinctrl *pctl has a
> > > > different structure definition for v1 and v2.
> > > >
> > > > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> > > > Reviewed-by: Chuanjia Liu <Chuanjia.Liu@mediatek.com>
> > > > ---
> > > >  .../pinctrl/mediatek/pinctrl-mtk-common-v2.c  | 19 +++++++++++++++++++
> > > >  .../pinctrl/mediatek/pinctrl-mtk-common-v2.h  |  1 +
> > > >  2 files changed, 20 insertions(+)
> > > >
> > > > diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> > > > index 20e1c890e73b30c..7e19b5a4748eafe 100644
> > > > --- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> > > > +++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> > > > @@ -723,3 +723,22 @@ int mtk_pinconf_adv_drive_get(struct mtk_pinctrl *hw,
> > > >
> > > >       return 0;
> > > >  }
> > > > +
> > > > +static int mtk_eint_suspend(struct device *device)
> > > > +{
> > > > +     struct mtk_pinctrl *pctl = dev_get_drvdata(device);
> > > > +
> > > > +     return mtk_eint_do_suspend(pctl->eint);
> > > > +}
> > > > +
> > > > +static int mtk_eint_resume(struct device *device)
> > > > +{
> > > > +     struct mtk_pinctrl *pctl = dev_get_drvdata(device);
> > > > +
> > > > +     return mtk_eint_do_resume(pctl->eint);
> > > > +}
> > > > +
> > > > +const struct dev_pm_ops mtk_eint_pm_ops = {
> > > > +     .suspend_noirq = mtk_eint_suspend,
> > > > +     .resume_noirq = mtk_eint_resume,
> > > > +};
> > >
> > > This is identical to the one in pinctrl-mtk-common.c and will have name
> > > clash if both pinctrl-mtk-common.c and pinctrl-mtk-common-v2.c are
> > > built.
> > >
> > > It would be better if we try to merge both version into mtk-eint.c, this
> > > way we could also remove some global functions.
> >
> > Argh, I didn't think about the name clash, you're right. I guess the
> > easy way is to rename this one mtk_eint_pm_ops_v2 ...
> >
> > As highlighted in the commit message, it's tricky to merge the 2 sets
> > of functions, they look identical, but they actually work on struct
> > mtk_pinctrl that are defined differently (in
> > pinctrl-mtk-common[-v2].h), so the ->eint member is at different
> > addresses...
> >
> > I don't really see a way around this... Unless we want to change
> > platform_set_drvdata(pdev, pctl); to pass another type of structure
> > that could be shared (but I think that'll make the code fairly
> > verbose, with another layer of indirection). Or just assign struct
> > mtk_eint to that, since that contains pctl so we could get back the
> > struct mtk_pinctrl from that, but that feels ugly as well...
> >
>
> I agree on renaming would make the thing simple. but I wouldn't like
> to rename to mtk_eint_pm_ops_v2 since this would make people
> misunderstand that is mtk_eint_v2.
>
> How about renaming to mtk_paris_pinctrl_pm_ops and then place related
> logic you added into pinctrl-paris.c? Because I prefer to keep pure
> pinctrl hardware operations in pinctrl-mtk-common-v2.c, and for
> relevant to other modules (mtk eint) or others subsystem (device tree
> binding, GPIO subsytem, PM something like that) they should be moved
> to pinctrl-paris.c or pinctrl-moore.c

Sounds reasonable. I uploaded a v2 that does just that.

Note that we'd still have to duplicate this code between paris and
moore, if we wanted to implement pm_ops in moore as well, but maybe
that's ok for now.

>      Sean
>
> > >
> > > Joe.C
> > >
> > >
> > >
> > > _______________________________________________
> > > Linux-mediatek mailing list
> > > Linux-mediatek@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
