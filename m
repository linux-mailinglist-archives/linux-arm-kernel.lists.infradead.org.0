Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5746A1FCF7A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 16:25:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aq81xO9etchhmIIJ8vsgnp0q6Kj62kVcMx1Qs2Ei7Cw=; b=HdWZMi9A5LwYsl
	a6beylWPPSmZdd5cjxtNtVRpwJaVC15jfSqpEUqjvMum3z/5iBgFRXjF3W6Eh4UTJHDpxL42C/nPZ
	ch7b51Fuqo/2kBfYyzXMO4Z9HwMix/oNTKnWkzN2Fv2o1CPEPBpdOS8dbEINozE5P1fNo2913EzX7
	5EG1LeBPMtWchu8SZe/As3mFgOfeuO4S5mW2fpVFzPXtY+547/5gRjK+rkrpbNJhcV/gxDYZhspKy
	n2CIE8cOXHyK8gueVwDsgX5ykBYxwhYIBUi0maKIqCFrN588DWTQM0Ii/v6wauoO/1N4fjFgXaE3+
	DNkZJRfHcR/cPDcmZ6VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlZ0B-0008Ta-RB; Wed, 17 Jun 2020 14:25:19 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlYzx-00077Z-Ke
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 14:25:07 +0000
Received: by mail-ej1-x641.google.com with SMTP id dp18so2521814ejc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 07:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HDoWDHpkjPS6d8LBQgcIgLv8z+yGCK9DQ6/ssyT50xc=;
 b=kbvD0JS5p/ATKSjl3hmKNOhn47xO+vXH7w66YDqblxafW1UpHizYuRuC7PhgZbAZYT
 I9GWrIqicryiZCAMw8NKdkgzFRmd49HU2t4oWYTY1XJxSHugRipIUSrH0J6AwKqR5iEq
 wvum2Ecq2m1aVwZ33AtzYzsRnOlc6+wVnfnlBYAfgEv9xgXUZdVaRXmQ935HcxmkwaTH
 GOKAfg2GtQQ5F/6br4TxKHV/8tvmMQ43DtXNnsDaTrBSSwuThSfAqnJRPEJhgWCyK+6j
 EEHK63g7i/QaWYSQlCHYekjmRZWXlqq6R8/KbrpAT+zVisJ3Nji1a/sLp0Eq7vTY9yIb
 A3cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HDoWDHpkjPS6d8LBQgcIgLv8z+yGCK9DQ6/ssyT50xc=;
 b=Cfen27Kh+iHtuVp93QJdOdAKIBqXSFkT1ItGlpXugExEiL58LYNeq7mNL4KKiA6d46
 Dhd5JOFGmiz8sd4PzI31A8nkvDtA7q6LkVuT+G7HK1n1YMUZVlB9bZ4IVANQCl7+zzc6
 F1vHtBeBHI6nsLdVlNECPPagn5ib2QP0ZyXNFxkPGiqVrl3RY2Bo5hJ9k/dbbnpHCp5l
 JdZznutXBCDho6SrgNeThwHg3RgqxYH66EClcBW+PlKwLpz4yeHcY3Kdp0U+FK9CYXla
 ht1A5QPKk4g6qmIXlwDV0wSEBnhE2bqKrLwiXZEmdIgyAAWoqNlqjPeLFqdbVtEjDWPs
 AdFQ==
X-Gm-Message-State: AOAM531uilyrTDvgjUNufp9maXj2+EnpRYlFrnB+Ju86N6T/Jeb+cjs4
 Jvbr2ItpZukUY1k8joZBcnwOTa7PAe2A3ciFp448Gg==
X-Google-Smtp-Source: ABdhPJxtDFqfhqyIyfwWNre9tJ1vuIY0eX7My7z8G5vGhtOobxeDWhchL2tJJ1lcn+sA+LVEqbTIqwK2Fw9zZzwK5hg=
X-Received: by 2002:a17:906:7208:: with SMTP id
 m8mr8098561ejk.544.1592403903401; 
 Wed, 17 Jun 2020 07:25:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200612121047.GF4282@kadam> <20200612121133.GA1139533@mwanda>
 <20200612174215.GI4282@kadam>
 <CAJ9a7ViP_PTiSnYnOYbH=LRXUroWT04rmdswZEdakoWjevUi4Q@mail.gmail.com>
In-Reply-To: <CAJ9a7ViP_PTiSnYnOYbH=LRXUroWT04rmdswZEdakoWjevUi4Q@mail.gmail.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 17 Jun 2020 15:24:52 +0100
Message-ID: <CAJ9a7VjxEdJV=2b6qTEyjusmOHouWd58HLwV5CeF-yT1uL-2BA@mail.gmail.com>
Subject: Re: [PATCH] coresight: cti: Fix error handling in probe
To: Dan Carpenter <dan.carpenter@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_072505_694866_224C961D 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

HI Dan,

Looked into this some more...

On Wed, 17 Jun 2020 at 11:53, Mike Leach <mike.leach@linaro.org> wrote:
>
> Hi Dan,
>
> On Fri, 12 Jun 2020 at 18:43, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> >
> > On Fri, Jun 12, 2020 at 03:11:33PM +0300, Dan Carpenter wrote:
> > > +static int cti_pm_setup(struct cti_drvdata *drvdata)
> > > +{
> > > +     int ret;
> > > +
> > > +     if (drvdata->ctidev.cpu == -1)
> > > +             return 0;
> > > +
> > > +     if (nr_cti_cpu)
> > > +             goto done;
> > > +
> > > +     cpus_read_lock();
> >         ^^^^^^^^^^^^^^^^
> > One thing which I do wonder is why we have locking here but not in the
> > cti_pm_release() function.  That was how the original code was so the
> > patch doesn't change anything, but I am curious.
> >
>
> Good point - the CTI PM code was modelled on the same code in the ETM
> drivers, which show the same pattern.
> Perhaps something we need to revisit in both drivers.
>

The ETMv4 code calls into the hotplug API twice - so takes the lock
and makes both calls while holding the lock - using the "_cpuslocked"
call variant to render the pair of calls atomic from the CPUHP context
point of view.
CTI only calls once so does not really need to take the locks and
could simply use the normal variant.

In both cases the cpuhp_remove_state uses the normal variant, which
takes the locks inside the api call. For the CTI there is certainly  a
case for simplification, i..e drop the "_cpuslocked" variant and
remove the explicit taking of the locks.

Something along the lines of....

...
if (nr_cti_cpu)
       goto done;

ret = cpu_pm_register_notifier(&cti_cpu_pm_nb);
if (ret)
     return ret;

ret =  cpuhp_setup_state_nocalls(......);
if (ret) {
    cpu_pm_unregister_notifier(....);
   return ret;
}

done:
....

Regards

Mike



> Regards
>
> Mike
>
> > > +     ret = cpuhp_setup_state_nocalls_cpuslocked(
> > > +                     CPUHP_AP_ARM_CORESIGHT_CTI_STARTING,
> > > +                     "arm/coresight_cti:starting",
> > > +                     cti_starting_cpu, cti_dying_cpu);
> > > +     if (ret) {
> > > +             cpus_read_unlock();
> > > +             return ret;
> > > +     }
> > > +
> > > +     ret = cpu_pm_register_notifier(&cti_cpu_pm_nb);
> > > +     cpus_read_unlock();
> > > +     if (ret) {
> > > +             cpuhp_remove_state_nocalls(CPUHP_AP_ARM_CORESIGHT_CTI_STARTING);
> > > +             return ret;
> > > +     }
> > > +
> > > +done:
> > > +     nr_cti_cpu++;
> > > +     cti_cpu_drvdata[drvdata->ctidev.cpu] = drvdata;
> > > +
> > > +     return 0;
> > > +}
> > > +
> > >  /* release PM registrations */
> > >  static void cti_pm_release(struct cti_drvdata *drvdata)
> > >  {
> > > -     if (drvdata->ctidev.cpu >= 0) {
> > > -             if (--nr_cti_cpu == 0) {
> > > -                     cpu_pm_unregister_notifier(&cti_cpu_pm_nb);
> > > +     if (drvdata->ctidev.cpu == -1)
> > > +             return;
> > >
> > > -                     cpuhp_remove_state_nocalls(
> > > -                             CPUHP_AP_ARM_CORESIGHT_CTI_STARTING);
> > > -             }
> > > -             cti_cpu_drvdata[drvdata->ctidev.cpu] = NULL;
> > > +     cti_cpu_drvdata[drvdata->ctidev.cpu] = drvdata;
> > > +     if (--nr_cti_cpu == 0) {
> > > +             cpu_pm_unregister_notifier(&cti_cpu_pm_nb);
> > > +             cpuhp_remove_state_nocalls(CPUHP_AP_ARM_CORESIGHT_CTI_STARTING);
> > >       }
> > >  }
> >
> > regards,
> > dan carpenter
> >
>
>
> --
> Mike Leach
> Principal Engineer, ARM Ltd.
> Manchester Design Centre. UK



-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
