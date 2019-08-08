Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C9885F5D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 12:17:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WhBMWMY230xzJtSzQ4Q7axL1V3+7raoDtr4oEIQF+YE=; b=GG5GOVSA5nuiWr
	1wd+QAV67Bfw9W4aCEi6ew7Izt2CW4E1EUB0EHqlby+xPXOTacurceBhCFnteBma64I6t7hyLMKk8
	GY0jyse4UE1nYJogVINWuXhUXC0DDrhbE5RgWpXn53sTJihz9WsRQ4I+IPDyE5KT0RHO5W8cJduyV
	crjYyCr2a5itEkU7kDmjYA67IB0sgkLXrmseefSnDVn8x78f/ZhM0DuYhumvf4DNrF7QKyjs7MQFp
	KpBLrCnv4KMxGwPtkYHSGiMXYtCbb6NgeO+qBwLbiuRnreZ3IMxDTfYIzrzBp8DvnYbyNquCq4orO
	rdDNaOXScfG26pxyAirQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvfTj-0005UG-3i; Thu, 08 Aug 2019 10:17:04 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvfTL-0005Tk-N2
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 10:16:41 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id CBDAAAD1E;
 Thu,  8 Aug 2019 10:16:36 +0000 (UTC)
Message-ID: <1565258524.3377.5.camel@suse.com>
Subject: Re: usb zero copy dma handling
From: Oliver Neukum <oneukum@suse.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>, Greg KH
 <gregkh@linuxfoundation.org>
Date: Thu, 08 Aug 2019 12:02:04 +0200
In-Reply-To: <20190808095951.GD5193@shell.armlinux.org.uk>
References: <20190808084636.GB15080@priv-mua.localdomain>
 <20190808085811.GA1265@kroah.com>
 <20190808095951.GD5193@shell.armlinux.org.uk>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_031639_899265_BE0CB573 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: yvahkhfo.1df7f8c2@hashmail.org, linux-usb@vger.kernel.org,
 security@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Donnerstag, den 08.08.2019, 10:59 +0100 schrieb Russell King - ARM
Linux admin:
> On Thu, Aug 08, 2019 at 10:58:11AM +0200, Greg KH wrote:
> > But the main issue here is what exactly is this "fixing"?  What is wrong
> > with the existing code that non-x86 systems have such a problem with?
> > Shouldn't all of these dma issues be handled by the platform with the
> > remap_pfn_range() call itself?
> 
> remap_pfn_range() takes a PFN.  virt_to_phys() converts a kernel *direct
> mapped* virtual address to a physical address.  That much is fine.
> 
> The question is - what is usbm->mem?  If that is anything other than an
> address returned by kmalloc() or from the normal page allocator, then
> virt_to_phys() will return garbage.
> 
> In other words, if it comes from dma_alloc_coherent(), vmalloc() or
> ioremap(), using virt_to_phys() on it results in garbage.

It comes from usb_alloc_coherent() -> hcd_buffer_alloc() ->
hcd_buffer_alloc()

That function is a bit complicated. so I rather quote than explain:

        if (hcd->localmem_pool)
                return gen_pool_dma_alloc(hcd->localmem_pool, size, dma)

        /* some USB hosts just use PIO */
        if (!IS_ENABLED(CONFIG_HAS_DMA) ||
            !is_device_dma_capable(bus->sysdev)) {
                *dma = ~(dma_addr_t) 0;
                return kmalloc(size, mem_flags);
        }

        for (i = 0; i < HCD_BUFFER_POOLS; i++) {
                if (size <= pool_max[i])
                        return dma_pool_alloc(hcd->pool[i], mem_flags, dma);
        }

        return dma_alloc_coherent(hcd->self.sysdev, size, dma, mem_flags);

	Regards
		Oliver


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
