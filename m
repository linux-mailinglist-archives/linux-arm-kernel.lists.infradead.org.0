Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1DE7DAC6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 13:59:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FOyios8DwiGQYBLFltlPEqQmumv/JmWHGziDK6m+12w=; b=LyRIsiTsVKyA2X
	qe47FpgXb4feiESR3XNgV0sYI1sn2mZ0xfqNeGEAZHDTH2+8JXP8i9slZFE/wV8MEp2heUYQP4EkU
	LgiXOpNJfq993cU8M2Z0a0F2ZCVQ2dMnSmXaCZH7gs51jYvmTR47am/sk2v0bEIxOnINf3M3h9zBP
	5CbQxxX2wXTDIzrtcdlGnD5smeDPrHfjf4XTY4k9GHyvZwJQT4sSHeGasR/q3azb7Q9C67LbKTqgT
	7cM7Ty3tGMJvVBfuq3sMBgKlTStcTADZVK2aLTj3B+VtxapNSMyPsO8rgJo4X6P9VAAbXpQHUGGlu
	8fuq5fkNM5f6JdAAJj1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht9jm-0006Jk-Cn; Thu, 01 Aug 2019 11:59:14 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht9jZ-0006JM-Uq
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 11:59:03 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 04:59:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,334,1559545200"; d="scan'208";a="372000008"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.145])
 by fmsmga005.fm.intel.com with ESMTP; 01 Aug 2019 04:58:57 -0700
Received: from andy by smile with local (Exim 4.92)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1ht9jU-000306-0h; Thu, 01 Aug 2019 14:58:56 +0300
Date: Thu, 1 Aug 2019 14:58:56 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [PATCH v3 5/7] drivers: Introduce device lookup variants by
 ACPI_COMPANION device
Message-ID: <20190801115856.GS23480@smile.fi.intel.com>
References: <20190723221838.12024-1-suzuki.poulose@arm.com>
 <20190723221838.12024-6-suzuki.poulose@arm.com>
 <20190726202353.GA963@kunai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726202353.GA963@kunai>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_045902_009257_C98E1714 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: rafael@kernel.org, gregkh@linuxfoundation.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-acpi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Jarkko Nikula <jarkko.nikula@linux.intel.com>,
 linux-i2c@vger.kernel.org, Mika Westerberg <mika.westerberg@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 10:23:54PM +0200, Wolfram Sang wrote:
> On Tue, Jul 23, 2019 at 11:18:36PM +0100, Suzuki K Poulose wrote:
> > Add a generic helper to match a device by the ACPI_COMPANION device
> > and provide wrappers for the device lookup APIs.
> > 
> > Cc: Len Brown <lenb@kernel.org>
> > Cc: linux-acpi@vger.kernel.org
> > Cc: linux-spi@vger.kernel.org
> > Cc: Mark Brown <broonie@kernel.org>
> > Cc: Mika Westerberg <mika.westerberg@linux.intel.com>
> > Cc: Wolfram Sang <wsa@the-dreams.de>
> > Cc: linux-i2c@vger.kernel.org
> > Cc: Mark Brown <broonie@kernel.org>
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> > Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> 
> From my side, OK:
> 
> Acked-by: Wolfram Sang <wsa@the-dreams.de> # I2C parts
> 
> yet you missed to cc the I2C ACPI maintainers. Done so now.

Acked-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Thanks, Wolfram, for notifying.

> 
> > ---
> >  drivers/base/core.c         |  6 ++++
> >  drivers/i2c/i2c-core-acpi.c | 11 ++-----
> >  drivers/spi/spi.c           |  8 +----
> >  include/linux/device.h      | 65 +++++++++++++++++++++++++++++++++++++
> >  4 files changed, 74 insertions(+), 16 deletions(-)
> > 
> > diff --git a/drivers/base/core.c b/drivers/base/core.c
> > index 3abc32b60c0a..57d71bc2c559 100644
> > --- a/drivers/base/core.c
> > +++ b/drivers/base/core.c
> > @@ -3373,3 +3373,9 @@ int device_match_devt(struct device *dev, const void *pdevt)
> >  	return dev->devt == *(dev_t *)pdevt;
> >  }
> >  EXPORT_SYMBOL_GPL(device_match_devt);
> > +
> > +int device_match_acpi_dev(struct device *dev, const void *adev)
> > +{
> > +	return ACPI_COMPANION(dev) == adev;
> > +}
> > +EXPORT_SYMBOL(device_match_acpi_dev);
> > diff --git a/drivers/i2c/i2c-core-acpi.c b/drivers/i2c/i2c-core-acpi.c
> > index 4dbbc9a35f65..bc80aafb521f 100644
> > --- a/drivers/i2c/i2c-core-acpi.c
> > +++ b/drivers/i2c/i2c-core-acpi.c
> > @@ -354,17 +354,11 @@ static int i2c_acpi_find_match_adapter(struct device *dev, const void *data)
> >  	return ACPI_HANDLE(dev) == (acpi_handle)data;
> >  }
> >  
> > -static int i2c_acpi_find_match_device(struct device *dev, const void *data)
> > -{
> > -	return ACPI_COMPANION(dev) == data;
> > -}
> >  
> >  struct i2c_adapter *i2c_acpi_find_adapter_by_handle(acpi_handle handle)
> >  {
> > -	struct device *dev;
> > +	struct device *dev = bus_find_device_by_acpi_dev(&i2c_bus_type, handle);
> >  
> > -	dev = bus_find_device(&i2c_bus_type, NULL, handle,
> > -			      i2c_acpi_find_match_adapter);
> >  	return dev ? i2c_verify_adapter(dev) : NULL;
> >  }
> >  EXPORT_SYMBOL_GPL(i2c_acpi_find_adapter_by_handle);
> > @@ -373,8 +367,7 @@ static struct i2c_client *i2c_acpi_find_client_by_adev(struct acpi_device *adev)
> >  {
> >  	struct device *dev;
> >  
> > -	dev = bus_find_device(&i2c_bus_type, NULL, adev,
> > -			      i2c_acpi_find_match_device);
> > +	dev = bus_find_device_by_acpi_dev(&i2c_bus_type, adev);
> >  	return dev ? i2c_verify_client(dev) : NULL;
> >  }
> >  
> > diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
> > index a591da87981a..c486a6f84c2c 100644
> > --- a/drivers/spi/spi.c
> > +++ b/drivers/spi/spi.c
> > @@ -3741,11 +3741,6 @@ static int spi_acpi_controller_match(struct device *dev, const void *data)
> >  	return ACPI_COMPANION(dev->parent) == data;
> >  }
> >  
> > -static int spi_acpi_device_match(struct device *dev, const void *data)
> > -{
> > -	return ACPI_COMPANION(dev) == data;
> > -}
> > -
> >  static struct spi_controller *acpi_spi_find_controller_by_adev(struct acpi_device *adev)
> >  {
> >  	struct device *dev;
> > @@ -3765,8 +3760,7 @@ static struct spi_device *acpi_spi_find_device_by_adev(struct acpi_device *adev)
> >  {
> >  	struct device *dev;
> >  
> > -	dev = bus_find_device(&spi_bus_type, NULL, adev, spi_acpi_device_match);
> > -
> > +	dev = bus_find_device_by_acpi_dev(&spi_bus_type, adev);
> >  	return dev ? to_spi_device(dev) : NULL;
> >  }
> >  
> > diff --git a/include/linux/device.h b/include/linux/device.h
> > index 93b2f55ef44e..7514ef3d3f1a 100644
> > --- a/include/linux/device.h
> > +++ b/include/linux/device.h
> > @@ -168,6 +168,7 @@ int device_match_name(struct device *dev, const void *name);
> >  int device_match_of_node(struct device *dev, const void *np);
> >  int device_match_fwnode(struct device *dev, const void *fwnode);
> >  int device_match_devt(struct device *dev, const void *pdevt);
> > +int device_match_acpi_dev(struct device *dev, const void *adev);
> >  
> >  int bus_for_each_dev(struct bus_type *bus, struct device *start, void *data,
> >  		     int (*fn)(struct device *dev, void *data));
> > @@ -224,6 +225,28 @@ static inline struct device *bus_find_device_by_devt(struct bus_type *bus,
> >  	return bus_find_device(bus, NULL, &devt, device_match_devt);
> >  }
> >  
> > +#ifdef CONFIG_ACPI
> > +struct acpi_device;
> > +
> > +/**
> > + * bus_find_device_by_acpi_dev : device iterator for locating a particular device
> > + * matching the ACPI COMPANION device.
> > + * @bus: bus type
> > + * @adev: ACPI COMPANION device to match.
> > + */
> > +static inline struct device *
> > +bus_find_device_by_acpi_dev(struct bus_type *bus, const struct acpi_device *adev)
> > +{
> > +	return bus_find_device(bus, NULL, adev, device_match_acpi_dev);
> > +}
> > +#else
> > +static inline struct device *
> > +bus_find_device_by_acpi_dev(struct bus_type *bus, const void *adev)
> > +{
> > +	return NULL;
> > +}
> > +#endif
> > +
> >  struct device *subsys_find_device_by_id(struct bus_type *bus, unsigned int id,
> >  					struct device *hint);
> >  int bus_for_each_drv(struct bus_type *bus, struct device_driver *start,
> > @@ -442,6 +465,27 @@ static inline struct device *driver_find_device_by_devt(struct device_driver *dr
> >  	return driver_find_device(drv, NULL, &devt, device_match_devt);
> >  }
> >  
> > +#ifdef CONFIG_ACPI
> > +/**
> > + * driver_find_device_by_acpi_dev : device iterator for locating a particular
> > + * device matching the ACPI_COMPANION device.
> > + * @driver: the driver we're iterating
> > + * @adev: ACPI_COMPANION device to match.
> > + */
> > +static inline struct device *
> > +driver_find_device_by_acpi_dev(struct device_driver *drv,
> > +			       const struct acpi_device *adev)
> > +{
> > +	return driver_find_device(drv, NULL, adev, device_match_acpi_dev);
> > +}
> > +#else
> > +static inline struct device *
> > +driver_find_device_by_acpi_dev(struct device_driver *drv, const void *adev)
> > +{
> > +	return NULL;
> > +}
> > +#endif
> > +
> >  void driver_deferred_probe_add(struct device *dev);
> >  int driver_deferred_probe_check_state(struct device *dev);
> >  int driver_deferred_probe_check_state_continue(struct device *dev);
> > @@ -620,6 +664,27 @@ static inline struct device *class_find_device_by_devt(struct class *class,
> >  	return class_find_device(class, NULL, &devt, device_match_devt);
> >  }
> >  
> > +#ifdef CONFIG_ACPI
> > +struct acpi_device;
> > +/**
> > + * class_find_device_by_acpi_dev : device iterator for locating a particular
> > + * device matching the ACPI_COMPANION device.
> > + * @class: class type
> > + * @adev: ACPI_COMPANION device to match.
> > + */
> > +static inline struct device *
> > +class_find_device_by_acpi_dev(struct class *class, const struct acpi_device *adev)
> > +{
> > +	return class_find_device(class, NULL, adev, device_match_acpi_dev);
> > +}
> > +#else
> > +static inline struct device *
> > +class_find_device_by_acpi_dev(struct class *class, const void *adev)
> > +{
> > +	return NULL;
> > +}
> > +#endif
> > +
> >  struct class_attribute {
> >  	struct attribute attr;
> >  	ssize_t (*show)(struct class *class, struct class_attribute *attr,
> > -- 
> > 2.21.0
> > 



-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
