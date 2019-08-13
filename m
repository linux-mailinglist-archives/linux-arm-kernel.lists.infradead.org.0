Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBFF8ADC8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 06:34:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YgVFaJYOzvfSyAeMTZRDwVf94y/qVq7NESeQZWrsm2Y=; b=eJ76ZMcdSrgkea
	Pcw7c6GzbRWLln/PJb4bT4YpqL+xf+1KRuPPixHb+p8hW/ee+qhzzovGMoqoVorA9IJX2wIvFqlkB
	RD7pis/1MbuH6KyXsdSCuvIBjWg4byGQBATQ8sR3MAX5fR1WRfEWF+2V1eP906fqSsymfncXG//QU
	p1MxYQ0OOgOJszv+vG7XobMdoDg/bZofaEn8Rwn4FbKHzq++ODL9Iz03pJLMzHlLLAKx3OrxfsSrU
	pZ1xqex0AxY107th9+Ovi0ZoeiOE7+yUtGQxYOW4YmlUoYn45ANFTyVZJM2WkUeJ0UpBIJnrQ6/Zx
	X+W0kkWsZt0BiK3Un19Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxOWI-0004wQ-25; Tue, 13 Aug 2019 04:34:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxOW5-0004vz-Mt
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 04:34:38 +0000
Received: from localhost (unknown [106.201.103.22])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D145A20644;
 Tue, 13 Aug 2019 04:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565670876;
 bh=LeDopwTuWI+vg3sAxESkUP1Ad5woiNmLizqxL2IUUjM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2m6MPJ5tm+CEzskDxqHh9F5ecwuPmPFOBWaBViK3MhhhWAkFnTetCXd5ZZllNn9EW
 EvujBk4rI/uez+gJqjt7AKpovUYUPsV8xcNohYbUEs89CXz7wyihUSeXqeEWSDZQ6a
 gd+NmLgXwRhYiYmrZZWdTko2muDs9IZgs4W+WBH0=
Date: Tue, 13 Aug 2019 10:03:24 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 2/7] dma: iop-adma: include prefetch.h
Message-ID: <20190813043324.GN12733@vkoul-mobl.Dlink>
References: <20190809162956.488941-1-arnd@arndb.de>
 <20190809163334.489360-1-arnd@arndb.de>
 <20190809163334.489360-2-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190809163334.489360-2-arnd@arndb.de>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_213437_773158_638B1029 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kbuild test robot <lkp@intel.com>, linux-gpio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 soc@kernel.org, linux-i2c@vger.kernel.org, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09-08-19, 18:33, Arnd Bergmann wrote:
> Compile-testing this driver fails on m68k without the
> extra header inclusion.

Please change title to "dmaengine: iop-adma: include prefetch.h"

After that:

Acked-by: Vinod Koul <vkoul@kernel.org>

> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/dma/iop-adma.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/dma/iop-adma.c b/drivers/dma/iop-adma.c
> index c6c0143670d9..7857b54770d1 100644
> --- a/drivers/dma/iop-adma.c
> +++ b/drivers/dma/iop-adma.c
> @@ -16,6 +16,7 @@
>  #include <linux/spinlock.h>
>  #include <linux/interrupt.h>
>  #include <linux/platform_device.h>
> +#include <linux/prefetch.h>
>  #include <linux/memory.h>
>  #include <linux/ioport.h>
>  #include <linux/raid/pq.h>
> -- 
> 2.20.0

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
