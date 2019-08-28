Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76750A0494
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 16:16:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yArwlDb05bvLAX7ZUTPyP56X7sIX0/xtFGAJrnXns9g=; b=liQFDorthMmHc0
	mTF5OTep9OapTp/AFPw315HhGJm1v1mxceYGRBKkgxiT0nHsLKogazp3FyPg06zskQHHpD8VvkBhs
	xIoCiOm3MxHTta0l0OLt7VHh2fKFz3AmSu7yaZVdncp9gM9Hg81kVcVhrtytc6upvZfgRrf8vCE1l
	WlBJ5QMkovd8todDDN9V4hIK0w9CZDQIbXdB6LqHPQvOD6EBg0xLk1COSJJxANASq2tbpHkzIMUzm
	a0dcTBV5TzoRVPcWepyC+acUZvvR3ve+b3ccclew/L3NpERwSvoo7we+9TMROBWhTAXmJr/Kk9mRF
	I4fflPCTJlIiw9y5xk2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ykT-0002Pb-0G; Wed, 28 Aug 2019 14:16:33 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2yk6-0002Ol-TL
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 14:16:12 +0000
Received: by mail-qk1-x742.google.com with SMTP id g17so2499999qkk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 07:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JAFt1swzD6UH/QPlFR7e6f/l0G2PJ+bbbQD4Ay8Fbog=;
 b=AT8ntwQcZukILfK/wBx1qq359Vx7n4vo0wW8J8Cf9xjF2GdjBsB3wNLcLTRQ+nHH+v
 8p7KIrn0jHQ3Y/cpCsMG53ht4O+6drpj1Zsla40YV5IxyTfibyqO/KqwWP3SKqCl+4cJ
 bbzgiEXaHW38O3HHeNZWtDbhUUY+tvEngYBtjRDwTPXluQOyFueWAaEWusjHNd59Giwq
 vFVI1FNI06ZCnf8De0Ey0iVacqrGMGh2gb3v3IV3XIVDnEWNBQU3LSiEg8v/iggSRi5M
 bZC3HK2sJ2V8y7bhqesyuKFMuQU7E7nCJr6GqiZ2bmy0gDwTb8bBmCnRdv2jGihpucTu
 wD9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JAFt1swzD6UH/QPlFR7e6f/l0G2PJ+bbbQD4Ay8Fbog=;
 b=jDoeYFNm6ugND7Z/PJHLC6Nk8FoXkwTBdSZCHL2K8E68i7AhkyNx5yC34W7XBYmeUS
 E9wAid3HhlOAJBOv1uNjdP0qAm52tSG5LWB65lDd8gc3my4Z+iXcvgZTAUt5SZ34Vct4
 HJGP91WXUhxUFGDB3QIfyxUY+quj3wSsCc6iCOzVlU5gvmvIhgoJ7SYO3rJFGkD22Ss+
 74blUijm0ThipPTEAr8nO23TnFhA8gGU61ACeVyxK/3quIezvi8My4GXR0qD7wcumBQj
 UlgWHDZADbW2Ya7IJ4NpDhxqRlfA3+8l1h1hW6uubhbqRxO+g6ZEfro0wKQFGBNP4IXt
 rxbg==
X-Gm-Message-State: APjAAAX3w/gcJMs9viLGcRc9nFWWzUv3AYR1Nkj1q8GK9GdKAVcv3tEQ
 qN1b5dChtPAP4Z/69Sc+cWhFCJ7TZuBzlgRFxkAULw==
X-Google-Smtp-Source: APXvYqz9WGIL4oYlMSNDpRcIekT0TGX7RTGbrDHHXrKmFSHUzEZ/vffakhNR2NuhxWz61dDGAz9vIio9yUWyz8ec1wo=
X-Received: by 2002:a37:4d16:: with SMTP id a22mr4183194qkb.482.1567001769888; 
 Wed, 28 Aug 2019 07:16:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190819205720.24457-1-mike.leach@linaro.org>
 <20190819205720.24457-8-mike.leach@linaro.org>
 <20190827222718.GC14958@xps15>
In-Reply-To: <20190827222718.GC14958@xps15>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 28 Aug 2019 15:15:59 +0100
Message-ID: <CAJ9a7VjnvOPhdX3+Vn_h8WRB4-zO7cMmBdSUuX79kyhTYFRGYQ@mail.gmail.com>
Subject: Re: [PATCH 7/8] coresight: etm4x: Add missing single-shot control API
 to sysfs
To: Mathieu Poirier <mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_071610_949024_11514912 
X-CRM114-Status: GOOD (  23.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Coresight ML <coresight@lists.linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, 27 Aug 2019 at 23:27, Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
>
> On Mon, Aug 19, 2019 at 09:57:19PM +0100, Mike Leach wrote:
> > An API to control single-shot comparator operation was missing from sysfs.
> > This adds the parameters to sysfs to allow programming of this feature.
> >
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > ---
> >  .../coresight/coresight-etm4x-sysfs.c         | 122 ++++++++++++++++++
> >  drivers/hwtracing/coresight/coresight-etm4x.c |  26 +++-
> >  drivers/hwtracing/coresight/coresight-etm4x.h |   3 +
> >  3 files changed, 150 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> > index 483976074779..7c019dda1236 100644
> > --- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> > +++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> > @@ -239,6 +239,7 @@ static ssize_t reset_store(struct device *dev,
> >       for (i = 0; i < drvdata->nr_resource; i++)
> >               config->res_ctrl[i] = 0x0;
> >
> > +     config->ss_idx = 0x0;
> >       for (i = 0; i < drvdata->nr_ss_cmp; i++) {
> >               config->ss_ctrl[i] = 0x0;
> >               config->ss_pe_cmp[i] = 0x0;
> > @@ -1713,6 +1714,123 @@ static ssize_t res_ctrl_store(struct device *dev,
> >  }
> >  static DEVICE_ATTR_RW(res_ctrl);
> >
> > +static ssize_t sshot_idx_show(struct device *dev,
> > +                           struct device_attribute *attr, char *buf)
> > +{
> > +     unsigned long val;
> > +     struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> > +     struct etmv4_config *config = &drvdata->config;
> > +
> > +     val = config->ss_idx;
> > +     return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
> > +}
> > +
> > +static ssize_t sshot_idx_store(struct device *dev,
> > +                            struct device_attribute *attr,
> > +                            const char *buf, size_t size)
> > +{
> > +     unsigned long val;
> > +     struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> > +     struct etmv4_config *config = &drvdata->config;
> > +
> > +     if (kstrtoul(buf, 16, &val))
> > +             return -EINVAL;
> > +     if (val >= drvdata->nr_ss_cmp)
> > +             return -EINVAL;
> > +
> > +     spin_lock(&drvdata->spinlock);
> > +     config->ss_idx = val;
> > +     spin_unlock(&drvdata->spinlock);
> > +     return size;
> > +}
> > +static DEVICE_ATTR_RW(sshot_idx);
> > +
> > +static ssize_t sshot_ctrl_show(struct device *dev,
> > +                            struct device_attribute *attr,
> > +                            char *buf)
> > +{
> > +     unsigned long val;
> > +     struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> > +     struct etmv4_config *config = &drvdata->config;
> > +
> > +     spin_lock(&drvdata->spinlock);
> > +     val = config->ss_ctrl[config->ss_idx];
> > +     spin_unlock(&drvdata->spinlock);
> > +     return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
> > +}
> > +
> > +static ssize_t sshot_ctrl_store(struct device *dev,
> > +                             struct device_attribute *attr,
> > +                             const char *buf, size_t size)
> > +{
> > +     u8 idx;
> > +     unsigned long val;
> > +     struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> > +     struct etmv4_config *config = &drvdata->config;
> > +
> > +     if (kstrtoul(buf, 16, &val))
> > +             return -EINVAL;
> > +
> > +     spin_lock(&drvdata->spinlock);
> > +     idx = config->ss_idx;
> > +     config->ss_ctrl[idx] = val & GENMASK(24, 0);
> > +     /* must clear bit 31 in related status register on programming */
> > +     config->ss_status[idx] &= ~BIT(31);
> > +     spin_unlock(&drvdata->spinlock);
> > +     return size;
> > +}
> > +static DEVICE_ATTR_RW(sshot_ctrl);
> > +
> > +static ssize_t sshot_status_show(struct device *dev,
> > +                              struct device_attribute *attr, char *buf)
> > +{
> > +     unsigned long val;
> > +     struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> > +     struct etmv4_config *config = &drvdata->config;
> > +
> > +     spin_lock(&drvdata->spinlock);
> > +     val = config->ss_status[config->ss_idx];
> > +     spin_unlock(&drvdata->spinlock);
> > +     return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
> > +}
> > +static DEVICE_ATTR_RO(sshot_status);
> > +
> > +static ssize_t sshot_pe_ctrl_show(struct device *dev,
> > +                               struct device_attribute *attr,
> > +                               char *buf)
> > +{
> > +     unsigned long val;
> > +     struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> > +     struct etmv4_config *config = &drvdata->config;
> > +
> > +     spin_lock(&drvdata->spinlock);
> > +     val = config->ss_pe_cmp[config->ss_idx];
> > +     spin_unlock(&drvdata->spinlock);
> > +     return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
> > +}
> > +
> > +static ssize_t sshot_pe_ctrl_store(struct device *dev,
> > +                                struct device_attribute *attr,
> > +                                const char *buf, size_t size)
> > +{
> > +     u8 idx;
> > +     unsigned long val;
> > +     struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> > +     struct etmv4_config *config = &drvdata->config;
> > +
> > +     if (kstrtoul(buf, 16, &val))
> > +             return -EINVAL;
> > +
> > +     spin_lock(&drvdata->spinlock);
> > +     idx = config->ss_idx;
> > +     config->ss_ctrl[idx] = val & GENMASK(7, 0);
>
>         config->ss_pe_cmp[idx] = val & GENMASK(7, 0);
>

Good spot, Thanks

Mike


> > +     /* must clear bit 31 in related status register on programming */
> > +     config->ss_status[idx] &= ~BIT(31);
> > +     spin_unlock(&drvdata->spinlock);
> > +     return size;
> > +}
> > +static DEVICE_ATTR_RW(sshot_pe_ctrl);
> > +
> >  static ssize_t ctxid_idx_show(struct device *dev,
> >                             struct device_attribute *attr,
> >                             char *buf)
> > @@ -2169,6 +2287,10 @@ static struct attribute *coresight_etmv4_attrs[] = {
> >       &dev_attr_addr_exlevel_s_ns.attr,
> >       &dev_attr_addr_cmp_view.attr,
> >       &dev_attr_vinst_pe_cmp_start_stop.attr,
> > +     &dev_attr_sshot_idx.attr,
> > +     &dev_attr_sshot_ctrl.attr,
> > +     &dev_attr_sshot_pe_ctrl.attr,
> > +     &dev_attr_sshot_status.attr,
> >       &dev_attr_seq_idx.attr,
> >       &dev_attr_seq_state.attr,
> >       &dev_attr_seq_event.attr,
> > diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> > index d8b078d0cc7f..fb7083218410 100644
> > --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> > +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> > @@ -149,6 +149,9 @@ static int etm4_enable_hw(struct etmv4_drvdata *drvdata)
> >                              drvdata->base + TRCRSCTLRn(i));
> >
> >       for (i = 0; i < drvdata->nr_ss_cmp; i++) {
> > +             /* always clear status bit on restart if using single-shot */
> > +             if (config->ss_ctrl[i] || config->ss_pe_cmp[i])
> > +                     config->ss_status[i] &= ~BIT(31);
> >               writel_relaxed(config->ss_ctrl[i],
> >                              drvdata->base + TRCSSCCRn(i));
> >               writel_relaxed(config->ss_status[i],
> > @@ -448,6 +451,9 @@ static void etm4_disable_hw(void *info)
> >  {
> >       u32 control;
> >       struct etmv4_drvdata *drvdata = info;
> > +     struct etmv4_config *config = &drvdata->config;
> > +     struct device *etm_dev = &drvdata->csdev->dev;
> > +     int i;
> >
> >       CS_UNLOCK(drvdata->base);
> >
> > @@ -470,6 +476,18 @@ static void etm4_disable_hw(void *info)
> >       isb();
> >       writel_relaxed(control, drvdata->base + TRCPRGCTLR);
> >
> > +     /* wait for TRCSTATR.PMSTABLE to go to '1' */
> > +     if (coresight_timeout(drvdata->base, TRCSTATR,
> > +                           TRCSTATR_PMSTABLE_BIT, 1))
> > +             dev_err(etm_dev,
> > +                     "timeout while waiting for PM stable Trace Status\n");
> > +
> > +     /* read the status of the single shot comparators */
> > +     for (i = 0; i < drvdata->nr_ss_cmp; i++) {
> > +             config->ss_status[i] =
> > +                     readl_relaxed(drvdata->base + TRCSSCSRn(i));
> > +     }
> > +
> >       coresight_disclaim_device_unlocked(drvdata->base);
> >
> >       CS_LOCK(drvdata->base);
> > @@ -576,6 +594,7 @@ static void etm4_init_arch_data(void *info)
> >       u32 etmidr4;
> >       u32 etmidr5;
> >       struct etmv4_drvdata *drvdata = info;
> > +     int i;
> >
> >       /* Make sure all registers are accessible */
> >       etm4_os_unlock(drvdata);
> > @@ -699,9 +718,14 @@ static void etm4_init_arch_data(void *info)
> >       drvdata->nr_resource = BMVAL(etmidr4, 16, 19) + 1;
> >       /*
> >        * NUMSSCC, bits[23:20] the number of single-shot
> > -      * comparator control for tracing
> > +      * comparator control for tracing. Read any status regs as these
> > +      * also contain RO capability data.
> >        */
> >       drvdata->nr_ss_cmp = BMVAL(etmidr4, 20, 23);
> > +     for (i = 0; i < drvdata->nr_ss_cmp; i++) {
> > +             drvdata->config.ss_status[i] =
> > +                     readl_relaxed(drvdata->base + TRCSSCSRn(i));
> > +     }
> >       /* NUMCIDC, bits[27:24] number of Context ID comparators for tracing */
> >       drvdata->numcidc = BMVAL(etmidr4, 24, 27);
> >       /* NUMVMIDC, bits[31:28] number of VMID comparators for tracing */
> > diff --git a/drivers/hwtracing/coresight/coresight-etm4x.h b/drivers/hwtracing/coresight/coresight-etm4x.h
> > index 60bc2fb5159b..be8b32ea1654 100644
> > --- a/drivers/hwtracing/coresight/coresight-etm4x.h
> > +++ b/drivers/hwtracing/coresight/coresight-etm4x.h
> > @@ -175,6 +175,7 @@
> >                                        ETM_MODE_EXCL_USER)
> >
> >  #define TRCSTATR_IDLE_BIT            0
> > +#define TRCSTATR_PMSTABLE_BIT                1
> >  #define ETM_DEFAULT_ADDR_COMP                0
> >
> >  /* PowerDown Control Register bits */
> > @@ -226,6 +227,7 @@
> >   * @cntr_val:        Sets or returns the value for a counter.
> >   * @res_idx: Resource index selector.
> >   * @res_ctrl:        Controls the selection of the resources in the trace unit.
> > + * @ss_idx:  Single-shot index selector.
> >   * @ss_ctrl: Controls the corresponding single-shot comparator resource.
> >   * @ss_status:       The status of the corresponding single-shot comparator.
> >   * @ss_pe_cmp:       Selects the PE comparator inputs for Single-shot control.
> > @@ -269,6 +271,7 @@ struct etmv4_config {
> >       u32                             cntr_val[ETMv4_MAX_CNTR];
> >       u8                              res_idx;
> >       u32                             res_ctrl[ETM_MAX_RES_SEL];
> > +     u8                              ss_idx;
> >       u32                             ss_ctrl[ETM_MAX_SS_CMP];
> >       u32                             ss_status[ETM_MAX_SS_CMP];
> >       u32                             ss_pe_cmp[ETM_MAX_SS_CMP];
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
