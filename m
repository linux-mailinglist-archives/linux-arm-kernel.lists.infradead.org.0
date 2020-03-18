Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A75218A231
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 19:16:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ureCY31Jbllhg5nfisuisnOdCQLAJRSwJQg+hnblY3E=; b=YORpe9GqOZIw94
	f5yPhx89NSGEHXPHPBFe1G5sP0BpeN2u2U5CbJdqYh4pZ89/81YH+TaIWJvsdkBFD5MWrxxxs5dlr
	3KzsfKmMBWoBl4zc2cznK3Y31hoS/LXQEKZ1m8LroItcs5o5Ehdi9s1HbqZo/nzvPj9BqhPSYrSS+
	NvYEymIs4fH4B3nub3qPczJr4RmStxP+FatMdjydFf5t5DDnbV8a0MseNMedGuU6oCUcAPcfALjYb
	K9Rj76x4HESzNZ0kVE9//OjA3zPv5eSxLULOloKKHfZXLcLGOga2WwJAeRp/E1Gk70hPBuC9g5cQG
	kdTXTi1uHgsPyEU7uBsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEdEq-00045G-M9; Wed, 18 Mar 2020 18:16:20 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEdEd-00044j-Eo
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 18:16:09 +0000
Received: by mail-pf1-x444.google.com with SMTP id f206so3311042pfa.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 11:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=beSLS6KccZJfpFDT+vWQCRVFQjr+hT/1HsXon9oZNTs=;
 b=RVavPlmFJAX48SFQzNLnKS+jECaKmjSq7wGgWa8Ru8DEDo5L22eJZ3SsFAdzOXi4uF
 W3b1RjMZL2JpNF3Iz6sq3fkBTEX/feqaT+0EoTCEIYKH7F0lMBgIWHfZnfu3ZW+tVxXI
 Jcwj0NTvYpwymWWlYNV3JhlJGb08KA57XXb8dNrNlHuIev/+CC1zB2v9nRBmyynmknEk
 R6/MaSIhLFJ/OSQ2t4SX4Rd8KHGnO+qFGi9Yan0RKhoed7gn5ySHSZcm+gWiqXaxSwou
 jYLmiRN+yl6hXjkJuMy32YvZCKFWyBdamTyaqDbP6Rw2GEjoK/LtbGWmptXXlhGUkU6a
 ZItw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=beSLS6KccZJfpFDT+vWQCRVFQjr+hT/1HsXon9oZNTs=;
 b=IU9WFSs31Mp7F/OaXuGovOFNL9RPblNwNpPCm4BnxvY2M8haIb2Vvu7AB4ILFepfQz
 ykpaKq7RhPo4wpeLel2GTGQcLQ/OyAsqtF8mPOD5ME+B52pnPjMcVTWZCHO8KqFhZCwf
 lR6K+bP0sBTTj4fnbKvnqSL/evf5mzyEOFeO/GVEwJ1g2EddlY+SsKB3Rn9R+6AVUROX
 iRYxtpcysFIDZbsPoJuUVeP410DHu9KhtvgtntLxvob9FmkmhEy2F0CKhDIiTfRoMh1R
 MzutlRYudrFAxBhV3HQGcJb3CLmg3j7AvtW8zRAaXtfk2+9SR8fP6v+ELDBCEdBjvfrp
 tA/A==
X-Gm-Message-State: ANhLgQ2mQKVAuVyJqC7uZz5SqtMelfNLRvZA7e0n4Vsbux+qglAWQHQH
 qF7MvdOAd0CWFb1g34FoFQjZQg==
X-Google-Smtp-Source: ADFU+vv8IeOP/LyfBQhw2wQmADS7FfUPmRtzju2D7BaVZTBpLR8uOdRRfL9uR8sWmmwTdxwkgaeMmQ==
X-Received: by 2002:a63:441e:: with SMTP id r30mr5780514pga.51.1584555366722; 
 Wed, 18 Mar 2020 11:16:06 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id z20sm6739589pge.62.2020.03.18.11.16.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2020 11:16:06 -0700 (PDT)
Date: Wed, 18 Mar 2020 12:16:04 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 02/13] coresight: cti: Add sysfs coresight mgmt register
 access
Message-ID: <20200318181604.GB18359@xps15>
References: <20200309161748.31975-1-mathieu.poirier@linaro.org>
 <20200309161748.31975-3-mathieu.poirier@linaro.org>
 <20200318131821.GA2789508@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318131821.GA2789508@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_111607_499751_A85E9F5C 
X-CRM114-Status: GOOD (  19.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 02:18:21PM +0100, Greg KH wrote:
> On Mon, Mar 09, 2020 at 10:17:37AM -0600, Mathieu Poirier wrote:
> > From: Mike Leach <mike.leach@linaro.org>
> > 
> > Adds sysfs access to the coresight management registers.
> > 
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > [Fixed abbreviation in title]
> > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > ---
> >  .../hwtracing/coresight/coresight-cti-sysfs.c | 53 +++++++++++++++++++
> >  drivers/hwtracing/coresight/coresight-priv.h  |  1 +
> >  2 files changed, 54 insertions(+)
> > 
> > diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> > index a832b8c6b866..507f8eb487fe 100644
> > --- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> > +++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> > @@ -62,11 +62,64 @@ static struct attribute *coresight_cti_attrs[] = {
> >  	NULL,
> >  };
> >  
> > +/* register based attributes */
> > +
> > +/* macro to access RO registers with power check only (no enable check). */
> > +#define coresight_cti_reg(name, offset)			\
> > +static ssize_t name##_show(struct device *dev,				\
> > +			   struct device_attribute *attr, char *buf)	\
> > +{									\
> > +	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);	\
> > +	u32 val = 0;							\
> > +	pm_runtime_get_sync(dev->parent);				\
> > +	spin_lock(&drvdata->spinlock);					\
> > +	if (drvdata->config.hw_powered)					\
> > +		val = readl_relaxed(drvdata->base + offset);		\
> > +	spin_unlock(&drvdata->spinlock);				\
> > +	pm_runtime_put_sync(dev->parent);				\
> > +	return scnprintf(buf, PAGE_SIZE, "0x%x\n", val);		\
> > +}									\
> > +static DEVICE_ATTR_RO(name)
> > +
> > +/* coresight management registers */
> > +coresight_cti_reg(devaff0, CTIDEVAFF0);
> > +coresight_cti_reg(devaff1, CTIDEVAFF1);
> > +coresight_cti_reg(authstatus, CORESIGHT_AUTHSTATUS);
> > +coresight_cti_reg(devarch, CORESIGHT_DEVARCH);
> > +coresight_cti_reg(devid, CORESIGHT_DEVID);
> > +coresight_cti_reg(devtype, CORESIGHT_DEVTYPE);
> > +coresight_cti_reg(pidr0, CORESIGHT_PERIPHIDR0);
> > +coresight_cti_reg(pidr1, CORESIGHT_PERIPHIDR1);
> > +coresight_cti_reg(pidr2, CORESIGHT_PERIPHIDR2);
> > +coresight_cti_reg(pidr3, CORESIGHT_PERIPHIDR3);
> > +coresight_cti_reg(pidr4, CORESIGHT_PERIPHIDR4);
> > +
> > +static struct attribute *coresight_cti_mgmt_attrs[] = {
> > +	&dev_attr_devaff0.attr,
> > +	&dev_attr_devaff1.attr,
> > +	&dev_attr_authstatus.attr,
> > +	&dev_attr_devarch.attr,
> > +	&dev_attr_devid.attr,
> > +	&dev_attr_devtype.attr,
> > +	&dev_attr_pidr0.attr,
> > +	&dev_attr_pidr1.attr,
> > +	&dev_attr_pidr2.attr,
> > +	&dev_attr_pidr3.attr,
> > +	&dev_attr_pidr4.attr,
> > +	NULL,
> > +};
> > +
> >  static const struct attribute_group coresight_cti_group = {
> >  	.attrs = coresight_cti_attrs,
> >  };
> >  
> > +static const struct attribute_group coresight_cti_mgmt_group = {
> > +	.attrs = coresight_cti_mgmt_attrs,
> > +	.name = "mgmt",
> > +};
> > +
> >  const struct attribute_group *coresight_cti_groups[] = {
> >  	&coresight_cti_group,
> > +	&coresight_cti_mgmt_group,
> >  	NULL,
> >  };
> > diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
> > index 82e563cdc879..aba6b789c969 100644
> > --- a/drivers/hwtracing/coresight/coresight-priv.h
> > +++ b/drivers/hwtracing/coresight/coresight-priv.h
> > @@ -22,6 +22,7 @@
> >  #define CORESIGHT_CLAIMCLR	0xfa4
> >  #define CORESIGHT_LAR		0xfb0
> >  #define CORESIGHT_LSR		0xfb4
> > +#define CORESIGHT_DEVARCH	0xfbc
> >  #define CORESIGHT_AUTHSTATUS	0xfb8
> >  #define CORESIGHT_DEVID		0xfc8
> >  #define CORESIGHT_DEVTYPE	0xfcc
> > -- 
> > 2.20.1
> > 
> 
> I do not see any Documentation/ABI/ entries for these new sysfs files,
> did I miss it somehow?  I can't take new sysfs code without
> documentation.

All the ABI is documented in this patch, which is part of this set.

[1]. https://lkml.org/lkml/2020/3/9/642

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
