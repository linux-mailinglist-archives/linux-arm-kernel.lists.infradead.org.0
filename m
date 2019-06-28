Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F12597CB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 11:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AnmAP611n7AtHQYaCB7sqUvd16zkbBqyUtFtqPso3WM=; b=aA23vRAszSLa7l
	IjWEpo7PBF9MWsBfC6NgDEQWYJ2AlgGIcIUYIpkuejQE/TFexAkIqbRDZBLdFhHXA/RifJyW5xYb/
	VvHZIikZuiVfe/gRVPkeFYDsu/7nDIM35UpVDdLasLL+WU1ksImOUdq5fvVCkhDPiqopHrewhhZ6j
	zCPrxMxgbZ0V6Q1BVAcITEcLrjYJGpxXC/d8zwgn6AL4ykh4KRUi/1F66ZTApXRww4Vva9MBf7xDj
	1Nr3EpPtu/9FS7eN40KJ/KCIBinci5wh5eQp/O6ozxEm2JiDYYCLpJAvpYh4KtENuXXRCf3oAYMK5
	pOUsVZ84UA22JmQQsrqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgnPa-0007eX-Aj; Fri, 28 Jun 2019 09:43:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgnPF-0007e2-0u
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 09:42:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5FEC628;
 Fri, 28 Jun 2019 02:42:56 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E4B553F718;
 Fri, 28 Jun 2019 02:42:53 -0700 (PDT)
Date: Fri, 28 Jun 2019 10:42:51 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Subject: Re: [PATCH v6 3/3] arm64: kexec_file: add rng-seed support
Message-ID: <20190628094251.GC36437@lakrids.cambridge.arm.com>
References: <20190612043258.166048-1-hsinyi@chromium.org>
 <20190612043258.166048-4-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612043258.166048-4-hsinyi@chromium.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_024257_152669_EA35D335 
X-CRM114-Status: GOOD (  21.34  )
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
Cc: devicetree@vger.kernel.org, Yu Zhao <yuzhao@google.com>,
 Kees Cook <keescook@chromium.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 Miles Chen <miles.chen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 James Morse <james.morse@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 12:33:02PM +0800, Hsin-Yi Wang wrote:
> Adding "rng-seed" to dtb. It's fine to add this property if original
> fdt doesn't contain it. Since original seed will be wiped after
> read, so use a default size 128 bytes here.

Why is 128 bytes the default value?

I didn't see an update to Documentation/devicetree/bindings/chosen.txt,
so it's not clear to me precisely what we expect.

> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> ---
> change log v5->v6:
> * no change
> ---
>  arch/arm64/kernel/machine_kexec_file.c | 22 +++++++++++++++++++++-
>  1 file changed, 21 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/machine_kexec_file.c
> index 58871333737a..d40fde72a023 100644
> --- a/arch/arm64/kernel/machine_kexec_file.c
> +++ b/arch/arm64/kernel/machine_kexec_file.c
> @@ -27,6 +27,8 @@
>  #define FDT_PROP_INITRD_END	"linux,initrd-end"
>  #define FDT_PROP_BOOTARGS	"bootargs"
>  #define FDT_PROP_KASLR_SEED	"kaslr-seed"
> +#define FDT_PROP_RNG_SEED	"rng-seed"
> +#define RNG_SEED_SIZE		128
>  
>  const struct kexec_file_ops * const kexec_file_loaders[] = {
>  	&kexec_image_ops,
> @@ -102,6 +104,23 @@ static int setup_dtb(struct kimage *image,
>  				FDT_PROP_KASLR_SEED);
>  	}
>  
> +	/* add rng-seed */
> +	if (rng_is_initialized()) {
> +		void *rng_seed = kmalloc(RNG_SEED_SIZE, GFP_ATOMIC);

For 128 bytes, it would be better to use a buffer on the stack. That
avoids the possibility of the allocation failing.

> +		get_random_bytes(rng_seed, RNG_SEED_SIZE);
> +
> +		ret = fdt_setprop(dtb, off, FDT_PROP_RNG_SEED, rng_seed,
> +				RNG_SEED_SIZE);
> +		kfree(rng_seed);
> +
> +		if (ret)
> +			goto out;

If the RNG wasn't initialised, we'd carry on with a warning. Why do we
follow a different policy here?

Thanks,
Mark.

> +
> +	} else {
> +		pr_notice("RNG is not initialised: omitting \"%s\" property\n",
> +				FDT_PROP_RNG_SEED);
> +	}
> +
>  out:
>  	if (ret)
>  		return (ret == -FDT_ERR_NOSPACE) ? -ENOMEM : -EINVAL;
> @@ -110,7 +129,8 @@ static int setup_dtb(struct kimage *image,
>  }
>  
>  /*
> - * More space needed so that we can add initrd, bootargs and kaslr-seed.
> + * More space needed so that we can add initrd, bootargs, kaslr-seed, and
> + * rng-seed.
>   */
>  #define DTB_EXTRA_SPACE 0x1000
>  
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
