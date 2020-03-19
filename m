Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A4118B994
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 15:40:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lhHCymNJLTz467/wkESILeGjJayUD9sA95XVtlsKToE=; b=gHrIO3cYgSnJrT
	XgA/5Ov6fDlHvuzF9gjuNM7gVG5FhsFQcQ3XakWIU1howVVWM2NZhU6J74JS1RDq+M88e5RAVKtag
	RHAHRhsgjBvxgQUWdFFgdA9+2zBpbhL0bMhW3pV0czkxVn8wn9wo2mHbfsRmIBzO0KUSHBpXCF6Yr
	SBexV7MbdcmRbYrdZ8SITNdFpP18awfoDyl3NJY8P5vF7500Eqy97JeKhq3hfFtYIJEaCdZE1MHtj
	7JIXDhOfKx542JguecZRg9hH8QdyRiqpvbLKWprWQY/ozUFnOw0XMSgn93vPhOYKeaXLf9gDZVjV7
	NB2wnOnGOVNG9wNWBMbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEwLi-0005i6-Vn; Thu, 19 Mar 2020 14:40:42 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEwLV-0005hK-QR
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 14:40:31 +0000
Received: by mail-il1-x143.google.com with SMTP id c8so2466474ilm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 07:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jjHet+d6PgTVVQzngVDu0DWyN0tpKckAYla4JKs7W40=;
 b=dgnqc9TorOD+T7DJjFZzT7XMOPM1Uql4eYR/gS5bo9ceo7hLhVWlnB54uKbeWs8glD
 W0GqzPTosEGlGB2FD4wkXNwzYZe1nOu0nYaC/hIo2N0bT8j+uZ/S4yEUI2ICrA31I84p
 Bb/+Nm31Se85+XJ81U/2TkVgpWOuFMRxwpI2Kt9SP//ToZtVsaN9s7Lb4s9RJX5ktYfS
 V9srf5U7C3MlP4rJEsNCwqTpMjNie8Mc07Dv81W7d1pNkAZ/cj+/WKOZEY1O6Cqnbhnv
 y/GJRrcFHuQ1nRXCu66Eew+tnit/uhgJXJLi4MM9daknEEsDIvsge+5QMBVuDDWhwi58
 umvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jjHet+d6PgTVVQzngVDu0DWyN0tpKckAYla4JKs7W40=;
 b=mPg8BQDlOEzXt67D90h6k1gUR0BjLGWDQJ8OgRYx+x44Y2OGmooPoyN4bdxyoc2XtR
 7EXixxNx9KV7mTTmd0PXUFdHL9ylKUCVdEMes8phwIH8GZjaVRLIe+lOdy4ait+wgUX4
 guwZNclFrh+TBKtXSCBW0kHs6PNMqUpz49TGhG0G5pktARRKrMUnkPw+9wtbeYGYfHQf
 3xO6pAicStgWIyKKf1/XkUPlMAUURm0SnlFgl0W43orl4WlWrP5tZWs3PqOanStbCe7P
 HYNv5O8filjwDt5JRq7IPJ4JeK2T7tkUZq4Lu7alV0sBkkFqfZ1Yl5PeFjxZBODF92T4
 b1GA==
X-Gm-Message-State: ANhLgQ1JrHljMmBPAg+jcFDlz2TMsD+0r5fJduW6r8yvgUkaQTlAseM1
 YudjFtWNyItmg5My5FzqYjzuhxFRQOaFj4/HAORMXQ==
X-Google-Smtp-Source: ADFU+vsnPog9qFORvypj6xgLmeNjTJ3qbUUNUhTdvHi8BkTFesTjFNHuDKSwwaQaDPgWVZwvifE+xVBtSq04YCVh2eA=
X-Received: by 2002:a92:9f1a:: with SMTP id u26mr3577794ili.72.1584628828813; 
 Thu, 19 Mar 2020 07:40:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200309161748.31975-1-mathieu.poirier@linaro.org>
 <20200309161748.31975-3-mathieu.poirier@linaro.org>
 <20200318131821.GA2789508@kroah.com>
 <20200318181604.GB18359@xps15> <20200318182201.GA3235688@kroah.com>
 <CANLsYkxkg1bCCN=iuSQBF_oG-wWwrSvEC2pLNVkP64EgTfVAvg@mail.gmail.com>
 <20200319075414.GA3445010@kroah.com>
In-Reply-To: <20200319075414.GA3445010@kroah.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 19 Mar 2020 08:40:18 -0600
Message-ID: <CANLsYkwVDi1RoAOoQ8fKf5GuOnD=YFM6Bo308j7KJ5eg0fAR=w@mail.gmail.com>
Subject: Re: [PATCH 02/13] coresight: cti: Add sysfs coresight mgmt register
 access
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_074029_864915_8DF3FD56 
X-CRM114-Status: GOOD (  28.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Mar 2020 at 01:54, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Wed, Mar 18, 2020 at 01:28:05PM -0600, Mathieu Poirier wrote:
> > On Wed, 18 Mar 2020 at 12:22, Greg KH <gregkh@linuxfoundation.org> wrote:
> > >
> > > On Wed, Mar 18, 2020 at 12:16:04PM -0600, Mathieu Poirier wrote:
> > > > On Wed, Mar 18, 2020 at 02:18:21PM +0100, Greg KH wrote:
> > > > > On Mon, Mar 09, 2020 at 10:17:37AM -0600, Mathieu Poirier wrote:
> > > > > > From: Mike Leach <mike.leach@linaro.org>
> > > > > >
> > > > > > Adds sysfs access to the coresight management registers.
> > > > > >
> > > > > > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > > > > > Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > > > > > Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > > > > > [Fixed abbreviation in title]
> > > > > > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > > > > > ---
> > > > > >  .../hwtracing/coresight/coresight-cti-sysfs.c | 53 +++++++++++++++++++
> > > > > >  drivers/hwtracing/coresight/coresight-priv.h  |  1 +
> > > > > >  2 files changed, 54 insertions(+)
> > > > > >
> > > > > > diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> > > > > > index a832b8c6b866..507f8eb487fe 100644
> > > > > > --- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> > > > > > +++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> > > > > > @@ -62,11 +62,64 @@ static struct attribute *coresight_cti_attrs[] = {
> > > > > >   NULL,
> > > > > >  };
> > > > > >
> > > > > > +/* register based attributes */
> > > > > > +
> > > > > > +/* macro to access RO registers with power check only (no enable check). */
> > > > > > +#define coresight_cti_reg(name, offset)                  \
> > > > > > +static ssize_t name##_show(struct device *dev,                           \
> > > > > > +                    struct device_attribute *attr, char *buf)    \
> > > > > > +{                                                                        \
> > > > > > + struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);     \
> > > > > > + u32 val = 0;                                                    \
> > > > > > + pm_runtime_get_sync(dev->parent);                               \
> > > > > > + spin_lock(&drvdata->spinlock);                                  \
> > > > > > + if (drvdata->config.hw_powered)                                 \
> > > > > > +         val = readl_relaxed(drvdata->base + offset);            \
> > > > > > + spin_unlock(&drvdata->spinlock);                                \
> > > > > > + pm_runtime_put_sync(dev->parent);                               \
> > > > > > + return scnprintf(buf, PAGE_SIZE, "0x%x\n", val);                \
> > > > > > +}                                                                        \
> > > > > > +static DEVICE_ATTR_RO(name)
> > > > > > +
> > > > > > +/* coresight management registers */
> > > > > > +coresight_cti_reg(devaff0, CTIDEVAFF0);
> > > > > > +coresight_cti_reg(devaff1, CTIDEVAFF1);
> > > > > > +coresight_cti_reg(authstatus, CORESIGHT_AUTHSTATUS);
> > > > > > +coresight_cti_reg(devarch, CORESIGHT_DEVARCH);
> > > > > > +coresight_cti_reg(devid, CORESIGHT_DEVID);
> > > > > > +coresight_cti_reg(devtype, CORESIGHT_DEVTYPE);
> > > > > > +coresight_cti_reg(pidr0, CORESIGHT_PERIPHIDR0);
> > > > > > +coresight_cti_reg(pidr1, CORESIGHT_PERIPHIDR1);
> > > > > > +coresight_cti_reg(pidr2, CORESIGHT_PERIPHIDR2);
> > > > > > +coresight_cti_reg(pidr3, CORESIGHT_PERIPHIDR3);
> > > > > > +coresight_cti_reg(pidr4, CORESIGHT_PERIPHIDR4);
> > > > > > +
> > > > > > +static struct attribute *coresight_cti_mgmt_attrs[] = {
> > > > > > + &dev_attr_devaff0.attr,
> > > > > > + &dev_attr_devaff1.attr,
> > > > > > + &dev_attr_authstatus.attr,
> > > > > > + &dev_attr_devarch.attr,
> > > > > > + &dev_attr_devid.attr,
> > > > > > + &dev_attr_devtype.attr,
> > > > > > + &dev_attr_pidr0.attr,
> > > > > > + &dev_attr_pidr1.attr,
> > > > > > + &dev_attr_pidr2.attr,
> > > > > > + &dev_attr_pidr3.attr,
> > > > > > + &dev_attr_pidr4.attr,
> > > > > > + NULL,
> > > > > > +};
> > > > > > +
> > > > > >  static const struct attribute_group coresight_cti_group = {
> > > > > >   .attrs = coresight_cti_attrs,
> > > > > >  };
> > > > > >
> > > > > > +static const struct attribute_group coresight_cti_mgmt_group = {
> > > > > > + .attrs = coresight_cti_mgmt_attrs,
> > > > > > + .name = "mgmt",
> > > > > > +};
> > > > > > +
> > > > > >  const struct attribute_group *coresight_cti_groups[] = {
> > > > > >   &coresight_cti_group,
> > > > > > + &coresight_cti_mgmt_group,
> > > > > >   NULL,
> > > > > >  };
> > > > > > diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
> > > > > > index 82e563cdc879..aba6b789c969 100644
> > > > > > --- a/drivers/hwtracing/coresight/coresight-priv.h
> > > > > > +++ b/drivers/hwtracing/coresight/coresight-priv.h
> > > > > > @@ -22,6 +22,7 @@
> > > > > >  #define CORESIGHT_CLAIMCLR       0xfa4
> > > > > >  #define CORESIGHT_LAR            0xfb0
> > > > > >  #define CORESIGHT_LSR            0xfb4
> > > > > > +#define CORESIGHT_DEVARCH        0xfbc
> > > > > >  #define CORESIGHT_AUTHSTATUS     0xfb8
> > > > > >  #define CORESIGHT_DEVID          0xfc8
> > > > > >  #define CORESIGHT_DEVTYPE        0xfcc
> > > > > > --
> > > > > > 2.20.1
> > > > > >
> > > > >
> > > > > I do not see any Documentation/ABI/ entries for these new sysfs files,
> > > > > did I miss it somehow?  I can't take new sysfs code without
> > > > > documentation.
> > > >
> > > > All the ABI is documented in this patch, which is part of this set.
> > > >
> > > > [1]. https://lkml.org/lkml/2020/3/9/642
> > >
> > > That is not in the required Documentation/ABI/ form that all sysfs files
> > > should have.  If they don't, it's a bug.
> >
> > Now I'm very confused...  As far as I can tell Mike has followed the
> > (very loose) guidelines set out in the ABI documentation [1].  I have
> > also taken a look at the patches that were merged in the v5.5 cycle -
> > nothing is very different than what Mike has put together.  It is also
> > based on the work I did a while back [2] that you merged.
>
> {sigh}
>
> I churned through 1200+ patches yesterday to get caught up and I think I
> totally missed this, sorry.  Yes, that is the correct format, I was
> looking at the .rst files you added to this series and missed this API
> file instead.

That's understandable - I review patches for only 2 subsystems and I
get overwhelmed.

>
> Ugh, my fault.
>
> Can you just resend this whole series and I'll go through it again?

I'll address the issues we agree on over in the other thread and will respin.

Thanks,
Mathieu

>
> thanks,
>
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
