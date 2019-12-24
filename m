Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4284212A2A1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 15:51:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eA8lJEgKG7hU6oyCbM+vVvO+aVgoaKgsE9tB24+vS2M=; b=mu0R3PxASvh01m
	C9EEP17BxkyksVA8plQQo7WcY4CAR4sXbIcVDcQYCjOqItIHowWeNVGvucNO1pLhT//xb7xfKBzCK
	qdWlG71SNGmU+xywk/Gi6sU5J+0iYKaEL2YEN7etMqXpOvq4aOvnugLBsYaCyaXP8IHLTvbTEcpJE
	mqSE7MW2GK/GRIOZ4B2dS2uS0TtG4rOYIOOfAxSyI+BwIC6+ulLJjt9ZZ1kUPCt4Kxc58+ZQPXzm1
	gXmumSBMsEaLGfpjcrjwYLQmMb8SToc3kiOammZ7I91ODvEwOxCKGoWeSRiiz/xs2Gb09RMz40bDk
	2HTgz4a/XkyI0jqFBKWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijlXJ-0001Iz-LY; Tue, 24 Dec 2019 14:51:49 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijlXC-0001Ia-Re
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 14:51:44 +0000
Received: by mail-io1-xd41.google.com with SMTP id x1so19316147iop.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Dec 2019 06:51:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HA9SF07pomUf/mhFGeOHvPX1/YV6Atxy36iIR2tYUwc=;
 b=vIZYFYQdzUfJmTpJC+q5NIi8BYa6+DWw959lZLAuayQW3H+rhE9SRRujDIn3jIB7/u
 +UK4PiTNIrzYzzNO+Cq1xIqvuQlbnA1oMKm0XzqSs+J6wCVhQ87fZe6V/7y9nzE9HSVr
 Et8HQGgg3B90f77+UO0CLaJlWcubtJoq8Z1dBGIteQElbBYxA+BI/QHaW/KAXyJGOD0l
 3U8nc6e2Uaa9QwmniMP53YaE8uFTXY4ExSArH/Ro37qvbAhZL5/9A9Unop+xBkuiFREv
 KGW5+qjFYgmZLMbjD1qEdd7kHvyjMH7qtkCwtP0m1eN8tmq4C/5nESdZ8XHLtbSAjILj
 oajg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HA9SF07pomUf/mhFGeOHvPX1/YV6Atxy36iIR2tYUwc=;
 b=atp/SwKHzCcJAYelWdVhy6c3H85UuGQvFTmrhvf0APyDbn8qZdwMLHvHArum8F4uOD
 r/BhHASXf1m7l3Zi8MKGw9G0R540NA+IqroX0GVjPDPtNZaapttYgbapWCNKTap/rHi3
 X3zAzEpGXo8DZHlEt0gg5S0Sd63VobBqoXW5tFYFB2Be+NxXcsysGwCIjWzRzWTPNAEh
 pjPuqJlqJ1KswrEVTbG6Txewi/z7h8Ui3PB72xb7SJwv0GKpCBr6kdwL7SL0PmwPXiEP
 TxuwwSea5pMR9BL4YefpNGgTtSart7mtB+CrrLV6Huh6zdm2Pm2U8jeJy/aetU2SE35Y
 2v3g==
X-Gm-Message-State: APjAAAUyrD7x50uGIBNzw/uB6Kb/YQ3fTCX5hbIsWYUCYtp/++ihMeri
 T9B6/KbSyrs9De1QQACOtrDpQC5Od+orHzQJ/QY=
X-Google-Smtp-Source: APXvYqyTA0h9UaY01CHPo22LrNq/F1xXrEI8zP9Isq32dA7+ynxUzAzjdJ1cR2bA+G2udw/5Th5u66brm9gGwVDtkeU=
X-Received: by 2002:a5d:9eda:: with SMTP id a26mr24747238ioe.238.1577199101880; 
 Tue, 24 Dec 2019 06:51:41 -0800 (PST)
MIME-Version: 1.0
References: <CGME20191223191928epcas1p128d39bb875b8654d61ae21364e466ec7@epcas1p1.samsung.com>
 <20191223191923.10450-1-tiny.windzz@gmail.com>
 <7230b556-7a96-14d1-ed22-43b5a6cd5a71@samsung.com>
In-Reply-To: <7230b556-7a96-14d1-ed22-43b5a6cd5a71@samsung.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Tue, 24 Dec 2019 22:51:30 +0800
Message-ID: <CAEExFWs6Wtg9dJbx9nwq4F53Lc5e__rzRn0QedJt2ffJTKU3uA@mail.gmail.com>
Subject: Re: [PATCH] PM / devfreq: exynos-bus: Add error log when get event
 fails
To: Chanwoo Choi <cw00.choi@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_065142_894321_F0225134 
X-CRM114-Status: GOOD (  20.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux PM <linux-pm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 24, 2019 at 12:00 PM Chanwoo Choi <cw00.choi@samsung.com> wrote:
>
> Hi,
>
> I think that you better to use 'devfreq-event' instead of just 'event'
> as following:
>
> PM / devfreq: exynos-bus: Add error log when fail to get devfreq-event
>
> On 12/24/19 4:19 AM, Yangtao Li wrote:
> > Adding an error log makes it easier to trace the function's error path.
> > Because the error code may be rewritten on return, print error code here.
> >
> > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> > ---
> >  drivers/devfreq/exynos-bus.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
> > index 948e9340f91c..634d63fd00ea 100644
> > --- a/drivers/devfreq/exynos-bus.c
> > +++ b/drivers/devfreq/exynos-bus.c
> > @@ -126,6 +126,8 @@ static int exynos_bus_get_dev_status(struct device *dev,
> >
> >       ret = exynos_bus_get_event(bus, &edata);
> >       if (ret < 0) {
> > +             dev_err(dev, "failed to get event from devfreq-event devices %d\n",
> > +                     ret);

Emmm, it looks a bit strange to me...
V2 has been sent.

Yours,
Yangtao


>
> Better to make it under 80 char as following:
>
> diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
> index f5d4c369c7fb..10f4fa1a0363 100644
> --- a/drivers/devfreq/exynos-bus.c
> +++ b/drivers/devfreq/exynos-bus.c
> @@ -126,7 +126,8 @@ static int exynos_bus_get_dev_status(struct device *dev,
>
>         ret = exynos_bus_get_event(bus, &edata);
>         if (ret < 0) {
> -               dev_err(dev, "failed to get event from devfreq-event devices %d\n",
> +               dev_err(dev,
> +                       "failed to get event from devfreq-event devices %d\n",
>                         ret);
>                 stat->total_time = stat->busy_time = 0;
>                 goto err;
>
>
> >               stat->total_time = stat->busy_time = 0;
> >               goto err;
> >       }
> >
>
>
> --
> Best Regards,
> Chanwoo Choi
> Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
