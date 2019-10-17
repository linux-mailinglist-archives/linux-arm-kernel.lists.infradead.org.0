Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A63DB773
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 21:26:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ud10r7BkuUvYiNROx142YauqUpeHDRRylqFl3VhbzVk=; b=jCpWPvBBZcx5ps
	5CgUxANHMhYCGi+2KVUE0pA3SCoaXL+oYhn6Hip38w7cCiOy+EhpiIne8JQofAVIoL2nn34WFI6f4
	neV4YRqIWIE/yFYhfvgfrNJcxpLFKap5GsrkFs+E87lAofOuwP+mPN7CMLXOepNu/2cfBteiQ8+5A
	rk9AwDHYyE0oyLwCy+CoDWx8bLxoQfZFRRmWrC59o4eCYqmTigMx1NiT6rMHRjhtScm0bhsHrHFvz
	tk+ekHCF3r+KkDJl48BQg7ZteUybJ065J+gb8tAiBlW5MyRyRXZwYOetDamea/dJXSC/1cBkDGh8m
	1/wQtPsnDNyNcBHDNSFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLBPc-0000z1-BW; Thu, 17 Oct 2019 19:26:16 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLBPS-0000rb-RW
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 19:26:08 +0000
Received: by mail-io1-xd44.google.com with SMTP id q1so4505050ion.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 12:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Fags3H8qXAtbjD1auFiMSb1b2IbjWwWbPMcWqBZERaI=;
 b=u569V9s+dhCShH6dj27sogpkTegN9KyYACifmiU87o475C91cnoX4NN18v64I1Hb9/
 pUNe+sjj9kXhrefmWhsJ9SZKQFvvTv62uVra5rrexs5fp4gtGVZrmwz1xvKYf+Sz0m/4
 DOouxaRIJOHCFGMTo2jS23R57IMT3LHhxea6Ne6DmnEVIA2Y6i+h7KOeRErw3q8JaSCE
 TSQ48d0T0WY7yKXgscJbwOHGfO4pOh663wOz232sHearcSSNiNvyvAi/jKJxHoICe+z9
 sRf4GVMq0i4X7oYK6uTbTB3Qzqw9H0qZuCtmUWInmlnPcznRu0pnvqwlR5GY8piQxqCp
 GV4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fags3H8qXAtbjD1auFiMSb1b2IbjWwWbPMcWqBZERaI=;
 b=PoLDfUd1o7fnsiYY6AILWIeRJgf1F9F9yWul3lEiI1jc6HSrUGkgnpogvcuQTafnN7
 yF+xSSZP9Rwca3auOVqRmZQF2o+aQubegCdTPmwJn0uSC7dEMVSFZoY1MUGM0vcdgUk3
 ouz/iYvrPMZwWO9moHkRE0g1Ikkh61pEecu0U8xxqf9eT3k7i55xggWeFu4qiYNhGSvZ
 0RdM0cbdvbk/4JGk1af4joVnA6k7Xs4jnSVeJ4l1fccnUiLj64EPOv0wBXz/08odAqBG
 wS7jjVdE/Aov5mbRR358VvdmlCXZgQvV53bq6Lm3P0zufdMbXGiBQVVzTxtudVOQpUMQ
 7JZQ==
X-Gm-Message-State: APjAAAVzptUuyJzImaUWRCWc9c9U/RFZGofE3DowvdcMMfYNBHgbVMnO
 UBI6tOgbkTasOjf7579p6paiXZe8/sjZv4Oh7DZu2g==
X-Google-Smtp-Source: APXvYqzjK0L400i32dIEttvsop7YbCoXXqMdybXgVmbxFJVPJXC46bonyqTofFwl79KV66//rZehudtz5p9arLk59g0=
X-Received: by 2002:a05:6638:392:: with SMTP id
 y18mr2230970jap.98.1571340365705; 
 Thu, 17 Oct 2019 12:26:05 -0700 (PDT)
MIME-Version: 1.0
References: <20191015212004.24748-1-mike.leach@linaro.org>
 <20191015212004.24748-4-mike.leach@linaro.org>
 <20191017180035.GC17991@xps15>
In-Reply-To: <20191017180035.GC17991@xps15>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 17 Oct 2019 13:25:54 -0600
Message-ID: <CANLsYkyYVvDJRtBg7B=Zai_h=PDSQqtq-EWBH231X8HJ7NdHdw@mail.gmail.com>
Subject: Re: [PATCH v3 03/11] coresight: etm4x: Add missing API to set EL
 match on address filters
To: Mike Leach <mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_122606_966411_9EB6D0F4 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Jon Corbet <corbet@lwn.net>, Greg KH <gregkh@linuxfoundation.org>,
 Coresight ML <coresight@lists.linaro.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 17 Oct 2019 at 12:00, Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
>
> On Tue, Oct 15, 2019 at 10:19:56PM +0100, Mike Leach wrote:
> > TRCACATRn registers have match bits for secure and non-secure exception
> > levels which are not accessible by the sysfs API.
> > This adds a new sysfs parameter to enable this - addr_exlevel_s_ns.
> >
> > Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > ---
> >  .../coresight/coresight-etm4x-sysfs.c         | 42 +++++++++++++++++++
> >  1 file changed, 42 insertions(+)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> > index cc8156318018..45fa7743eea4 100644
> > --- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> > +++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> > @@ -1233,6 +1233,47 @@ static ssize_t addr_context_store(struct device *dev,
> >  }
> >  static DEVICE_ATTR_RW(addr_context);
> >
> > +static ssize_t addr_exlevel_s_ns_show(struct device *dev,
> > +                                   struct device_attribute *attr,
> > +                                   char *buf)
> > +{
> > +     u8 idx;
> > +     unsigned long val;
> > +     struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> > +     struct etmv4_config *config = &drvdata->config;
> > +
> > +     spin_lock(&drvdata->spinlock);
> > +     idx = config->addr_idx;
> > +     val = BMVAL(config->addr_acc[idx], 14, 8);
> > +     spin_unlock(&drvdata->spinlock);
> > +     return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
> > +}
> > +
> > +static ssize_t addr_exlevel_s_ns_store(struct device *dev,
> > +                                    struct device_attribute *attr,
> > +                                    const char *buf, size_t size)
> > +{
> > +     u8 idx;
> > +     unsigned long val;
> > +     struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> > +     struct etmv4_config *config = &drvdata->config;
> > +
> > +     if (kstrtoul(buf, 0, &val))
> > +             return -EINVAL;
> > +
> > +     if (val & ~((GENMASK(14, 8) >> 8))
>
> This patch isn't compiling for me.  A parenthesis is missing to close the if().

I will fix it because:

1) I've reviewed this patch several times already.
2) The solution is trivial.
3) I want to pickup patch 04/11 and there is a dependency with this one.

>
>
> > +             return -EINVAL;
> > +
> > +     spin_lock(&drvdata->spinlock);
> > +     idx = config->addr_idx;
> > +     /* clear Exlevel_ns & Exlevel_s bits[14:12, 11:8], bit[15] is res0 */
> > +     config->addr_acc[idx] &= ~(GENMASK(14, 8));
> > +     config->addr_acc[idx] |= (val << 8);
> > +     spin_unlock(&drvdata->spinlock);
> > +     return size;
> > +}
> > +static DEVICE_ATTR_RW(addr_exlevel_s_ns);
> > +
> >  static ssize_t seq_idx_show(struct device *dev,
> >                           struct device_attribute *attr,
> >                           char *buf)
> > @@ -2038,6 +2079,7 @@ static struct attribute *coresight_etmv4_attrs[] = {
> >       &dev_attr_addr_stop.attr,
> >       &dev_attr_addr_ctxtype.attr,
> >       &dev_attr_addr_context.attr,
> > +     &dev_attr_addr_exlevel_s_ns.attr,
> >       &dev_attr_seq_idx.attr,
> >       &dev_attr_seq_state.attr,
> >       &dev_attr_seq_event.attr,
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
