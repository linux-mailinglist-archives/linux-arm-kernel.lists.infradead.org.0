Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9E91735F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 12:20:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=90YPxaIkDlkATQbBgD8uz0UKDbZMz4AeIrwf5TI3fTU=; b=F7mTtwg9PCPf6k
	ec8uG9S2EP5NlO6NtnNPdsYxgVzD1aMdfXn6rru8saqeW+h6/gvy3bug2Vg2b0SLZCXSOkM7io4Oa
	QU55ljO+6+GpnmIhGCLHfIFBnu6aY5IlPRspiIuMFMPcUmS6M6onA7qFlGKVuOnBICdgOcUaDRT1W
	h0lk2XfmtQwjSzayz3K3h1dLqf2ikOviktcIXtGCNtK/pJo910M0xsDWnfqUqI5rZ7LsKOMIiDCPr
	6m8WzviZttJfixEU2JKrXfUKCJzOL5u671fhqSDg9k+U8olhq3zcdjbAG5GA/lEzlTE3wFD2c+Vik
	rEsjBu9W5vYS7M3f2o7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7dgI-0006ue-Pe; Fri, 28 Feb 2020 11:19:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7dfv-0006si-Kx
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 11:19:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 214514B2;
 Fri, 28 Feb 2020 03:19:23 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8BC953F73B;
 Fri, 28 Feb 2020 03:19:22 -0800 (PST)
Date: Fri, 28 Feb 2020 11:19:20 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH efi-next 2/3] efi/arm64: clean EFI stub exit code from
 cache instead of avoiding it
Message-ID: <20200228111920.GB36089@lakrids.cambridge.arm.com>
References: <20200228100244.10979-1-ardb@kernel.org>
 <20200228100244.10979-3-ardb@kernel.org>
 <20200228111450.GA36089@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228111450.GA36089@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_031923_729584_D9C16591 
X-CRM114-Status: GOOD (  21.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 11:14:50AM +0000, Mark Rutland wrote:
> On Fri, Feb 28, 2020 at 11:02:43AM +0100, Ard Biesheuvel wrote:
> > Commit 9f9223778 ("efi/libstub/arm: Make efi_entry() an ordinary PE/COFF
> > entrypoint") modified the handover code written in assembler, and for
> > maintainability, aligned the logic with the logic used in the 32-bit ARM
> > version, which is to avoid cache maintenance on the remaining instructions
> > in the subroutine that will be executed with the MMU and caches off, and
> > instead, branch into the relocated copy of the kernel image.
> > 
> > However, this assumes that this copy is executable, and this means we
> > expect EFI_LOADER_DATA regions to be executable as well, which is not
> > a reasonable assumption to make, even if this is true for most UEFI
> > implementations today.
> > 
> > So change this back, and add a __flush_dcache_area() call to cover the
> > remaining code in the subroutine.
> > 
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > ---
> >  arch/arm64/kernel/efi-entry.S  | 18 +++++++++---------
> >  arch/arm64/kernel/image-vars.h |  2 +-
> >  2 files changed, 10 insertions(+), 10 deletions(-)
> > 
> > diff --git a/arch/arm64/kernel/efi-entry.S b/arch/arm64/kernel/efi-entry.S
> > index 4cfd03c35c49..d5dee064975f 100644
> > --- a/arch/arm64/kernel/efi-entry.S
> > +++ b/arch/arm64/kernel/efi-entry.S
> > @@ -19,7 +19,8 @@ ENTRY(efi_enter_kernel)
> >  	 * point stored in x0. Save those values in registers which are
> >  	 * callee preserved.
> >  	 */
> > -	mov	x19, x0			// relocated Image address
> > +	ldr	w2, =stext_offset
> > +	add	x19, x0, x2		// relocated Image entrypoint
> >  	mov	x20, x1			// DTB address
> >  
> >  	/*
> > @@ -29,15 +30,14 @@ ENTRY(efi_enter_kernel)
> >  	ldr	w1, =kernel_size
> >  	bl	__flush_dcache_area
> >  	ic	ialluis
> > -	dsb	sy
> >  
> >  	/*
> > -	 * Jump across, into the copy of the image that we just cleaned
> > -	 * to the PoC, so that we can safely disable the MMU and caches.
> > +	 * Flush the remainder of this routine to the PoC
> 
> Minor nit, but could we please say 'Clean' rather than 'Flush' here?
> 
> Even better, we now have __clean_dcache_area_poc(), and can use that
> too.

... or if that's better as a subsequent cleanup for consistency, that'd
also be fine, and needn't block this patch.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
