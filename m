Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9923115318
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 15:27:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C+DYj6tOpGNN3VB9Wc+IhkMdyWfaHvUh8GTEq7fsFwo=; b=AbF9x3fuc+le3a
	/q4NUT9RJ6AMP+us8ERZUKMzlphGgGuvenphL662JurpbMihY8+dvp+km5jxS4pkiTboDjF0wVhxt
	QfSbHB8i+GsjOFWPhJzpnsfYckYhLGswaUvSI9fZAMHp8wTEC1Qb918HHGgz9wkVF63HXuOmHCBuw
	CruN+/qQ5WZYTMQFTbGH+cNceN2waXIcaIRDfd+ifUG2tNGYpVe+z4SER2veLhjTKTPaFhyE58uWI
	glkmtRECf+6FS/IqYOW6O4gu1pcZyEoq2cqbfMUZnnmNiDiEgyc6ui6MEE4RzeAc67i3Ce2HImS0m
	2FpSAlMadFLSJliU0F+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idEZT-0004Sq-GI; Fri, 06 Dec 2019 14:27:03 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idEZM-0004SS-SR
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 14:26:58 +0000
Received: by mail-vs1-xe43.google.com with SMTP id y195so5140498vsy.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 06:26:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sZyTKEpkqp2bs0AZzJDikttOK92FaSEis59tWv73Klo=;
 b=Ub05OABUX71c3Sd5RIDj00+eC+hc+BYbNZXXoJ1/SGpURI8Vpr8pGoFVqXADUAAK85
 YLrObq9486MNhO6AeqbSvZF6lb1Zp3OJLzqu/MDXiPyo5b+fkvONJMR8n+5r6vusJp6n
 YJlSfDM8kZkhRvrspxAhDUOkg/j/LehQSMAKFL/Hjd4kAkblm/1ZxVtr5HuQUPv0ItRW
 1vZApgukoMmAGIN1hkfqcUu26A1VHZfXCNKBvGnXA7G+4/QDhGVpDsQO8G993ASBqg8p
 y/rQvifhD4skJ0xVFqcmXnjhbGxadZZ3ABQItmdGfhkzZsqfGyidgkPT9VCLB15o57jl
 oHwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sZyTKEpkqp2bs0AZzJDikttOK92FaSEis59tWv73Klo=;
 b=nw/jy6cMx6ZPrlyGcf+ER2qt7IPc9ep8iixbz0nErSGgq7GBnjPqlsmORVtm4BoFMo
 MbDz9wqRdZi+v70HN+ErtmUNICAw2jh7YA53irj24/x/bk3KVxR/LT8ofm+mLGV5rwVe
 +JbT7eC4XDOgu6ktAbwvyITpBn4fUsSWsvtI6zanfQ+dDgMG5nEVnvLrFVcwR+xKMS5G
 GIjJsOFYfWkCUucWGEa3xzEQIquTtD0g3CqHwJVsagU2jy5yYuqU0YCXBOC36aGjE/q+
 ghc7dQ6/WPMOFgjU3P4rthDKVqOvgRdOa4shysZHxpm5a9ovFU2fOCboQXHDA5hrw6Cd
 7IlA==
X-Gm-Message-State: APjAAAWs4RJSyem1irG9i4iiFVe1XQZJYbM5rt9ST01kkknKsuP8hTnG
 GLGCKQhbzK3EQL9ZCo+lw2bhBvwBrRr+sRpHaEA8kw==
X-Google-Smtp-Source: APXvYqy9VUv5+eQYZxi7bdtnnGxixhEpgnm3PaekqyV4GcZq4nxnJQMBOmyzvYTaGxV5BbQQnLbx54v6XTifBF6LzuM=
X-Received: by 2002:a67:2087:: with SMTP id g129mr9963975vsg.191.1575642413970; 
 Fri, 06 Dec 2019 06:26:53 -0800 (PST)
MIME-Version: 1.0
References: <20191127102914.18729-1-ulf.hansson@linaro.org>
 <20191127102914.18729-11-ulf.hansson@linaro.org>
 <20191205183544.GB1516@e121166-lin.cambridge.arm.com>
 <CAPDyKFra-C_EKrcec6Yys2P10bB+KBtVAKNtVFgqDvV=tzbDRQ@mail.gmail.com>
 <20191206112549.GA22964@e121166-lin.cambridge.arm.com>
In-Reply-To: <20191206112549.GA22964@e121166-lin.cambridge.arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 6 Dec 2019 15:26:16 +0100
Message-ID: <CAPDyKFq0gS2fasU3Yyh+wPC7Pjnucv6_+vDN234ks+yuiURKCw@mail.gmail.com>
Subject: Re: [PATCH v3 10/13] cpuidle: psci: Prepare to use OS initiated
 suspend mode via PM domains
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_062656_925440_CDCA5B66 
X-CRM114-Status: GOOD (  35.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Linux PM <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Lina Iyer <lina.iyer@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 6 Dec 2019 at 12:25, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Thu, Dec 05, 2019 at 09:25:54PM +0100, Ulf Hansson wrote:
> > On Thu, 5 Dec 2019 at 19:35, Lorenzo Pieralisi
> > <lorenzo.pieralisi@arm.com> wrote:
> > >
> > > On Wed, Nov 27, 2019 at 11:29:11AM +0100, Ulf Hansson wrote:
> > >
> > > [...]
> > >
> > > > -static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
> > > > +static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
> > > > +                                     struct device_node *cpu_node,
> > > >                                       unsigned int state_count, int cpu)
> > > >  {
> > > >       int i, ret = 0;
> > > > @@ -118,6 +152,11 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
> > > >               goto free_mem;
> > > >       }
> > > >
> > > > +     /* Manage the deepest state via a dedicated enter-function. */
> > > > +     if (dev)
> > > > +             drv->states[state_count - 1].enter =
> > > > +                     psci_enter_domain_idle_state;
> > >
> > >
> > > It is unfortunate to make this arbitrary choice, it would be best
> > > if you could detect which states are "domain" states aka are governed
> > > by multiple cpus.
> >
> > The domain states are managed and selected by the genpd providers, via
> > using runtime PM reference counting. Please have a closer look at the
> > code in cpuidle-psci-domain.c and in the generic PM domain, that
> > should give you the needed details.
> >
> > I am overriding the enter callback for the *deepest* known idle state
> > of the CPU, which is according to what you requested [1].
>
> Overriding it yes but I have not requested to do it only for the
> deepest idle state that, I repeat, in my opinion is an arbitrary
> choice that works for the platform you are testing on but is
> not generic as it should.

Right, I agree. I recall we have discussed this already.

>
> You can merge it as it is but that's how things stand and adding
> a comment to the *code* would help understand its logic.

Okay, how about adding a comment along the lines of this:

"Using the deepest state for the CPU to trigger a potential selection
of a shared state for the domain, assumes the domain states are all
deeper states. This assumption may not be true for all platforms, thus
we may consider to revisit this, if it turns out that optimizations
can be made."

>
> > So, unless I am missing your point, I think the above code does
> > exactly what you want, no?
> >
> > In regards to the "arbitrary choice" of what cpuidle state to use,
> > there are more details about why that is, in the changelog.
> >
> > >
> > > This inizialization though does not belong in here, it is done at driver
> > > level, it should not be done in this per-cpu path. IIUC the logic the
> > > enter pointer should only be overridden if and only if all cpus managed
> > > by the driver have a corresponding device associated.
> >
> > I think you have overlooked the fact that there are one cpuidle driver
> > registered per CPU. The above doesn't make sense to me, sorry.
>
> You are calling psci_dt_cpu_init_idle() for every possibile cpu.
>
> Every time psci_dt_attach_cpu() is called, we check dev and override
> the idle driver enter method. There is one driver, what I am saying
> is that it is not correct to check dev and override the enter pointer
> for *every* cpu that we try to attach to a power domain. This must
> be done once for all by checking that *all* devices could be attached
> to a power domain.

Ah, now I think get your point.

You want me to re-iterate through all the registered cpuidle drivers,
which means one per CPU - and then override the enter callback for
each of them, but only if all devices was successfully attached to a
PM domain. Is that correct?

My only worries with this, is that we have already registered the
cpuidle drivers and I don't think it's a good idea to update the enter
callbacks, beyond that point.

Perhaps another option is to track whether the first CPU gets attached
(and then update the enter callback), but after that require all the
remaining CPUs to be attached as well - else bail out with an error
code, failing to register all the driver instances.

What do you think about that?

>
> > > To be frank I would even move the psci_has_osi_support() check from
> > > psci_dt_attach_cpu() to this path and prevent calling
> > > psci_dt_attach_cpu() and the tail of the function if
> > > (!psci_has_osi_support()).
> > >
> > > >       data->dev = dev;
> > >
> > > I think Sudeep already mentioned that, by using psci_has_osi_support()
> > > as above you can prevent running this code, there is really no point,
> > > the data->dev NULL sentinel is already initialized.
> >
> > Yes, I discussed this with Sudeep, but we didn't reach a consensus.
>
> Consensus was already reached.
>
> http://www.open-std.org/jtc1/sc22/WG14/www/docs/n1570.pdf
>
> > Let me explain the reasons behind the selected approach, once more.
> >
> > The data->dev is a pointer within a static declared struct. Are you
> > sure it's assigned NULL by initialization? Don't we explicitly need to
> > set it to NULL, else it will be undefined, no?
>
> http://www.open-std.org/jtc1/sc22/WG14/www/docs/n1570.pdf
>
> 6.7.9 (10) page 140

Thanks for sharing, didn't know we could rely on this behaviour! Alright!

>
> > Of course, I can move the check for psci_has_osi_support() into here
> > and avoid calling psci_dt_attach_cpu(). Just wondering what that
> > actually gain us, especially if we need to explicitly set the pointer
> > to NULL anyway.
>
> See above.

Yes, makes more sense now. I will adopt your suggestions!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
