Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D63F7A145
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 08:27:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aG+l3QrJFc7dA4epWK9PLlNULvN+DSYw2hAJTPWz3CM=; b=cGaLKRHH3dJNff
	aGu7oh0NLfdesg37bHRisrAbvM+8ZC1ItI/XDLeAazSzHwkqDrrvdtdL9DeO3/uYqMVFhGi9PlBMp
	eKseEtq4wU4PsMq7rLN42kN6icKkjoofGtwsT61FgQQNbs1RkwErH8LFH5Mmz45MnxopJg8a4RXM9
	NoASvM3DNkgqMJ3MCuWMGM6mv7Ht6MRhg+ipz7FKMQFeIUuS3FH5pfzX5Lyh3+wRViw1JEOzkj9P4
	8VFM6fdnNpKeueEaezxghsWyQ6FBE0xcR23aMZ1Z91Yu1mkfDYfIPuPfB4VBLvUMmsdknNVHT1ajm
	yCi7RHwYG01VtIAeIrJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsLbT-0001wA-BH; Tue, 30 Jul 2019 06:27:19 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsLbB-0001v3-G4
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 06:27:03 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 221D568AEF; Tue, 30 Jul 2019 08:26:52 +0200 (CEST)
Date: Tue, 30 Jul 2019 08:26:51 +0200
From: Christoph Hellwig <hch@lst.de>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH 4/5] dma-mapping: provide a better default
 ->get_required_mask
Message-ID: <20190730062651.GA29518@lst.de>
References: <20190725063401.29904-1-hch@lst.de>
 <20190725063401.29904-5-hch@lst.de>
 <CAMuHMdUBPj8AVSuDwaBB_4gRD6k7vzo0WAFJEkTUbxSw31bzUg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdUBPj8AVSuDwaBB_4gRD6k7vzo0WAFJEkTUbxSw31bzUg@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_232701_689265_5F6AE1F4 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-xtensa@linux-xtensa.org, Michal Simek <monstr@monstr.eu>,
 Parisc List <linux-parisc@vger.kernel.org>,
 Linux-sh list <linux-sh@vger.kernel.org>, Takashi Iwai <tiwai@suse.de>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 11:57:19AM +0200, Geert Uytterhoeven wrote:
> Hi Christoph,
> 
> On Thu, Jul 25, 2019 at 8:35 AM Christoph Hellwig <hch@lst.de> wrote:
> > Most dma_map_ops instances are IOMMUs that work perfectly fine in 32-bits
> > of IOVA space, and the generic direct mapping code already provides its
> > own routines that is intelligent based on the amount of memory actually
> > present.  Wire up the dma-direct routine for the ARM direct mapping code
> > as well, and otherwise default to the constant 32-bit mask.  This way
> > we only need to override it for the occasional odd IOMMU that requires
> > 64-bit IOVA support, or IOMMU drivers that are more efficient if they
> > can fall back to the direct mapping.
> 
> As I know you like diving into cans of worms ;-)
> 
> Does 64-bit IOVA support actually work in general? Or only on 64-bit
> platforms, due to dma_addr_t to unsigned long truncation on 32-bit?

Most IOMMUs use 32-bit IOVAs, and thus we default to the 32-bit mask
because it is common and failsafe vs the normal linux assumptions.
However the ia64 SGI SN2 platform, and the powerpc IBM ebus
implementations seem to require a 64-bit mask already, so we keep that
behavior as is.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
