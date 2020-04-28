Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DC31BCD0E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 22:09:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DeuYqZ2gH2eHx2Jr/I/vTRi5ZiFWCFpEh5ILRPYY/LQ=; b=RqiArphiYVy7Zc
	mz5ZdIjWKXryywQ1mF6tUlg/poIPV+QrrhAwt73VivI1pXZLWQ8Q8c7/EPy+q6V2o5+gsWS9Dn7x5
	l/v0ewoIRn4H4RBiu/63V98C/yyfz3gzAqMznA3HClKETsgIf+oQLClCAJ9Uz6KAlHP3TTjv/UpPf
	q9JKhFR1dBEoa/N/V/LmOgx1H6BPYcU3giXo9N15KVJ7YySX6R7yW8w6kybmbVd90oDTCzYHemohH
	EyJpDzTEg8DgUWIPAq5FzUGuQVizL2NBhpfUOQELOVsrY2YTZEoQGSEYRnhKFk0y6vJ/Krs4gSZo9
	nIujQP6PwNoxv3CjExVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTWXv-0000OR-Mo; Tue, 28 Apr 2020 20:09:35 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTWXl-0000Nm-2c
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 20:09:26 +0000
Received: by mail-io1-xd44.google.com with SMTP id u11so24775441iow.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 13:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6b8JEdc86QQaLWgUONgVk5QnyKn0OwJfe4nUlQTwps0=;
 b=d3LktalotbLI0rJhUPptVS5m6TeC3T7IVM9AmAJQcKzSqXkCYx4sHzfZBRXBWNrhJ9
 nChBqVreBXCMxoNCEjAdTXCR1vRzfCytEZUtf13z9oltklrIDGVULrwgUMUto7+0T9eP
 0tAKMU6ESdpJJtGA7/8moPsY9glywvT/o6LZIGOKLkAUj+DSnUNkiSLG/haa3Vu9JQSt
 XZT9vMf6gbkocCwqFSitNVkd2Xqvyt4YOII+8CJDtXjmcZbbo2a9JtwVOsVq9az4EJs+
 jOBj56RrVFe/Zh/Ev3wvJuYasVOlY0KYDQx3OsfEiC5t6GDwauOkY9EpJBKZdEGwt0Gx
 EYUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6b8JEdc86QQaLWgUONgVk5QnyKn0OwJfe4nUlQTwps0=;
 b=ooncUkI/8zkFTaSsUdHlS17un1coJIV0H//rf9WF6NhExQ3/P+lyV7HwM0eZiMo/TQ
 ig4kv9RXvFMKBkpL8GBqHdhPm48AO3A+AzaY+qoAeYeIJCnCaU2KNCuwnm/dD8XDfuWa
 VT7mKOiPpgpq0cRHrON/7gDs6EE7UYWX7fFuIp1JWTY04uxPKZvtoCDYpanc2VrrWTiZ
 dgUX6btNphJeO4OGPBjauW4P2QskgwxpDfNBeqc+lQy5oZszD7rKzLBgsFu2R7NpNlTl
 uTB/Iij9K41HhzYljXrmmBpkoYhsacJnAHhnUqCJ40KMWclZpO4YBKGoAzp83YGq69Vl
 m4aQ==
X-Gm-Message-State: AGi0PuZ90NoT89kbEBoKi1/cMMFw3bGgRB/DqwFHa0DAb7NS8+nuDkNk
 cpIFEindeX70nYSOsF7uMMDtwRYU+6NL6gNDdUhhig==
X-Google-Smtp-Source: APiQypIQBpPQQkAuehJj3ca3UUx0zUIWzRrOwv/RHaXCYe3333MWUVd7I0T7xj4J5l8onxqQ42VCv8lSggS7jkyeOw8=
X-Received: by 2002:a02:b88e:: with SMTP id p14mr25945179jam.36.1588104563944; 
 Tue, 28 Apr 2020 13:09:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200325201839.15896-1-s-anna@ti.com>
 <20200325201839.15896-4-s-anna@ti.com>
 <20200428195855.GC10552@xps15>
In-Reply-To: <20200428195855.GC10552@xps15>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 28 Apr 2020 14:09:13 -0600
Message-ID: <CANLsYkwgCJrDu-Y5iyG0maCVqFqDXW_0vD4Sv2e+-dwryTNaRA@mail.gmail.com>
Subject: Re: [PATCH 3/3] remoteproc/k3-dsp: Add support for L2RAM loading on
 C66x DSPs
To: Suman Anna <s-anna@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_130925_129180_AE591A34 
X-CRM114-Status: GOOD (  36.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
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
Cc: devicetree@vger.kernel.org, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 Apr 2020 at 13:58, Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
>
> On Wed, Mar 25, 2020 at 03:18:39PM -0500, Suman Anna wrote:
> > The resets for the DSP processors on K3 SoCs are managed through the
> > Power and Sleep Controller (PSC) module. Each DSP typically has two
> > resets - a global module reset for powering on the device, and a local
> > reset that affects only the CPU while allowing access to the other
> > sub-modules within the DSP processor sub-systems.
> >
> > The C66x DSPs have two levels of internal RAMs that can be used to
> > boot from, and the firmware loading into these RAMs require the
> > local reset to be asserted with the device powered on/enabled using
> > the module reset. Enhance the K3 DSP remoteproc driver to add support
> > for loading into the internal RAMs. The local reset is deasserted on
> > SoC power-on-reset, so logic has to be added in probe in remoteproc
> > mode to balance the remoteproc state-machine.
> >
> > Note that the local resets are a no-op on C71x cores, and the hardware
> > does not supporting loading into its internal RAMs.
> >
> > Signed-off-by: Suman Anna <s-anna@ti.com>
> > ---
> >  drivers/remoteproc/ti_k3_dsp_remoteproc.c | 82 +++++++++++++++++++++++
> >  1 file changed, 82 insertions(+)
> >
> > diff --git a/drivers/remoteproc/ti_k3_dsp_remoteproc.c b/drivers/remoteproc/ti_k3_dsp_remoteproc.c
> > index fd0d84f46f90..7b712ef74611 100644
> > --- a/drivers/remoteproc/ti_k3_dsp_remoteproc.c
> > +++ b/drivers/remoteproc/ti_k3_dsp_remoteproc.c
> > @@ -175,6 +175,9 @@ static int k3_dsp_rproc_reset(struct k3_dsp_rproc *kproc)
> >               return ret;
> >       }
> >
> > +     if (kproc->data->uses_lreset)
> > +             return ret;
> > +
> >       ret = kproc->ti_sci->ops.dev_ops.put_device(kproc->ti_sci,
> >                                                   kproc->ti_sci_id);
> >       if (ret) {
> > @@ -192,6 +195,9 @@ static int k3_dsp_rproc_release(struct k3_dsp_rproc *kproc)
> >       struct device *dev = kproc->dev;
> >       int ret;
> >
> > +     if (kproc->data->uses_lreset)
> > +             goto lreset;
> > +
> >       ret = kproc->ti_sci->ops.dev_ops.get_device(kproc->ti_sci,
> >                                                  kproc->ti_sci_id);
> >       if (ret) {
> > @@ -199,6 +205,7 @@ static int k3_dsp_rproc_release(struct k3_dsp_rproc *kproc)
> >               return ret;
> >       }
> >
> > +lreset:
> >       ret = reset_control_deassert(kproc->reset);
> >       if (ret) {
> >               dev_err(dev, "local-reset deassert failed, ret = %d\n", ret);
> > @@ -210,6 +217,63 @@ static int k3_dsp_rproc_release(struct k3_dsp_rproc *kproc)
> >       return ret;
> >  }
> >
> > +/*
> > + * The C66x DSP cores have a local reset that affects only the CPU, and a
> > + * generic module reset that powers on the device and allows the DSP internal
> > + * memories to be accessed while the local reset is asserted. This function is
> > + * used to release the global reset on C66x DSPs to allow loading into the DSP
> > + * internal RAMs. The .prepare() ops is invoked by remoteproc core before any
> > + * firmware loading, and is followed by the .start() ops after loading to
> > + * actually let the C66x DSP cores run. The local reset on C71x cores is a
> > + * no-op and the global reset cannot be released on C71x cores until after
> > + * the firmware images are loaded, so this function does nothing for C71x cores.
> > + */
> > +static int k3_dsp_rproc_prepare(struct rproc *rproc)
> > +{
> > +     struct k3_dsp_rproc *kproc = rproc->priv;
> > +     struct device *dev = kproc->dev;
> > +     int ret;
> > +
> > +     /* local reset is no-op on C71x processors */
> > +     if (!kproc->data->uses_lreset)
> > +             return 0;
>
> In k3_dsp_rproc_release() the condition is "if (kproc->data->uses_lreset)" and
> here it is the opposite, which did a good job at getting me confused.
>
> Taking a step back, I assume c71 DSPs will have their own k3_dsp_dev_data where
> the users_lreset flag will be false.  In that case I think it would make the
> code easier to understand if the k3_dsp_rproc_ops was declared without the
> .prepare and .unprepare.  In probe(), if data->uses_lreset is true then
> k3_dsp_rproc_prepare() and k3_dsp_rproc_unprepare() are set.
>

I forgot... Since this is a C71 related change, was there a reason to
lump it with the C66 set?  If not I would simply move that to the C71
work.

> I am done reviewing this set.
>
> Thanks,
> Mathieu
>
> > +
> > +     ret = kproc->ti_sci->ops.dev_ops.get_device(kproc->ti_sci,
> > +                                                 kproc->ti_sci_id);
> > +     if (ret)
> > +             dev_err(dev, "module-reset deassert failed, cannot enable internal RAM loading, ret = %d\n",
> > +                     ret);
> > +
> > +     return ret;
> > +}
> > +
> > +/*
> > + * This function implements the .unprepare() ops and performs the complimentary
> > + * operations to that of the .prepare() ops. The function is used to assert the
> > + * global reset on applicable C66x cores. This completes the second portion of
> > + * powering down the C66x DSP cores. The cores themselves are only halted in the
> > + * .stop() callback through the local reset, and the .unprepare() ops is invoked
> > + * by the remoteproc core after the remoteproc is stopped to balance the global
> > + * reset.
> > + */
> > +static int k3_dsp_rproc_unprepare(struct rproc *rproc)
> > +{
> > +     struct k3_dsp_rproc *kproc = rproc->priv;
> > +     struct device *dev = kproc->dev;
> > +     int ret;
> > +
> > +     /* local reset is no-op on C71x processors */
> > +     if (!kproc->data->uses_lreset)
> > +             return 0;
> > +
> > +     ret = kproc->ti_sci->ops.dev_ops.put_device(kproc->ti_sci,
> > +                                                 kproc->ti_sci_id);
> > +     if (ret)
> > +             dev_err(dev, "module-reset assert failed, ret = %d\n", ret);
> > +
> > +     return ret;
> > +}
> > +
> >  /*
> >   * Power up the DSP remote processor.
> >   *
> > @@ -353,6 +417,8 @@ static void *k3_dsp_rproc_da_to_va(struct rproc *rproc, u64 da, size_t len)
> >  }
> >
> >  static const struct rproc_ops k3_dsp_rproc_ops = {
> > +     .prepare        = k3_dsp_rproc_prepare,
> > +     .unprepare      = k3_dsp_rproc_unprepare,
> >       .start          = k3_dsp_rproc_start,
> >       .stop           = k3_dsp_rproc_stop,
> >       .kick           = k3_dsp_rproc_kick,
> > @@ -644,6 +710,22 @@ static int k3_dsp_rproc_probe(struct platform_device *pdev)
> >               goto disable_clk;
> >       }
> >
> > +     /*
> > +      * ensure the DSP local reset is asserted to ensure the DSP doesn't
> > +      * execute bogus code in .prepare() when the module reset is released.
> > +      */
> > +     if (data->uses_lreset) {
> > +             ret = reset_control_status(kproc->reset);
> > +             if (ret < 0) {
> > +                     dev_err(dev, "failed to get reset status, status = %d\n",
> > +                             ret);
> > +                     goto release_mem;
> > +             } else if (ret == 0) {
> > +                     dev_warn(dev, "local reset is deasserted for device\n");
> > +                     k3_dsp_rproc_reset(kproc);
> > +             }
> > +     }
> > +
> >       ret = rproc_add(rproc);
> >       if (ret) {
> >               dev_err(dev, "failed to add register device with remoteproc core, status = %d\n",
> > --
> > 2.23.0
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
