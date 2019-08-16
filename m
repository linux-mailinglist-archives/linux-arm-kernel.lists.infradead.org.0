Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A35D906E9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 19:31:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zWOlrVeAWN0NRBgShVt3TqDI5yYU9zG6KMJIF0sUpUA=; b=TpKOyvfBUKIsro
	g+UeImQzVp6z1vA+lsjqeqvZw6Lh8yHAsHxe71xF0jmN6+BjothuVxadKePIBmkI6GMtXFJ97/5Co
	UVUzdcNv4N/ez9D6S4ZL8IZfiW5jbrjHSKlUXjfkw6COyHiCsnXbuJUYETcKhyGv4jBfZyDQSD+S5
	PVZXf4MMn7ywF5u+FOBhaCpPZA4FQC3Tc+YXPS6f5NJ79zUeHfJDoiFQ26/Gic4NUpthPq6D0tAhW
	fI9VtE9xCqh9biwoPRbJqIAMcY1jGdwGq3L7qLpW38pdwOTXaLEDw43mQHY7zSGHjWH2129Y2xTls
	DMaggN5Uu/LsGBbcATwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyg4d-0000Yj-KJ; Fri, 16 Aug 2019 17:31:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyg4S-0000YQ-Ld
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 17:31:25 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7983D2086C;
 Fri, 16 Aug 2019 17:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565976683;
 bh=7UbpCD1eMEdhuE0pVTSmVthW5ADpKtqL/oqKqCN+HEw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LaAnW7Hy029sRfOJ26P9ooRMDVttHdguTvMjat5nc99EUXzMN+g9WMxOwM1dXJPb5
 bzS+jtNUqmYhQDy0h+E7F6sfWJBaB+AAIxRpe05xEh7d5AcpaSW6E2fETpzfwyN7Jv
 fjwn73EdjqvOR3Xn6IGkIW6zAlcnUI3ffOP7Clmo=
Date: Fri, 16 Aug 2019 18:31:18 +0100
From: Will Deacon <will@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 6/6] arm64: document the choice of page attributes for
 pgprot_dmacoherent
Message-ID: <20190816173118.4rbbzuogfamfa554@willie-the-truck>
References: <20190816070754.15653-1-hch@lst.de>
 <20190816070754.15653-7-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816070754.15653-7-hch@lst.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_103124_730722_FCFA7F94 
X-CRM114-Status: GOOD (  17.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Shawn Anastasio <shawn@anastas.io>, linux-m68k@lists.linux-m68k.org,
 Guan Xuetao <gxt@pku.edu.cn>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-mips@vger.kernel.org, iommu@lists.linux-foundation.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, Paul Burton <paul.burton@mips.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Hogan <jhogan@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph,

Thanks for spinning this into a patch.

On Fri, Aug 16, 2019 at 09:07:54AM +0200, Christoph Hellwig wrote:
> Based on an email from Will Deacon.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/arm64/include/asm/pgtable.h | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> index 6700371227d1..6ff221d9a631 100644
> --- a/arch/arm64/include/asm/pgtable.h
> +++ b/arch/arm64/include/asm/pgtable.h
> @@ -435,6 +435,14 @@ static inline pmd_t pmd_mkdevmap(pmd_t pmd)
>  	__pgprot_modify(prot, PTE_ATTRINDX_MASK, PTE_ATTRINDX(MT_NORMAL_NC) | PTE_PXN | PTE_UXN)
>  #define pgprot_device(prot) \
>  	__pgprot_modify(prot, PTE_ATTRINDX_MASK, PTE_ATTRINDX(MT_DEVICE_nGnRE) | PTE_PXN | PTE_UXN)
> +/*
> + * DMA allocations for non-coherent devices use what the Arm architecture calls
> + * "Normal non-cacheable" memory, which permits speculation, unaligned accesses
> + * and merging of writes.  This is different from "Strongly Ordered" memory
> + * which is intended for MMIO and thus forbids speculation, preserves access
> + * size, requires strict alignment and also forces write responses to come from
> + * the endpoint.
> + */

Mind if I tweak the second sentence to be:

  This is different from "Device-nGnR[nE]" memory which is intended for MMIO
  and thus forbids speculation, preserves access size, requires strict
  alignment and can also force write responses to come from the endpoint.

? It's a small change, but it better fits with the arm64 terminology
("strongly ordered" is no longer used in the architecture).

If you're happy with that, I can make the change and queue this patch
for 5.4.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
