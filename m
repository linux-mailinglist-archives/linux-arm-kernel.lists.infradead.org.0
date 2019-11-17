Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B681FF95D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 13:18:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wQds3+Fs97Lb2C8B1uFsfEqPl5CmBeNddiWUdZK40ew=; b=i6V7omvq6eW9ub
	SuYGaSQRzJGvK8JwURbmx1bzqcB+5XY63Y2Zc1Kgxz+4cdsarJiw9QyUGSjS75wenL6AvkpUUv/Z4
	puNfzyDnYoew9DGbNlyp63U1eOtRnrbrjcnNVaX3y/K8e3zDeg0WGMVdde0UuJAIMN0/G2bvMjjVU
	7GLwoUJBOKWvIZv6Bw4tVoNfXlAfARAt8mv1mcLBU7NbnC8yaikqgg5+T1X5TsM854mbby6IX/wzD
	h5CyFNKGpkXKxX7EJe0TH01PcD/2fhh4WgWbxlRD1gJiTTJ+RsaWHI4ZtzseWWpnOnUkZ5RiAqcia
	71AFilvYFPmmTBmbJH1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWJVT-0003cp-T6; Sun, 17 Nov 2019 12:18:19 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWJVN-0003cW-KB
 for linux-arm-kernel@lists.infradead.org; Sun, 17 Nov 2019 12:18:15 +0000
Received: by mail-il1-x141.google.com with SMTP id q1so13377355ile.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 17 Nov 2019 04:18:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xOmkNME1TnaceMt+tkFudQs07FT2wu+ZDBouJ09Uj1c=;
 b=X8jwgOqATtJsmEM6D6Mb+YhgxmxDAfq/gtrLXURG39AAv47043tQZba2Kooer5/urp
 pj4X9rHyaJBZeno7FFGc796K3alQdtYMr0mGe2XoWWrU6gkMQnM6f1CVEIR+JYCgtvyh
 h0rjzbE3Yp4AwPxigMCQf5Xc3lQW6QVdI+oJE2wLVSD68TwkadP6cU3aQQp2hZTX1usy
 kkPsAOIW4ZOj16nZi4Nu3dIxbqjphls/kdWGV8NDXyA7rmpd7daygdlCpln2YscJyGuT
 wpc37RNVG2lPjfQXZ7TniAbh8jnG8sv7nWl/FG/qqzfS0+17WQsw3Q7tsFfzeR1xf7/s
 zYHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xOmkNME1TnaceMt+tkFudQs07FT2wu+ZDBouJ09Uj1c=;
 b=db8fZpJoWoeuDvgG6j0+BJV+YIhlhUFo4rcEqQapY8XhJgOuSjzWtH7Ge+VtfZotwh
 2MW0p7n6gXppf5A5JX93grzXr9+Y33Ks1nN1O0ki+zzw/QbLFkCAebVlDI3B4XeZ/o+G
 9uT1W+iQ4WL34/HPB2ysUDyTULSy0VfmKDNpcfqWsT4FIgZWZhfnVkU47ZcQeCDCN4+L
 hiM1E7m3y4OGa9p2Oa7Ea0hKwnkNmeaVOKtut20Xf8/u785oL6nDkbFjCXNtLGul+oeS
 wE3txJ9wA8sB+Y6QVV1VXlgL0ooBQaAlPA5UTUfGmN26LFIDwImX1rwc7rrUmCgVEhUC
 3G3g==
X-Gm-Message-State: APjAAAVS5F4q9/v+K4KvBkYEdVX931ryOaL/c7o/VWoL3WDH90BU4ZMw
 pvtZuJJ6zTQ1blyWpYOJNvL+H59jQ2B+kavCMqU=
X-Google-Smtp-Source: APXvYqz1MK2QvIKuUQAqSX873T6Wv8NlMSXbqt3V6crWUTwDLNaKooKPYrX59aCJ5yUUQwQs9iPIB0a70ShCUB3sh6U=
X-Received: by 2002:a92:3ad4:: with SMTP id i81mr10078405ilf.18.1573993092209; 
 Sun, 17 Nov 2019 04:18:12 -0800 (PST)
MIME-Version: 1.0
References: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
 <1566299605-15641-4-git-send-email-aisheng.dong@nxp.com>
 <20190906170643.B310F20578@mail.kernel.org>
 <CAA+hA=QoZFFb_EVfxcDuJB-9VobVd-1-RyhWeNTSePxW50P8Eg@mail.gmail.com>
 <20190916184408.8A55720665@mail.kernel.org>
In-Reply-To: <20190916184408.8A55720665@mail.kernel.org>
From: Dong Aisheng <dongas86@gmail.com>
Date: Sun, 17 Nov 2019 20:07:11 +0800
Message-ID: <CAA+hA=SbcophCfF3xGTe1R1awSrFxDRYqESut7uFQPQFOV86eA@mail.gmail.com>
Subject: Re: [PATCH V4 03/11] clk: imx: scu: add two cells binding support
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_041813_661255_9FCC2C99 
X-CRM114-Status: GOOD (  21.90  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (dongas86[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dongas86[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

Sorry for the delay due to a horrible busy months. Just a bit relax now.

On Tue, Sep 17, 2019 at 2:44 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Dong Aisheng (2019-09-09 03:23:25)
> > Hi Stephen,
> >
> > Thanks for the review.
> >
> > On Sat, Sep 7, 2019 at 5:29 PM Stephen Boyd <sboyd@kernel.org> wrote:
> > >
> > > Quoting Dong Aisheng (2019-08-20 04:13:17)
> > > > diff --git a/drivers/clk/imx/clk-imx8qxp.c b/drivers/clk/imx/clk-imx8qxp.c
> > > > index 5e2903e..1ad3f2a 100644
> > > > --- a/drivers/clk/imx/clk-imx8qxp.c
> > > > +++ b/drivers/clk/imx/clk-imx8qxp.c
> > > > @@ -134,7 +134,12 @@ static int imx8qxp_clk_probe(struct platform_device *pdev)
> > > >                                 i, PTR_ERR(clks[i]));
> > > >         }
> > > >
> > > > -       return of_clk_add_hw_provider(ccm_node, of_clk_hw_onecell_get, clk_data);
> > > > +       if (clock_cells == 2)
> > >
> > > Can you just read this from the DT node again instead of having a global
> > > variable called "clock_cells" for this?
> > >
> >
> > I tried thinking about it.
> > One problem is that we also need this information in the exist clk
> > registration API to
> > keep the backwards compatibility:
> > e.g.
> >  static inline struct clk_hw *imx_clk_scu(const char *name, u32 rsrc_id,
> >                                          u8 clk_type)
> >  {
> > -       return __imx_clk_scu(name, NULL, 0, rsrc_id, clk_type);
> > +       if (clock_cells == 2)
> > +               return imx_clk_scu_alloc_dev(name, NULL, 0, rsrc_id, clk_type);
> > +       else
> > +               return __imx_clk_scu(name, NULL, 0, rsrc_id, clk_type);
> >  }
> >
> > Parsing it for all clocks seems not good.
>
> Can you parse it once for the clock controller and then pass it to the
> registration function as the number of cells? I dislike the global and
> the name of the global.
>

Yes, i can do it.
Why i didn't do it before is because there're tens of APIs callers already
and finally we will back to the original API again after removing the
legacy users.
So i used a global variable as a temporarily workaround during transition phase.
But i do agree that make the code look ugly.

Regards
Aisheng

> >
> > In the future, i planned to totally remove the legacy binding support which
> > is a premature one and missing continued support.
> > Then we will also remove this unneeded clock_cells.
>
> Ok sure.
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
