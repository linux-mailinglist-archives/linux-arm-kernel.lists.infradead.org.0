Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C13A17B93E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 10:29:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NjTyrqKINeO4Ma+8b6R0iXhVmWxM7uAaxRGhSQ14JM0=; b=tCcAA8XD0gHMlw
	Cq7IgjsAMaMw+Xios9GCd1N5kWf+6gwtFVnoeoXDvfxL0AI1M8tGEmYv4QL5N+Zsa9oFjSwWFKl/M
	ezXnCpUF2GwgtI/XcFG+bqa9rx+q1WN+xgBW0y34byZeBlER2WfbWEKvmee3ovoWQGWZVo9buQnvd
	Tgc4tOTyN0H/ECAG9DLWyJCuAhzB++33na6b2RajrTzjpV7xV+GjvUz0Shg3R1mbZuJKzGP8MBIR4
	bO98SoOx43ooKVgC+PJctJ2Fy77wHMEvBTzTmK/LUxiHqa0tS56VZ0Kpka3pNCrkxTfM0BeBouGCz
	OgTIi2sk/MRbGd5SPVYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA9Hv-0004IB-Qf; Fri, 06 Mar 2020 09:29:00 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA9Hl-0004Hl-Fe
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 09:28:51 +0000
Received: by mail-vk1-xa42.google.com with SMTP id i78so430252vke.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 01:28:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7Uj9oI6tu66o5KdxabEEJ4D+YiA5a1Q+BJTb2luSNcQ=;
 b=DenLu73w0pgDvKrkV7VAWE04gTk2AsRRYd9hYXO+WfNOsiWBAJAHS6bZ0CNVke7cgp
 vq8irHlt5gTE055tv0isFXdxLY1u+5p6RQPZror7DGgKm8aoy44gdFyKNR+YJn57Apt+
 ovXgn5LEoxnevUbVKBBQKITLqmSy9aUS1QRVtfVlbGxgdq3NVPwLY7kjVDb9M4+cEbsq
 NTKdDzngd+X63GRvSwgWbpzgFJz56kVRysVt/wFkQzQS3uRhnEMHi0bqN3c8FHGqVZgB
 NNVuMVLXW0nnVCvOkDtDz6F3QnunwjhXlHJrhWv3g1mK2Heb2ZSaLG7F6njWTLqKsAgs
 GA/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7Uj9oI6tu66o5KdxabEEJ4D+YiA5a1Q+BJTb2luSNcQ=;
 b=RKM49Ax23Dw189SMyJb/D+R7eOzPiB7zrTRKhzXLPmWCG1idFlyPs75lZbNbVz4CPE
 PeQPfQWHTZgMX2FKDoUfIoekUh3mmP4+/GrconRoBUioXZmJdf99iQXD0HkPoQnvnMRO
 Ex4Rf/HexUUDjEiUuULa9nsKnhbtuz9jsPY5bw34XwQvyfEfhGdo6CvAD7UqnBg4z4gl
 rABODqJMsjL/A4G2P1H0VkcQlZJ2eVuXbdRLJjqTQnaYBESofuJWI4KEoMkWt2ABi4Sw
 EMWt/WeZkkZKCe05YycV+JSA8NBalp3EEjYCJx3aT1UDB/Ih8u+W/ohe+Xn55yQnpIgp
 ljEA==
X-Gm-Message-State: ANhLgQ3bFCuIMeP+qdACDZsdx/ECw8vzruRpP5vJGIHH6PDAK6dz6mZw
 jU42PP0X9HsgNI8rgbSXmFrpZO//CFVSPPqOM8fvhQ==
X-Google-Smtp-Source: ADFU+vv8UKh1vyIbgYVlSFMWmsGQxBqD2HsVwUWdSdsT42KhPJNVRxavtARhKC7lTZg56H3qge5wRtQpPb+akWmJGNs=
X-Received: by 2002:a1f:78c5:: with SMTP id t188mr1090540vkc.43.1583486927414; 
 Fri, 06 Mar 2020 01:28:47 -0800 (PST)
MIME-Version: 1.0
References: <20200303203559.23995-1-ulf.hansson@linaro.org>
 <20200303203559.23995-5-ulf.hansson@linaro.org> <20200304122312.GE25004@bogus>
 <CAPDyKFpcN-p6sKqB0ujHAY29qPSg7qpSjYGymPaJ4W8jgCKGcg@mail.gmail.com>
 <20200305162321.GB53631@bogus>
In-Reply-To: <20200305162321.GB53631@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 6 Mar 2020 10:28:10 +0100
Message-ID: <CAPDyKFogjPG+mRsfPaxN7RjB7TQL9=qHNzA=K_t0F6M6Q9-TuA@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] cpuidle: psci: Allow WFI to be the only state for
 the hierarchical topology
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_012849_553277_148D1D6C 
X-CRM114-Status: GOOD (  36.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Thu, 5 Mar 2020 at 17:23, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Thu, Mar 05, 2020 at 03:17:42PM +0100, Ulf Hansson wrote:
> > On Wed, 4 Mar 2020 at 13:23, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > >
> > > The $subject is bit confusing. IIUC, if there are no idle states to
> > > manage including hierarchical domain states you will not register the driver
> > > right ? If so, you are not allowing WFI to be the only state, hence my
> > > concern with $subject.
> >
> > I agree that's not so clear, but it wasn't easy to fit everything I
> > wanted to say in one line. :-)
> >
>
> No worries, just wanted to clarified. Looking at the patch, lot of things
> got clarified but thought we can always improve.
>
> > Is this below better and okay for you?
> >
> > "cpuidle: psci: Update condition when avoiding driver registration".
> >
>
> Definitely better than $subject :)

Great, then I switch to that.

>
> > >
> > > On Tue, Mar 03, 2020 at 09:35:59PM +0100, Ulf Hansson wrote:
> > > > It's possible that only the WFI state is supported for the CPU, while also
> > > > a shared idle state exists for a group of CPUs.
> > > >
> > > > When the hierarchical topology is used, the shared idle state may not be
> > > > compatible with arm,idle-state, rather with "domain-idle-state", which
> > > > makes dt_init_idle_driver() to return zero. This leads to that the
> > > > cpuidle-psci driver bails out during initialization, avoiding to register a
> > > > cpuidle driver and instead relies on the default architectural back-end
> > > > (called via cpu_do_idle()). In other words, the shared idle state becomes
> > > > unused.
> > > >
> > > > Let's fix this behaviour, by allowing the dt_init_idle_driver() to return 0
> > > > and then continue with the initialization. If it turns out that the
> > > > hierarchical topology is used and we have some additional states to manage,
> > > > then continue with the cpuidle driver registration, otherwise bail out as
> > > > before.
> > > >
> > > > Reported-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> > > > Fixes: a65a397f2451 ("cpuidle: psci: Add support for PM domains by using genpd")
> > > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > > ---
> > > >
> > > > Changes in v2:
> > > >       - Convert the error code returned from psci_cpu_suspend_enter() into an
> > > >       expected error code by cpuidle core.
> > > >
> > > > ---
> > > >  drivers/cpuidle/cpuidle-psci.c | 48 +++++++++++++++++++++-------------
> > > >  1 file changed, 30 insertions(+), 18 deletions(-)
> > > >
> > > > diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> > > > index bae9140a65a5..ae0fabec2742 100644
> > > > --- a/drivers/cpuidle/cpuidle-psci.c
> > > > +++ b/drivers/cpuidle/cpuidle-psci.c
> > > > @@ -56,16 +56,19 @@ static int psci_enter_domain_idle_state(struct cpuidle_device *dev,
> > > >       u32 *states = data->psci_states;
> > > >       struct device *pd_dev = data->dev;
> > > >       u32 state;
> > > > -     int ret;
> > > > +     int ret = 0;
> > > >
> > > >       /* Do runtime PM to manage a hierarchical CPU toplogy. */
> > > >       pm_runtime_put_sync_suspend(pd_dev);
> > > >
> > > >       state = psci_get_domain_state();
> > > > -     if (!state)
> > > > +     if (!state && states)
> > > >               state = states[idx];
> > > >
> > > > -     ret = psci_enter_state(idx, state);
> > > > +     if (state)
> > > > +             ret = psci_cpu_suspend_enter(state) ? -1 : idx;
> > > > +     else
> > > > +             cpu_do_idle();
> > >
> > > May be, I haven't followed this completely yet, but I don't want to be
> > > in the position to replicated default arch idle hook. Just use the one
> > > that exist by simply not registering the driver.
> >
> > That doesn't work for the configuration I am solving.
> >
> > Assume this scenario: We have WFI and a domain/cluster idle state.
> > From the cpuidle governor point of view, it always selects the WFI
> > state, which means idx is zero.
> >
>
> OK. The only state that cluster can enter when CPUs are in WFI are
> cluster WFI and most hardware can handle it automatically. I don't see
> the need to do any extra work for that.

This isn't about cluster WFI, but about deeper cluster states, such as
a cluster-clock-gated-state and a cluster-power-off-state. It's an ST
platform, which Benjamin is working on.

>
> > Then, after we have called pm_runtime_put_sync_suspend() a few lines
> > above, we may potentially have a "domain state" to use, instead of the
> > WFI state.
> >
>
> Are they any platforms with this potential "domain state" to use with
> CPU WFI. I want to understand this better.
>
> > In this case, if we would have called psci_enter_state(), that would
> > lead us to calling cpu_do_idle() from the __CPU_PM_CPU_IDLE_ENTER()
> > macro, becuase idx is zero. In other words, the domain state would
> > become unused.
> >
>
> For a domain state to become unused with WFI, it needs to be available
> and I am not 100% sure of that.

With these changes from the series, we can fully conform to the
hierarchical DT bindings for PSCI.

I am not sure I understand your concern, is there a cost involved by
applying this?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
