Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B19B4197A61
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 13:08:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l9n16Of3duQXmtaq2F5qdfbmKUQXypDGewqbTEXbHsc=; b=JDXfdV751sID8A
	LAFNyV/Al6nYAF01RTEnqD5T99Y0k3BT48htvCQXLdlAegOosVccl2X/q2ffr94cZe/3qB2t2HJPR
	EWoj4Z7IIUIHCa+4bYe+ElYlIhP9yUc3EU6jwuX57QcZdz7iXRNxiTIWJSzDSJ/9nvvqPSVEmB9Vd
	H9SkCjIaAoGYv0CNZ36PQPlxb328dMGf8yNzW8+pkSyAVRsbJDShgAjRC7HWs3K1b3JPTQgAydDnC
	473M+WRU8/uhxFjTOxXgBl4lwrBz6QzYmY8jvCAKNBKUuI3wx2iVJ0JP6uuV/3i9j/t5LqYJebi/5
	9LZmMega1X3RmRjqkTqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIsH2-0002fJ-4I; Mon, 30 Mar 2020 11:08:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIsGq-0002em-U9
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 11:07:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DE84D31B;
 Mon, 30 Mar 2020 04:07:55 -0700 (PDT)
Received: from C02TD0UTHF1T.local (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D7A853F52E;
 Mon, 30 Mar 2020 04:07:53 -0700 (PDT)
Date: Mon, 30 Mar 2020 12:07:51 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: George Spelvin <lkml@sdf.org>
Subject: Re: [RFC PATCH v1 39/50] arm: kexec_file: Avoid temp buffer for RNG
 seed
Message-ID: <20200330110751.GC1309@C02TD0UTHF1T.local>
References: <202003281643.02SGhMtr029198@sdf.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202003281643.02SGhMtr029198@sdf.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_040757_020940_080ACCB8 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi George,

Nit: s/arm/arm64/ in the title

On Tue, Dec 10, 2019 at 10:45:27AM -0500, George Spelvin wrote:
> After using get_random_bytes(), you want to wipe the buffer
> afterward so the seed remains secret.
> 
> In this case, we can eliminate the temporary buffer entirely.
> fdt_setprop_placeholder returns a pointer to the property value
> buffer, allowing us to put the random data directy in there without
> using a temporary buffer at all.  Faster and less stack all in one.
> 
> Signed-off-by: George Spelvin <lkml@sdf.org>
> Cc: Hsin-Yi Wang <hsinyi@chromium.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  arch/arm64/kernel/machine_kexec_file.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/machine_kexec_file.c
> index 7b08bf9499b6b..69e25bb96e3fb 100644
> --- a/arch/arm64/kernel/machine_kexec_file.c
> +++ b/arch/arm64/kernel/machine_kexec_file.c
> @@ -106,12 +106,12 @@ static int setup_dtb(struct kimage *image,
>  
>  	/* add rng-seed */
>  	if (rng_is_initialized()) {
> -		u8 rng_seed[RNG_SEED_SIZE];
> -		get_random_bytes(rng_seed, RNG_SEED_SIZE);
> -		ret = fdt_setprop(dtb, off, FDT_PROP_RNG_SEED, rng_seed,
> -				RNG_SEED_SIZE);
> +		void *rng_seed;
> +		ret = fdt_setprop_placeholder(dtb, off, FDT_PROP_RNG_SEED,
> +				RNG_SEED_SIZE, &rng_seed);
>  		if (ret)
>  			goto out;
> +		get_random_bytes(rng_seed, RNG_SEED_SIZE);

This looks sane to me, so FWIW:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

>  	} else {
>  		pr_notice("RNG is not initialised: omitting \"%s\" property\n",
>  				FDT_PROP_RNG_SEED);
> -- 
> 2.26.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
