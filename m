Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9517C18A322
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 20:28:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZS/qFgwOXPBqCk2Od8CHFtCpxwFozhcNgDV6hz4rDi0=; b=PgT0Iml89CL6zJ
	tJmS5igotYYrMvC7pnXvjnvZVfAeOyRIB2opZLHHj0biFJzI96bzfMd1RmSyeIERQPluyDFGUt87F
	9/xL7C1ykjAnv3/zzn03xh2dQbdxEcKAKx5kyBMNoDi9w5Uwxo33CdmvBJ0+j/S+NteauF9SpyQJy
	bdtZE1zFXsSRh17Udn7lnJ1rlTjweKcha4PiOTsNa3YWa/GxQzYJJCr774AHrnKz9IHTfhzOM3VyP
	iaguZ+6r0prnw7oQyaG7ogl6gT+ZxE6yGNxUfUFnLHyxgsEz2tQ+EJd69Hg7ak+r15subJYfXocHQ
	mY9sSQHWycCQHQWd0RlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEeMd-0007xU-JK; Wed, 18 Mar 2020 19:28:27 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEeMT-0007wo-Vg
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 19:28:19 +0000
Received: by mail-il1-x142.google.com with SMTP id v6so13628057ilq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 12:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6wSvFNeSvrwrWHabqMFqeJg5y2lotl/tDZpSYioL4/w=;
 b=gGJ3ylioGwUY8mtuDb4IvtIKdCuSLqAPvC08OoMcjrn2EMkNc4Qn2my7edWXlG4NW3
 PKpa2Qn72T7FgEFzle0ht3JsKNiwZIg4ZwXvJ997oQcLZOKItcgkqzcPYqlaKj8bNKb0
 ykNxOhRG0ARNYkaTgY0EeYV+31ogrK9tmE6yNWESnsE/icD8iH9VPTEgWAGbfZDsQ+2h
 xlNu08dXa7+2zStGNvHAyJhSpaEBfnv44uCvOcc4cxP7Iwvsl1oebmKaK7CP/KSgTYRg
 vuqf+IGepjAx/c6P0OPGT7Q6WSmokll8MQg/LmlqcJxl3M5RPDNE3chnzUD1FTyeUF5R
 WcFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6wSvFNeSvrwrWHabqMFqeJg5y2lotl/tDZpSYioL4/w=;
 b=B/t+DGtqNMVbiubQlgQAz4C8P4eKjZ4x4Z4NnqgfSEZsieCg+qmCxh+r7AhAnY+9M/
 mERZQupMWCddqYqPX98xiNwJDEcsFjUFuAPfGvfzNCElrb14Sk8n1ghRJkimVhJyOWfg
 ZHEfPn0d0JWKkpwhpjkAwZ7YIg7kRR2QJfoQnpFCiXHDBZVvULIW3k45jGdMwRScJzCE
 GE23RhYqJ3fSYQwDwLxJSWpznKA5DS+S2FDDg6nnIEJTyWakzd02XS/tMqmf4LGZpIbV
 iM1FVUOPv3O/Jsbz9kB0KG0rw61isJP8hEU8cSVXhzKKi1gUbOVwh67RLN6Xg7pm3KxU
 fy9g==
X-Gm-Message-State: ANhLgQ1Kvp8W85GjvhKrqQRLhp/zMN3+LozcMmzHsEs7g5UHEhEoIlm4
 Uan1EThrIjVVCDck+32Lc2vYYfb3z0mlmNtYzu4EBg==
X-Google-Smtp-Source: ADFU+vsCmumeXJiGvsvn4CUIHfWNv4/BAsJpbQyKznSLu9FUiOOO7JoeBJDknEh6xjYmBxUjTAtI6+JfUJyI9DEjvuc=
X-Received: by 2002:a92:8352:: with SMTP id f79mr5487282ild.58.1584559696404; 
 Wed, 18 Mar 2020 12:28:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200309161748.31975-1-mathieu.poirier@linaro.org>
 <20200309161748.31975-3-mathieu.poirier@linaro.org>
 <20200318131821.GA2789508@kroah.com>
 <20200318181604.GB18359@xps15> <20200318182201.GA3235688@kroah.com>
In-Reply-To: <20200318182201.GA3235688@kroah.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 18 Mar 2020 13:28:05 -0600
Message-ID: <CANLsYkxkg1bCCN=iuSQBF_oG-wWwrSvEC2pLNVkP64EgTfVAvg@mail.gmail.com>
Subject: Re: [PATCH 02/13] coresight: cti: Add sysfs coresight mgmt register
 access
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_122818_050156_248AAE2E 
X-CRM114-Status: GOOD (  26.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
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
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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

On Wed, 18 Mar 2020 at 12:22, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Wed, Mar 18, 2020 at 12:16:04PM -0600, Mathieu Poirier wrote:
> > On Wed, Mar 18, 2020 at 02:18:21PM +0100, Greg KH wrote:
> > > On Mon, Mar 09, 2020 at 10:17:37AM -0600, Mathieu Poirier wrote:
> > > > From: Mike Leach <mike.leach@linaro.org>
> > > >
> > > > Adds sysfs access to the coresight management registers.
> > > >
> > > > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > > > Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > > > Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > > > [Fixed abbreviation in title]
> > > > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > > > ---
> > > >  .../hwtracing/coresight/coresight-cti-sysfs.c | 53 +++++++++++++++++++
> > > >  drivers/hwtracing/coresight/coresight-priv.h  |  1 +
> > > >  2 files changed, 54 insertions(+)
> > > >
> > > > diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> > > > index a832b8c6b866..507f8eb487fe 100644
> > > > --- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> > > > +++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> > > > @@ -62,11 +62,64 @@ static struct attribute *coresight_cti_attrs[] = {
> > > >   NULL,
> > > >  };
> > > >
> > > > +/* register based attributes */
> > > > +
> > > > +/* macro to access RO registers with power check only (no enable check). */
> > > > +#define coresight_cti_reg(name, offset)                  \
> > > > +static ssize_t name##_show(struct device *dev,                           \
> > > > +                    struct device_attribute *attr, char *buf)    \
> > > > +{                                                                        \
> > > > + struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);     \
> > > > + u32 val = 0;                                                    \
> > > > + pm_runtime_get_sync(dev->parent);                               \
> > > > + spin_lock(&drvdata->spinlock);                                  \
> > > > + if (drvdata->config.hw_powered)                                 \
> > > > +         val = readl_relaxed(drvdata->base + offset);            \
> > > > + spin_unlock(&drvdata->spinlock);                                \
> > > > + pm_runtime_put_sync(dev->parent);                               \
> > > > + return scnprintf(buf, PAGE_SIZE, "0x%x\n", val);                \
> > > > +}                                                                        \
> > > > +static DEVICE_ATTR_RO(name)
> > > > +
> > > > +/* coresight management registers */
> > > > +coresight_cti_reg(devaff0, CTIDEVAFF0);
> > > > +coresight_cti_reg(devaff1, CTIDEVAFF1);
> > > > +coresight_cti_reg(authstatus, CORESIGHT_AUTHSTATUS);
> > > > +coresight_cti_reg(devarch, CORESIGHT_DEVARCH);
> > > > +coresight_cti_reg(devid, CORESIGHT_DEVID);
> > > > +coresight_cti_reg(devtype, CORESIGHT_DEVTYPE);
> > > > +coresight_cti_reg(pidr0, CORESIGHT_PERIPHIDR0);
> > > > +coresight_cti_reg(pidr1, CORESIGHT_PERIPHIDR1);
> > > > +coresight_cti_reg(pidr2, CORESIGHT_PERIPHIDR2);
> > > > +coresight_cti_reg(pidr3, CORESIGHT_PERIPHIDR3);
> > > > +coresight_cti_reg(pidr4, CORESIGHT_PERIPHIDR4);
> > > > +
> > > > +static struct attribute *coresight_cti_mgmt_attrs[] = {
> > > > + &dev_attr_devaff0.attr,
> > > > + &dev_attr_devaff1.attr,
> > > > + &dev_attr_authstatus.attr,
> > > > + &dev_attr_devarch.attr,
> > > > + &dev_attr_devid.attr,
> > > > + &dev_attr_devtype.attr,
> > > > + &dev_attr_pidr0.attr,
> > > > + &dev_attr_pidr1.attr,
> > > > + &dev_attr_pidr2.attr,
> > > > + &dev_attr_pidr3.attr,
> > > > + &dev_attr_pidr4.attr,
> > > > + NULL,
> > > > +};
> > > > +
> > > >  static const struct attribute_group coresight_cti_group = {
> > > >   .attrs = coresight_cti_attrs,
> > > >  };
> > > >
> > > > +static const struct attribute_group coresight_cti_mgmt_group = {
> > > > + .attrs = coresight_cti_mgmt_attrs,
> > > > + .name = "mgmt",
> > > > +};
> > > > +
> > > >  const struct attribute_group *coresight_cti_groups[] = {
> > > >   &coresight_cti_group,
> > > > + &coresight_cti_mgmt_group,
> > > >   NULL,
> > > >  };
> > > > diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
> > > > index 82e563cdc879..aba6b789c969 100644
> > > > --- a/drivers/hwtracing/coresight/coresight-priv.h
> > > > +++ b/drivers/hwtracing/coresight/coresight-priv.h
> > > > @@ -22,6 +22,7 @@
> > > >  #define CORESIGHT_CLAIMCLR       0xfa4
> > > >  #define CORESIGHT_LAR            0xfb0
> > > >  #define CORESIGHT_LSR            0xfb4
> > > > +#define CORESIGHT_DEVARCH        0xfbc
> > > >  #define CORESIGHT_AUTHSTATUS     0xfb8
> > > >  #define CORESIGHT_DEVID          0xfc8
> > > >  #define CORESIGHT_DEVTYPE        0xfcc
> > > > --
> > > > 2.20.1
> > > >
> > >
> > > I do not see any Documentation/ABI/ entries for these new sysfs files,
> > > did I miss it somehow?  I can't take new sysfs code without
> > > documentation.
> >
> > All the ABI is documented in this patch, which is part of this set.
> >
> > [1]. https://lkml.org/lkml/2020/3/9/642
>
> That is not in the required Documentation/ABI/ form that all sysfs files
> should have.  If they don't, it's a bug.

Now I'm very confused...  As far as I can tell Mike has followed the
(very loose) guidelines set out in the ABI documentation [1].  I have
also taken a look at the patches that were merged in the v5.5 cycle -
nothing is very different than what Mike has put together.  It is also
based on the work I did a while back [2] that you merged.

The only thing I can see is that under "Contact", names are listed
rather than name and email addresses - is this what you are referring
to?  Is there another problem?  Can you point me to a file where the
"right" format has been followed?

Thanks,
Mathieu

[1]. https://elixir.bootlin.com/linux/v5.6-rc6/source/Documentation/ABI/README
[2]. https://elixir.bootlin.com/linux/v5.6-rc6/source/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x

>
> Please use that format and do not make up your own, we already have
> tools that parse these files.
>
> thanks,
>
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
