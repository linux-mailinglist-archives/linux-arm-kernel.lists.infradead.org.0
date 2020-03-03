Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A79E177E3E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 19:05:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jft5cRLKoTbfyg2UgSk1dPfBxlEUgPRxsK/ejl2ObNw=; b=r9rqBa0bLJuwGT
	KC+qec0mswgzT73yxXa5H+HqcP6QygGbA3dpzx4Qns2nZLkqpcB7kz+emseWfLO57o2u6xFZnHbYe
	iD2MPXRV3H/is76hevz3mD5RGx0Lc8yNsOEgh483FzI0mSAi+5zH8AtrbBRv0i3DnSEXPAVKn9ohI
	/ljD6adq1l4kRNmDaSfoF8EwvsELIo8/E4Hv65B7e4d0lUi1MWK4+q0ETfEH33tm6qZjxNgjvmxpY
	D55csXwExhiYSgwY3gD+Iiyw5vL/XJ9mWUx3GhDKoTfoNQKy69CD1964ckqX9EortZZBnMqDVnrX+
	H0pKhRv2LBB2615AGysw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9BvL-0002y9-Lz; Tue, 03 Mar 2020 18:05:43 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9BvC-0002xE-HI
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 18:05:36 +0000
Received: by mail-io1-xd41.google.com with SMTP id m25so4599447ioo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 10:05:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BeqmVRD23R+Ys+6oL1OQi3U6ndkvAqV94YJI5k3rbnY=;
 b=Wdf74tmgxXLRrohPgWHNosIVdnICT1cA9Lt1UzNTqQGYkQUT310eKC+YQDU7DsVX5+
 ZeBcD0lemBhKYaKyY6GtE+pLSn36sCnKEpBUpVgxf1Aq77Srl3Zh9ZwEchpnwJzkC8/G
 Mos2wMkoq8sFHfLJp9TGRTc4SvxEH52jY1pk4R3yXtS7678Fc+jFzT4/IOC0HxCXM33q
 +ktyaxHu9H8/IX5SiuHDdN5H5BUNg1PbsdLKZgsx7L0IaKZo22dIfz201EEJW1gwSDQc
 i5mQ/MERUwlzgAIIW0fghZlw8c7mYMvUmQuuKmKjKN+5ehqJH7rylxCnPNA+rjNxr1q3
 Dpdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BeqmVRD23R+Ys+6oL1OQi3U6ndkvAqV94YJI5k3rbnY=;
 b=R+T908InSB5Foltt4RG5IHTmEXSlHMMvGFDe2vH4OVhQ3l1CoU7FraIec3bhXIRpit
 Mvq9+vwuxMxjmPKFmsoh36ZZYSp7lHIlJ/v74/8T23hicDNXFQvKGmGbSiy+ScheR674
 mj1j58GAH5yFL+ucxdUodRAX0DS9DzlHUs9qEWgDQQ2bcg3k0YmpjYNWi+HsWRgI5ihY
 jT3YUeNV8UKchdrLcX8ofuDGWcSPNrJVrCtaCBe6iJ4wjU22VQNVVqQN2pnedMpkz5pC
 GZRMNCEn4OlIFD0grbaMCukYmo/j4REDfn8l/EYtlwouaxuxU2CFBg03qztnb8BH5bH+
 WrQA==
X-Gm-Message-State: ANhLgQ3EgCX3WlpXcjHrphVaEM5uUv7gh84wF0RAqMU/4Fhn0yf2s5PE
 ffg2tM/7rz8uFfbu3uvi3+eopiDaHdgwo1OTyJHvow==
X-Google-Smtp-Source: ADFU+vu2a70oC8lR2iWbpY+kDjkXD0RbbPQlayFHSII+Chks5lqrwSbjjN5zO7UmxFOCozGue+NWzeJoxcwT1djquHY=
X-Received: by 2002:a02:c9cf:: with SMTP id c15mr2566556jap.71.1583258733428; 
 Tue, 03 Mar 2020 10:05:33 -0800 (PST)
MIME-Version: 1.0
References: <1582167465-2549-1-git-send-email-sidgup@codeaurora.org>
 <1582167465-2549-7-git-send-email-sidgup@codeaurora.org>
 <20200227215940.GC20116@xps15>
 <1a615fcd5a5c435d1d8babe8d5c3f8c3@codeaurora.org>
 <20200228183832.GA23026@xps15>
 <cac45f2726a272ccd0ce82e12e46756f@codeaurora.org>
In-Reply-To: <cac45f2726a272ccd0ce82e12e46756f@codeaurora.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 3 Mar 2020 11:05:22 -0700
Message-ID: <CANLsYkzUh_BRjapX_jDZZ00Lj8MMgMPM12+otYHDKqad1s-qHQ@mail.gmail.com>
Subject: Re: [PATCH 6/6] remoteproc: qcom: Add notification types to SSR
To: Rishabh Bhatnagar <rishabhb@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_100534_606098_AB7EC302 
X-CRM114-Status: GOOD (  36.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, tsoni@codeaurora.org,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 Siddharth Gupta <sidgup@codeaurora.org>, psodagud@codeaurora.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2 Mar 2020 at 13:54, <rishabhb@codeaurora.org> wrote:
>
> On 2020-02-28 10:38, Mathieu Poirier wrote:
> > On Thu, Feb 27, 2020 at 04:00:21PM -0800, rishabhb@codeaurora.org
> > wrote:
> >> On 2020-02-27 13:59, Mathieu Poirier wrote:
> >> > On Wed, Feb 19, 2020 at 06:57:45PM -0800, Siddharth Gupta wrote:
> >> > > The SSR subdevice only adds callback for the unprepare event. Add
> >> > > callbacks
> >> > > for unprepare, start and prepare events. The client driver for a
> >> > > particular
> >> > > remoteproc might be interested in knowing the status of the remoteproc
> >> > > while undergoing SSR, not just when the remoteproc has finished
> >> > > shutting
> >> > > down.
> >> > >
> >> > > Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>
> >> > > ---
> >> > >  drivers/remoteproc/qcom_common.c | 39
> >> > > +++++++++++++++++++++++++++++++++++----
> >> > >  include/linux/remoteproc.h       | 15 +++++++++++++++
> >> > >  2 files changed, 50 insertions(+), 4 deletions(-)
> >> > >
> >> > > diff --git a/drivers/remoteproc/qcom_common.c
> >> > > b/drivers/remoteproc/qcom_common.c
> >> > > index 6714f27..6f04a5b 100644
> >> > > --- a/drivers/remoteproc/qcom_common.c
> >> > > +++ b/drivers/remoteproc/qcom_common.c
> >> > > @@ -183,9 +183,9 @@ EXPORT_SYMBOL_GPL(qcom_remove_smd_subdev);
> >> > >   *
> >> > >   * Returns pointer to srcu notifier head on success, ERR_PTR on
> >> > > failure.
> >> > >   *
> >> > > - * This registers the @notify function as handler for restart
> >> > > notifications. As
> >> > > - * remote processors are stopped this function will be called, with
> >> > > the rproc
> >> > > - * pointer passed as a parameter.
> >> > > + * This registers the @notify function as handler for
> >> > > powerup/shutdown
> >> > > + * notifications. This function will be invoked inside the
> >> > > callbacks registered
> >> > > + * for the ssr subdevice, with the rproc pointer passed as a
> >> > > parameter.
> >> > >   */
> >> > >  void *qcom_register_ssr_notifier(struct rproc *rproc, struct
> >> > > notifier_block *nb)
> >> > >  {
> >> > > @@ -227,11 +227,39 @@ int qcom_unregister_ssr_notifier(void *notify,
> >> > > struct notifier_block *nb)
> >> > >  }
> >> > >  EXPORT_SYMBOL_GPL(qcom_unregister_ssr_notifier);
> >> > >
> >> > > +static int ssr_notify_prepare(struct rproc_subdev *subdev)
> >> > > +{
> >> > > +        struct qcom_rproc_ssr *ssr = to_ssr_subdev(subdev);
> >> > > +
> >> > > +        srcu_notifier_call_chain(ssr->rproc_notif_list,
> >> > > +                                 RPROC_BEFORE_POWERUP, (void *)ssr->name);
> >> > > +        return 0;
> >> > > +}
> >> > > +
> >> > > +static int ssr_notify_start(struct rproc_subdev *subdev)
> >> > > +{
> >> > > +        struct qcom_rproc_ssr *ssr = to_ssr_subdev(subdev);
> >> > > +
> >> > > +        srcu_notifier_call_chain(ssr->rproc_notif_list,
> >> > > +                                 RPROC_AFTER_POWERUP, (void *)ssr->name);
> >> > > +        return 0;
> >> > > +}
> >> > > +
> >> > > +static void ssr_notify_stop(struct rproc_subdev *subdev, bool
> >> > > crashed)
> >> > > +{
> >> > > +        struct qcom_rproc_ssr *ssr = to_ssr_subdev(subdev);
> >> > > +
> >> > > +        srcu_notifier_call_chain(ssr->rproc_notif_list,
> >> > > +                                 RPROC_BEFORE_SHUTDOWN, (void *)ssr->name);
> >> > > +}
> >> > > +
> >> > > +
> >> > >  static void ssr_notify_unprepare(struct rproc_subdev *subdev)
> >> > >  {
> >> > >          struct qcom_rproc_ssr *ssr = to_ssr_subdev(subdev);
> >> > >
> >> > > -        srcu_notifier_call_chain(ssr->rproc_notif_list, 0, (void
> >> > > *)ssr->name);
> >> > > +        srcu_notifier_call_chain(ssr->rproc_notif_list,
> >> > > +                                 RPROC_AFTER_SHUTDOWN, (void *)ssr->name);
> >> > >  }
> >> > >
> >> > >  /**
> >> > > @@ -248,6 +276,9 @@ void qcom_add_ssr_subdev(struct rproc *rproc,
> >> > > struct qcom_rproc_ssr *ssr,
> >> > >  {
> >> > >          ssr->name = ssr_name;
> >> > >          ssr->subdev.name = kstrdup("ssr_notifs", GFP_KERNEL);
> >> > > +        ssr->subdev.prepare = ssr_notify_prepare;
> >> > > +        ssr->subdev.start = ssr_notify_start;
> >> > > +        ssr->subdev.stop = ssr_notify_stop;
> >> >
> >> > Now that I have a better understanding of what this patchset is doing, I
> >> > realise
> >> > my comments in patch 04 won't work.  To differentiate the subdevs of an
> >> > rproc I
> >> > suggest to wrap them in a generic structure with a type and an enum.
> >> > That way
> >> > you can differenciate between subdevices without having to add to the
> >> > core.
> >> Ok. I can try that.
> >> >
> >> > That being said, I don't understand what patches 5 and 6 are doing...
> >> > Registering with the global ssr_notifiers allowed to gracefully shutdown
> >> > all the
> >> > MCUs in the system when one of them would go down.  But now that we are
> >> > using
> >> > the notifier on a per MCU, I really don't see why each subdev couldn't
> >> > implement
> >> > the right prepare/start/stop functions.
> >> >
> >> > Am I missing something here?
> >> We only want kernel clients to be notified when the Remoteproc they
> >> are
> >> interested
> >> in changes state. For e.g. audio kernel driver should be notified when
> >> audio
> >> processor goes down but it does not care about any other remoteproc.
> >> If you are suggesting that these kernel clients be added as subdevices
> >> then
> >> we will end up having many subdevices registered to each remoteproc.
> >> So we
> >> implemented a notifier chain per Remoteproc. This keeps the SSR
> >> notifications as
> >> the subdevice per remoteproc, and all interested clients can register
> >> to it.
> >
> > It seems like I am missing information...  Your are referring to
> > "kernel
> > clients" and as such I must assume some drivers that are not part of
> > the
> > remoteproc/rpmsg subsystems are calling qcom_register_ssr_notifier().
> > I must
> Yes these are not part of remoteproc framework and they will register
> for notifications.
> > also assume these drivers (or that functionality) are not yet upsream
> > because
> > all I can see calling qcom_register_ssr_notifier() is
> > qcom_glink_ssr_probe().
> Correct.These are not upstreamed.

Ok, things are starting to make sense.

> >
> > Speaking of which, what is the role of the qcom_glink_ssr_driver?  Is
> > the glink
> > device that driver is handling the same as the glink device registed in
> > adsp_probe() and q6v5_probe()?
> glink ssr driver will send out notifications to remoteprocs that have
> opened the
> "glink_ssr" channel that some subsystem has gone down or booted up. This
> helps notify
> neighboring subsystems about change in state of any other subsystem.

I am still looking for an answer to my second question.

> >
> >> >
> >> >
> >> > >          ssr->subdev.unprepare = ssr_notify_unprepare;
> >> > >          ssr->rproc_notif_list = kzalloc(sizeof(struct srcu_notifier_head),
> >> > >                                                                  GFP_KERNEL);
> >> > > diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> >> > > index e2f60cc..4be4478 100644
> >> > > --- a/include/linux/remoteproc.h
> >> > > +++ b/include/linux/remoteproc.h
> >> > > @@ -449,6 +449,21 @@ struct rproc_dump_segment {
> >> > >  };
> >> > >
> >> > >  /**
> >> > > + * enum rproc_notif_type - Different stages of remoteproc
> >> > > notifications
> >> > > + * @RPROC_BEFORE_SHUTDOWN:      unprepare stage of  remoteproc
> >> > > + * @RPROC_AFTER_SHUTDOWN:       stop stage of  remoteproc
> >> > > + * @RPROC_BEFORE_POWERUP:       prepare stage of  remoteproc
> >> > > + * @RPROC_AFTER_POWERUP:        start stage of  remoteproc
> >> > > + */
> >> > > +enum rproc_notif_type {
> >> > > +        RPROC_BEFORE_SHUTDOWN,
> >> > > +        RPROC_AFTER_SHUTDOWN,
> >> > > +        RPROC_BEFORE_POWERUP,
> >> > > +        RPROC_AFTER_POWERUP,
> >> > > +        RPROC_MAX
> >> > > +};
> >> > > +
> >> > > +/**
> >> > >   * struct rproc - represents a physical remote processor device
> >> > >   * @node: list node of this rproc object
> >> > >   * @domain: iommu domain
> >> > > --
> >> > > Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> >> > > a Linux Foundation Collaborative Project
> >> > >
> >> > > _______________________________________________
> >> > > linux-arm-kernel mailing list
> >> > > linux-arm-kernel@lists.infradead.org
> >> > > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
