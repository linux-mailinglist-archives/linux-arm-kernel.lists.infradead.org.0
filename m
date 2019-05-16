Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EC920B6A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 17:40:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RACHem8vnsMXkz9Op+yPUzkz6RXYndcWxymsvoBla14=; b=GnzLjW4jHsxe3c
	c/dSbWLXBtIErmDgQxcwJh8XBRnllR8DLcLsc79GIgVciVnIa7QFQsASz3stW0T2Rz6jwkBot4KUf
	uQXG9X2RTLmaeLhRssthm9uoNVv1WfrYAq7xNUqJHFQ/UwBedlHe1MPD1LZ6AyRc6L31jCp+ZTe+x
	JP0dAug1r5gZuVvWIe9m20tdqYpY1tV6sz05gp0mxAEkhrZ2NL9Vyc9yJmNW26p7yBaGtOLXav8gm
	L6UHshPaoVwNaDLrelgYEWVBQIz9T8itAWTyOzfZ77OWC0xNW0yPejgmLd9Az5plZYhVXYEe58ZT+
	hS83EgSMMkRPaG9793Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRIUL-0007tt-0c; Thu, 16 May 2019 15:40:09 +0000
Received: from static-50-53-52-16.bvtn.or.frontiernet.net ([50.53.52.16]
 helo=midway.dunlab)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRIUA-0007tb-37; Thu, 16 May 2019 15:39:58 +0000
Subject: Re: [PATCH v3 3/3] fdt: add support for rng-seed
To: Hsin-Yi Wang <hsinyi@chromium.org>, linux-arm-kernel@lists.infradead.org
References: <20190516102817.188519-1-hsinyi@chromium.org>
 <20190516102817.188519-3-hsinyi@chromium.org>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <932a02f2-a1d3-a8d7-c7a4-2891024d10a2@infradead.org>
Date: Thu, 16 May 2019 08:39:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190516102817.188519-3-hsinyi@chromium.org>
Content-Language: en-US
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yu Zhao <yuzhao@google.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 Miles Chen <miles.chen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 James Morse <james.morse@arm.com>, Chintan Pandya <cpandya@codeaurora.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/16/19 3:28 AM, Hsin-Yi Wang wrote:
> Introducing a chosen node, rng-seed, which is an entropy that can be
> passed to kernel called very early to increase initial device
> randomness. Bootloader should provide this entropy and the value is
> read from /chosen/rng-seed in DT.
> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
> change v2->v3:
> 1. use arch hook for fdt pgprot change
> 2. handle CONFIG_KEXEC
> ---
>  Documentation/devicetree/bindings/chosen.txt | 14 +++++
>  drivers/of/fdt.c                             | 55 ++++++++++++++++++++
>  2 files changed, 69 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/chosen.txt b/Documentation/devicetree/bindings/chosen.txt
> index 45e79172a646..fef5c82672dc 100644
> --- a/Documentation/devicetree/bindings/chosen.txt
> +++ b/Documentation/devicetree/bindings/chosen.txt
> @@ -28,6 +28,20 @@ mode) when EFI_RNG_PROTOCOL is supported, it will be overwritten by
>  the Linux EFI stub (which will populate the property itself, using
>  EFI_RNG_PROTOCOL).
>  
> +rng-seed
> +-----------
> +
> +This property served as an entropy to add device randomness. It is parsed

                 serves


> +as a byte array, e.g.
> +
> +/ {
> +	chosen {
> +		rng-seed = <0x31 0x95 0x1b 0x3c 0xc9 0xfa 0xb3 ...>;
> +	};
> +};
> +
> +This random value should be provided by bootloader.
> +
>  stdout-path
>  -----------
>  



-- 
~Randy

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
