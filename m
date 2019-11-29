Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8BD10D5D2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 13:47:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KN9zcM5Quf+cTL7lQJHID9FWQrEseTVew9veCnhurMQ=; b=TENbE4Q+/tkjor
	wE8G+1nWYmHH3PByrugdM0vcRZ75bCJKf5bZVGMcKebrshKF7UZkR4x/hsyAtc3Lkn9w3Zpq6Q0aD
	2tYtAFeWFwrQOzkSwRhpw6obHLJXk4iCw6SLcqO2PswupzeK+kyjdrmPjZlakngbqomBt0URiN99V
	wkjgk46VlG2zQzf/2KmjF73AhDxhPOIYuoSI0t1PLRUudlGOIMaxi8dBBiQ2O8IKmDkzOGSuiMlv+
	MkNQWcEStVXpCB6cGf6e1hsGGE5NFNu2sdwQCqJERE4C057i/qSngLr7ePal9hqsuvuslYasfQcup
	ONwfEbUXVuaPct9qrN4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iafgU-00054r-Du; Fri, 29 Nov 2019 12:47:42 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iafgL-00054T-D9
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 12:47:35 +0000
Received: by mail-qk1-x742.google.com with SMTP id d124so10209083qke.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 Nov 2019 04:47:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HA9o/u53YjrVdA02BiAhrhaWuLmdYlt8zQVP4Dznw6U=;
 b=l5uWqe7bpXn2UmXrf5rJxfPA/epAIbrtB3jup0WIiu5m8pWoU00aEs1tua2o2EoA8W
 +8Yw+nK4rUZFqZEuAwGmwZC55hEP898tYISz7JX6QLf/hlKh11pwKjIXI35npPPAlj4H
 Uk2Itv6CXUl6L6unhF9qRb3phRktfJIStsROI9PlzzoMhgaKR987uAch/1leF22Mvcso
 wbkcSGEtMwT6sYVIVQJeNmyZdvNUOynl88P92VcAFVYVY3ci6e5+TjDeuI51N7/Ts0TT
 cUY2iNqTDxjjIjYvvju8CsLLbJHhlJp+9LAtmGT/fLGYmiCNYlgHDiO+P0Fxseh+LseN
 T3sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HA9o/u53YjrVdA02BiAhrhaWuLmdYlt8zQVP4Dznw6U=;
 b=MK3wCr7pTFrcDdefbvZsep925dN0GV64zF/Nrv2HMtovH0h9iCvZ74h/kB9fYa+70W
 eaajZl7NDNv2rybVaA9RnIbrVsVnMt3jAA3vwOhMWs9P1lNc2By+p/boDNSkfzNvjOMJ
 5lkESpc/XFduL3UPGDVrXVGyuBU4D4Q4WJepv349J2FCMcGPIY4PjZky7Nr1/l/LgZth
 sX0ap685dObybLBBaL+aq9H9Fg/dNv8la5vbJuq4Z5VX9P0/1UV+ZNDUufTBemnr6Vh/
 4iATQ/6YI9fT1fCeeJHkahim1d8OmOJx+4MmyscKo6nkteW7mNMcGR5z4w4gpBrCz8+d
 RfXw==
X-Gm-Message-State: APjAAAXJOTahLECAOAg3zO0ybAvpBDjS5czfu0OPEHV3qYP0xfC0S1RQ
 HIf3AcWm+ANyNqnneQ3vMa977e8UsnwnxXWOj3w+Vw==
X-Google-Smtp-Source: APXvYqzmTmr6QZQFIUEGRuuXj5PXEOxF6lLfDqA6zEH/L5cP6mOIC+LfT9NMK8B0Ha75O23mZDfOLZ+HCsRM7UEbVTU=
X-Received: by 2002:a37:62d2:: with SMTP id
 w201mr15360336qkb.445.1575031651558; 
 Fri, 29 Nov 2019 04:47:31 -0800 (PST)
MIME-Version: 1.0
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-4-mike.leach@linaro.org>
 <df1f3912-4096-bc96-e65a-5db1593ad8f4@arm.com>
In-Reply-To: <df1f3912-4096-bc96-e65a-5db1593ad8f4@arm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Fri, 29 Nov 2019 12:47:20 +0000
Message-ID: <CAJ9a7VhV=5okV1oCW8sAUZVsUzgDWnDNgP-eWejquGx+M9Xv2w@mail.gmail.com>
Subject: Re: [PATCH v5 03/14] coresight: cti: Add sysfs access to program
 function regs
To: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_044733_449663_CB041629 
X-CRM114-Status: GOOD (  27.80  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Coresight ML <coresight@lists.linaro.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,


On Wed, 27 Nov 2019 at 18:26, Suzuki Kuruppassery Poulose
<suzuki.poulose@arm.com> wrote:
>
> On 19/11/2019 23:19, Mike Leach wrote:
> > Adds in sysfs programming support for the CTI function register sets.
> > Allows direct manipulation of channel / trigger association registers.
> >
> > Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > ---
> >   .../hwtracing/coresight/coresight-cti-sysfs.c | 362 ++++++++++++++++++
> >   drivers/hwtracing/coresight/coresight-cti.c   |  19 +
> >   drivers/hwtracing/coresight/coresight-cti.h   |   5 +
> >   3 files changed, 386 insertions(+)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> > index 507f8eb487fe..02d3ee0c1278 100644
> > --- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> > +++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> > @@ -109,6 +109,362 @@ static struct attribute *coresight_cti_mgmt_attrs[] = {
> >       NULL,
> >   };
> >
> > +/* CTI low level programming registers */
> > +
> > +/*
> > + * Show a simple 32 bit value if enabled and powered.
> > + * If inaccessible & pcached_val not NULL then show cached value.
> > + */
>
> Also I am not sure if it makes sense to mention that the value is cached.
>
> > +static ssize_t cti_reg32_show(struct device *dev, char *buf,
> > +                           u32 *pcached_val, int reg_offset)
> > +{
> > +     u32 val = 0;
>    +    char *state = "";
>
> > +     struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
> > +     struct cti_config *config = &drvdata->config;
> > +
> > +     spin_lock(&drvdata->spinlock);
> > +     if ((reg_offset >= 0) && CTI_PWR_ENA(config)) {
>
> minor nit: Personally I don't like the naming here. This could simply
> be: cti_accessible(config) , may be defined as a static inline function
> instead of a macro:
>
> static inline bool cti_accessible(struct cti_drvdata *drvdata)
> {
>         struct cti_config *cfg = &drvdata->config;
>
>         return cfg->hw_powered && cfg->hw_enabled;
> }
>
>

Since this is a generic access function used throughout the file - the
cached pointer is an indicator used by the callee that there is a
value available if the CTI is unpowered  / disabled - so the function
can show an appropriate value which will be taken from the config
structure.

So I don't think it is relevant to show that a "cached" value is being
used to show the user. If you look at similar functions in the ETM
drivers for example, quite often a show function simple shows that
stored value from a config structure without ever looking at the
register in the device.

As to naming - the name is chosen to represent a specific state - both
powered and enabled. The sysfs interface is accessible in any state  -
powered / unpowered  , enabled /disabled - so I am being specific.
Unlike the ETM, this hardware can have registers programmed while
enabled - and for some such as apppulse this is the only time it makes
sense to use them.

I don't mind either way between macro / inline function - though it
still has to be declared in the header as it is used in multiple .c
files.
I'd be inclined to call it cti_active() if preferred to cti_pwr_ena -
active implies that the CTI is in operation.

Thanks

Mike


> > +             CS_UNLOCK(drvdata->base);
> > +             val = readl_relaxed(drvdata->base + reg_offset);
> > +             if (pcached_val)
> > +                     *pcached_val = val;
> > +             CS_LOCK(drvdata->base);
> > +     } else if (pcached_val) {
> > +             val = *pcached_val;
>
>    +            state = " (cached)";
> > +     }
> > +     spin_unlock(&drvdata->spinlock);
> > +     return scnprintf(buf, PAGE_SIZE, "%#x\n", val);
>    +    return scnprintf(buf, PAGE_SIZE, "%#x%s\n", val, state);
>
> > +}
> > +
> > +/*
> > + * Store a simple 32 bit value.
> > + * If pcached_val not NULL, then copy to here too,
> > + * if reg_offset >= 0 then write through if enabled.
> > + */
> > +static ssize_t cti_reg32_store(struct device *dev, const char *buf,
> > +                            size_t size, u32 *pcached_val, int reg_offset)
>
>
> > +static ssize_t appclear_store(struct device *dev,
> > +                           struct device_attribute *attr,
> > +                           const char *buf, size_t size)
> > +{
> > +     unsigned long val;
> > +     struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
> > +     struct cti_config *config = &drvdata->config;
> > +
> > +     if (kstrtoul(buf, 0, &val))
> > +             return -EINVAL;
> > +
> > +     spin_lock(&drvdata->spinlock);
> > +
> > +     /* a 1'b1 in appclr clears down the same bit in appset*/
>
> nit: a 0b1 ?
>
Syntax is <bitwidth>'<radix><value> - a habit picked up from verilog.

> > +     config->ctiappset &= ~val;
> > +
> > +     /* write through if enabled */
> > +     if (CTI_PWR_ENA(config))
> > +             cti_write_single_reg(drvdata, CTIAPPCLEAR, val);
> > +     spin_unlock(&drvdata->spinlock);
> > +     return size;
> > +}
> > +static DEVICE_ATTR_WO(appclear);
> > +
>
> Otherwise looks good to me.
>
> Suzuki



-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
