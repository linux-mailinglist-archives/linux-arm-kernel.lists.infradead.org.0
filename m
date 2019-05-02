Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80EC0120EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 19:20:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vMqNiJiuJ/t/h0YX/PobEznubMzPZCVezD16MMA6cFY=; b=PcD+ijP19w+pL6
	+IOR4BKQrWxk09bPZvUw3hKEaUUy0k/1F11qhLOX+XVOpghHVvzGj5GBx1OfSLG8jQl1nI5zwm0qX
	7W9Tt2b288IjOSWicZgbFs7yLmJ7jrbwRUrCi8MOQvNGCER1nrUntkrKVXIF4ckw7fvc8qWT8FKgl
	OHVNTCuTitrMV1SiJ7XdvCfj2xqxZv6H2fLo47N/ObyKuUUyjZ0JFYDMSwHhUFtN8v55J3rXQzGam
	xWvz0m5dO0iuLfTqDNDUD5zf/Xn6Tf43eVSnxR/NeAJZsIrVt/9Vm5xe6V42qlHNvLxppe7xPPCvo
	igiG2YTJFXI1DRBmWyKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMFNj-0005mR-GT; Thu, 02 May 2019 17:20:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMFNc-0005eo-KQ
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 17:20:22 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6A27620652;
 Thu,  2 May 2019 17:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556817612;
 bh=DNZEf28z285Xq5SbA4zrCjNHhVWVAuEwgjHxbQTOb+g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Iian5KzlS2pBwfqDAikYfYBebvSvWKxBKu8BJubTVMZLohGeorJoJD9VUpwCSrZ9D
 Nx0Mf5EhWuNsAAal7Rauj7ASlRTzo/vNxYB0OS2eSFsUePaTK6HcItGZ8pcduauqAj
 fViH4iah220qpQmoh5q8iWy7/5cVYk37cnVz4CLk=
Date: Thu, 2 May 2019 19:20:07 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dragan Cvetic <dragan.cvetic@xilinx.com>
Subject: Re: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
Message-ID: <20190502172007.GA1874@kroah.com>
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
 <1556402706-176271-3-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556402706-176271-3-git-send-email-dragan.cvetic@xilinx.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_102020_688865_16AE41DE 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, arnd@arndb.de,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Derek Kiernan <derek.kiernan@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 27, 2019 at 11:04:56PM +0100, Dragan Cvetic wrote:
> +#define DRIVER_NAME "xilinx_sdfec"
> +#define DRIVER_VERSION "0.3"

Version means nothing with the driver in the kernel tree, please remove
it.

> +#define DRIVER_MAX_DEV BIT(MINORBITS)

Why this number?  Why limit yourself to any number?

> +
> +static struct class *xsdfec_class;

Do you really need your own class?

> +static atomic_t xsdfec_ndevs = ATOMIC_INIT(0);

Why?

> +static dev_t xsdfec_devt;

Why?

Why not use misc_device for this?  Why do you need your own major with a
bunch of minor devices reserved ahead of time?  Why not just create a
new misc device for every individual device that happens to be found in
the system?  That will make the code a lot simpler and smaller and
easier.



> +
> +/**
> + * struct xsdfec_dev - Driver data for SDFEC
> + * @regs: device physical base address
> + * @dev: pointer to device struct
> + * @config: Configuration of the SDFEC device
> + * @open_count: Count of char device being opened
> + * @xsdfec_cdev: Character device handle
> + * @irq_lock: Driver spinlock
> + *
> + * This structure contains necessary state for SDFEC driver to operate
> + */
> +struct xsdfec_dev {
> +	void __iomem *regs;
> +	struct device *dev;
> +	struct xsdfec_config config;
> +	atomic_t open_count;
> +	struct cdev xsdfec_cdev;
> +	/* Spinlock to protect state_updated and stats_updated */
> +	spinlock_t irq_lock;
> +};
> +
> +static const struct file_operations xsdfec_fops = {
> +	.owner = THIS_MODULE,
> +};

No operations at all?  That's an easy driver :)

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
