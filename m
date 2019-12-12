Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C05B11CBC9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 12:04:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cQXvX/IES6/oEz8bbuCxyMctHbYoDK4oBF2Q8bV73ZY=; b=RhH8sQlDgExJmZ
	/muVyvGXUL66MuvjWk5wEsyjBh7dZfvhWnXgfd+SovPrqpOgXjHTxVmaB1GgJZr+rS/e09saaci0g
	UDkeWUdIpoFQy2tU3DKcKRDNdvqkgGktuYGs7q0PBzmtXjtYDbdya9prbhg+0n/C2Hepwwm7E6HsX
	ZlBEAJiMd8PcRoaK7ip5Ic/7/Zozw3Uv4uqsfFIb5lTEDTlRal9jEKBHIkl5hvYp4oTJ8r71U9Iq+
	HVZvbfSwDEXPb1Dx/Z9/HR23Hiaz/m8Lf9ECiJ+WwW0oAH/cr6yRfO3ysy2z2VRqRq/THatr9rlDi
	Bx4xc9FNt524Gh8Bp3Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifMGH-0006Fl-Dj; Thu, 12 Dec 2019 11:04:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifMG7-0006FC-Mb
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 11:03:52 +0000
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
 [209.85.167.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E2CA0227BF
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 11:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576148630;
 bh=RlQYE4ISnB8w71cVPWrVxWmmiBw1vv7db6O06zPNTEg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=qNHGjkNNfqbO/iMeXj8vAZpZYJ8k+Y0WPRnnKuM4Pf8VuXrW7AhgfhGO4LUE6HiOu
 blPA7D7ic9Ty1uJUHM5vCOuzfgCP28aU3Pa87e9a2XhCQ7xXOShup8BjrRdhR14jtU
 +ZblW4z0tyJeNYEmpZ0RB+p5B5Jkv/7nrfYLUgM4=
Received: by mail-lf1-f54.google.com with SMTP id r14so1371874lfm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 03:03:49 -0800 (PST)
X-Gm-Message-State: APjAAAUpqEwIsufAF18b70gQKOc7PdZBn7givZVU8RWOOhj2tlNJeN+S
 +Wnx/PVP6EHUYVZk01lwOT3jwkjB8Ok/A0mzwXQ=
X-Google-Smtp-Source: APXvYqxdSYzPggRDnt0KWf86ulCn6elVREWxE1DfX8yzjxQqmOd7sEsDF55jGJFa+FUUT8TXBVfOjvz0/2nUFepPM/I=
X-Received: by 2002:ac2:5dc7:: with SMTP id x7mr5301381lfq.24.1576148628033;
 Thu, 12 Dec 2019 03:03:48 -0800 (PST)
MIME-Version: 1.0
References: <20191104154942.8935-1-hslester96@gmail.com>
 <29590e4f-cb9e-c9ac-608c-b7b72c308d25@xs4all.nl>
In-Reply-To: <29590e4f-cb9e-c9ac-608c-b7b72c308d25@xs4all.nl>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Thu, 12 Dec 2019 12:03:36 +0100
X-Gmail-Original-Message-ID: <CAJKOXPctbuM_vZJPLORiyOh_8884Q3SEeEBmOmm7ON8xOp7m3w@mail.gmail.com>
Message-ID: <CAJKOXPctbuM_vZJPLORiyOh_8884Q3SEeEBmOmm7ON8xOp7m3w@mail.gmail.com>
Subject: Re: [PATCH] media: exynos4-is: add missed clk_disable_unprepare in
 remove
To: Hans Verkuil <hverkuil@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_030351_785333_96A2BC54 
X-CRM114-Status: GOOD (  21.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Chuhong Yuan <hslester96@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 12 Dec 2019 at 11:39, Hans Verkuil <hverkuil@xs4all.nl> wrote:
>
> On 11/4/19 4:49 PM, Chuhong Yuan wrote:
> > This driver forgets to disable and unprepare clock when remove.
> > Add a call to clk_disable_unprepare to fix it.
>
> I'd like an Ack from Samsung before I apply this. I see this in the probe() in fimc-lite.c:
>
>        if (!pm_runtime_enabled(dev)) {
>                 ret = clk_prepare_enable(fimc->clock);
>                 if (ret < 0)
>                         goto err_sd;
>         }
>
> So is it right to always call clk_disable_unprepare in the remove()?
>
> I suspect it is correct, but I would like someone else to take a look as well.
>
> Regards,
>
>         Hans
>
> >
> > Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> > ---
> >  drivers/media/platform/exynos4-is/fimc-lite.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/media/platform/exynos4-is/fimc-lite.c b/drivers/media/platform/exynos4-is/fimc-lite.c
> > index e87c6a09205b..6748bd96aada 100644
> > --- a/drivers/media/platform/exynos4-is/fimc-lite.c
> > +++ b/drivers/media/platform/exynos4-is/fimc-lite.c
> > @@ -1614,6 +1614,7 @@ static int fimc_lite_remove(struct platform_device *pdev)
> >       struct fimc_lite *fimc = platform_get_drvdata(pdev);
> >       struct device *dev = &pdev->dev;
> >
> > +     clk_disable_unprepare(fimc->clock);
> >       pm_runtime_disable(dev);
> >       pm_runtime_set_suspended(dev);
> >       fimc_lite_unregister_capture_subdev(fimc);

No, it is wrong. The clock is enabled in probe only if
!pm_runtime_enabled(). This will matter only if PM is disabled but now
it leads to unbalanced disables. This was clearly not tested because I
believe any test would trigger error. In such case, please mark the
patches as RFT.

There is some tendency to post small "fixes" like this without
testing... ok, not everyone has hardware but then just mark it as
not-tested or RFT...

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
