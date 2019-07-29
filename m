Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D1A78FE5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 17:54:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ncI8oJozeG+U6w4AqTztZd37mydAnbq2VfICfEu6rx4=; b=sPNEZ6tsFsEyDv
	3nFgRlfpswQckCQznfBbp8nfMIXttTRXPqwT+V/pFIcWm9W3cm6pcBJl0hK6t1DMzTh957rrIZwp6
	QfiL6FWT9OHVByYiX7n0/hF/WIj3a9t0ldd2YvL40rRGWXTguWr+7kQKtdmUrabcEFXk37Tl+OP77
	MCLhcCrctJnf1fmdTSUrZqPhhDIEbGGFcS0Lj9NQbesTS0JPriY8Wd6TAndVEtPe9NjD7zlGjKjUy
	b1J7jts8NqmlJUjYj4xchxlS1aMhrzs42ch+oeAM1QdgxJulOFIrpjbkSH9cPxw5zSenlVpFXRUWf
	My9vXrzTJRWtTTeprMLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs7yk-0007qr-U6; Mon, 29 Jul 2019 15:54:26 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs7yU-0007qT-ES
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 15:54:12 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 07:36:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,323,1559545200"; d="scan'208";a="190603566"
Received: from kuha.fi.intel.com ([10.237.72.189])
 by fmsmga001.fm.intel.com with SMTP; 29 Jul 2019 07:36:54 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation);
 Mon, 29 Jul 2019 17:36:53 +0300
Date: Mon, 29 Jul 2019 17:36:53 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v3 3/7] drivers: Introduce device lookup variants by fwnode
Message-ID: <20190729143653.GH28600@kuha.fi.intel.com>
References: <20190723221838.12024-1-suzuki.poulose@arm.com>
 <20190723221838.12024-4-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723221838.12024-4-suzuki.poulose@arm.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_085410_575518_DEA99C11 
X-CRM114-Status: GOOD (  26.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, rafael@kernel.org,
 gregkh@linuxfoundation.org, Joerg Roedel <joro@8bytes.org>,
 linux-usb@vger.kernel.org, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Jason Gunthorpe <jgg@ziepe.ca>,
 Doug Ledford <dledford@redhat.com>, Joe Perches <joe@perches.com>,
 Robin Murphy <robin.murphy@arm.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 11:18:34PM +0100, Suzuki K Poulose wrote:
> Add a helper to match the firmware node handle of a device and provide
> wrappers for {bus/class/driver}_find_device() APIs to avoid proliferation
> of duplicate custom match functions.
> 
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Doug Ledford <dledford@redhat.com>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> Cc: Jason Gunthorpe <jgg@ziepe.ca>
> Cc: linux-usb@vger.kernel.org
> Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Ulf Hansson <ulf.hansson@linaro.org>
> Cc: Joe Perches <joe@perches.com>
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Joerg Roedel <joro@8bytes.org>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>

Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

> ---
>  drivers/base/core.c                           |  6 +++
>  drivers/base/devcon.c                         |  8 +---
>  .../hwtracing/coresight/coresight-platform.c  | 11 +-----
>  drivers/hwtracing/coresight/coresight-priv.h  |  2 -
>  drivers/hwtracing/coresight/coresight.c       |  4 +-
>  drivers/infiniband/hw/hns/hns_roce_hw_v1.c    |  8 +---
>  drivers/iommu/arm-smmu-v3.c                   |  9 +----
>  drivers/iommu/arm-smmu.c                      |  9 +----
>  .../ethernet/hisilicon/hns/hns_dsaf_misc.c    |  8 +---
>  drivers/usb/roles/class.c                     |  8 +---
>  drivers/usb/typec/class.c                     |  8 +---
>  include/linux/device.h                        | 39 +++++++++++++++++++
>  12 files changed, 57 insertions(+), 63 deletions(-)
> 
> diff --git a/drivers/base/core.c b/drivers/base/core.c
> index fb83647d685a..e8f81a667545 100644
> --- a/drivers/base/core.c
> +++ b/drivers/base/core.c
> @@ -3368,3 +3368,9 @@ int device_match_of_node(struct device *dev, const void *np)
>  	return dev->of_node == np;
>  }
>  EXPORT_SYMBOL_GPL(device_match_of_node);
> +
> +int device_match_fwnode(struct device *dev, const void *fwnode)
> +{
> +	return dev_fwnode(dev) == fwnode;
> +}
> +EXPORT_SYMBOL_GPL(device_match_fwnode);
> diff --git a/drivers/base/devcon.c b/drivers/base/devcon.c
> index 09f28479b243..1d488dc5dd0c 100644
> --- a/drivers/base/devcon.c
> +++ b/drivers/base/devcon.c
> @@ -133,19 +133,13 @@ static struct bus_type *generic_match_buses[] = {
>  	NULL,
>  };
>  
> -static int device_fwnode_match(struct device *dev, const void *fwnode)
> -{
> -	return dev_fwnode(dev) == fwnode;
> -}
> -
>  static void *device_connection_fwnode_match(struct device_connection *con)
>  {
>  	struct bus_type *bus;
>  	struct device *dev;
>  
>  	for (bus = generic_match_buses[0]; bus; bus++) {
> -		dev = bus_find_device(bus, NULL, (void *)con->fwnode,
> -				      device_fwnode_match);
> +		dev = bus_find_device_by_fwnode(bus, con->fwnode);
>  		if (dev && !strncmp(dev_name(dev), con->id, strlen(con->id)))
>  			return dev;
>  
> diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
> index dad7d96c5943..3c5bee429105 100644
> --- a/drivers/hwtracing/coresight/coresight-platform.c
> +++ b/drivers/hwtracing/coresight/coresight-platform.c
> @@ -37,11 +37,6 @@ static int coresight_alloc_conns(struct device *dev,
>  	return 0;
>  }
>  
> -int coresight_device_fwnode_match(struct device *dev, const void *fwnode)
> -{
> -	return dev_fwnode(dev) == fwnode;
> -}
> -
>  static struct device *
>  coresight_find_device_by_fwnode(struct fwnode_handle *fwnode)
>  {
> @@ -51,8 +46,7 @@ coresight_find_device_by_fwnode(struct fwnode_handle *fwnode)
>  	 * If we have a non-configurable replicator, it will be found on the
>  	 * platform bus.
>  	 */
> -	dev = bus_find_device(&platform_bus_type, NULL,
> -			      fwnode, coresight_device_fwnode_match);
> +	dev = bus_find_device_by_fwnode(&platform_bus_type, fwnode);
>  	if (dev)
>  		return dev;
>  
> @@ -60,8 +54,7 @@ coresight_find_device_by_fwnode(struct fwnode_handle *fwnode)
>  	 * We have a configurable component - circle through the AMBA bus
>  	 * looking for the device that matches the endpoint node.
>  	 */
> -	return bus_find_device(&amba_bustype, NULL,
> -			       fwnode, coresight_device_fwnode_match);
> +	return bus_find_device_by_fwnode(&amba_bustype, fwnode);
>  }
>  
>  #ifdef CONFIG_OF
> diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
> index 7d401790dd7e..61d7f9ff054d 100644
> --- a/drivers/hwtracing/coresight/coresight-priv.h
> +++ b/drivers/hwtracing/coresight/coresight-priv.h
> @@ -202,6 +202,4 @@ static inline void *coresight_get_uci_data(const struct amba_id *id)
>  
>  void coresight_release_platform_data(struct coresight_platform_data *pdata);
>  
> -int coresight_device_fwnode_match(struct device *dev, const void *fwnode);
> -
>  #endif
> diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
> index 55db77f6410b..6453c67a4d01 100644
> --- a/drivers/hwtracing/coresight/coresight.c
> +++ b/drivers/hwtracing/coresight/coresight.c
> @@ -1046,9 +1046,7 @@ static void coresight_fixup_device_conns(struct coresight_device *csdev)
>  		struct coresight_connection *conn = &csdev->pdata->conns[i];
>  		struct device *dev = NULL;
>  
> -		dev = bus_find_device(&coresight_bustype, NULL,
> -				      (void *)conn->child_fwnode,
> -				      coresight_device_fwnode_match);
> +		dev = bus_find_device_by_fwnode(&coresight_bustype, conn->child_fwnode);
>  		if (dev) {
>  			conn->child_dev = to_coresight_device(dev);
>  			/* and put reference from 'bus_find_device()' */
> diff --git a/drivers/infiniband/hw/hns/hns_roce_hw_v1.c b/drivers/infiniband/hw/hns/hns_roce_hw_v1.c
> index 81e6dedb1e02..fa05e943038a 100644
> --- a/drivers/infiniband/hw/hns/hns_roce_hw_v1.c
> +++ b/drivers/infiniband/hw/hns/hns_roce_hw_v1.c
> @@ -4499,19 +4499,13 @@ static const struct acpi_device_id hns_roce_acpi_match[] = {
>  };
>  MODULE_DEVICE_TABLE(acpi, hns_roce_acpi_match);
>  
> -static int hns_roce_node_match(struct device *dev, const void *fwnode)
> -{
> -	return dev->fwnode == fwnode;
> -}
> -
>  static struct
>  platform_device *hns_roce_find_pdev(struct fwnode_handle *fwnode)
>  {
>  	struct device *dev;
>  
>  	/* get the 'device' corresponding to the matching 'fwnode' */
> -	dev = bus_find_device(&platform_bus_type, NULL,
> -			      fwnode, hns_roce_node_match);
> +	dev = bus_find_device_by_fwnode(&platform_bus_type, fwnode);
>  	/* get the platform device */
>  	return dev ? to_platform_device(dev) : NULL;
>  }
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index a9a9fabd3968..6f0e13fa5e1a 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -2034,16 +2034,11 @@ arm_smmu_iova_to_phys(struct iommu_domain *domain, dma_addr_t iova)
>  
>  static struct platform_driver arm_smmu_driver;
>  
> -static int arm_smmu_match_node(struct device *dev, const void *data)
> -{
> -	return dev->fwnode == data;
> -}
> -
>  static
>  struct arm_smmu_device *arm_smmu_get_by_fwnode(struct fwnode_handle *fwnode)
>  {
> -	struct device *dev = driver_find_device(&arm_smmu_driver.driver, NULL,
> -						fwnode, arm_smmu_match_node);
> +	struct device *dev = driver_find_device_by_fwnode(&arm_smmu_driver.driver,
> +							  fwnode);
>  	put_device(dev);
>  	return dev ? dev_get_drvdata(dev) : NULL;
>  }
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index 64977c131ee6..aa06498f291d 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -1426,16 +1426,11 @@ static bool arm_smmu_capable(enum iommu_cap cap)
>  	}
>  }
>  
> -static int arm_smmu_match_node(struct device *dev, const void *data)
> -{
> -	return dev->fwnode == data;
> -}
> -
>  static
>  struct arm_smmu_device *arm_smmu_get_by_fwnode(struct fwnode_handle *fwnode)
>  {
> -	struct device *dev = driver_find_device(&arm_smmu_driver.driver, NULL,
> -						fwnode, arm_smmu_match_node);
> +	struct device *dev = driver_find_device_by_fwnode(&arm_smmu_driver.driver,
> +							  fwnode);
>  	put_device(dev);
>  	return dev ? dev_get_drvdata(dev) : NULL;
>  }
> diff --git a/drivers/net/ethernet/hisilicon/hns/hns_dsaf_misc.c b/drivers/net/ethernet/hisilicon/hns/hns_dsaf_misc.c
> index bb6586d0e5af..ed3829ae4ef1 100644
> --- a/drivers/net/ethernet/hisilicon/hns/hns_dsaf_misc.c
> +++ b/drivers/net/ethernet/hisilicon/hns/hns_dsaf_misc.c
> @@ -754,17 +754,11 @@ struct dsaf_misc_op *hns_misc_op_get(struct dsaf_device *dsaf_dev)
>  	return (void *)misc_op;
>  }
>  
> -static int hns_dsaf_dev_match(struct device *dev, const void *fwnode)
> -{
> -	return dev->fwnode == fwnode;
> -}
> -
>  struct
>  platform_device *hns_dsaf_find_platform_device(struct fwnode_handle *fwnode)
>  {
>  	struct device *dev;
>  
> -	dev = bus_find_device(&platform_bus_type, NULL,
> -			      fwnode, hns_dsaf_dev_match);
> +	dev = bus_find_device_by_fwnode(&platform_bus_type, fwnode);
>  	return dev ? to_platform_device(dev) : NULL;
>  }
> diff --git a/drivers/usb/roles/class.c b/drivers/usb/roles/class.c
> index c8efe60e2465..0526efbc4922 100644
> --- a/drivers/usb/roles/class.c
> +++ b/drivers/usb/roles/class.c
> @@ -85,11 +85,6 @@ enum usb_role usb_role_switch_get_role(struct usb_role_switch *sw)
>  }
>  EXPORT_SYMBOL_GPL(usb_role_switch_get_role);
>  
> -static int switch_fwnode_match(struct device *dev, const void *fwnode)
> -{
> -	return dev_fwnode(dev) == fwnode;
> -}
> -
>  static void *usb_role_switch_match(struct device_connection *con, int ep,
>  				   void *data)
>  {
> @@ -99,8 +94,7 @@ static void *usb_role_switch_match(struct device_connection *con, int ep,
>  		if (con->id && !fwnode_property_present(con->fwnode, con->id))
>  			return NULL;
>  
> -		dev = class_find_device(role_class, NULL, con->fwnode,
> -					switch_fwnode_match);
> +		dev = class_find_device_by_fwnode(role_class, con->fwnode);
>  	} else {
>  		dev = class_find_device_by_name(role_class, con->endpoint[ep]);
>  	}
> diff --git a/drivers/usb/typec/class.c b/drivers/usb/typec/class.c
> index 9b0d15b487e5..94a3eda62add 100644
> --- a/drivers/usb/typec/class.c
> +++ b/drivers/usb/typec/class.c
> @@ -205,11 +205,6 @@ static void typec_altmode_put_partner(struct altmode *altmode)
>  	put_device(&adev->dev);
>  }
>  
> -static int typec_port_fwnode_match(struct device *dev, const void *fwnode)
> -{
> -	return dev_fwnode(dev) == fwnode;
> -}
> -
>  static void *typec_port_match(struct device_connection *con, int ep, void *data)
>  {
>  	struct device *dev;
> @@ -219,8 +214,7 @@ static void *typec_port_match(struct device_connection *con, int ep, void *data)
>  	 * we need to return ERR_PTR(-PROBE_DEFER) when there is no device.
>  	 */
>  	if (con->fwnode)
> -		return class_find_device(typec_class, NULL, con->fwnode,
> -					 typec_port_fwnode_match);
> +		return class_find_device_by_fwnode(typec_class, con->fwnode);
>  
>  	dev = class_find_device_by_name(typec_class, con->endpoint[ep]);
>  
> diff --git a/include/linux/device.h b/include/linux/device.h
> index 29d8d7ad41e6..7133fc1c285d 100644
> --- a/include/linux/device.h
> +++ b/include/linux/device.h
> @@ -166,6 +166,7 @@ void subsys_dev_iter_exit(struct subsys_dev_iter *iter);
>  
>  int device_match_name(struct device *dev, const void *name);
>  int device_match_of_node(struct device *dev, const void *np);
> +int device_match_fwnode(struct device *dev, const void *fwnode);
>  
>  int bus_for_each_dev(struct bus_type *bus, struct device *start, void *data,
>  		     int (*fn)(struct device *dev, void *data));
> @@ -198,6 +199,18 @@ bus_find_device_by_of_node(struct bus_type *bus, const struct device_node *np)
>  	return bus_find_device(bus, NULL, np, device_match_of_node);
>  }
>  
> +/**
> + * bus_find_device_by_fwnode : device iterator for locating a particular device
> + * matching the fwnode.
> + * @bus: bus type
> + * @fwnode: fwnode of the device to match.
> + */
> +static inline struct device *
> +bus_find_device_by_fwnode(struct bus_type *bus, const struct fwnode_handle *fwnode)
> +{
> +	return bus_find_device(bus, NULL, fwnode, device_match_fwnode);
> +}
> +
>  struct device *subsys_find_device_by_id(struct bus_type *bus, unsigned int id,
>  					struct device *hint);
>  int bus_for_each_drv(struct bus_type *bus, struct device_driver *start,
> @@ -391,6 +404,19 @@ driver_find_device_by_of_node(struct device_driver *drv,
>  	return driver_find_device(drv, NULL, np, device_match_of_node);
>  }
>  
> +/**
> + * driver_find_device_by_fwnode- device iterator for locating a particular device
> + * by fwnode pointer.
> + * @driver: the driver we're iterating
> + * @fwnode: fwnode pointer to match.
> + */
> +static inline struct device *
> +driver_find_device_by_fwnode(struct device_driver *drv,
> +			     const struct fwnode_handle *fwnode)
> +{
> +	return driver_find_device(drv, NULL, fwnode, device_match_fwnode);
> +}
> +
>  void driver_deferred_probe_add(struct device *dev);
>  int driver_deferred_probe_check_state(struct device *dev);
>  int driver_deferred_probe_check_state_continue(struct device *dev);
> @@ -544,6 +570,19 @@ class_find_device_by_of_node(struct class *class, const struct device_node *np)
>  	return class_find_device(class, NULL, np, device_match_of_node);
>  }
>  
> +/**
> + * class_find_device_by_fwnode : device iterator for locating a particular device
> + * matching the fwnode.
> + * @class: class type
> + * @fwnode: fwnode of the device to match.
> + */
> +static inline struct device *
> +class_find_device_by_fwnode(struct class *class,
> +			    const struct fwnode_handle *fwnode)
> +{
> +	return class_find_device(class, NULL, fwnode, device_match_fwnode);
> +}
> +
>  struct class_attribute {
>  	struct attribute attr;
>  	ssize_t (*show)(struct class *class, struct class_attribute *attr,
> -- 
> 2.21.0

thanks,

-- 
heikki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
