Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F4F7225C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 00:25:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=65QciGHMJtmm1dTvqZs0Q1ICCDWAn6NLHD1hwbSt8hg=; b=ICqiIqsIrkSDbN
	bccgTUC6KWv82CvbLUfBh/Ns2UdmsElLXIGP93bZW/raVIwkbWY8WcvdZuENFLkjuSCIkRmOdTL9l
	paRqRofkY5TXKceomnF0UArd1muCrc8KcRRvtEHbKgoXl/pZ6Mgq76LZL7JDU+dqtAQYNTHJ30M3N
	jbvS3HEtfFTJjZPUglTZlsE9tLRXsx2uUHfniShaihQsYL1ryM0Bafg7pazUEO9eZPamCRHyeryHH
	/u+nBMC3URlhzQ61nnJUrXmsr3pUt/3Ce42nqudZ7MbrZFwnHck9QqUpEmwVMHt6VuK2DoZ1Gps9j
	62AnMSNhcb2MbJr83NJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq3Di-0002Yb-Kt; Tue, 23 Jul 2019 22:25:18 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq3DN-0002Wr-7J
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 22:24:58 +0000
Received: by mail-wm1-x341.google.com with SMTP id s3so39958443wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 15:24:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ycFVF6PULvBjNz8AdZGy8PuycX5V7CruUR+NdGiRv3Q=;
 b=DC+LOqW8HDUKuSISwKU1Icnv77rhum8xl7oSHv3Etmp8OgvlsfFcSkiIFD8J5ZWIMu
 5jhLWpzhU8XD45oobipXrstgm+rc7D2uWwYo7PaHBE6LvGqtNqIY9UFQYceuzA2fKaXG
 zwvj7pba8f3EzPQ5XacRdbMFYlGruLImGXneDE1uYY0xzUMrWK+pK1GluZ+Kx0+UIELA
 wU2q+UDmt7+fAna0aWlXZVCjPhRevfvehGKzoWTvVFEi/b2nPZufwbLMAqoOLOt5w5FX
 Ysa6FonWr1E4bl7hCWxToBEKsG8WA9c/WBHKYQQYaOTMuwKLH+yN77J2plGBHgT2rWpD
 VrwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ycFVF6PULvBjNz8AdZGy8PuycX5V7CruUR+NdGiRv3Q=;
 b=RHurqey3cYm5vpb6WSp8lkXsf2K285UIp1TI4MY48JQ0UTu2HhdaVkI31Rcsi2V79S
 dNe4wtDBz1t2sZoGOWGLerz0/ZPSHFyTXp1DSL+N5SXiOo+zE7kFytyrCclMaRbBYwVQ
 36xW74FXFhIRHtgNaOZ+h47EJA5wefdjXexgB48iP3xZUbMnu6Z9UFlRNc2qzDDD9oi4
 IH7ovGRygBuripM/nNLQb+2mIRm2Yge75AGsdBGy79OKvhOL2bC6FnSP9s3hiup0nkl2
 qAwJDx4DOmHxjqiWckJQRcGRgUNbT43BPEHVAHhD7sQYgjbwT1k31Tah/v7Vawqv3bfM
 Qnyg==
X-Gm-Message-State: APjAAAXUw8AOrK71ZEvjN1zkmpUjsuKjSo3u92WeFg0bLw8Y7s7AZK3P
 rij0vvTLvrC1Eclm2oXr0AOkb7pTLs6MP3gQUAwC
X-Google-Smtp-Source: APXvYqx6QBr0zClP8sJ9l5lcsqVKECo/is0ATH/J+vN1rOqJqrCCcGSyjkIL9AVFxX/ijzj/vZLMWK5KeARcWMYO1o4=
X-Received: by 2002:a1c:a101:: with SMTP id k1mr72310390wme.98.1563920692824; 
 Tue, 23 Jul 2019 15:24:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190723221838.12024-1-suzuki.poulose@arm.com>
 <20190723221838.12024-7-suzuki.poulose@arm.com>
In-Reply-To: <20190723221838.12024-7-suzuki.poulose@arm.com>
From: Bjorn Helgaas <bhelgaas@google.com>
Date: Tue, 23 Jul 2019 17:24:40 -0500
Message-ID: <CAErSpo5odia1KWnkADJ7NNbWKs5C1nRzZCiANfNrGQdNVVkP6g@mail.gmail.com>
Subject: Re: [PATCH v3 6/7] drivers: Add generic helper to match any device
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_152457_299161_7CC7B02A 
X-CRM114-Status: GOOD (  18.84  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Shyam Sundar S K <shyam-sundar.s-k@amd.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Elie Morisse <syniurge@gmail.com>,
 Nehal Shah <nehal-bakulchandra.shah@amd.com>,
 linux-arm <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 5:19 PM Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
> Add a generic helper to match any/all devices. Using this
> introduce new wrappers {bus/driver/class}_find_next_device().
>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Elie Morisse <syniurge@gmail.com>
> Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>
> Cc: "Martin K. Petersen" <martin.petersen@oracle.com>
> Cc: Nehal Shah <nehal-bakulchandra.shah@amd.com>
> Cc: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
> Cc: Shyam Sundar S K <shyam-sundar.s-k@amd.com>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>

Acked-by: Bjorn Helgaas <bhelgaas@google.com> # PCI

> ---
>  drivers/base/core.c                  |  6 ++++++
>  drivers/i2c/busses/i2c-amd-mp2-pci.c |  8 +-------
>  drivers/pci/probe.c                  |  7 +------
>  drivers/s390/cio/ccwgroup.c          |  8 +-------
>  drivers/scsi/scsi_proc.c             |  9 ++-------
>  include/linux/device.h               | 17 +++++++++++++++++
>  6 files changed, 28 insertions(+), 27 deletions(-)
>
> diff --git a/drivers/base/core.c b/drivers/base/core.c
> index 57d71bc2c559..e22e29b3dc97 100644
> --- a/drivers/base/core.c
> +++ b/drivers/base/core.c
> @@ -3379,3 +3379,9 @@ int device_match_acpi_dev(struct device *dev, const void *adev)
>         return ACPI_COMPANION(dev) == adev;
>  }
>  EXPORT_SYMBOL(device_match_acpi_dev);
> +
> +int device_match_any(struct device *dev, const void *unused)
> +{
> +       return 1;
> +}
> +EXPORT_SYMBOL_GPL(device_match_any);
> diff --git a/drivers/i2c/busses/i2c-amd-mp2-pci.c b/drivers/i2c/busses/i2c-amd-mp2-pci.c
> index c7fe3b44a860..5e4800d72e00 100644
> --- a/drivers/i2c/busses/i2c-amd-mp2-pci.c
> +++ b/drivers/i2c/busses/i2c-amd-mp2-pci.c
> @@ -457,18 +457,12 @@ static struct pci_driver amd_mp2_pci_driver = {
>  };
>  module_pci_driver(amd_mp2_pci_driver);
>
> -static int amd_mp2_device_match(struct device *dev, const void *data)
> -{
> -       return 1;
> -}
> -
>  struct amd_mp2_dev *amd_mp2_find_device(void)
>  {
>         struct device *dev;
>         struct pci_dev *pci_dev;
>
> -       dev = driver_find_device(&amd_mp2_pci_driver.driver, NULL, NULL,
> -                                amd_mp2_device_match);
> +       dev = driver_find_next_device(&amd_mp2_pci_driver.driver, NULL);
>         if (!dev)
>                 return NULL;
>
> diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
> index a3c7338fad86..dbeeb385fb9f 100644
> --- a/drivers/pci/probe.c
> +++ b/drivers/pci/probe.c
> @@ -64,11 +64,6 @@ static struct resource *get_pci_domain_busn_res(int domain_nr)
>         return &r->res;
>  }
>
> -static int find_anything(struct device *dev, const void *data)
> -{
> -       return 1;
> -}
> -
>  /*
>   * Some device drivers need know if PCI is initiated.
>   * Basically, we think PCI is not initiated when there
> @@ -79,7 +74,7 @@ int no_pci_devices(void)
>         struct device *dev;
>         int no_devices;
>
> -       dev = bus_find_device(&pci_bus_type, NULL, NULL, find_anything);
> +       dev = bus_find_next_device(&pci_bus_type, NULL);
>         no_devices = (dev == NULL);
>         put_device(dev);
>         return no_devices;
> diff --git a/drivers/s390/cio/ccwgroup.c b/drivers/s390/cio/ccwgroup.c
> index d843e362c167..0005ec9285aa 100644
> --- a/drivers/s390/cio/ccwgroup.c
> +++ b/drivers/s390/cio/ccwgroup.c
> @@ -581,11 +581,6 @@ int ccwgroup_driver_register(struct ccwgroup_driver *cdriver)
>  }
>  EXPORT_SYMBOL(ccwgroup_driver_register);
>
> -static int __ccwgroup_match_all(struct device *dev, const void *data)
> -{
> -       return 1;
> -}
> -
>  /**
>   * ccwgroup_driver_unregister() - deregister a ccw group driver
>   * @cdriver: driver to be deregistered
> @@ -597,8 +592,7 @@ void ccwgroup_driver_unregister(struct ccwgroup_driver *cdriver)
>         struct device *dev;
>
>         /* We don't want ccwgroup devices to live longer than their driver. */
> -       while ((dev = driver_find_device(&cdriver->driver, NULL, NULL,
> -                                        __ccwgroup_match_all))) {
> +       while ((dev = driver_find_next_device(&cdriver->driver, NULL))) {
>                 struct ccwgroup_device *gdev = to_ccwgroupdev(dev);
>
>                 ccwgroup_ungroup(gdev);
> diff --git a/drivers/scsi/scsi_proc.c b/drivers/scsi/scsi_proc.c
> index c074631086a4..5b313226f11c 100644
> --- a/drivers/scsi/scsi_proc.c
> +++ b/drivers/scsi/scsi_proc.c
> @@ -372,15 +372,10 @@ static ssize_t proc_scsi_write(struct file *file, const char __user *buf,
>         return err;
>  }
>
> -static int always_match(struct device *dev, const void *data)
> -{
> -       return 1;
> -}
> -
>  static inline struct device *next_scsi_device(struct device *start)
>  {
> -       struct device *next = bus_find_device(&scsi_bus_type, start, NULL,
> -                                             always_match);
> +       struct device *next = bus_find_next_device(&scsi_bus_type, start);
> +
>         put_device(start);
>         return next;
>  }
> diff --git a/include/linux/device.h b/include/linux/device.h
> index 7514ef3d3f1a..8ae3f4b47293 100644
> --- a/include/linux/device.h
> +++ b/include/linux/device.h
> @@ -169,6 +169,7 @@ int device_match_of_node(struct device *dev, const void *np);
>  int device_match_fwnode(struct device *dev, const void *fwnode);
>  int device_match_devt(struct device *dev, const void *pdevt);
>  int device_match_acpi_dev(struct device *dev, const void *adev);
> +int device_match_any(struct device *dev, const void *unused);
>
>  int bus_for_each_dev(struct bus_type *bus, struct device *start, void *data,
>                      int (*fn)(struct device *dev, void *data));
> @@ -225,6 +226,16 @@ static inline struct device *bus_find_device_by_devt(struct bus_type *bus,
>         return bus_find_device(bus, NULL, &devt, device_match_devt);
>  }
>
> +/**
> + * bus_find_next_device - Find the next device after a given device in a
> + * given bus.
> + */
> +static inline struct device *
> +bus_find_next_device(struct bus_type *bus,struct device *cur)
> +{
> +       return bus_find_device(bus, cur, NULL, device_match_any);
> +}
> +
>  #ifdef CONFIG_ACPI
>  struct acpi_device;
>
> @@ -465,6 +476,12 @@ static inline struct device *driver_find_device_by_devt(struct device_driver *dr
>         return driver_find_device(drv, NULL, &devt, device_match_devt);
>  }
>
> +static inline struct device *driver_find_next_device(struct device_driver *drv,
> +                                                    struct device *start)
> +{
> +       return driver_find_device(drv, start, NULL, device_match_any);
> +}
> +
>  #ifdef CONFIG_ACPI
>  /**
>   * driver_find_device_by_acpi_dev : device iterator for locating a particular
> --
> 2.21.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
