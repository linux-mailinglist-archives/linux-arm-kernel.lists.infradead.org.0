Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC948D2AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 14:03:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RP1wPPYSrUgDqXWkcYLTlRf9E1HK37UXqc1jeBpjNYU=; b=i0sD49bYFZdWX0
	vaDvgmqLGyO07euDuCy5JewI6Sm3tGzRNFiEtA/FgAgwl8sHcAycHqnsZ0C8chuHsHZzwwoseewBY
	qbq6U8yEvNcRLBtBceo+TtrABJl8LBZ5VKs5NTxSsZR4YU1HLSKaX7hMRh72umleIOp/yFEV9gy49
	W0Y5b6Hbh5e1W6W4ckb1JpOObbQ3ox9EBmX/luTAIwoNozLoMQVwU64I6DpIDlKZ6CNnDRm7jFQNV
	iRwcm4yczH3Yz7pIbEbKhwacvVdAj20ZcOMvi9QUnMP0zulQjP0mrYSubFCkM4MaPI46w1i9cpATr
	jSozi3B82VGb1hQbqbKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxrzW-0003i8-Q4; Wed, 14 Aug 2019 12:02:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxrz0-0003hf-7M
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 12:02:27 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 95D952083B;
 Wed, 14 Aug 2019 12:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565784145;
 bh=72va8Gi4pOhpfpzk4mD/PEMy0g/X9+kT34ErtIuy8tk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G2XQwKkoFQ+dHKhkM27CpkipH3QuNPy3M4HOS9YTLhxJuVx8C07ZaWAuA3XvddCGq
 lPLdUa4SYFD2pa/3fW9Q3lvtEmSeXjhwdwr6GkDlNbln05wjZlcZplcbbxxFEZgVYi
 Iu2157btaNV3646VMQRfJOCMmPiDjjufAAY3mGR8=
Date: Wed, 14 Aug 2019 13:02:21 +0100
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH 1/8] arm64: memory: Fix virt_addr_valid() using
 __is_lm_address()
Message-ID: <20190814120221.zuguyh6tpku3nvtt@willie-the-truck>
References: <20190813170149.26037-1-will@kernel.org>
 <20190813170149.26037-2-will@kernel.org>
 <20190814091942.GA50688@arrakis.emea.arm.com>
 <20190814094819.4bdqaubqmbcm3zax@willie-the-truck>
 <20190814104022.GI50688@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814104022.GI50688@arrakis.emea.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_050226_377859_3C7993F6 
X-CRM114-Status: GOOD (  21.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Steve Capper <steve.capper@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Qian Cai <cai@lca.pw>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 11:40:23AM +0100, Catalin Marinas wrote:
> On Wed, Aug 14, 2019 at 10:48:20AM +0100, Will Deacon wrote:
> > On Wed, Aug 14, 2019 at 10:19:42AM +0100, Catalin Marinas wrote:
> > > On Tue, Aug 13, 2019 at 06:01:42PM +0100, Will Deacon wrote:
> > > > -#define _virt_addr_is_linear(kaddr)	\
> > > > -	(__tag_reset((u64)(kaddr)) >= PAGE_OFFSET)
> > > > +#define virt_addr_valid(addr)	({					\
> > > > +	__typeof__(addr) __addr = addr;					\
> > > > +	__is_lm_address(__addr) && pfn_valid(virt_to_pfn(__addr));	\
> > > > +})
> > > 
> > > There is a slight change of semantics here but I don't think it's an
> > > issue currently. __is_lm_address() is true even for a user address, so
> > > at least the first part of virt_addr_valid() now accepts such addresses.
> > > The pfn would be wrong eventually because of the virt-to-phys offsetting
> > > and pfn_valid() false but we rely on this rather than checking it's a
> > > kernel address. Slight concern as this macro is called from drivers.
> > > 
> > > Should we keep the PAGE_OFFSET check as well?
> > 
> > In virt_addr_valid() or __is_lm_address()?
> > 
> > To be honest with you, I'm not even sure what virt_addr_valid() is supposed
> > to do with non-linear kernel addresses: look at powerpc and riscv, who
> > appear to convert the address straight to a pfn. Many callers check against
> > is_vmalloc_addr() first, but not all of them.
> 
> Even if they call is_vmalloc_addr(), it would return false for user
> address. Anyway, at a quick look, I couldn't find any virt_addr_valid()
> where it would be an issue.

Sure, but my point was more that it would be crazy to have a macro that
accepted user and linear addresses, but not vmalloc addresses!

> > I think passing in a *user* address would be a huge bug in the caller,
> > just like it would be if you called virt_to_phys() on a user address.
> > If we care about that, then I think __is_lm_address() should be the one
> > doing the check against PAGE_OFFSET.
> > 
> > Thoughts? I'd be inclined to leave this patch as it is.
> 
> Leave it as it is. The way pfn_valid() is written it wouldn't return
> true for a user address due to the fact that virt_to_phys() cannot
> return the same physical address for a user and linear map one.
> 
> For this patch:
> 
> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

Ta,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
