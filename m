Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C28FA1FCB72
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 12:54:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lfe+SRoofbzsFFIvBZRaBI+PH1esHeqjLEe7zARnHHA=; b=fbJqszZsUXww2x
	WCQkIU4Mph2Zq7ej398qeiVJGheoirtxNDFX/XBfZtKJVYFK4HpBOBmADHjAnzo3bI8mnsQCuGSNP
	k5HdPSenDQtuBtO91PuWxOH1AkC8Xx/Nbhg4u9Z0exEO9YoTU1jUoY9BhmM5eQQY1JxFSEbIEc4A4
	3RNQph0gIENAiljPdTIb75v9W4hVSgXepGDWxka7u7piab9cNuXjUuROYBon0EivmYjh4n3ykkn9i
	he4pGAu1rUsrBf1Av3oJagJjWEZakoz/tXMd8cNPZxxAlWKxqyPU4t4/6TFCbg5rD2Qu5NBMsV8Ix
	MB3rvtvVEwsVLo27F/+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlVhh-0005z2-Lw; Wed, 17 Jun 2020 10:54:01 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlVhX-0005yQ-Ms
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 10:53:53 +0000
Received: by mail-ej1-x642.google.com with SMTP id y13so1832386eju.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 03:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lCVEonbpFZmz0/ZeZBC256oe8W32YGcEqtUscl42Jjk=;
 b=N6FV9zn0+vHCrQgrVC1C0J/mPAwm539PdN5uB7k0b9RkMCTH5U+h4TNko9RWYTFJS0
 aycV7lZQuWVgH8fVnSepk8Xz4VRR0fWiURSOHJK9kMY/TeSTYqHhqujymcLZK8nILAq8
 YRnZdRC+EuIeN9ZsLl8ItTHgnLXHEd4/8J1RICT4DwDfOwhleGOwVqvM5R9dnz8aZtuO
 BJrqqCIPEirrFFQ+oaDBvgOulTo2An6MX+DdR6/Q8wn/r+pwJkOrMtEF6QcvlqVKRjrt
 Q3wuXeWMZBbTXMuBU1zwm5ArFFPkRslx4tiWzIl5cKnTCZggSehVm90BWCG6qsbLOv9E
 86nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lCVEonbpFZmz0/ZeZBC256oe8W32YGcEqtUscl42Jjk=;
 b=L4CCllXnrzczYhRqko3YpjOg+6zoVcNGqpKGw39DgppwAAbbavYetGRSFOPHSgFqm1
 lF5oRo7Dt1PWNfhPo2wnjSiRZnXoB9darZvgRq7mcAwVioykeRbd93+WgJXI5pdRXEJ3
 yHwBlS2xm1hJY4eaGfRuIaOArIv8FvUOk+eoNKiGEGlUUZOXglO3/YZhL/hr4bfE+pJ0
 8kvcIUngr7iEE4BCHvIiyoZis0/m1pXgqAb+5S6ZnXifgNfvVpfRxJQJdFD20td2Y8Cd
 yOhWYcjv1h4DjieDP2yJBpu8A5tLEuGK5/G3HkechewtrW5a+HYY0mnD/6Dg99q+wMJx
 B4PQ==
X-Gm-Message-State: AOAM532KtshWKP92rIhn1kdYHU5vZYjdxF/JNri669BEMxznh9QXp0SQ
 oSuMvojcnTaDJASP/HdPhbA1SnDFA+y/6LHLIPtirw==
X-Google-Smtp-Source: ABdhPJzM/QMiOA2pfu6giruDymL/vgxx992VCpmzw/lfID1zaGXgd0e96O1FEVsGBiSkriQxR1i1J10b+Xiy3GtvffU=
X-Received: by 2002:a17:906:118b:: with SMTP id
 n11mr7055515eja.328.1592391230007; 
 Wed, 17 Jun 2020 03:53:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200612121047.GF4282@kadam> <20200612121133.GA1139533@mwanda>
 <20200612174215.GI4282@kadam>
In-Reply-To: <20200612174215.GI4282@kadam>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 17 Jun 2020 11:53:39 +0100
Message-ID: <CAJ9a7ViP_PTiSnYnOYbH=LRXUroWT04rmdswZEdakoWjevUi4Q@mail.gmail.com>
Subject: Re: [PATCH] coresight: cti: Fix error handling in probe
To: Dan Carpenter <dan.carpenter@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_035351_816637_4F3099FB 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
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

Hi Dan,

On Fri, 12 Jun 2020 at 18:43, Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Fri, Jun 12, 2020 at 03:11:33PM +0300, Dan Carpenter wrote:
> > +static int cti_pm_setup(struct cti_drvdata *drvdata)
> > +{
> > +     int ret;
> > +
> > +     if (drvdata->ctidev.cpu == -1)
> > +             return 0;
> > +
> > +     if (nr_cti_cpu)
> > +             goto done;
> > +
> > +     cpus_read_lock();
>         ^^^^^^^^^^^^^^^^
> One thing which I do wonder is why we have locking here but not in the
> cti_pm_release() function.  That was how the original code was so the
> patch doesn't change anything, but I am curious.
>

Good point - the CTI PM code was modelled on the same code in the ETM
drivers, which show the same pattern.
Perhaps something we need to revisit in both drivers.

Regards

Mike

> > +     ret = cpuhp_setup_state_nocalls_cpuslocked(
> > +                     CPUHP_AP_ARM_CORESIGHT_CTI_STARTING,
> > +                     "arm/coresight_cti:starting",
> > +                     cti_starting_cpu, cti_dying_cpu);
> > +     if (ret) {
> > +             cpus_read_unlock();
> > +             return ret;
> > +     }
> > +
> > +     ret = cpu_pm_register_notifier(&cti_cpu_pm_nb);
> > +     cpus_read_unlock();
> > +     if (ret) {
> > +             cpuhp_remove_state_nocalls(CPUHP_AP_ARM_CORESIGHT_CTI_STARTING);
> > +             return ret;
> > +     }
> > +
> > +done:
> > +     nr_cti_cpu++;
> > +     cti_cpu_drvdata[drvdata->ctidev.cpu] = drvdata;
> > +
> > +     return 0;
> > +}
> > +
> >  /* release PM registrations */
> >  static void cti_pm_release(struct cti_drvdata *drvdata)
> >  {
> > -     if (drvdata->ctidev.cpu >= 0) {
> > -             if (--nr_cti_cpu == 0) {
> > -                     cpu_pm_unregister_notifier(&cti_cpu_pm_nb);
> > +     if (drvdata->ctidev.cpu == -1)
> > +             return;
> >
> > -                     cpuhp_remove_state_nocalls(
> > -                             CPUHP_AP_ARM_CORESIGHT_CTI_STARTING);
> > -             }
> > -             cti_cpu_drvdata[drvdata->ctidev.cpu] = NULL;
> > +     cti_cpu_drvdata[drvdata->ctidev.cpu] = drvdata;
> > +     if (--nr_cti_cpu == 0) {
> > +             cpu_pm_unregister_notifier(&cti_cpu_pm_nb);
> > +             cpuhp_remove_state_nocalls(CPUHP_AP_ARM_CORESIGHT_CTI_STARTING);
> >       }
> >  }
>
> regards,
> dan carpenter
>


-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
