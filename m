Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CC21E982D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 16:40:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xf18UXbKk4Q1TPN1/AXz3L0OwKKJV2xS8DOsverZoNQ=; b=iD1CiFNxFF1WtP
	QuWLx94fMsIX5iSD2133p9EgA8NSxg4EN7QsJFm/T5lKbeDIF/gOfkHC0sS6FbgyGCR3bxfm5EVvl
	+UnmQtsIuXHkQDqrQ+q3/fAfFPDx9oH2eC4TCobL8N1HqiRJlMIRwVFJGq5lrGRUhIFq8mcVDvroi
	/dvgykdAGG9XvmpdbRDLNgfN9hglh2HUNSSph9KbtbxmyseCzvzIsllKvTkXfMaq6EIdybMfRb1fm
	0xtKr1YHVnzBxxU7ROYUg+YYEeplh+v9fPVomOo6bG9IQQt7OwZfkILgM25vnwZN9KXZeqqgdqag0
	kBZRZhyX1hp6rhoss7ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfP8b-0003K1-QA; Sun, 31 May 2020 14:40:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfP8Q-0003Jf-4I
 for linux-arm-kernel@lists.infradead.org; Sun, 31 May 2020 14:40:23 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 88E2D206B6;
 Sun, 31 May 2020 14:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590936021;
 bh=6yQVUf6eZyFT6lMD1GCa340xEGAioytVxc9js4MHTtA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=q63VwJGZvgs9AhjZpY0fXN9BcBIiEyov3MRaTZDQsiX6saVwTUWz9tE5t4z6k3hYQ
 3cedlqnJ/TFbmsemKkxou43DrugEmzfxiOMj+GNpI0Y1Tr54qjOucpsFqRaisdyxVz
 23RCq+ADdezYf+qglashef+UdCmMv5gMQZuANppc=
Date: Sun, 31 May 2020 15:40:17 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: Re: [PATCH] iio: Kconfig: at91_adc: add COMPILE_TEST dependency to
 driver
Message-ID: <20200531154017.04fc727f@archlinux>
In-Reply-To: <20200525102744.131672-1-alexandru.ardelean@analog.com>
References: <20200525102744.131672-1-alexandru.ardelean@analog.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_074022_194007_70D143AB 
X-CRM114-Status: GOOD (  15.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexandre.belloni@bootlin.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, ludovic.desroches@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 25 May 2020 13:27:44 +0300
Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:

> Since changes can come from all sort of places, it may make sense to have
> this symbol as a dependency to make sure that the 'make allmodconfig' &&
> 'make allyesconfig' build rules cover this driver as well for a
> compile-build/test.
> 
> It seemed useful [recently] when trying to apply a change for this.
> 
> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
Makes sense.   Given this sort of change can expose weird an wonderful
dependencies that were previously hidden, I'll be wanting an
ack from at91 people.

Jonathan

> ---
>  drivers/iio/adc/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/iio/adc/Kconfig b/drivers/iio/adc/Kconfig
> index c48c00077775..c1f4c0aec265 100644
> --- a/drivers/iio/adc/Kconfig
> +++ b/drivers/iio/adc/Kconfig
> @@ -294,7 +294,7 @@ config ASPEED_ADC
>  
>  config AT91_ADC
>  	tristate "Atmel AT91 ADC"
> -	depends on ARCH_AT91
> +	depends on ARCH_AT91 || COMPILE_TEST
>  	depends on INPUT && SYSFS
>  	select IIO_BUFFER
>  	select IIO_TRIGGERED_BUFFER


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
