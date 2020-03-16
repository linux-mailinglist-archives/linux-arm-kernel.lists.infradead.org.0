Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BECA918667D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 09:30:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zTwoLv8W/IV/3/voIaHdJnMvoxiRWbOG9rfL0BqKZdI=; b=FEUAIPo/MP7YNk
	5CK9zrE2xSap5/LpaURhF1+Fzx2IuAoAiYTapbwg82uOhQ6DVyeWFk+n6wi81m+4ph+xJWhkmiaLK
	bu6RVUJafNR5BUFA/k4eO7Y38X4SQocE5+PbjSZ/XH08fXFwqkxCkRn6ZAkITbl+xGYk2FbdT3Laq
	g2KjRRhOnUj0pvPMQVK9ZTUuFe0uDSwXky6pZ7ZYnwfIuBuXtpQmOoYxXo8i3ps3kyO4uaiEvERTQ
	r1BnJXv70UX9kHYr7A+BbWmAuagFwAEyAzolhHjK3t8awY9R4X/vwp+INb3DMJLHwyTtuJ4WC2vOm
	wtUB6cEz12+QuSSfL4AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDl8y-0007qm-Vx; Mon, 16 Mar 2020 08:30:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDl8k-0007oq-Ny
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 08:30:28 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C03CF20658;
 Mon, 16 Mar 2020 08:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584347426;
 bh=GJ8GsEypd+i+4W9htj3qLpzQtn+OsOQ9mGSyV2/R7dA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aO/QdzZIFo1XvwNhvNiWRREapqKvMl1JtbC2hByDGtwxxWiPLc8FMNy1H3SN2m+Lv
 HrJyKp++eqtMyv7/6pUJ4mP2NYJy9OfRPytBOLRGsbhN+9dElVQQ92E7u4rwZ03INc
 K2y4pim3uAIqEEP/OBj07CjTShjFfqgLzx2t7lM4=
Date: Mon, 16 Mar 2020 09:30:24 +0100
From: gregkh <gregkh@linuxfoundation.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v6 04/10] arm64: hyperv: Add memory alloc/free functions
 for Hyper-V size pages
Message-ID: <20200316083024.GA3204377@kroah.com>
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
 <1584200119-18594-5-git-send-email-mikelley@microsoft.com>
 <CAK8P3a2Hnm74aUMNFHbjMr4HwHGZn1+xa4ERsxAJY6hMzhEOhQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2Hnm74aUMNFHbjMr4HwHGZn1+xa4ERsxAJY6hMzhEOhQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_013026_824417_19696FE3 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 linux-arch <linux-arch@vger.kernel.org>, linux-hyperv@vger.kernel.org,
 linux-efi <linux-efi@vger.kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jason Wang <jasowang@redhat.com>,
 sunilmut@microsoft.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michael Kelley <mikelley@microsoft.com>, marcelo.cerri@canonical.com,
 olaf@aepfle.de, Marc Zyngier <maz@kernel.org>,
 Andy Whitcroft <apw@canonical.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 16, 2020 at 09:22:43AM +0100, Arnd Bergmann wrote:
> On Sat, Mar 14, 2020 at 4:36 PM Michael Kelley <mikelley@microsoft.com> wrote:
> >  /*
> > + * Functions for allocating and freeing memory with size and
> > + * alignment HV_HYP_PAGE_SIZE. These functions are needed because
> > + * the guest page size may not be the same as the Hyper-V page
> > + * size. We depend upon kmalloc() aligning power-of-two size
> > + * allocations to the allocation size boundary, so that the
> > + * allocated memory appears to Hyper-V as a page of the size
> > + * it expects.
> > + *
> > + * These functions are used by arm64 specific code as well as
> > + * arch independent Hyper-V drivers.
> > + */
> > +
> > +void *hv_alloc_hyperv_page(void)
> > +{
> > +       BUILD_BUG_ON(PAGE_SIZE <  HV_HYP_PAGE_SIZE);
> > +       return kmalloc(HV_HYP_PAGE_SIZE, GFP_KERNEL);
> > +}
> > +EXPORT_SYMBOL_GPL(hv_alloc_hyperv_page);
> 
> I don't think there is any guarantee that kmalloc() returns page-aligned
> allocations in general. How about using get_free_pages()
> to implement this?

Even if it was guaranteed, a pointless wrapper like this is not needed
or ok, and shouldn't be created, just use kmalloc.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
