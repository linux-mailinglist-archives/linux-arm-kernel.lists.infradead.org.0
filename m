Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDAE1E93AC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 22:44:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VUzUXzBmR3I7h3w9l1zqWoAZ6InLS8FfTpmYVsScDl0=; b=YSUgz22qs+RKzG
	M4yCy/7tDXVHCQUlM1XMhGgCZoq1hTbw4WZ6ctcG1YtPzlcHWd1fM1wHfjDyMtBnD8Lh9R9PWbcRm
	vs9n4qcMn7lxUFkY9Im1Cr0hQd7pXrbmD7v8ngMl9R4fDwzqksvV8LfHNZwhVahZ7+AG0ArZU0BvM
	jUJSnrbxAuxRK4lc8zc3LwjOFdkqh9kFdTLJsupmb31V7EjP+vEKRLN0ZQCyRnUPDtzJr/MEFB+Vl
	rRjvgxRKHuoTwWxscpi7w3fDHeQzy1WnZmk/Sohv7u7gfwjoNSHQ6sl8yQb0MLXRHHMoCKQoEIo0C
	VqnL3bQkjaEMSxJBrkcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf8Kl-00011Y-IZ; Sat, 30 May 2020 20:43:59 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf8KJ-0000qA-S2
 for linux-arm-kernel@lists.infradead.org; Sat, 30 May 2020 20:43:33 +0000
Received: by mail-io1-xd43.google.com with SMTP id c8so3016005iob.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 30 May 2020 13:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V4AsZGoHkWeKZl23U2BgKUaE05/budRARyGFisUFMAg=;
 b=OQmXWerIg8QIvwAPvdBRaSBVezUo5IXv/JrET0Ok0KHl9WRT5scWvK8IQNIWc0KtMn
 Lkvgxho9ysVNpAmheK8lMRh+f/RTpT1iR1OUu8fKh3+Mm8bVJc7ycrmuXuY5ixrA9l2C
 u+ROczlA8vOOgr4hXs0YzFBOOoTea9C8kKE3ZzTrFT4vjw8DfhxYJb5XxvOqEIaZPV69
 +1Z3UFEDChNboaZGgHvjtF+0DbDU1zlODSZLNLwoiI3FRNkNbOiV/fnl9YoLatz91vlM
 27sZKOL0n4svv6djq4nMOvMXkLFAmII8H4tO99dsK8k5k8nHOdMrUVL/Cn83cidaQhb7
 ArhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V4AsZGoHkWeKZl23U2BgKUaE05/budRARyGFisUFMAg=;
 b=b/0GyxmrG03Rs6hD0OOlcgQHUzlozJjOzzZgi7NqTrNz5FthvjmCAh0LucYO4R/y0m
 /jroOxYWzHBFaZSAfK545gN0VmGjd4Yz3bxJJ5Rwrbcswa4fsiVhHhmD0/6CMTKWJn55
 tQwE6uFTRZiCMg4nGXIz/ZZsj7ZdTQNSPaq4zaXfhTsJ4gOYReDtI4+FzdO+z5W0BOp3
 ayRqGdxfwQe5x4znnkIKWpJbXcS/3256rQvwzvhR7cwaFXFKbPcaBIBtacLrTO7ZZW91
 iO/1O4gNYyhJf0+OQrf7TXj59DwK9N6NQbdUsv30A4BvqByoQYUDymhbb++FcvZHh1vQ
 cJuA==
X-Gm-Message-State: AOAM530NBLE09AE9/TtTh/9k6x3j8Oz3Y4kfqaBgSR5YLeocOxkxP0EN
 W1aYOXv36xbwEnrx9o6XuR8N43pgjH2v71iLeO8=
X-Google-Smtp-Source: ABdhPJzu7g1KysQKCksCZKnwLqPTctR/FKten80v+eHNGAZ22seueovNdiNBUYMuUDcn6usaq72w9TPTlEK/Ff5Hlc4=
X-Received: by 2002:a05:6602:2c45:: with SMTP id
 x5mr12011542iov.80.1590871410827; 
 Sat, 30 May 2020 13:43:30 -0700 (PDT)
MIME-Version: 1.0
References: <1587682871-528-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB49666D6A0B015FD1DF3A20B480D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB3916D588A9432A9F1D1F99BAF5D00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <AM6PR04MB496671BFF3496FD1C4C51E7E80D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB39164CB0791AB259CE62EC4EF5D00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <DB3PR0402MB3916BD0FCF482C124E21D3B1F58E0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916BD0FCF482C124E21D3B1F58E0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Sat, 30 May 2020 15:43:20 -0500
Message-ID: <CABb+yY2J5Q6uvXNk0KE3QL32C_J3RFHJJX_tq4R9arAcvJ262g@mail.gmail.com>
Subject: Re: [PATCH] mailbox: imx: Add context save/restore for suspend/resume
To: Anson Huang <anson.huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_134331_933818_453BDA7D 
X-CRM114-Status: GOOD (  33.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jassisinghbrar[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 8:55 PM Anson Huang <anson.huang@nxp.com> wrote:
>
> Gentle ping...
>
>
> > Subject: RE: [PATCH] mailbox: imx: Add context save/restore for
> > suspend/resume
> >
> >
> >
> > > Subject: RE: [PATCH] mailbox: imx: Add context save/restore for
> > > suspend/resume
> > >
> > > > From: Anson Huang <anson.huang@nxp.com>
> > > > Sent: Friday, April 24, 2020 10:33 AM
> > > >
> > > > > Subject: RE: [PATCH] mailbox: imx: Add context save/restore for
> > > > > suspend/resume
> > > > >
> > > > > > From: Anson Huang <Anson.Huang@nxp.com>
> > > > > > Sent: Friday, April 24, 2020 7:01 AM
> > > > > >
> > > > > > For "mem" mode suspend on i.MX8 SoCs, MU settings could be lost
> > > > > > because its power is off, so save/restore is needed for MU
> > > > > > settings during
> > > > > suspend/resume.
> > > > > > However, the restore can ONLY be done when MU settings are
> > > > > > actually lost, for the scenario of settings NOT lost in "freeze"
> > > > > > mode suspend, since there could be still IPC going on multiple
> > > > > > CPUs, restoring the MU settings could overwrite the TIE by
> > > > > > mistake and cause system freeze, so need to make sure ONLY
> > > > > > restore the MU settings when it is
> > > > > powered off.
> > > > > >
> > > > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > > >
> > > > > As mentioned before, we'd better keep the original author.
> > > > >
> > > > > > ---
> > > > > >  drivers/mailbox/imx-mailbox.c | 35
> > > > > > +++++++++++++++++++++++++++++++++++
> > > > > >  1 file changed, 35 insertions(+)
> > > > > >
> > > > > > diff --git a/drivers/mailbox/imx-mailbox.c
> > > > > > b/drivers/mailbox/imx-mailbox.c index 97bf0ac..b53cf63 100644
> > > > > > --- a/drivers/mailbox/imx-mailbox.c
> > > > > > +++ b/drivers/mailbox/imx-mailbox.c
> > > > > > @@ -67,6 +67,8 @@ struct imx_mu_priv {
> > > > > >       struct clk              *clk;
> > > > > >       int                     irq;
> > > > > >
> > > > > > +     u32 xcr;
> > > > > > +
> > > > > >       bool                    side_b;
> > > > > >  };
> > > > > >
> > > > > > @@ -583,12 +585,45 @@ static const struct of_device_id
> > > > > > imx_mu_dt_ids[] = {  };  MODULE_DEVICE_TABLE(of, imx_mu_dt_ids);
> > > > > >
> > > > > > +static int imx_mu_suspend_noirq(struct device *dev) {
> > > > > > +     struct imx_mu_priv *priv = dev_get_drvdata(dev);
> > > > > > +
> > > > > > +     priv->xcr = imx_mu_read(priv, priv->dcfg->xCR);
> > > > > > +
> > > > > > +     return 0;
> > > > > > +}
> > > > > > +
> > > > > > +static int imx_mu_resume_noirq(struct device *dev) {
> > > > > > +     struct imx_mu_priv *priv = dev_get_drvdata(dev);
> > > > > > +
> > > > > > +     /*
> > > > > > +      * ONLY restore MU when context lost, the TIE could
> > > > > > +      * be set during noirq resume as there is MU data
> > > > > > +      * communication going on, and restore the saved
> > > > > > +      * value will overwrite the TIE and cause MU data
> > > > > > +      * send failed, may lead to system freeze. This issue
> > > > > > +      * is observed by testing freeze mode suspend.
> > > > > > +      */
> > > > > > +     if (!imx_mu_read(priv, priv->dcfg->xCR))
> > > > > > +             imx_mu_write(priv, priv->xcr, priv->dcfg->xCR);
> > > > >
> > > > > This could be separate patch if it aims to fix a specific corner case.
> > > >
> > > > This is NOT corner case, it can be reproduced with our imx_5.4.y
> > > > very easily, and this issue cause me many days to debug...Also cause
> > > > Clark's effort to help test it a lot for many days...
> > > >
> > >
> > > Is this issue only happen for non-state lost case (eg. Freeze mode)?
> > > If yes, it's a specific case and worth a separate patch to highlight it IMHO.
> > >
> > > BTW, it seems most drivers have this issue in current kernel because
> > > they don't know whether the state are really lost, it seems like
> > > kernel still doesn't support this well.
> > >
> > > > I do NOT think it makes sense to first send out your patch with bug
> > > > for review, And then add another patch to fix it. 1 patch is enough
> > > > for this
> > > feature.
> > > >
> > >
> > > Anyway, if you really want to go with one patch, for this case, we
> > > usually could keep original author and add a small fix note in commit
> > message.
> > > (You could see many community guys do like this if you search kernel
> > > commit
> > > log)
> > >
> > > Basically we try our best to keep origin author in order to respect
> > > others' work for community work.
> >
> > I am fine with whoever is the author, my focus is the issue fix and easy rebase.
> > If maintainer agrees that introduce a patch with bug and add another patch to
> > fix is OK, then I can rework the patch into 2 patches.
> >
Not two patches, just add to the original patch and add a fix note in
commit as Anson suggested ... though I don't know what the original
patch was. But I am definitely in support of giving credit to the
original author.

thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
