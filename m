Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53827E7624
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 17:30:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hAcgogubVkoGI/MvpZNJeMzUVM+HyiOQ1jxcNoDit78=; b=rH3MkYArzUKAkr
	YNZDCz4V1umRYFqOGfeAZkyRvtiLDV/0p6FLtUw7CTaDvyoZ67huPmRgRcjybTCS6SYOSsdBLbjYg
	UDGEaD0oSmJAt2F/lDwnQ+u/jdQxmJTfRnIkiSfkwR5yyuA/eHAs21wUPZ5q11hByqzxCAIoGhQO5
	A02wlc0/8KcX332a3LijEpbT5l6KkS8WQ4B17bGfasYp/RdjNy+u0Mi/0WYqp+3599NlIHQxhI9UR
	vaTmYhOahvYesXhaLjOzayra+z1Oa4jizJzj3ythyKf6Cp6nVAIY/Tm68vplxWNVSn71YiV5hyYeW
	hHINaH2uNLyHLr+m5BKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP7uZ-0006Ga-Au; Mon, 28 Oct 2019 16:30:31 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7uP-0006FM-Qa
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 16:30:23 +0000
Received: by mail-io1-xd44.google.com with SMTP id 18so4426711ion.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 09:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V/+YXkmrDex7nEr+gkqIoyiFItObqxb735/pgi9TyOw=;
 b=IEVfVXYqi71X+5wVl3Ese6uVmR7+J/VABWSAUt7H4jonMAuWXEZACHPKzDWU8PaTdQ
 lRfIaqsTOOqdC5QeAI95fcxyC2ALi8O2yrs7v2oszQwXMyqLSeu98BMk8/d4Y4HOTZCW
 Ip3dgukKFPd8Z+K/JVq17v79VV8bhl5POK/5YviTYJ19ZSLcyB1vPkcQbC3dx6E+1Op8
 rxl6p/utkpHicJVLDdRasCAKRULk6rq0gId0DIzIyLkCjkQOmXS+tziKwY5XhuGq6VVm
 /TMxt+tb3v26IeEHYmc44XaG8cjhvOKaMysrOafos6Iyr3V6O8RhD5xbccRIugY0lNxW
 YRbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V/+YXkmrDex7nEr+gkqIoyiFItObqxb735/pgi9TyOw=;
 b=SGZ7vj/ycssYx6VVS+RWHBkJdDTasDprLwPTe2u5kDXEPGhI1OVxwf62GnfvzZsG+w
 jRfh869ZcXRKQsL7sHAyyqLxyG+wnt8sDpVU8yW3VKvoTRQz+ciAQmO/6jv4gI6wYvq+
 yrauFTJmPJC50koTs4SCVoIcuuYHrxKkhmoJvYetsleek+Hho/7D5Gcn+831e1fhANm1
 /+E3vCrYJuFNY+ZbjnsbLhZQNMTlCkjN2EY8zY1q6oCNnXMdhNNoxuiZse73XUBLb0tz
 XJZKyocxuIJ86Q7po0XFi9IwCm+4wslYWt/XkYvKNsDIa3z5a5hbECNwDnaSyv5iLLx/
 0f5w==
X-Gm-Message-State: APjAAAWv6yFoCmg8f5N8EnfGqeSapX96F8jZLftgMsyVVWCHxAnJRN2v
 sTuW9Q6sJVew0mU70+BLzEo+y4eOzSZfqpYIqps=
X-Google-Smtp-Source: APXvYqzk/zLyOx63qqddiGsEf2n1A10g0Xbr4HwW628LXscP5JAk3K//9Mo38REgUHJBpGQfWEZeoUeMnJ3rGvH8ZNI=
X-Received: by 2002:a02:330e:: with SMTP id c14mr18313186jae.5.1572280217811; 
 Mon, 28 Oct 2019 09:30:17 -0700 (PDT)
MIME-Version: 1.0
References: <20191026042519.29446-1-navid.emamdoost@gmail.com>
 <d9c04318-586a-bfc2-fce6-6218c6bab1d6@linux.intel.com>
In-Reply-To: <d9c04318-586a-bfc2-fce6-6218c6bab1d6@linux.intel.com>
From: Navid Emamdoost <navid.emamdoost@gmail.com>
Date: Mon, 28 Oct 2019 11:30:06 -0500
Message-ID: <CAEkB2EQXmHJoMJJJULHHFy4gp6a=QiCe5SoxkWehnpKWNVw=_A@mail.gmail.com>
Subject: Re: [PATCH] media: aspeed-video: Fix memory leaks in
 aspeed_video_probe
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_093021_867952_71C2C4DF 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (navid.emamdoost[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Kangjie Lu <kjlu@umn.edu>, openbmc@lists.ozlabs.org,
 Eddie James <eajames@linux.ibm.com>, LKML <linux-kernel@vger.kernel.org>,
 Navid Emamdoost <emamd001@umn.edu>, Stephen McCamant <smccaman@umn.edu>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 11:27 AM Jae Hyun Yoo
<jae.hyun.yoo@linux.intel.com> wrote:
>
> Hi Navid,
>
> On 10/25/2019 9:25 PM, Navid Emamdoost wrote:
> > In the implementation of aspeed_video_probe() the allocated memory for
> > video should be released in case of failure. Release video if either
> > devm_ioremap_resource() or aspeed_video_init() or
> > aspeed_video_setup_video() fails.
> >
> > Fixes: d2b4387f3bdf ("media: platform: Add Aspeed Video Engine driver")
> > Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> > ---
> >   drivers/media/platform/aspeed-video.c | 14 ++++++++++----
> >   1 file changed, 10 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/media/platform/aspeed-video.c b/drivers/media/platform/aspeed-video.c
> > index eb12f3793062..8c473356132d 100644
> > --- a/drivers/media/platform/aspeed-video.c
> > +++ b/drivers/media/platform/aspeed-video.c
> > @@ -1663,18 +1663,24 @@ static int aspeed_video_probe(struct platform_device *pdev)
> >
> >       video->base = devm_ioremap_resource(video->dev, res);
> >
> > -     if (IS_ERR(video->base))
> > -             return PTR_ERR(video->base);
> > +     if (IS_ERR(video->base)) {
> > +             rc = PTR_ERR(video->base);
> > +             goto free_video;
> > +     }
> >
> >       rc = aspeed_video_init(video);
> >       if (rc)
> > -             return rc;
> > +             goto free_video;
> >
> >       rc = aspeed_video_setup_video(video);
> >       if (rc)
> > -             return rc;
> > +             goto free_video;
> >
> >       return 0;
> > +
> > +free_video:
> > +     kfree(video);
> > +     return rc;
> >   }
> >
> >   static int aspeed_video_remove(struct platform_device *pdev)
> >
>
> Can we simply change kzalloc in aspeed_video_probe with devm_kzalloc
> so that we don't need to take care of freeing of video? I think it would
> be more simpler.

Sounds a neat plan, will send v2.

>
> Cheers,
>
> Jae



-- 
Navid.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
