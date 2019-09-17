Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66956B4F31
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 15:28:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cKzht5pRV8Rb/4azp0AedlaSLnq2uZ5aie65iEgS3ns=; b=T5/nklfUEsvjvl
	LMrDBW01P61jp8yZKFnM8n1vsBOYO9q0QCJhy+oAqana0jQ2xtwbbTMVXTZSzmXT50JpMdmJ2biTz
	i+1M3RqoFxzKedsjQuAK+8m/u8aZr8FjI/nLLjTstUpXb5ayyjOUHUyk9Gb/pxPgFfvKjBdY2pK/n
	Znr7QVyTALEMkJSS1E4krHz64QdvDNCesdyZG2DprLLWwMyrFF5+XJJHBanQ7DdD4S8+iTzEtvAAp
	4ybsLk3w149u9kyh1aUP3ZmfgP6nynL4losK8XXIH78aT+tsvTwWxObOYi8+P1JoHWXmX1rWwGYMG
	mAr2cxqRp/YcKh0qhQRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iADXK-0001fi-SN; Tue, 17 Sep 2019 13:28:55 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iADX4-0001eK-MK
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 13:28:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JmJ+vp+qlJPWeX8l22/EA7/HB/cJFfDPu4LHIo2msJU=; b=fhGOZaSzup9B+JmBskzTT5kdP
 Ox3Xtm7Bwf3UKOHhuED99k1UotVK9TlSC6CzgKAnFEH2ZD+9MYeEwDpTqpkLf58aQg1q0e5BlSPA2
 tQILwSZn6MFsjex84cM38cWDL/5bjmEZIgDtoHvamnAkccNDCEWXJyuIzSmty7oSiQLl3KuAuCsq3
 GX22KK3EVOcfqcB7AosA/Qk8MNKKG7K68qJhV53044n4kmxRvMTz/VQPAAeJj/ctI0YE5Gc3VYbRO
 Dqpnp63d8x6szHN1mV+v6kxhj9W+OMMf18Wz3vg+ex8sPzT9tTi7V4BpAW+P0YRJ7liJaPBpm/Sq9
 kckOxd5FA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:40642)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iADWu-00025G-OS; Tue, 17 Sep 2019 14:28:28 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iADWs-0001Jj-Jh; Tue, 17 Sep 2019 14:28:26 +0100
Date: Tue, 17 Sep 2019 14:28:26 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [REGRESSION] sdhci no longer detects SD cards on LX2160A
Message-ID: <20190917132826.GP25745@shell.armlinux.org.uk>
References: <20190916171509.GG25745@shell.armlinux.org.uk>
 <b19a0640-5d71-a005-eb0f-c6840f181e5d@free.fr>
 <20190917081931.GI25745@shell.armlinux.org.uk>
 <20190917104200.GJ25745@shell.armlinux.org.uk>
 <20190917111631.GL25745@shell.armlinux.org.uk>
 <20190917114210.GM25745@shell.armlinux.org.uk>
 <20190917123326.GN25745@shell.armlinux.org.uk>
 <1406d22f-fd2e-f101-3efb-63cc52e9ac5f@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406d22f-fd2e-f101-3efb-63cc52e9ac5f@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_062838_729815_4C04D6F3 
X-CRM114-Status: GOOD (  20.97  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mmc@vger.kernel.org, Will Deacon <will.deacon@arm.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 02:03:04PM +0100, Robin Murphy wrote:
> On 17/09/2019 13:33, Russell King - ARM Linux admin wrote:
> [...]
> > Further debug shows:
> > 
> > coherent=0 - sdhci device is not cache coherent
> > swapper pgtable: 4k pages, 39-bit VAs, pgdp=0000000081cac000
> > [ffffff8010fd5200] pgd=000000237ffff003, pud=000000237ffff003,
> > pmd=000000237fffb003, pte=00e800236d62270f
> > 
> > The mapping for the ADMA table seems to be using MAIR index 3, which is
> > MT_MEMORY_NC, so should be non-cacheable.
> > 
> > vmallocinfo:
> > 0xffffff8010fd5000-0xffffff8010fd7000    8192 dma_direct_alloc+0x4c/0x54
> > user
> > 
> > So this memory has been remapped.  Could there be an alias that has
> > cache lines still in the cache for the physical address, and could we
> > be hitting those cache lines while accessing through a non-cacheable
> > mapping?  (On 32-bit ARM, this is "unpredictable" and this problem
> > definitely _feels_ like it has unpredictable attributes!)
> > 
> > Also, given that this memory is mapped NC, then surely
> > __dma_flush_area() should have no effect?  However, it _does_ have the
> > effect of reliably solving the problem, which to me implies that there
> > _are_ cache lines in this NC mapping.
> 
> The non-cacheable mapping of the descriptor table will still have its
> cacheable linear map alias, so it's quite likely that the invalidate aspect
> of __dma_flush_area(), rather than the clean, is what's making the
> difference - if using __dma_clean_area() instead doesn't help, it would more
> or less confirm that.
> 
> One possibility in that case is that you might actually have the rare
> backwards coherency problem - if the device *is* actually snooping the
> cache, then it could hit lines which were speculatively prefetched via the
> cacheable alias before the descriptors were fully written, rather than the
> up-to-date data which went straight to RAM via the NC mapping. I'd try
> declaring the device as "dma-coherent" to see if that's actually true (and
> it should become pretty obvious if it isn't).

As just mentioned in my previous reply, there's a commit to the
dma-contiguous which changes where the CMA memory comes from.

[ffffff8010fd5200] pgd=000000237ffff003, pud=000000237ffff003,
	pmd=000000237fffb003, pte=00e800236d62270f

vs

[ffffff8010fd5200] pgd=000000237ffff003, pud=000000237ffff003,
	pmd=000000237fffb003, pte=00e80000f9c9a70f

Former is with the patch applied, latter is with it reverted.

This makes me question whether the cache handling for a page that is
remapped is being performed.  If there's cache lines present for a
page that is being remapped as non-cacheable, what prevents those
cache lines from being dirty and possibly being written-back at some
point after the non-cacheable mapping as been started to be used?

And yes, it looks like adding "dma-coherent" to the SDHCI controller
with the SD card in resolves the issue, so your hypothesis may be
true.  On the other hand, I haven't added "dma-coherent" to the eMMC
side, and that's also working fine over several reboots without the
offending commit reverted _nor_ with my __dma_flush_area() hack in
place.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
