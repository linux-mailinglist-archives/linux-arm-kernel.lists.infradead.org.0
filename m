Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B6895E04
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 13:57:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xkcVEKq7+GJ1q6r4gt2TSHrCHE02SBKFVfN6agF+S6U=; b=YUHNBxZtTbVB9f
	QiJRWLcIJTHlD7iYeXTxxLkpjJIgvh3SnKqD6Zz7KBYlV4A50QDyPXcgou36yw9ppNywEsyzN8gmx
	Fnt+8fRzmy2Kv4WoJBRx4MLFeMl6fp2W7lxd1gmLwgfoz2SGja084b3j2MM6LlDOojGn9b6qgNbpC
	wWBNQGgGOvcmE6nlWZ8uQfwr/otiHc+XNz8jAWei1a6fg34spnnYvMAURLoc0AjCq+zU+kMn07fCW
	rGHRxWcjIovXTSUGwR6KxX+oMQkFlkgt9+BI7IlpkM5rzrNBWXdmWY/xyZ0GcpzUqCTsjD2O/Hkns
	f1nDgtL16zzOFJO+XOgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i02ll-0007jo-6F; Tue, 20 Aug 2019 11:57:45 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i02l3-0007gz-37
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 11:57:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=viiM5yef80mqYHoKubrPSE4uLR54U0Urs44z5uxA47U=; b=mQnUignnqiBHoHq4snqG+ZRNV
 vZZ9u5OQGD/zs0XLpbn6qTbGj3DCsO8rDSF1Mp9exhjRsGuIfplteaRjLYaIt2S1X37WLjaZHt2qo
 BIZOigOwmPOnGyn4HjCsbrUH69ZUPB0TZ2wA34q/E2kBRzHKahQG6M0T86P31KOhRwZMvmf2sw+7j
 IhhmGGkbzxSYZLjH6rL6hJ4q9QKGR5raLcNs7i0Sdpt+M/kB/w5lUVbKMH3LTDoXlmtWvYoD1IozU
 Mlin2XuG2Fzf34UwLqObDThoIECgqfzSGVSTKsRl1n4IJK0zhZbioBrn/ARbJm8CFs2W9JrWqhv2G
 /of5Tn8vQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:47222)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i02kp-00021b-52; Tue, 20 Aug 2019 12:56:47 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i02ko-0005mY-1U; Tue, 20 Aug 2019 12:56:46 +0100
Date: Tue, 20 Aug 2019 12:56:46 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Chester Lin <clin@suse.com>
Subject: Re: [PATCH] efi/arm: fix allocation failure when reserving the
 kernel base
Message-ID: <20190820115645.GP13294@shell.armlinux.org.uk>
References: <20190802053744.5519-1-clin@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802053744.5519-1-clin@suse.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_045701_134551_94AF2ADC 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Juergen Gross <JGross@suse.com>,
 "linux-efi@vger.kernel.org" <linux-efi@vger.kernel.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "guillaume.gardet@arm.com" <guillaume.gardet@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>, Joey Lee <JLee@suse.com>,
 "geert@linux-m68k.org" <geert@linux-m68k.org>,
 "ren_guo@c-sky.com" <ren_guo@c-sky.com>, Gary Lin <GLin@suse.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 05:38:54AM +0000, Chester Lin wrote:
> diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
> index f3ce34113f89..909b11ba48d8 100644
> --- a/arch/arm/mm/mmu.c
> +++ b/arch/arm/mm/mmu.c
> @@ -1184,6 +1184,9 @@ void __init adjust_lowmem_bounds(void)
>  		phys_addr_t block_start = reg->base;
>  		phys_addr_t block_end = reg->base + reg->size;
>  
> +		if (memblock_is_nomap(reg))
> +			continue;
> +
>  		if (reg->base < vmalloc_limit) {
>  			if (block_end > lowmem_limit)
>  				/*

I think this hunk is sane - if the memory is marked nomap, then it isn't
available for the kernel's use, so as far as calculating where the
lowmem/highmem boundary is, it effectively doesn't exist and should be
skipped.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
