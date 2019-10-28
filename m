Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9ADE6A8A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 02:38:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+tNjCeBxBWWv6OBERqKhFkGhk0Ate6b9goAn0fvSCZA=; b=Dfpu4EIVdxaC+W
	njmZDklCwjlF3ZC9VEVVlIP4vkihfP/KlSwIC4sEmOWDOg8NCo4howsRYOsb+6WZIOphy3Vn6ZAJg
	LQ3YF0Uo8sm1asslK+wWgxIa+VhhIIPEjFuYXFHeR5Q5RmE1NvgVUn2mP4O3C36DPZAYmZXG7dvwO
	ZiU0ro21hmDEarG7eGo95Rk2PHoWBMYZQVDtJ/CeNs03bfFnxpUnZvG8v1RpAhW7Kfm02l5QtYGpa
	vGBwFdGdzG8E7Oj2f00Qw8pTgvnfqWjI/9Hghok9EwmMRsEPnvegj3fOP9bqdwqKxnuJ3YGDsIBXP
	MsW8BxqDWgKQkwegNmkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOtzD-0002Tz-MI; Mon, 28 Oct 2019 01:38:23 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOtz3-0002TV-Hz
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 01:38:14 +0000
Received: by mail-ed1-x543.google.com with SMTP id a21so6615359edj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 27 Oct 2019 18:38:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zncCQd975Gz2HvK2SjXCCS9OAbsNjkyZCeZT6yaW7zQ=;
 b=MJFVIuDrAyz9pDLgpUUl9PU1eZbzKuPQNiEAzcQW1qYjBZjuoWDjrqGy9uWwBC66Cd
 dI3yEdlYrJi9nlHlHzafl7i8WvKj/XLHxPbDWEtsBpUBMumEUFvInIYQnVTLK+ti+7tO
 BA7mgqjIeTWS1O1WIN27xKabnFwlPMrDCiIPvQUPLPAq7HMw8gsza012bODYpDuy2/vD
 taxlG8IqDmUdHTSnMyFv5PMGM92EtSdVF5rDTJo3CJh1YqlOtU4Zj+9HaR42o5jK8e3s
 jenl27VKb6t9BWfqRxFCO0FEO8G9hJFf5yNF0aRrMh28ErjfYLPp42bc4NbualuBRcp/
 eA5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zncCQd975Gz2HvK2SjXCCS9OAbsNjkyZCeZT6yaW7zQ=;
 b=KRJCadBJEpt/69RXBVSAhg/GI2lHy+VBjLuloQkQ4Lre3rHjOujYikRdF1x3tVPUV+
 ItnkBVq4ZIRNBBfKqegYh1nAFTimcUb/Fy9SfGpeTIR8QJgamclE+8pPLb+Sn/Xgh4Lx
 YZvXyrGKWInnZUnc1AKF0Xw0qg3RbIHRRKMZ/Vi1xtNNvEeqOC6mAJP/Jd64qWmwzhCd
 iaJOyPFNIYS5Pe3ItbJfOx7/fzggraOP5OcNn5HdLKi1wFvfE+BHgyb92/JBrankoABD
 rLvX9dblwohyBSmxeI8Qnzp8ehVM4hQS27bsjIXGrYqpveQn443SW9SN3VU7Mj5f4QKn
 p2VA==
X-Gm-Message-State: APjAAAX/pYpeYn9wyHb646Gei5pj94s3sfNW9NTs7KvfeyyvAdFLxtLD
 hnsuZkjhy6w6spauZEeqD2kyAHjgKNKX86x7XHI=
X-Google-Smtp-Source: APXvYqzgnaDiUcH3IYDfQVBOpeExgcPu32wDgAZkOKAPutypEopBXKs6avGlVlBxf+yhnsEi3FfGHSOF7QMkbQk2/Ug=
X-Received: by 2002:a17:906:1d4d:: with SMTP id
 o13mr10006173ejh.196.1572226690648; 
 Sun, 27 Oct 2019 18:38:10 -0700 (PDT)
MIME-Version: 1.0
References: <20191017025058.31528-1-hslester96@gmail.com>
 <CAHp75Vd2SMERjtvNumxAF1HSp8GSThmcyx96zkFzUXKwnD5d2Q@mail.gmail.com>
 <CANhBUQ2yxGbjk_DgXbip=TPT=evzA5naoJSY9t1_Ep47e9oupw@mail.gmail.com>
 <CAHp75VeLyTi=gqfNr-=Tg36yQs_fYG__iQAxAEKdks0mqsTbug@mail.gmail.com>
 <CANhBUQ1CnCHiY8tkCMcXZ3DAPcfnQZgfA_Fj4qf3yYBKGg10Wg@mail.gmail.com>
 <CAHp75Vdb19w02zKHo1tqAtF8TmT=z6Ye2YFfxVw_TGtO3VxfLA@mail.gmail.com>
In-Reply-To: <CAHp75Vdb19w02zKHo1tqAtF8TmT=z6Ye2YFfxVw_TGtO3VxfLA@mail.gmail.com>
From: Chuhong Yuan <hslester96@gmail.com>
Date: Mon, 28 Oct 2019 09:38:00 +0800
Message-ID: <CANhBUQ2WJaFrk5JBDbTjaTM5mv0ebwdcHBoR8ODm28X_mOukLA@mail.gmail.com>
Subject: Re: [PATCH] spi: pxa2xx: Add missed security checks
To: Andy Shevchenko <andy.shevchenko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_183813_619766_04BABC69 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Fri, Oct 18, 2019 at 10:04 PM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
>
> On Fri, Oct 18, 2019 at 2:37 PM Chuhong Yuan <hslester96@gmail.com> wrote:
> > On Fri, Oct 18, 2019 at 7:14 PM Andy Shevchenko
> > <andy.shevchenko@gmail.com> wrote:
> > > On Fri, Oct 18, 2019 at 1:39 PM Chuhong Yuan <hslester96@gmail.com> wrote:
> > > > On Fri, Oct 18, 2019 at 5:35 PM Andy Shevchenko
> > > > <andy.shevchenko@gmail.com> wrote:
> > > > > On Fri, Oct 18, 2019 at 8:59 AM Chuhong Yuan <hslester96@gmail.com> wrote:
>
> > > > > I'm not sure they are mandatory for all platforms.
> > > > > To be on the safe side, you simple need to add _optional() to the both
> > > > > call along with above change.
> > > > >
> > > >
> > > > As I know, this is the only one in spi which does not have a check for
> > > > devm_clk_get.
> > >
> > > For some it still may be optional. That's why better to check it and
> > > mention in the commit message.
> > >
> > > > Even if add _optional(), they still may return errors and need security checks.
> > >
> > > Of course, see "along with" in my previous comment.
> > >
> >
> > Got it. I will send version 2 in which both _optional() and security
> > checks will be added.
>
> Let me be clear. I didn't check if _optional() needed or not. You need
> to investigate this before sending new verison.
> And in either case this should be explained in commit message.
>

I have checked this file again and found ssp->clk is used by clk_get_rate in
pxa2xx_spi_probe.
Therefore, it should not be NULL and _optional cannot be used here.
Besides, ssp->irq is also used in pxa2xx_spi_probe.
Hence, I think this patch is fine.

Regards,
Chuhong

> --
> With Best Regards,
> Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
