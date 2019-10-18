Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D00DC3BD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 13:15:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S86rpKOq8cFJTSsDmhiIZurSq8S8RONFxbM4C/PqAzQ=; b=aH/oy2W2SdDjtd
	tl8PYxP0+x4XWYqrv0+my1KJpBDbLM++HFudAyYF2vd99Sr9R2enbzo/lGHGroqWd7R61tfbWwvYi
	WX4f0pYjEv10tL+/t6Xl/UtgCefK2+xWIR68zvcwhGLfgeWuzenfreLx0ThNulXzWaXCvKTutKnWz
	JrR9RCHkrkAXgSCLw/ObSufgmeu+hKphPtqOX/mNpciSbhBkQC/4NGcMwT3dCB1mOLEj8GNVpEZ1E
	6n+e9gaSwHp3J9RC3QH4v3/XD/AOC0rWiqozaV1FrXYF98n3r50IABST7cZSeDZDZOnHpMJml7OAA
	fVOxm0MarsQqk0TVJlaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLQDx-00072K-Kk; Fri, 18 Oct 2019 11:15:13 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLQDc-00071T-UA
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 11:14:54 +0000
Received: by mail-pf1-x443.google.com with SMTP id b128so3700932pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 04:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PdWA0N6LArMPxWcQPYXRVyly6m34mLC44EP1ORzmGqs=;
 b=m7Y2tbrqYomoSGGnsHw6ioheYXbdmj8e//C2iw7ChjohsJlP3ec3vNTpxwQRqMwQN5
 RcicUxV41Cxaxc2+7F9PK2nnHiJtQLPABk/O9/moEEBVsYZzsZOsL/r31BA3G8ByazfL
 5Ekl9xoxujTOTe/urEnC8wl3hRyAL64aCiPE0MKQhnlZ8gAYzURGficiDHU8m7rwBNNe
 4SO38hPt4KgLNrwEB9zcKaZxiEz1NfYGHkwXlUjVtT5KlRRZEYtdWmPu4PgPLoG6j7RD
 ZHLih4EjQIUDQ8EttFo9q91I/BVNtxLro00YSmClWMBIlJj2fNoSK/AksN5Za1e5Tcrq
 slWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PdWA0N6LArMPxWcQPYXRVyly6m34mLC44EP1ORzmGqs=;
 b=r3iYUI9bVBS1g7IgP7+O4IvF8lvhg82e6RKL6cNCMIucklGiHVRn3MdlHklKZcwQXD
 DpZjCrGzGPZHwnn/ZVUs6QIT/iJ9rAsr/xvLwXIrgfdbUzCNIdljsFIyl+IasbFkBsn4
 xQBGB2mTbCR0F0b7NPyKSWsRyb0jGLrAw+ulZhWE90QyAsY/DUUY22saHVpc348UT8Gr
 t588viU4pGCo0iGo1HosoI9DxfcIMFrkxsMzw9q4sINyFIsKiDj7XszNBVhavpMahZh0
 AAgNbL7Hfdx2J7s/ujBQtJ1FuumpJT3jeYCLt3t+ne0tMpwBwNcVfOInEzgIev1MwB1e
 ZJtg==
X-Gm-Message-State: APjAAAXO5LcVKF3dtw6TI3cC5Fb1SBrKY7ebMtaD+AX4IHKIbdboflt2
 b8/XqTuCEQ/nvldlnckxDn5cPQExnSi8ey3tHbM=
X-Google-Smtp-Source: APXvYqwiDaJWrpqwvInQO/35te4OjSHucMpHdYSAuAh5zBD8mD2bwLeTjsEtPWiayqiwXNGN/hjKBIdcLhBIbjZRB0s=
X-Received: by 2002:a17:90a:9416:: with SMTP id
 r22mr10644319pjo.20.1571397292091; 
 Fri, 18 Oct 2019 04:14:52 -0700 (PDT)
MIME-Version: 1.0
References: <20191017025058.31528-1-hslester96@gmail.com>
 <CAHp75Vd2SMERjtvNumxAF1HSp8GSThmcyx96zkFzUXKwnD5d2Q@mail.gmail.com>
 <CANhBUQ2yxGbjk_DgXbip=TPT=evzA5naoJSY9t1_Ep47e9oupw@mail.gmail.com>
In-Reply-To: <CANhBUQ2yxGbjk_DgXbip=TPT=evzA5naoJSY9t1_Ep47e9oupw@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 18 Oct 2019 14:14:41 +0300
Message-ID: <CAHp75VeLyTi=gqfNr-=Tg36yQs_fYG__iQAxAEKdks0mqsTbug@mail.gmail.com>
Subject: Re: [PATCH] spi: pxa2xx: Add missed security checks
To: Chuhong Yuan <hslester96@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_041452_997632_9527BE23 
X-CRM114-Status: GOOD (  19.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 linux-spi <linux-spi@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Daniel Mack <daniel@zonque.org>, Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 1:39 PM Chuhong Yuan <hslester96@gmail.com> wrote:
>
> On Fri, Oct 18, 2019 at 5:35 PM Andy Shevchenko
> <andy.shevchenko@gmail.com> wrote:
> >
> > On Fri, Oct 18, 2019 at 8:59 AM Chuhong Yuan <hslester96@gmail.com> wrote:
> > >
> > > pxa2xx_spi_init_pdata misses checks for devm_clk_get and
> > > platform_get_irq.
> > > Add checks for them to fix the bugs.
> > >
> > > Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> > > ---
> > >  drivers/spi/spi-pxa2xx.c | 6 ++++++
> > >  1 file changed, 6 insertions(+)
> > >
> > > diff --git a/drivers/spi/spi-pxa2xx.c b/drivers/spi/spi-pxa2xx.c
> > > index bb6a14d1ab0f..2e73d75a6ac5 100644
> > > --- a/drivers/spi/spi-pxa2xx.c
> > > +++ b/drivers/spi/spi-pxa2xx.c
> > > @@ -1565,7 +1565,13 @@ pxa2xx_spi_init_pdata(struct platform_device *pdev)
> > >  #endif
> > >
> > >         ssp->clk = devm_clk_get(&pdev->dev, NULL);
> > > +       if (IS_ERR(ssp->clk))
> > > +               return NULL;
> > > +
> > >         ssp->irq = platform_get_irq(pdev, 0);
> > > +       if (ssp->irq < 0)
> > > +               return NULL;
> >
> > I'm not sure they are mandatory for all platforms.
> > To be on the safe side, you simple need to add _optional() to the both
> > call along with above change.
> >
>
> As I know, this is the only one in spi which does not have a check for
> devm_clk_get.

For some it still may be optional. That's why better to check it and
mention in the commit message.

> Even if add _optional(), they still may return errors and need security checks.

Of course, see "along with" in my previous comment.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
