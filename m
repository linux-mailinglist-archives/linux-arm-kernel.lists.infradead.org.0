Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FD3483BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 15:19:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+BjeH/0K/pIknHCbq6tJi3803OCnWVx5JlOOnNTJE1Q=; b=Q7YQZXCS4xb89TbRsTLUuIMQ6
	yHdKxCVdTt9yi61XWrqXPz+ZfV9LRR782f7eP+klfRqBefAENAMRCFFIrCRGUoAbKXssofZuSje2y
	rrMaY+qAe3GUgqeugGybcrB7rCT9p57Wj1ite0pYjO3KJBR17WI8jXn89n2sm6AuSxoWWdRwygCzZ
	PthhgdtCurfElBJ2BaBOElbSZujEJCQy3u7rzNxhZ2wHHbtyR4c8GnwdaAEqzW6XaER1utPZdDJqO
	rjhk5urs1GH0SSao0e7GNbdcIjbAR3ZbpcGu2uwr4pAF+fssS6rw6OkzWHOA0k2XIuE5sZuUJA8En
	9mHvDLkKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrXo-0002vY-RE; Mon, 17 Jun 2019 13:19:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrXe-0002uo-6v
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 13:19:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7BAED28;
 Mon, 17 Jun 2019 06:19:20 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C45D13F246;
 Mon, 17 Jun 2019 06:19:19 -0700 (PDT)
Subject: Re: [PATCH] coresight: platform: add OF/APCI dependency
To: arnd@arndb.de, mathieu.poirier@linaro.org,
 alexander.shishkin@linux.intel.com
References: <20190617125908.1674177-1-arnd@arndb.de>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <f91b2cad-a16e-6474-59a6-82ad890a3a54@arm.com>
Date: Mon, 17 Jun 2019 14:19:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190617125908.1674177-1-arnd@arndb.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_061922_301069_340D5138 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On 17/06/2019 13:58, Arnd Bergmann wrote:
> When neither CONFIG_OF nor CONFIG_ACPI are set, we get a harmless
> build warning:
> 
> drivers/hwtracing/coresight/coresight-platform.c:26:12: error: unused function 'coresight_alloc_conns'
>        [-Werror,-Wunused-function]
> static int coresight_alloc_conns(struct device *dev,
>             ^
> drivers/hwtracing/coresight/coresight-platform.c:46:1: error: unused function 'coresight_find_device_by_fwnode'
>        [-Werror,-Wunused-function]
> coresight_find_device_by_fwnode(struct fwnode_handle *fwnode)
> 
> As the code is useless in that configuration anyway, just add
> a Kconfig dependency that only allows building when at least
> one of the two is set.
> 
> This should not hinder compile-testing, as CONFIG_OF can be
> enabled on any architecture.

Ok, that justifies why "not using ARM || ARM64" is better.


> 
> Fixes: ac0e232c12f0 ("coresight: platform: Use fwnode handle for device search")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

> ---
>   drivers/hwtracing/coresight/Kconfig | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/hwtracing/coresight/Kconfig b/drivers/hwtracing/coresight/Kconfig
> index 5487d4a1abc2..14638db4991d 100644
> --- a/drivers/hwtracing/coresight/Kconfig
> +++ b/drivers/hwtracing/coresight/Kconfig
> @@ -4,6 +4,7 @@
>   #
>   menuconfig CORESIGHT
>   	bool "CoreSight Tracing Support"
> +	depends on OF || ACPI
>   	select ARM_AMBA
>   	select PERF_EVENTS
>   	help
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
