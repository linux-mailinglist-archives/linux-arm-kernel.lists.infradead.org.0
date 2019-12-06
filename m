Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A0B11557A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 17:34:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vanSb4nFnzfdDQo0vBySAo4cmuSP7SFnvwjHe1clMRA=; b=ZokW3y17W1Hr+w
	IZLjAGsd2tQKjTqsRFAnd3W0AM8TwcjTKbju0ffvEQEJ7CgtXr/ux9Ih5E6Ufm0YsRERAuEl9u4CO
	z516bWY+NXXU5mEt9qV3L7mD88zeoD9rUyvdYJHF/pMib69gZwASz0jVdUhNTFMn1LJsSzS44wZ7S
	Sp3UKlRY+CebBfzhPE0o9hr3AdDG15nqayxUcrlwYon7j7Fqw+rHm1wFak1d/zMq0AYsBHRjdq/Jv
	NuxwNxOGjuKHw45HEyXCncyHzmggPpB2G3UrpKy5mvBMLEU/rrHMm67h5lEudmI7f0/zhTEyJcnmo
	kDjCdK9rPRqnHBcVpxlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idGYS-0007vv-Jd; Fri, 06 Dec 2019 16:34:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idGYL-0007vU-Rz
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 16:34:03 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 92B3B20659;
 Fri,  6 Dec 2019 16:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575650041;
 bh=FwQ6VscWsqMam9RlefGeqZZTmrK5VLbts/8e96NHtDs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CToJK3TfBlAqQ5tLy/hzDY80uIkNeEM9nJPTjtUgEOjLxPbJ85Qajp/UVxSF54EXc
 RE2MOUm0obEjPwfo2DqqyxhJsQvv2pdtxhYXJXwg0IsS9VXOWN5d+NMcc7Mz7itNyM
 EIWlfHOPdtOpzMsfhZitLXWQa15aD1euwwqoeqZc=
Date: Fri, 6 Dec 2019 17:33:58 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Thomas Renninger <trenn@suse.de>
Subject: Re: [PATCH 1/3] cpuinfo: add sysfs based arch independent cpuinfo
 framework
Message-ID: <20191206163358.GB86904@kroah.com>
References: <20191206162421.15050-1-trenn@suse.de>
 <20191206162421.15050-2-trenn@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191206162421.15050-2-trenn@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_083401_945186_3E05E8C1 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-arch@vger.kernel.org, Felix Schnizlein <fschnizlein@suse.de>,
 Felix Schnizlein <fschnizlein@suse.com>, x86@kernel.org, will.deacon@arm.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, fschnitzlein@suse.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 06, 2019 at 05:24:19PM +0100, Thomas Renninger wrote:
> --- /dev/null
> +++ b/drivers/base/cpuinfo.c
> @@ -0,0 +1,48 @@
> +/*
> + * Copyright (C) 2017 SUSE Linux GmbH
> + * Written by: Felix Schnizlein <fschnizlein@suse.com>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License version
> + * 2 as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful, but
> + * WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> + * General Public License for more details.
> + *
> + */

No SPDX line?  And you can drop the license boilerplate text as well
too.

> +
> +#include <linux/cpu.h>
> +#include <linux/module.h>
> +#include <linux/cpuinfo.h>
> +
> +static struct attribute_group cpuinfo_attr_group = {
> +	.attrs = cpuinfo_attrs,
> +	.name = "info"
> +};
> +
> +static int cpuinfo_add_dev(unsigned int cpu)
> +{
> +	struct device *dev = get_cpu_device(cpu);
> +
> +	return sysfs_create_group(&dev->kobj, &cpuinfo_attr_group);

Why are a set of attributes being added _after_ the device is created?
We have fixed up a lot of the "default attribute" logic since 2017,
perhaps you should be using that instead?


> +}
> +
> +static int cpuinfo_remove_dev(unsigned int cpu)
> +{
> +	struct device *dev = get_cpu_device(cpu);
> +
> +	sysfs_remove_group(&dev->kobj, &cpuinfo_attr_group);

Same here, I don't think this is needed.

> +	return 0;
> +}
> +
> +static int cpuinfo_sysfs_init(void)
> +{
> +	return cpuhp_setup_state(CPUHP_CPUINFO_PREPARE,
> +				 "base/cpuinfo:prepare",
> +				 cpuinfo_add_dev,
> +				 cpuinfo_remove_dev);
> +}
> +
> +device_initcall(cpuinfo_sysfs_init);
> diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
> index e51ee772b9f5..2c4c59304bdb 100644
> --- a/include/linux/cpuhotplug.h
> +++ b/include/linux/cpuhotplug.h
> @@ -78,6 +78,7 @@ enum cpuhp_state {
>  	CPUHP_SH_SH3X_PREPARE,
>  	CPUHP_NET_FLOW_PREPARE,
>  	CPUHP_TOPOLOGY_PREPARE,
> +	CPUHP_CPUINFO_PREPARE,
>  	CPUHP_NET_IUCV_PREPARE,
>  	CPUHP_ARM_BL_PREPARE,
>  	CPUHP_TRACE_RB_PREPARE,
> diff --git a/include/linux/cpuinfo.h b/include/linux/cpuinfo.h
> new file mode 100644
> index 000000000000..112ff76d64d5
> --- /dev/null
> +++ b/include/linux/cpuinfo.h
> @@ -0,0 +1,43 @@
> +/*
> + * Copyright (C) 2017 SUSE Linux GmbH
> + * Written by: Felix Schnizlein <fschnizlein@suse.com>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License version
> + * 2 as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful, but
> + * WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> + * General Public License for more details.

SPDX and boilerplate.


> + */
> +#ifndef _LINUX_CPUINFO_H
> +#define _LINUX_CPUINFO_H
> +
> +#ifdef CONFIG_HAVE_CPUINFO_SYSFS
> +extern struct attribute *cpuinfo_attrs[];

No need for thie #ifdef really, right?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
