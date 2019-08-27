Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCB29F1F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 19:58:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZW6D7mdLDYV1E+4EQY6oNioNyQ8+zTUIeA/CCqcHYBw=; b=uls0nUlMB5hsb1
	WR0NAONiATCR6T2cKVg/QRhFOSFMskaZw8sBQRO4mIWp8G8u6bPZ6/xgZ/QITszh31L/p3GfiWozq
	pBr9QlQ7lMmj4XeLONAEEbms/gV4yp//NitvwSav9vp92z2GfOkjZAEvYDp/lxKUHYT+RXvS4+L7h
	vfRteOx4ZO2qrv4ZqqfASm5kPh8WSyn8OCQzWb7LRPneLHnv8jwnv9qsktx/4qF7twVXx2L1CrtqQ
	t7liKxVu5FQUWQCORyLTifGSwd2w009Z9g2hCPHccNf8x783Xr3gusxq1KZfPPJD38EoLdfFvTEea
	pIBejD9Q5mr2/30ICVmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2fjS-0008W5-GY; Tue, 27 Aug 2019 17:58:14 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2fjL-0008VZ-Cc
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 17:58:09 +0000
Received: by mail-io1-xd44.google.com with SMTP id p12so248925iog.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 10:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3EmRLO8wo/JIqbrGKJX2hVLR7XPZ2EAWf5gJTXryBMo=;
 b=EyZx7FLU6RmtO8L6DDu5VLMxB+1HSnlJxbGXFlkYsO9/yf3soFaiJ2II5Q0VKvqWAo
 +vohdOeRapZZFrzBEbj5vx82axB6tWR6h7KiXtzPGuATKilnuDLLVulPhhzIedR6FgtP
 gY0y6Aju2TE6iT/PabWQm39Kll/90lrnkFuYpk2t0HTDU4I+t+nPFi9f/O0SoFHynhs4
 VSY8B3aYEyojeWeEa0APZpKzHw72SWPabtwi2Dhbwxk1QYCSDLLDSKmIQ/NNRfV3YGyz
 VDPCcaXmzxRERl2Pt0ke6bhdfAsiP346PmjHdHiLNB7QYHcjb794plny4cfaf232AVeZ
 hWGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3EmRLO8wo/JIqbrGKJX2hVLR7XPZ2EAWf5gJTXryBMo=;
 b=f0UGWF4SgLan8PUyWyZHhGNzSM3qxv34DNyx2pvbrwu+9lsC3k0Fi0uXU/itFSlyD0
 HFuF9xIDKS3Q6gas17zs9yxojhaH7lzGOUCZSqrSfSjGu+GrYQokGsWz2ufgPcV+Nsyg
 r9aulOnIbgQE0h4/UkaEeClrNwB8UPVCx4HSEMXC6QzaUwU1Hkm06RX23k7sjmnv5jZQ
 U0qLPrcdRhoCMd1aeYaOwRavhiAFRapwn+w8BuGxo25YAb2rMmVl9SQkWTsUb9t8Vlpw
 zc41KOB3StdIuTwCmrC3rUWZ1CFmXk0mARqfoDQGLnhKTnHzIe+Z39icfuK05eN2gEhN
 e/Gg==
X-Gm-Message-State: APjAAAVzmvnfFdL6uyGKyAPgKAMKmAQqzGSiRSBKN8RFfSxwl1RQwNSm
 oVi3CosyoXtEQkNieNxK7IlgNe7crBMsb1hJoLpDrA==
X-Google-Smtp-Source: APXvYqzU3qiolDAJ/GjAXoKheTYvXHwYgRozBGE3tHk3MjFJDY3gAx485Umb1ZDNCbkUawOy1hyftTdLRSk86YK6bHw=
X-Received: by 2002:a5d:8908:: with SMTP id b8mr8466207ion.237.1566928684877; 
 Tue, 27 Aug 2019 10:58:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190819205720.24457-1-mike.leach@linaro.org>
 <20190819205720.24457-4-mike.leach@linaro.org>
 <20190826225949.GC24690@xps15>
 <CAJ9a7VgAYwCONqwJHTb9QunN0Q4R3E82kxzpSJXV9kv2dpRnHw@mail.gmail.com>
In-Reply-To: <CAJ9a7VgAYwCONqwJHTb9QunN0Q4R3E82kxzpSJXV9kv2dpRnHw@mail.gmail.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 27 Aug 2019 11:57:53 -0600
Message-ID: <CANLsYkzg8yOeYuxbNREFiYE0hmqO9vmJZ-m6sfjRxWGXH4GDAg@mail.gmail.com>
Subject: Re: [PATCH 3/8] coresight: etm4x: Add missing API to set EL match on
 address filters
To: Mike Leach <mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_105807_492264_25C42544 
X-CRM114-Status: GOOD (  27.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Coresight ML <coresight@lists.linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 27 Aug 2019 at 04:55, Mike Leach <mike.leach@linaro.org> wrote:
>
> Hi Mathieu,
>
> On Mon, 26 Aug 2019 at 23:59, Mathieu Poirier
> <mathieu.poirier@linaro.org> wrote:
> >
> > On Mon, Aug 19, 2019 at 09:57:15PM +0100, Mike Leach wrote:
> > > TRCACATRn registers have match bits for secure and non-secure exception
> > > levels which are not accessible by the sysfs API.
> > > This adds a new sysfs parameter to enable this - addr_exlevel_s_ns.
> > >
> > > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > > ---
> > >  .../coresight/coresight-etm4x-sysfs.c         | 39 +++++++++++++++++++
> > >  1 file changed, 39 insertions(+)
> > >
> > > diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> > > index fa1d6a938f6c..7eab5d7d0b62 100644
> > > --- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> > > +++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> > > @@ -1233,6 +1233,44 @@ static ssize_t addr_context_store(struct device *dev,
> > >  }
> > >  static DEVICE_ATTR_RW(addr_context);
> > >
> > > +static ssize_t addr_exlevel_s_ns_show(struct device *dev,
> > > +                                   struct device_attribute *attr,
> > > +                                   char *buf)
> > > +{
> > > +     u8 idx;
> > > +     unsigned long val;
> > > +     struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> > > +     struct etmv4_config *config = &drvdata->config;
> > > +
> > > +     spin_lock(&drvdata->spinlock);
> > > +     idx = config->addr_idx;
> > > +     val = BMVAL(config->addr_acc[idx], 14, 8);
> > > +     spin_unlock(&drvdata->spinlock);
> > > +     return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
> > > +}
> > > +
> > > +static ssize_t addr_exlevel_s_ns_store(struct device *dev,
> > > +                                    struct device_attribute *attr,
> > > +                                    const char *buf, size_t size)
> > > +{
> > > +     u8 idx;
> > > +     unsigned long val;
> > > +     struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> > > +     struct etmv4_config *config = &drvdata->config;
> > > +
> > > +     if (kstrtoul(buf, 16, &val))
> > > +             return -EINVAL;
> > > +
> > > +     spin_lock(&drvdata->spinlock);
> > > +     idx = config->addr_idx;
> > > +     /* clear Exlevel_ns & Exlevel_s bits[14:12, 11:8] */
> > > +     config->addr_acc[idx] &= ~(GENMASK(14, 8));
> > > +     config->addr_acc[idx] |= (val << 8);
> > > +     spin_unlock(&drvdata->spinlock);
> > > +     return size;
> > > +}
> > > +static DEVICE_ATTR_RW(addr_exlevel_s_ns);
> > > +
> > >  static ssize_t seq_idx_show(struct device *dev,
> > >                           struct device_attribute *attr,
> > >                           char *buf)
> > > @@ -2038,6 +2076,7 @@ static struct attribute *coresight_etmv4_attrs[] = {
> > >       &dev_attr_addr_stop.attr,
> > >       &dev_attr_addr_ctxtype.attr,
> > >       &dev_attr_addr_context.attr,
> > > +     &dev_attr_addr_exlevel_s_ns.attr,
> > >       &dev_attr_seq_idx.attr,
> > >       &dev_attr_seq_state.attr,
> > >       &dev_attr_seq_event.attr,
> >
> > I'm ok with this patch but the new entry needs to be documented in [1].
>
> It is in a later patch.

Very well

>
> >   But
> > before moving forward with that I'm wondering if this is the way to go.  Would
> > it be better to consolidate type, ctxtype, context and exlevel_s_ns in a single
> > entry, say addr_acc_type?  We'd shed a fair amount of code and make it more
> > simple for users to configure.
> >
>
> It will mean the user has less writes to do - but is it really simpler
> to understand?
>
> At present each feature takes the input value and interprets / shifts
> it to set the relevant bits in the address comparator control
> registers (context type being a string input rather than bit values).
>
> The alternative is to require the user to understand the bit values -
> which they may well do if they are referring to the ETM docs to
> program in this detail, and provide a correct input value for their
> requirements.
>
> My addition adds to the API, rather than changes it, but if you prefer
> we could go with an update to a single feature to control this value
> in the comparator control registers.

I am definitely not strongly opinionated on this - it is an idea I
wanted to float by you.  Since you don't seem to have a strong
position either we can just carry on with this patch and revisit in
the future if need be.

>
> Mike
>
> >
> > [1]. Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
> >
> > > --
> > > 2.17.1
> > >
>
>
>
> --
> Mike Leach
> Principal Engineer, ARM Ltd.
> Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
