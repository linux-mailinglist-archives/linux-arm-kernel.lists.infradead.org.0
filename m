Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F201EB445
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 06:24:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9dCcpBL853XkurklfhVO1hP36iwi4j+AxriyeGWwuKY=; b=BTznJnNMVnUfVl
	FTgYp1lcUSGtvxxL1Z8codr1U/waNEtd1jjN/q3g5cj1EKK2oE1EezBe204fmtUuQtUpjFaolrT+s
	a4o4/82RQ900E2gFli/109My/O00Qt8tby2mmyQ5sRn5jf28leUXNO0Ilv1hed4+tTpApA+teYY/2
	t/QZgSlazSJNsQBXNzGSwwpmWEwJ5baSWC6QNBv53fcMIKa5mzsmTcE27n9/oqAgoLNEm5zrv81SF
	LGiWKtfqxXXKy3OhWeTr4VkCMW0TqjGyfx7EiFOkyv5sH8aSaDQ3vX+qF59iqCCVh4fGuEN9DBseP
	CHEAUz2h1UaG/gJ9q/7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfySt-00079C-T0; Tue, 02 Jun 2020 04:23:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfySn-00078j-Pb
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 04:23:47 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 99144206C3;
 Tue,  2 Jun 2020 04:23:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591071825;
 bh=KForfwzUUC3Tk8fGSUSDwVHsxPKPlXtsHIFrysGM4iY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V45ZYtoL70LH0+jjtU6K2Pm6h5EN5dcw3LAqGkCFEUvGLepwp/RzbDsv1tm9nbE8X
 IKfw5CNMxoDntLxKInDAvmDaDJ9slDOOgr5WQi4LT/HYwuAb815pAredk+uHwsM3gx
 Wz/hBz4BIW9vvksL95NAPm/tvL3WM12JokdvE9Lo=
Date: Tue, 2 Jun 2020 06:23:40 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Barry Song <song.bao.hua@hisilicon.com>
Subject: Re: [PATCH] driver core: platform: expose numa_node to users in sysfs
Message-ID: <20200602042340.GA2130884@kroah.com>
References: <20200602030139.73012-1-song.bao.hua@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200602030139.73012-1-song.bao.hua@hisilicon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_212345_848995_9662A3D4 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: rafael@kernel.org, linuxarm@huawei.com, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Prime Zeng <prime.zeng@hisilicon.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 02, 2020 at 03:01:39PM +1200, Barry Song wrote:
> For some platform devices like iommu, particually ARM smmu, users may
> care about the numa locality. for example, if threads and drivers run
> near iommu, they may get much better performance on dma_unmap_sg.
> For other platform devices, users may still want to know the hardware
> topology.
> 
> Cc: Prime Zeng <prime.zeng@hisilicon.com>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Barry Song <song.bao.hua@hisilicon.com>
> ---
>  drivers/base/platform.c | 26 +++++++++++++++++++++++++-
>  1 file changed, 25 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/base/platform.c b/drivers/base/platform.c
> index b27d0f6c18c9..7794b9a38d82 100644
> --- a/drivers/base/platform.c
> +++ b/drivers/base/platform.c
> @@ -1062,13 +1062,37 @@ static ssize_t driver_override_show(struct device *dev,
>  }
>  static DEVICE_ATTR_RW(driver_override);
>  
> +static ssize_t numa_node_show(struct device *dev,
> +		struct device_attribute *attr, char *buf)
> +{
> +	return sprintf(buf, "%d\n", dev_to_node(dev));
> +}
> +static DEVICE_ATTR_RO(numa_node);
> +
> +static umode_t platform_dev_attrs_visible(struct kobject *kobj, struct attribute *a,
> +		int n)
> +{
> +	struct device *dev = container_of(kobj, typeof(*dev), kobj);
> +
> +	if (a == &dev_attr_numa_node.attr &&
> +			dev_to_node(dev) == NUMA_NO_NODE)
> +		return 0;
> +
> +	return a->mode;
> +}
>  
>  static struct attribute *platform_dev_attrs[] = {
>  	&dev_attr_modalias.attr,
> +	&dev_attr_numa_node.attr,
>  	&dev_attr_driver_override.attr,
>  	NULL,
>  };
> -ATTRIBUTE_GROUPS(platform_dev);
> +
> +static struct attribute_group platform_dev_group = {
> +	.attrs = platform_dev_attrs,
> +	.is_visible = platform_dev_attrs_visible,
> +};
> +__ATTRIBUTE_GROUPS(platform_dev);
>  
>  static int platform_uevent(struct device *dev, struct kobj_uevent_env *env)
>  {

Platform devices are NUMA?  That's crazy, and feels like a total abuse
of platform devices and drivers that really should belong on a "real"
bus.

What drivers in the kernel today have this issue?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
