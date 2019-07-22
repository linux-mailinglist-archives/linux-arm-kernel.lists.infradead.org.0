Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1E67025B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 16:29:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kf7/LwxXdOwOZU1WM2ZMmnD78Mbgkgz9LXzLLQxq0QM=; b=W+PXAwKSi4hLq/
	lK5vhCOcRKgLM0PS0nLZMUIrhkTAX2/gBsnJj5ExRK7evO2k4im2SQ9QjXlgqWc8PrE8KK9wjQfAS
	xPCof8quJdt/8GbDVehQ1Eri3kN5COUKX9yCfEZHqpqLc1Me3kcPLCJCCmOgOfdImkI8G33AV9ZHN
	LQwfzzO1yOpew6HivTBsVHCxAQPBDjkxrsgc6ZgrswRuo7wBBEW7299IkQqgA/IlWOCQ8Hv7/MRWz
	tJGs+4VJalk+pFIvC6VFfOBTAjNuzQQE5qqI2GOGcliidszYZ32RA4Ly1C0o9IVo8oL7Sowk55HMD
	lm3DG5vFk+oDgrSIAIOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpZJJ-0008OI-7I; Mon, 22 Jul 2019 14:29:05 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpZIy-0008LB-Lt
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 14:28:46 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id E226C1F2; Mon, 22 Jul 2019 16:28:34 +0200 (CEST)
Date: Mon, 22 Jul 2019 16:28:33 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Rob Clark <robdclark@gmail.com>
Subject: Re: [PATCH v2] iommu: add support for drivers that manage iommu
 explicitly
Message-ID: <20190722142833.GB12009@8bytes.org>
References: <20190702202631.32148-2-robdclark@gmail.com>
 <20190710182844.25032-1-robdclark@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710182844.25032-1-robdclark@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_072844_866916_64CEA535 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Rob Clark <robdclark@chromium.org>, aarch64-laptops@lists.linaro.org,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Robin Murphy <robin.murphy@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 iommu@lists.linux-foundation.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Joe Perches <joe@perches.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 11:28:30AM -0700, Rob Clark wrote:
> --- a/include/linux/device.h
> +++ b/include/linux/device.h
> @@ -282,7 +282,8 @@ struct device_driver {
>  	struct module		*owner;
>  	const char		*mod_name;	/* used for built-in modules */
>  
> -	bool suppress_bind_attrs;	/* disables bind/unbind via sysfs */
> +	bool suppress_bind_attrs:1;	/* disables bind/unbind via sysfs */
> +	bool driver_manages_iommu:1;	/* driver manages IOMMU explicitly */

Who will set this bit?


Regards,

	Joerg

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
