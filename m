Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0EDA17002E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 14:37:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ACFWo4CntBiAY44Rp5QMnbThD2oeO5kuUGo4hjaOI9s=; b=M8wvgQr3JwvCg8
	xofDQdWawHzGi7afidSPWfW9+mehCCUpjtUUGV18fkYBHciXYxI7rfsR8dCRzuGw+UV2Cwm6Vp9Mb
	i4yb2Jj9jQ+2wZ9PEXPFnH4gfZeUK+/gtpM6M7ZOTSZcALfaF3ZYx7WVcCjdCFAojGY2xMDsfpCfI
	Vev3SO4x0eqpUQK+IjgwoN3/7wYROOJAKk/+0CTeOmGScREVGYda0PkT2F2Fgk9K0ZkNf6Q+PLuIy
	dIC7Z1sSuH4bEzg9hMTE4RFNzP3mrulLHHL9r2MK/239K2Y/PHacKI3VF+0EvaD1rkcZlws+gYojM
	9zw5S8g9OW5UZHY9ufIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6wse-00087E-QU; Wed, 26 Feb 2020 13:37:40 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6wsV-00086I-2R
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 13:37:32 +0000
Received: by mail-qk1-x742.google.com with SMTP id f140so1963377qke.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 05:37:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GsQK/vIG2kF92nK07UxeDPcP0KSCRVmn7vbOEP4WBmA=;
 b=cqpm8dU3kFazCvW3j+ZtskRlarAtpGIczuYm67WeaAxLuH9gHkHENaM+hjgZ+6Imfe
 Pa7SvFk0BTeSqZeTeqoc9jmP/wT+lN+PCHh7BQN4SLupxMUrGWJb0+tC/1cAQQiI5Ryl
 zczvrYoeHPmwdvcVv7nX1j02L5LWya+11GW+0nsdEAiZxms9nHgHCNd60Ro4BGdkCE1J
 BqtozdJm7tU5//exqww3w28peqFHmwYrckf/RryAVTO9100pnE4FQ0Z1FvSZD76m1zly
 JgzKpQwV6QK1usRfMWCv7WA6Ie46mSSjjy5wDyp4WB62IqVB+6Bpoqi+4wocxAXGkYPT
 cl6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GsQK/vIG2kF92nK07UxeDPcP0KSCRVmn7vbOEP4WBmA=;
 b=ceXIZdZ1HGzUMQsIDh9p1wbmx6wMSXGdLCKl6jJgsCiLpS6qGM7Mfuh5D7cz1Es0VU
 piQbH3v2Uaj4j/8fZM59Ju7tPbH8JwOzw8PBsmAHqhJjw1NFg2NPz/nkyqvUizOmjxaM
 hAaSnNmZeQkXIEMVJl7zyVvN0ldV1UGfYzuS2sMzvJDGyooBV+76O9wytqowBA6rIrqq
 TRsfT6ojbzB1OwvZaIHitCqbr18PrG7knLfHBYoRgBOvw7n6dRbyF/YqqA7V6gMHXtX5
 tB2mSWViuls8/Rm5ctzmMb04qROsDbclx5F5aaIf+gbaS9OObANAUKtEXy29EPtq7ygx
 N7SQ==
X-Gm-Message-State: APjAAAUiA26ZH0WHzjMykZ7ejBtTwPAi6zajfCiWC/EuO2o9zBDm/p4k
 oAxa2BtKmYX4DYn/F/v/vbJBBDPugYHZkZWm/f3tLw==
X-Google-Smtp-Source: APXvYqymL/6lUw1Gd0WFP9N8PmYcRwJNUBM059J+WSuwgxca4WI22oCN6FNN95bAhXXT/XTyxCHW97xXUMMb63sY1RI=
X-Received: by 2002:a05:620a:47:: with SMTP id
 t7mr5150375qkt.432.1582724249447; 
 Wed, 26 Feb 2020 05:37:29 -0800 (PST)
MIME-Version: 1.0
References: <20200211105808.27884-1-mike.leach@linaro.org>
 <20200211105808.27884-6-mike.leach@linaro.org>
 <20200214225839.GB20024@xps15>
In-Reply-To: <20200214225839.GB20024@xps15>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 26 Feb 2020 13:37:17 +0000
Message-ID: <CAJ9a7VjLxTjH7OhRCoPSfiv28kSJ8=LEKSMRfwu41Du+HCh9pA@mail.gmail.com>
Subject: Re: [PATCH v4 5/6] coresight: cti: Add in sysfs links to other
 coresight devices.
To: Mathieu Poirier <mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_053731_140594_9236E32A 
X-CRM114-Status: GOOD (  26.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
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
Cc: Coresight ML <coresight@lists.linaro.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On Fri, 14 Feb 2020 at 22:58, Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
>
> On Tue, Feb 11, 2020 at 10:58:07AM +0000, Mike Leach wrote:
> > Adds in sysfs links for connections where the connected device is another
> > coresight device. This allows examination of the coresight topology.
> >
> > Non-coresight connections remain just as a reference name.
> >
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > ---
> >  drivers/hwtracing/coresight/coresight-cti.c | 41 ++++++++++++++++++++-
> >  1 file changed, 40 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
> > index 9e18e176831c..f620e9460e7d 100644
> > --- a/drivers/hwtracing/coresight/coresight-cti.c
> > +++ b/drivers/hwtracing/coresight/coresight-cti.c
> > @@ -441,6 +441,37 @@ int cti_channel_setop(struct device *dev, enum cti_chan_set_op op,
> >       return err;
> >  }
> >
> > +static void cti_add_sysfs_link(struct cti_drvdata *drvdata,
> > +                            struct cti_trig_con *tc)
> > +{
> > +     struct coresight_sysfs_link link_info;
> > +
> > +     link_info.orig = drvdata->csdev;
> > +     link_info.orig_name = tc->con_dev_name;
> > +     link_info.target = tc->con_dev;
> > +     link_info.target_name = dev_name(&drvdata->csdev->dev);
> > +     coresight_add_sysfs_link(&link_info);
>
> I understand there isn't much to do if a problem occurs so just catch the error
> and add a comment to assert you're doing this on purpose.
>

When I revisited this code I saw an imbalance between the case where
the CTI is created first and the associated CSdev is created first.
The result could be shutdown path where the CTI removes sysfs links
after the csdev has been removed - which really shouldn't happen.
Also we could try to remove a sysfs link that we failed to set in the
first place - again not ideal

I've reworked this code to fix this, and now if the sysfs link fails
to be set, then we do not set the association between CTI and csdev
components.
This is not sufficient to fail either component from registering, as
we may have successfully registered previous associations with the
same CTI.

It seems unlikely that the sysfs link could fail, but if it does, is
it worth using a dev_warn() to at least log the failure?

Regards

Mike


> > +}
> > +
> > +static void cti_remove_all_sysfs_links(struct cti_drvdata *drvdata)
> > +{
> > +     struct cti_trig_con *tc;
> > +     struct cti_device *ctidev = &drvdata->ctidev;
> > +     struct coresight_sysfs_link link_info;
> > +
> > +     /* origin device and target link name constant for this cti */
> > +     link_info.orig = drvdata->csdev;
> > +     link_info.target_name = dev_name(&drvdata->csdev->dev);
> > +
> > +     list_for_each_entry(tc, &ctidev->trig_cons, node) {
> > +             if (tc->con_dev) {
> > +                     link_info.target = tc->con_dev;
> > +                     link_info.orig_name = tc->con_dev_name;
> > +                     coresight_remove_sysfs_link(&link_info);
> > +             }
> > +     }
> > +}
> > +
> >  /*
> >   * Look for a matching connection device name in the list of connections.
> >   * If found then swap in the csdev name, set trig con association pointer
> > @@ -452,6 +483,8 @@ cti_match_fixup_csdev(struct cti_device *ctidev, const char *node_name,
> >  {
> >       struct cti_trig_con *tc;
> >       const char *csdev_name;
> > +     struct cti_drvdata *drvdata = container_of(ctidev, struct cti_drvdata,
> > +                                                ctidev);
> >
> >       list_for_each_entry(tc, &ctidev->trig_cons, node) {
> >               if (tc->con_dev_name) {
> > @@ -462,6 +495,7 @@ cti_match_fixup_csdev(struct cti_device *ctidev, const char *node_name,
> >                                       devm_kstrdup(&csdev->dev, csdev_name,
> >                                                    GFP_KERNEL);
> >                               tc->con_dev = csdev;
> > +                             cti_add_sysfs_link(drvdata, tc);
> >                               return true;
> >                       }
> >               }
> > @@ -546,10 +580,12 @@ static void cti_update_conn_xrefs(struct cti_drvdata *drvdata)
> >       struct cti_device *ctidev = &drvdata->ctidev;
> >
> >       list_for_each_entry(tc, &ctidev->trig_cons, node) {
> > -             if (tc->con_dev)
> > +             if (tc->con_dev) {
> >                       /* set tc->con_dev->ect_dev */
> >                       coresight_set_assoc_ectdev_mutex(tc->con_dev,
> >                                                        drvdata->csdev);
> > +                     cti_add_sysfs_link(drvdata, tc);
> > +             }
> >       }
> >  }
> >
> > @@ -602,6 +638,9 @@ static void cti_device_release(struct device *dev)
> >       mutex_lock(&ect_mutex);
> >       cti_remove_conn_xrefs(drvdata);
> >
> > +     /* clear the dynamic sysfs associate with connections */
>
> s/associate/associated
>
> > +     cti_remove_all_sysfs_links(drvdata);
> > +
> >       /* remove from the list */
> >       list_for_each_entry_safe(ect_item, ect_tmp, &ect_net, node) {
> >               if (ect_item == drvdata) {
>
> With the above:
>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
>
> > --
> > 2.17.1
> >



-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
