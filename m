Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD943179034
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 13:21:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/t00soZFRI7joda6R81PwTddU83zEuc1JUhI7ff9UOM=; b=JWAn7TUfGxar+p
	wnDMRZdcFphq0BGh4erGKjkGFwjOg0bG2AG6pKzeR9JWW+ElOhB9mr5mcN1mSYOJ2idGD2SROU2qq
	/2R0oEubH0MQElWT7K8dlqrGEfd6L1mf1/2EMjrq7PobEW+lcp2015VpNZ2Y8TuO0BuE5PvHN+uSJ
	tqnPRMIl24ZliE73op7mAx4Qpps3qe50e7KrGNf2I2In2pRq0FG1/IyWKVasdBqeTP/j86f4wavGT
	7HT6Y4aPh4k3RLeUSXwsJ27qqocVIB+p9M/2OCYIEvgB5mjWUaMRw6qPtt/fVLHkiqaewPmaZ6pTI
	olpEsroO+M958oyZzwOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9T1d-0004cX-EO; Wed, 04 Mar 2020 12:21:21 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9T18-0004Og-Dn
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 12:20:53 +0000
Received: by mail-ua1-x944.google.com with SMTP id o42so569626uad.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 04:20:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kqkG/bhqrYT0KI1bQ7LTANEUR/JJcWsfoTV7hOjxbYk=;
 b=mJIGctIoq6J7/fX0YIeKjPMmUkNgZRPXylwKm2DvLr5ssq89k+ZxCUgm9DWAtg4VNN
 pcEQ2mEv5P6qw7sb1i788ajaBrcAJPv2xZqD+qEoZE9PlKOjbsAMBVkDYat1tXguAsrb
 5ZQ74b7neMNKy4b6+6MqegiUaWYxw2dCvAD6fdseLxkI45U26Usjl4O1VhDUAeXJiTZA
 7CNDMG+szzAHk/0BaA1rOgTK7JlrQxqlJH+KI1AlsyJ9P/7MhfKho01LeOTmI7UVAGrd
 wWYW9VD64wFvrclyNKKKAfPFB8dPthsPhdoBv0yYnbrmCWxmbij8pbPvAenawz+EshWP
 OYdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kqkG/bhqrYT0KI1bQ7LTANEUR/JJcWsfoTV7hOjxbYk=;
 b=FfaFagHborp370N/gQ974Ukf5JyHphp0wfAujOI6UZk7W9TRluWkFfcXMwlpOYZrUR
 driR0Ml4zwOOGWJubuN0YuXeYNbWQrupweKdxY7IfDcQQpahUgEl2QiLqtrk3UaX7oxR
 aLi7TN6SjUuol1yuVpdPvhF2IrQfvGBAnB7SP3hbq+fWuHt7MDas0By0wXHe+vWkKpea
 v3Bde1zYTXhhksFPoowBBoc2/talyXhHuy1FwdiSQTPb8DxtzIC4qdfKZogzbesf1Kyy
 eWjO5Edu6uxsJiCCoj9D20yoi7eM0dH+7zdlraMGKD29/p9ORf1ZD1DvdNjn1RZzJcDh
 Ta0Q==
X-Gm-Message-State: ANhLgQ03yWHWcV4ECYO0cZ7cBTXsr6N1PZ9A1h0nx5fQf0HVIELJYVjn
 7CoBgpPT6Lb4eJ8oZGeVrVMwBjZvr0EnPDXUawiXnA==
X-Google-Smtp-Source: ADFU+vsoYL2SwwLyTOmmzRjMZQmnCIyUFDxkpiyZH9m9IHmHIRtOrB+VwoBC0ztP1VD8t+WEykeA5UXfnN9itygk2jI=
X-Received: by 2002:ab0:24d2:: with SMTP id k18mr1286564uan.104.1583324449448; 
 Wed, 04 Mar 2020 04:20:49 -0800 (PST)
MIME-Version: 1.0
References: <20200303203559.23995-1-ulf.hansson@linaro.org>
 <20200303203559.23995-4-ulf.hansson@linaro.org> <20200304121250.GD25004@bogus>
In-Reply-To: <20200304121250.GD25004@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 4 Mar 2020 13:20:13 +0100
Message-ID: <CAPDyKFo15UPXh5uGHa98Wgg+HHuo5D4cdEUucP9Yiw9JtLhKCw@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] cpuidle: psci: Split psci_dt_cpu_init_idle()
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_042050_728616_4452E73B 
X-CRM114-Status: GOOD (  21.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 4 Mar 2020 at 13:12, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Tue, Mar 03, 2020 at 09:35:58PM +0100, Ulf Hansson wrote:
> > To make the code a bit more readable, but also to prepare some code to be
> > re-used, let's move the OSI specific initialization out of the
> > psci_dt_cpu_init_idle() and into a separate function.
> >
> > Fixes: a65a397f2451 ("cpuidle: psci: Add support for PM domains by using genpd")
>
> Not sure if this fixes anything but I am fine to have this if next one is
> a real fix.

Yep, that's what I had in mind as well.

>
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >
> > Changes in v2:
> >       - Adopted suggestions from Stephen to use IS_ERR_OR_NULL and
> >       PTR_ERR_OR_ZERO, which further clarified the code.
> >
> > ---
> >  drivers/cpuidle/cpuidle-psci.c | 46 ++++++++++++++++++++--------------
> >  1 file changed, 27 insertions(+), 19 deletions(-)
> >
> > diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> > index edd7a54ef0d3..bae9140a65a5 100644
> > --- a/drivers/cpuidle/cpuidle-psci.c
> > +++ b/drivers/cpuidle/cpuidle-psci.c
> > @@ -160,6 +160,29 @@ int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
> >       return 0;
> >  }
> >
> > +static int __init psci_dt_cpu_init_topology(struct cpuidle_driver *drv,
> > +                                         struct psci_cpuidle_data *data,
> > +                                         unsigned int state_count, int cpu)
> > +{
> > +     /* Currently limit the hierarchical topology to be used in OSI mode. */
> > +     if (!psci_has_osi_support())
> > +             return 0;
> > +
> > +     data->dev = psci_dt_attach_cpu(cpu);
> > +     if (IS_ERR_OR_NULL(data->dev))
> > +             return PTR_ERR_OR_ZERO(data->dev);
> > +
>
> This is what I was asking to do before this was merged when I meant to drop
> if(data->dev) check. So happy to see it :)

I probably didn't get you point well enough. Sorry.

>
> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

Thanks!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
