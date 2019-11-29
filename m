Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78FA910D56B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 13:06:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nuiSsm8JMDBwKV2ru5gfWRJHKbKfG4BOhhu5wiEuPVc=; b=r/3PKNoov5b53V
	5HnJ76mu7qTA3BqLTT8ZWibZGndBuM/mUlcVhROcrHIBNDVUzgbodSs+KXSCjBr4B0tL/P2auWL58
	HThV9XVPcVYZtQ1JWhRwUg2DvGg2syo/+d+a1AU0n4Gh6r6OpBbaCua6vM2s476owfSJqPdN1pje/
	0KN1Dt18jmT59POGWJkLslubE+DjYcqV7z0fRIxhc0fQuZbg9zYxY2ngM74HmWAetOaS13WJpdkw7
	UFkMec219tDk0Q1cJJVKTOzylcUCbPqhlZxntsr4Dov8Lr6XjQg/nSsVOfzaBic0pWJE08SFCnjWB
	3ydlrBPRG2tJJRSfxBEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaf2c-0007wp-7M; Fri, 29 Nov 2019 12:06:30 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaf2R-0007w7-71
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 12:06:21 +0000
Received: by mail-qk1-x741.google.com with SMTP id a137so23490505qkc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 Nov 2019 04:06:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sRsq1H79H3SLbpinKw5zokLUT+GaLK3RwOVX6nt73FY=;
 b=OTTULPKiIQOT+vyZGHWZPmxqkih3Hh6RRORnIy6dpyCx2NoPUYCznp7t7uXcWvJfFB
 2xjnAJn955SfGxBDm4idJ2fUnOQ3/nbVCzdJl3nGl8VLihxxM1d+85B9uYx7QCwr6gOO
 uLxdP2hkHpQENBpqPTrgkhsC8zdf7cBhzUeg6Qbf2Qg+xfjO+uALwWv7Uk/4FjHUN0Ok
 aIsJ1cVO26NpNxpxZT9HWUA/tfSrzApnwXRRbolfVG+wzUQhvSkRqLBrI/aVQeSYh8TL
 oZmjnqC1gKI2mOlwSnTrsCXD+fKRT5RaCLS3y6sroU/J4FwA9apiFwht11ruyRlOhZhk
 Mf0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sRsq1H79H3SLbpinKw5zokLUT+GaLK3RwOVX6nt73FY=;
 b=UZqN7XR0KINEVLhyjLpJS41OGZZf242NK4hRPU9W9SVb+FVQiwXC7TXcR2PipymnVi
 YaHTB1O15Q662zMwyamtbX8ajCcOhfvfy8AKb66SzGSyZyI08E64BcneJTf74kkGPj7G
 OXBQCQDaXE1rJ39VUsSiUJVQbFvoaRYCW/Hx163tudHWTca2AW7snAzmM7p7bUAkFbma
 4pD5QHCud7y3yetRnTl4irpwBXasOYrvnwCXLwEonxbClT3AUSwlsWe2OgRK4FUGGLSB
 luVPWAiNKjC/j27zoeOxPD3kG2qhydwMGqAb8LmNx3N6Hx9iGR7LDPgC0Jo3+VjvOD3E
 RS1Q==
X-Gm-Message-State: APjAAAXlptv4365rY+ipjIrYZn+qfIi52nT9BJjYl7SMAPuZXm+uTotq
 CzxHLnSmpNdtFhtXmV/oN0M7vTl1FHWpd1sKt6/WLA==
X-Google-Smtp-Source: APXvYqxYJ/XTnVV2D0O5LIR8DcwEy685N4d9CsfVW42yMIEOsMvK04m5AOEIGODr+J13K/33Putoa+yrlFztG507vlo=
X-Received: by 2002:a37:4ccb:: with SMTP id
 z194mr15433686qka.128.1575029178058; 
 Fri, 29 Nov 2019 04:06:18 -0800 (PST)
MIME-Version: 1.0
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-2-mike.leach@linaro.org>
 <fce270a6-03a7-f620-9ebf-5117c5dd7cc6@arm.com>
In-Reply-To: <fce270a6-03a7-f620-9ebf-5117c5dd7cc6@arm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Fri, 29 Nov 2019 12:06:06 +0000
Message-ID: <CAJ9a7ViVpUq7OCR2=QKDBX=YXpuKdm8hGGBkhjyttr3+L=v5qQ@mail.gmail.com>
Subject: Re: [PATCH v5 01/14] coresight: cti: Initial CoreSight CTI Driver
To: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_040619_259252_89A766AB 
X-CRM114-Status: GOOD (  22.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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

Will be re-spinning due to later patches - so will fixup as requested

Thanks

Mike

On Mon, 25 Nov 2019 at 19:03, Suzuki Kuruppassery Poulose
<suzuki.poulose@arm.com> wrote:
>
> On 19/11/2019 23:18, Mike Leach wrote:
> > This introduces a baseline CTI driver and associated configuration files.
> >
> > Uses the platform agnostic naming standard for CoreSight devices, along
> > with a generic platform probing method that currently supports device
> > tree descriptions, but allows for the ACPI bindings to be added once these
> > have been defined for the CTI devices.
> >
> > Driver will probe for the device on the AMBA bus, and load the CTI driver
> > on CoreSight ID match to CTI IDs in tables.
> >
> > Initial sysfs support for enable / disable provided.
> >
> > Default CTI interconnection data is generated based on hardware
> > register signal counts, with no additional connection information.
> >
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
>
> Looks good to me.  Some very minor nits, feel free to ignore if you are
> not respinning the series.
>
> > +/*
> > + * Look at the HW DEVID register for some of the HW settings.
> > + * DEVID[15:8] - max number of in / out triggers.
> > + */
> > +#define CTI_DEVID_MAXTRIGS(devid_val) (int)((devid_val & 0xFF00) >> 8)
>
> BMVAL(devid_val, 15, 8)
>
> > +
> > +/* DEVID[19:16] - number of CTM channels */
> > +#define CTI_DEVID_CTMCHANNELS(devid_val) (int)((devid_val & 0xF0000) >> 16)
>
> BMVAL(devid_val, 19, 16)
>
> > +
> > +static void cti_set_default_config(struct device *dev,
> > +                                struct cti_drvdata *drvdata)
> > +{
> > +     struct cti_config *config = &drvdata->config;
> > +     u32 devid;
> > +
> > +     devid = readl_relaxed(drvdata->base + CORESIGHT_DEVID);
> > +     config->nr_trig_max = CTI_DEVID_MAXTRIGS(devid);
> > +
> > +     /*
> > +      * no current hardware should exceed this, but protect the driver
> > +      * in case of fault / out of spec hw
> > +      */
> > +     if (config->nr_trig_max > CTIINOUTEN_MAX) {
> > +             dev_warn_once(dev,
> > +                     "Limiting HW MaxTrig value(%d) to driver max(%d)\n",
> > +                     config->nr_trig_max, CTIINOUTEN_MAX);
> > +             config->nr_trig_max = CTIINOUTEN_MAX;
> > +     }
> > +
> > +     config->nr_ctm_channels = CTI_DEVID_CTMCHANNELS(devid);
> > +
> > +     /* Most regs default to 0 as zalloc'ed except...*/
> > +     config->trig_filter_enable = true;
> > +     config->ctigate = GENMASK(config->nr_ctm_channels - 1, 0);
> > +     atomic_set(&config->enable_req_count, 0);
> > +}
> > +
> > +/*
> > + * Add a connection entry to the list of connections for this
> > + * CTI device.
> > + */
> > +int cti_add_connection_entry(struct device *dev, struct cti_drvdata *drvdata,
> > +                          struct cti_trig_con *tc,
> > +                          struct coresight_device *csdev,
> > +                          const char *assoc_dev_name)
> > +{
> > +     struct cti_device *cti_dev = &drvdata->ctidev;
> > +
> > +     tc->con_dev = csdev;
> > +     /*
> > +      * Prefer actual associated CS device dev name to supplied value -
> > +      * which is likely to be node name / other conn name.
> > +      */
> > +     if (csdev)
> > +             tc->con_dev_name = devm_kstrdup(dev,
> > +                                             dev_name(&csdev->dev),
> > +                                             GFP_KERNEL);
> > +     else if (assoc_dev_name != NULL)
> > +             tc->con_dev_name = devm_kstrdup(dev,
> > +                                             assoc_dev_name, GFP_KERNEL);
> > +     list_add_tail(&tc->node, &cti_dev->trig_cons);
> > +     cti_dev->nr_trig_con++;
> > +
> > +     /* add connection usage bit info to overall info */
> > +     drvdata->config.trig_in_use |= tc->con_in->used_mask;
> > +     drvdata->config.trig_out_use |= tc->con_out->used_mask;
>
> Do we need to make sure that they are exclusive ?
>
>   WARN_ON(drvdata->config.trig_in_use ^ ~(tc->con_in->used_mask));
>   WARN_ON(drvdata->config.trig_out_use ^ ~(tc->con_out->used_mask));
>
> > +/** cti ect operations **/
> > +int cti_enable(struct coresight_device *csdev)
> > +{
> > +     struct cti_drvdata *drvdata = csdev_to_cti_drvdata(csdev);
> > +
> > +     /* enable hardware with refcount */
>
> nit: left over comment from previous revision ?
>
> > +     return cti_enable_hw(drvdata);
> > +}
> > +
> > +int cti_disable(struct coresight_device *csdev)
> > +{
> > +     struct cti_drvdata *drvdata = csdev_to_cti_drvdata(csdev);
> > +
> > +     /* disable hardware with refcount */
>
> same here ?
>
> > +     return cti_disable_hw(drvdata);
> > +}
> > +
>
> > +
> > +static int cti_probe(struct amba_device *adev, const struct amba_id *id)
> > +{
> > +     int ret = 0;
> > +     void __iomem *base;
> > +     struct device *dev = &adev->dev;
> > +     struct cti_drvdata *drvdata = NULL;
> > +     struct coresight_desc cti_desc;
> > +     struct coresight_platform_data *pdata = NULL;
> > +     struct resource *res = &adev->res;
> > +
> > +     /* driver data*/
> > +     drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
> > +     if (!drvdata) {
> > +             ret = -ENOMEM;
> > +             dev_info(dev, "%s, mem err\n", __func__);
>
> dev_err() ? As they may have higher priority than "info" and will get
> displayed in the rare chance of them getting hit.
>
> > +             goto err_out;
> > +     }
> > +
> > +     /* Validity for the resource is already checked by the AMBA core */
> > +     base = devm_ioremap_resource(dev, res);
> > +     if (IS_ERR(base)) {
> > +             ret = PTR_ERR(base);
> > +             dev_info(dev, "%s, remap err\n", __func__);
>
> same here, dev_err()
>
> > +             goto err_out;
> > +     }
> > +     drvdata->base = base;
> > +
> > +     dev_set_drvdata(dev, drvdata);
> > +
> > +     /* default CTI device info  */
> > +     drvdata->ctidev.cpu = -1;
> > +     drvdata->ctidev.nr_trig_con = 0;
> > +     drvdata->ctidev.ctm_id = 0;
> > +     INIT_LIST_HEAD(&drvdata->ctidev.trig_cons);
> > +
> > +     spin_lock_init(&drvdata->spinlock);
> > +
> > +     /* initialise CTI driver config values */
> > +     cti_set_default_config(dev, drvdata);
> > +
> > +     /* Parse the .dts for connections and signals */
>
> minor nit: I would not mention about ".dts" here. The function name is
> implicit. You could actually remove that comment.
>
> As mentioned above, the comments are minor nits. So you may add
> with/without addressing them:
>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
>


-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
