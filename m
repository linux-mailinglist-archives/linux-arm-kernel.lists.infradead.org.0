Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53655A60E3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 07:58:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m2bepZfCAKHTfuSapvO8qmD0BfkFRLZfacaobnwJNho=; b=Wf95hIDHdPQQ4+
	JzC+8qbRqDg/Y7tcKAp7pRGUjVrrQUzHCLUExJlaO5lTWXBuScrJAbHUqFSKphXcA1w9tHjlOwIie
	FZDUDsQ7mrD8ko9NMPqOWYRmlqQbLoqeY8ejbceDweGHNRi0lWjxTdZF8t393zgyg100Cyl2MaNkE
	iedV68ioIOqDdyullEbzLb/634qD408aq6JxjW+HXImrdBcDXGwALvAurw2Oh1FgYcOE3lFn71aMg
	A1JNDYrinzZ9gAotW/N9P4Gx6frl2BH13/MswVyle/99jFsTJrJ/gOxs8HODuW3HhIK4sW6mfBoyQ
	ioq7tTyF6EVu0oosVdJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i51pE-0000z4-Pk; Tue, 03 Sep 2019 05:57:56 +0000
Received: from mx2.ucr.edu ([138.23.62.3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i51or-0000pM-FB
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 05:57:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=ucr.edu; i=@ucr.edu; q=dns/txt; s=selector3;
 t=1567490253; x=1599026253;
 h=mime-version:references:in-reply-to:from:date:message-id:
 subject:to:cc; bh=QUJerUTXX9JAsklG4v6RV3thlgDGpzVUjBirsY+DGFc=;
 b=NMdhUaWXZ/rzCMyUE6bXDcE/WfUC7wLykGkxBiMh2uLwd/CbVlRhbb/w
 x+N0v3W/bPyqE5JPWmZmMei1rc49/pxAxRnNDUTiTsVvZMcq52sq8WD4K
 alqW7Sp3JQjeIoHCbq0Jx/uqGxfUebBpyM409Uot92MeOKK9uSklWfysd
 C5Se3FZn8s9Ya+TVAX8LgjPv8t1d+Yrt1MDBumguUmuKWtwsJKpgM8kT+
 SWF0OhkwrSUJXBeq76D8ecYRFcllH3GNaOe9qD05a6e/3YQhbpL9FYypD
 6/9vs0NnvH46e0cIhcYmVmXUwT8PDdcXafuuP1McGtVhDw6UBzObBAXi6 A==;
IronPort-SDR: ZLrMYNIeQFX20UCIdWj2+PnFdk5ZFXTXNAgBHe7+L0e00yFvv2DIDkyoy1YqQ181NLZCLY1xnp
 1tgglxBrjpp9JflDQknuysqfyaPLqXhbW9c8U/MW8SXdUO9y0qksaiuuRntgNw9MzKTpJG2mZv
 X5RcM0OS63imPg2qgjsh+2towk0MiUJoRE3RrKcSF+VG9qTxo7OGvs5Bwr5icAfI620UVvtTiU
 J6nuYxHQNNKaAA3neJCuVW0CPQKXtsz4yZCz2VKpGA8SE4auyYWfCsXIno0VRJvWJi7G8K40Zi
 WnA=
IronPort-PHdr: =?us-ascii?q?9a23=3Ar2sMghUtCdPDzsfYPxzz+402tAvV8LGtZVwlr6?=
 =?us-ascii?q?E/grcLSJyIuqrYbBGHt8tkgFKBZ4jH8fUM07OQ7/m6HzVfuN3Y6ChKWacPfi?=
 =?us-ascii?q?dNsd8RkQ0kDZzNImzAB9muURYHGt9fXkRu5XCxPBsdMs//Y1rPvi/6tmZKSV?=
 =?us-ascii?q?3wOgVvO+v6BJPZgdip2OCu4Z3TZBhDiCagbb9oIxi6sBvdutMLjYZgN6o9xQ?=
 =?us-ascii?q?bFrmdUd+9L2W5mOFWfkgrm6Myt5pBj6SNQu/wg985ET6r3erkzQKJbAjo7LW?=
 =?us-ascii?q?07/dXnuhbfQwSB4HscSXgWnQFTAwfZ9hH6X4z+vTX8u+FgxSSVJ8z2TbQzWT?=
 =?us-ascii?q?S/86dmTQLjhSkbOzIl9mzcl9d9h7xHrh2/uxN/wpbUYICLO/p4YqPdZs4RSW?=
 =?us-ascii?q?5YUspMSyBNHoawYo0SBOQDIOlYtZHwqFQArRS8BQeiCuDhxCJWiHDqxqA6z/?=
 =?us-ascii?q?gtHBva0AA8A94DsnLZp8j1OqcIVuC1ybHFwjfCb/JX2Tf99Y/IeQ0irvGMR7?=
 =?us-ascii?q?1wcNfaxE4vFgLEjlWfs43lMy+J2ukDqGWb8vZvVfi1h2E5tg5xvyGiy8ExgY?=
 =?us-ascii?q?fHgYIVz0rL9SR/wIstPtK4T0l7YcKgEJtRsSGWLZd5QsQnQ2xupS00yaUGtI?=
 =?us-ascii?q?alcCQWzJkr3R3SZvydf4SV4x/uVvydLDVliH9jZbmxnQy98VK6xe35TsS01V?=
 =?us-ascii?q?FKoTdbndTUrXAN0gDT6tCASvtg4ketwTaP2B7X6uFDOU00kLDUK58lwrIpkp?=
 =?us-ascii?q?oTv1nPEjb4mEj0kaOabEok+u+v6+ToZrXpuIWQOJNzigH7Kqgum8q/DvokMg?=
 =?us-ascii?q?UWQWSX5eCx2Kfg8ED5WrlGk/w7n6vDvJ3YOMgXvqu5DBVU0oYn5Ra/FTCm0N?=
 =?us-ascii?q?EAkHgHLVNFeAiIj4n1N13SLv31Fuq/jEi2kDtx2f/JI6DhDo3XLnffiLfhYa?=
 =?us-ascii?q?p960lExQo3zNBf4Y9UC74YLP3pQE/xscXUDhwnPAyuxeboFtF925gaWWKOGa?=
 =?us-ascii?q?+ZLLjSvUWJ5uIpLemMfpUatyvjJPc/+vHil3g5mUUSffrh4ZxCQXS1Dv1gL1?=
 =?us-ascii?q?+UKVDhhtMGF2ZC6gM6QfzjjlGYXHhZanK2WKQ9zjs8D56iDIGFTYeo1u+vxi?=
 =?us-ascii?q?C+S6xXdGBbDRi+EX7pP9GVSfcFaXrKeed8mSZCWLS8HdxynSqyvRP3nuI0Zt?=
 =?us-ascii?q?Hf/TcV4Ne6jIB4?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2EQAAAKAG5df0enVdFlGwEBAQEDAQE?=
 =?us-ascii?q?BBwMBAQGBVQQBAQELAQGDA4EFKoQhg0qLQoIPk3aFJIF7AQgBAQEOGxQBAYQ?=
 =?us-ascii?q?7AgICgm0jNgcOAgMIAQEFAQEBAQEGBAEBAhABAQkLCwgnhTcMQgEQAYFmKQG?=
 =?us-ascii?q?BSywNZAEBAQMSEQRSEAsLDQICHwcCAiISAQUBHAYTIoMBggqeE4EDPIskfzO?=
 =?us-ascii?q?DeIR1AQgMgUMGEnooAYt3gheDbjU+hA2DQoJYBIEuAQEBjUSHFpYNAQYCgg0?=
 =?us-ascii?q?UhnOFPIgsG4Izi1OKYC2QVJVXDyGBNguBfzMaJX8GZ4FOgk4XFYM6inMjMIZ?=
 =?us-ascii?q?chjiCVAEB?=
X-IPAS-Result: =?us-ascii?q?A2EQAAAKAG5df0enVdFlGwEBAQEDAQEBBwMBAQGBVQQBA?=
 =?us-ascii?q?QELAQGDA4EFKoQhg0qLQoIPk3aFJIF7AQgBAQEOGxQBAYQ7AgICgm0jNgcOA?=
 =?us-ascii?q?gMIAQEFAQEBAQEGBAEBAhABAQkLCwgnhTcMQgEQAYFmKQGBSywNZAEBAQMSE?=
 =?us-ascii?q?QRSEAsLDQICHwcCAiISAQUBHAYTIoMBggqeE4EDPIskfzODeIR1AQgMgUMGE?=
 =?us-ascii?q?nooAYt3gheDbjU+hA2DQoJYBIEuAQEBjUSHFpYNAQYCgg0UhnOFPIgsG4Izi?=
 =?us-ascii?q?1OKYC2QVJVXDyGBNguBfzMaJX8GZ4FOgk4XFYM6inMjMIZchjiCVAEB?=
X-IronPort-AV: E=Sophos;i="5.64,462,1559545200"; 
   d="scan'208";a="5830087"
Received: from mail-lf1-f71.google.com ([209.85.167.71])
 by smtp2.ucr.edu with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2019 22:57:28 -0700
Received: by mail-lf1-f71.google.com with SMTP id y27so2991815lfg.23
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 22:57:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N1RORfpQlqn9qnf8gs9wti52uT3aQVT/Fl4fUvQUgpM=;
 b=SovcnWqIt5XgJavR+WO3D+MSVV9C3fEYMoxBGgFK7dkHdxwQmT6s52/QJkt4oJM1Zu
 AxHc1X7TM2xL4n2mneulworkMxAzZcsyhPadsTsgiDmHquzRkCJ8Y/LGaYhd2hr5BPcX
 qLkE9db+exmxMDmpsXcbhLy/iIGSoNyFAuDpV9iy37Ayw6zc0i8+oYuJxwUPM++LKzsZ
 hhErmjDbaXR2P9k3r3QjOiinsJZJYQhtYyzcY0d9SwB4gnGFVCeBCpUD1aMJU0xUWNWr
 qQS2gUuGQ8aOXIWchM2F5fy+5qqly1T3Ym3l9vru+uXw/31VGJ9WfwsZ6BERpJ8qIHWk
 cXrQ==
X-Gm-Message-State: APjAAAVWrtJgXdNZuVHVOhZ8GySsutNTk5QkR/kxcYFlgnoFU3PpsHtB
 tHFhLWMHZbnhh1tboTqe8bViIjrh0cTvzYRAB9QSq7ZY79g33XUzFhfD3I3dKBWDZ3zqZFeJljx
 Q09yKnZqrpM6lUuBHZj93/hSCn2fK7j/BAoA5oQLC22TUYsWsY/wA
X-Received: by 2002:a19:2d19:: with SMTP id k25mr20634536lfj.76.1567490246796; 
 Mon, 02 Sep 2019 22:57:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyndhnhLpzhxkkkI6SThvTHdicVJOY9S3srLCaTZ/slSZSfLXjzDiqoXFXkBq6IPvvMjvo5t4Ex9aWEKpXwgNw=
X-Received: by 2002:a19:2d19:: with SMTP id k25mr20634522lfj.76.1567490246602; 
 Mon, 02 Sep 2019 22:57:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190902222946.20548-1-yzhai003@ucr.edu>
 <20190902223650.GJ21922@piout.net>
In-Reply-To: <20190902223650.GJ21922@piout.net>
From: Yizhuo Zhai <yzhai003@ucr.edu>
Date: Mon, 2 Sep 2019 22:56:48 -0700
Message-ID: <CABvMjLRjeXAmhBwfZZPbmxdENq=FP9rR0Ld=T3veGXF6cjptxA@mail.gmail.com>
Subject: Re: [PATCH] clocksource: atmel-st: Variable sr in
 at91rm9200_timer_interrupt() could be uninitialized
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_225733_754697_8280A9EB 
X-CRM114-Status: GOOD (  19.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [138.23.62.3 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chengyu Song <csong@cs.ucr.edu>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Zhiyun Qian <zhiyunq@cs.ucr.edu>, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In function regmap_read(),  there're two places which could make the read fail.

First, if "reg" and  "map->reg_stride" are not aligned, then remap_read() will
return -EINVAL without initialize variable "val".

Second, _regmap_read() could also fail and return error code if "val" is not
initialized. The caller remap_read() returns the same error code, but
at91rm9200_timer_interrupt() does not use this information.

On Mon, Sep 2, 2019 at 3:37 PM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
>
> On 02/09/2019 15:29:46-0700, Yizhuo wrote:
> > Inside function at91rm9200_timer_interrupt(), variable sr could
> > be uninitialized if regmap_read() fails. However, sr is used
>
> Could you elaborate on how this could fail?
>
> > to decide the control flow later in the if statement, which is
> > potentially unsafe. We could check the return value of
> > regmap_read() and print an error here.
> >
> > Signed-off-by: Yizhuo <yzhai003@ucr.edu>
> > ---
> >  drivers/clocksource/timer-atmel-st.c | 8 +++++++-
> >  1 file changed, 7 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/clocksource/timer-atmel-st.c b/drivers/clocksource/timer-atmel-st.c
> > index ab0aabfae5f0..061a3f27847e 100644
> > --- a/drivers/clocksource/timer-atmel-st.c
> > +++ b/drivers/clocksource/timer-atmel-st.c
> > @@ -48,8 +48,14 @@ static inline unsigned long read_CRTR(void)
> >  static irqreturn_t at91rm9200_timer_interrupt(int irq, void *dev_id)
> >  {
> >       u32 sr;
> > +     int ret;
> > +
> > +     ret = regmap_read(regmap_st, AT91_ST_SR, &sr);
> > +     if (ret) {
> > +             pr_err("Fail to read AT91_ST_SR.\n");
> > +             return ret;
> > +     }
> >
> > -     regmap_read(regmap_st, AT91_ST_SR, &sr);
> >       sr &= irqmask;
> >
> >       /*
> > --
> > 2.17.1
> >
>
> --
> Alexandre Belloni, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com



-- 
Kind Regards,

Yizhuo Zhai

Computer Science, Graduate Student
University of California, Riverside

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
