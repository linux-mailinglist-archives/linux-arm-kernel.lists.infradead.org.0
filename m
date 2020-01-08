Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 309F1134886
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 17:52:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u74RGVszO1MSUkfE8b22+JhoY21DSMlxsFYNzazm8YM=; b=H/Q1mopiVCF7bg
	fdxq4jBwxF19jNLUjZ5X8jmhz4KrK2sDXdXY6GKbwwAcdD40iyJiS7oGA3EHqIe4on73oes8T/taF
	CEd+y3sFsixuCYgAanDLUfK+wmgHcfmm6sj2bBoYxWuSoIJ9FzYkOxMXNYvehmEPmRC3c20qdR3rM
	Lw2MwgEJu/Hwutrt+JOWu3IN83ixi5J2T2xPa/JHRLEsbt3nSzEOo+zgNDgHq+uFXqFa+WMP9usZ7
	LH2h/Aytshjyt6lMQm3YVbeNF96fisPdNtE2x4VcgxbB1ATCujBbagGePZgONq/n5MUKPiq7Q1DuC
	BCQRW7gOfbagK66loPtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipEZQ-0005to-IX; Wed, 08 Jan 2020 16:52:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipEZF-0005ol-Eo; Wed, 08 Jan 2020 16:52:26 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2243420678;
 Wed,  8 Jan 2020 16:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578502344;
 bh=gr74FHTiieCttQT9nIGhGKdVo2KGuUdcTqpLjQlvpBk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OEWjaIOs21VxjS0qPRpVwIJHHcomsxWvOmWeG4EQLnBsTyzjCJ0+eyTseRpprZvd6
 IwFwDiEwPOScxfsmRACklwLKCzTZwunyD6+oZQdbxkErZeXygUyF0fTrqWm+ir1czK
 Biu5bvZgmTVwPxT9LUFyOCUTmDOqOJrn9/swa3gE=
Date: Wed, 8 Jan 2020 16:52:15 +0000
From: Will Deacon <will@kernel.org>
To: AKASHI Takahiro <takahiro.akashi@linaro.org>
Subject: Re: [PATCH v3 1/2] libfdt: include fdt_addresses.c
Message-ID: <20200108165214.GA19760@willie-the-truck>
References: <20191209030345.5735-1-takahiro.akashi@linaro.org>
 <20191209030345.5735-2-takahiro.akashi@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209030345.5735-2-takahiro.akashi@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_085225_520010_97154D76 
X-CRM114-Status: GOOD (  14.33  )
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
Cc: catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, james.morse@arm.com, frowand.list@gmail.com,
 kexec@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 09, 2019 at 12:03:44PM +0900, AKASHI Takahiro wrote:
> In the implementation of kexec_file_loaded-based kdump for arm64,
> fdt_appendprop_addrrange() will be needed.
> 
> So include fdt_addresses.c in making libfdt.
> 
> Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Frank Rowand <frowand.list@gmail.com>
> ---
>  lib/Makefile        | 2 +-
>  lib/fdt_addresses.c | 2 ++
>  2 files changed, 3 insertions(+), 1 deletion(-)
>  create mode 100644 lib/fdt_addresses.c

I'd like to take this via arm64 and it looks like it follows what we do
for other fdt files under lib/.

Rob, Frank -- are you ok with me picking this up, please?

Will


> diff --git a/lib/Makefile b/lib/Makefile
> index 93217d44237f..c20b1debe9b4 100644
> --- a/lib/Makefile
> +++ b/lib/Makefile
> @@ -223,7 +223,7 @@ KASAN_SANITIZE_stackdepot.o := n
>  KCOV_INSTRUMENT_stackdepot.o := n
>  
>  libfdt_files = fdt.o fdt_ro.o fdt_wip.o fdt_rw.o fdt_sw.o fdt_strerror.o \
> -	       fdt_empty_tree.o
> +	       fdt_empty_tree.o fdt_addresses.o
>  $(foreach file, $(libfdt_files), \
>  	$(eval CFLAGS_$(file) = -I $(srctree)/scripts/dtc/libfdt))
>  lib-$(CONFIG_LIBFDT) += $(libfdt_files)
> diff --git a/lib/fdt_addresses.c b/lib/fdt_addresses.c
> new file mode 100644
> index 000000000000..23610bcf390b
> --- /dev/null
> +++ b/lib/fdt_addresses.c
> @@ -0,0 +1,2 @@
> +#include <linux/libfdt_env.h>
> +#include "../scripts/dtc/libfdt/fdt_addresses.c"
> -- 
> 2.24.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
