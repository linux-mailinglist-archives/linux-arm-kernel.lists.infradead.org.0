Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B28A015E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 14:11:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/oRJozFQXuGHtb5cpFQsM6zhEy8v7QSObtB4VV14Smw=; b=XbR1YYfciPZQuc
	wcthIWfgJrTQ+jkKmgAWqDtRh2zO/N0iOC+kGo2iBGf43nXBRuCFXlsICsin96I1PT7IeN1cubCuL
	6BYjt0RzUnEHFMzcH8p/Csip6AQhOD9hP3veZ9ZDCccCexyT/G9XN5sySOxmBkr9TfvxKe2zuUZWp
	rQ3iFHqU7HOlmbmsvmcmNn3uONkjlq1/pMrMG/P0nJwEyDmrKFMlT0r84xBxrRdFdKSTwYbTEjqiV
	xJ29J4DUzitl579e8v4KWZZdqKBwYpmMLA9gzeXkbaHclSNMxJTB8p6bGk7pgtna+Q8BjuKKokHKE
	N2E+0okprR20DiMArYzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2wnd-0005zU-8H; Wed, 28 Aug 2019 12:11:41 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2wn9-0005tK-9J
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 12:11:13 +0000
Received: by mail-qk1-x742.google.com with SMTP id d23so2151542qko.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 05:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ffiL5a7whRuz8warYvykMMFhxIcHS70D6usDR2s/5ts=;
 b=RilfHf7t8QMdo85b9L86oSvV1hF+t25i3a8Ss41HvJjFKnEQeZsdGb3zyNKudfWDiy
 pmnkvBoms2RuNQQh0rVocWD1usQVglPoWZAz/RYHsYyf3YzN+6ierptf6I0PHyXl/+q7
 T1QmrszfGnqbHV4cXENPWHeeWHpnCpUdjQRA1qXJmwMbFBdB//W8MU68S0/jlg292LDm
 e25bFtFyD4GbY0EL6p1Jmu7z858JN1HnobEvKaQawZC/HRQJo6P5eOCuWa3Y8SN5Ezmw
 Tw1CIJHG4/bPJGRlok17pHtMEIWR3eh1PHAmSVdXcSma56ycZIbimXuvLMhtNX0xRFvS
 t03w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ffiL5a7whRuz8warYvykMMFhxIcHS70D6usDR2s/5ts=;
 b=PnRllefF1tZNZNW1zFGADNw5tlJarmvF1+NHM5ae/m7t1oD64nIPyuA+khp4ewMq+m
 gtxTGFMCvG4a/Ag0KSBYQtnYZ8JCrmiJzYoS5vqVtuc1MIL51gukL7EtrHqN4pzYE9bz
 FpI+MEBmjtfkFr0hQXjRVfhqRtPe+hPwYTNZpVAjB6I+Yvf8tXUk9EeZsXpne+PIr8AL
 VssnXNbpBB/pDQmUNaquZO8Qi4bqUkqeyYonG9oYQ93VG6DUo4x0U64EbTacykaEWZO9
 3PjZBTtvNTU46IAnrzXOYGfbHBO5EOSxLGO2klq9nRD+Rd5KPEwBB8XiwSzG87A4gaWy
 P6SA==
X-Gm-Message-State: APjAAAWlkS6btBDrG7OOnlYBSoqZiN9c0gjz/BraGTJK8cZyDxalSF0H
 eYKPF0foanu5OB9Y8mFJuPFEweynxXYaX2x6/ya9TA==
X-Google-Smtp-Source: APXvYqy6goH/v1nichpYtzTn7mk48xGn/v6SYNHD53C3YulT7VHRcTKd+zHkzn0d4gI5xdouJmz3CHUQU9cUckAK4sY=
X-Received: by 2002:a37:4d90:: with SMTP id a138mr3487970qkb.128.1566994269271; 
 Wed, 28 Aug 2019 05:11:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190819205720.24457-1-mike.leach@linaro.org>
 <20190819205720.24457-4-mike.leach@linaro.org>
 <20190828025313.GC26133@leoy-ThinkPad-X240s>
In-Reply-To: <20190828025313.GC26133@leoy-ThinkPad-X240s>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 28 Aug 2019 13:10:58 +0100
Message-ID: <CAJ9a7ViFinOHBTSf0W6G0B-nd6HYfjr3aNqHaAqDEbsjLkO+Jg@mail.gmail.com>
Subject: Re: [PATCH 3/8] coresight: etm4x: Add missing API to set EL match on
 address filters
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_051111_349350_AE534B79 
X-CRM114-Status: GOOD (  20.92  )
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
 Mathieu Poirier <mathieu.poirier@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leo,

On Wed, 28 Aug 2019 at 03:53, Leo Yan <leo.yan@linaro.org> wrote:
>
> On Mon, Aug 19, 2019 at 09:57:15PM +0100, Mike Leach wrote:
> > TRCACATRn registers have match bits for secure and non-secure exception
> > levels which are not accessible by the sysfs API.
> > This adds a new sysfs parameter to enable this - addr_exlevel_s_ns.
> >
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > ---
> >  .../coresight/coresight-etm4x-sysfs.c         | 39 +++++++++++++++++++
> >  1 file changed, 39 insertions(+)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> > index fa1d6a938f6c..7eab5d7d0b62 100644
> > --- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> > +++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> > @@ -1233,6 +1233,44 @@ static ssize_t addr_context_store(struct device *dev,
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
> > +     if (kstrtoul(buf, 16, &val))
> > +             return -EINVAL;
> > +
> > +     spin_lock(&drvdata->spinlock);
> > +     idx = config->addr_idx;
> > +     /* clear Exlevel_ns & Exlevel_s bits[14:12, 11:8] */
> > +     config->addr_acc[idx] &= ~(GENMASK(14, 8));
> > +     config->addr_acc[idx] |= (val << 8);
>
> I think it needs to check if 'val' is out of bound, which only can have
> value which is less than 7 bits (finally set for bit 8 to bit 14).
>

Agreed.

> Just curious, if the CPU runs in non-secure mode (e.g. NS-EL1 in
> kernel mode), does it have permission to access EXLEVEL_S field?  I
> don't see the spec give info for this.
>

This field can be accessed in NS mode - the permissions for tracing
secure state are given in the authentication signals - this register
only controls matching in particular states.
If there is no permission to trace secure state, then the EXLEVEL_S
field will have no effect as trace will automatically be disabled
should the PE transit to secure state.

Thanks

Mike

> Thanks,
> Leo Yan
>
> > +     spin_unlock(&drvdata->spinlock);
> > +     return size;
> > +}
> > +static DEVICE_ATTR_RW(addr_exlevel_s_ns);
> > +
> >  static ssize_t seq_idx_show(struct device *dev,
> >                           struct device_attribute *attr,
> >                           char *buf)
> > @@ -2038,6 +2076,7 @@ static struct attribute *coresight_etmv4_attrs[] = {
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
> > _______________________________________________
> > CoreSight mailing list
> > CoreSight@lists.linaro.org
> > https://lists.linaro.org/mailman/listinfo/coresight



-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
