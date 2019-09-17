Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB28AB4FA9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 15:50:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o+M6iQczGkuYgOI88+tUhuxeX+qkSH+s3ezBgMJOS+4=; b=CqiPFDXwzjENPO
	ORhq8uPLV+FSAW6vYq2UbhV/QXcBpHIgRcKzdbl5faQeSxCiJ5OWFnIEY8FKGRWGga9+La7WAXE0L
	4aTIZ1eadkV3en4+FCN/JtCaacjB/49CHMrr8HboMAjCdW1c93L1h4E81T+IVE/pFw9eOuBUdaiuY
	Ri1ArmtUazYBlfZRAjCOUxFGiRp+RYWr8TFHht3/6BzjE49qRrlOuOfVhImBW0hMFmTre0HDC3E8g
	OZQyD/FcZhx9XedKgzSns6DBvo/e7+Mr5BJIY+5cH//qhR5nW0ol6wpScLuuiS+fDwBYkUVdS/+LM
	Dm+a7mOEUuaiWI14kNKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iADsA-0003EK-19; Tue, 17 Sep 2019 13:50:26 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iADrq-0002Fz-SG
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 13:50:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ixPF66S1XEW6DoFy8CVYHJVE6hgRd/68MWIlm+YGQGQ=; b=b6pUmwH9IlXUvL2KhzslExPfl
 np33xjAdjKROOrqn4uH4Paxg5CeDEsA6ylMWZS4E7AIvjNSMA5yA4vMZ5s2+HgbHt+0DDFwDNyEN2
 4LdtDwXhvhN/vFsT67gkDO4HORY4Y9N2Pro1+uemfeeoXt7NH2Sd3XiE5BfgjMcfeuoo/pF0hrN1c
 C4XuwXiDEjI+nCXPNlcVSTvLyMJinPfZRDvn5qbo/1jzTQ3AVq6M8wu1BNmayKsowMbGjDFx1DGJX
 HyECt9iuw8fyU1CMr5m96uoNo5wz6tCu71yMDOZAxVszdBxMLJJdPF/5AMo/8oIAcZ0HDyNgyC7p0
 HCbt/rEjA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:40648)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iADra-0002C1-6k; Tue, 17 Sep 2019 14:49:50 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iADrX-0001L1-82; Tue, 17 Sep 2019 14:49:47 +0100
Date: Tue, 17 Sep 2019 14:49:47 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [REGRESSION] sdhci no longer detects SD cards on LX2160A
Message-ID: <20190917134947.GS25745@shell.armlinux.org.uk>
References: <20190916171509.GG25745@shell.armlinux.org.uk>
 <b19a0640-5d71-a005-eb0f-c6840f181e5d@free.fr>
 <20190917081931.GI25745@shell.armlinux.org.uk>
 <20190917104200.GJ25745@shell.armlinux.org.uk>
 <20190917111631.GL25745@shell.armlinux.org.uk>
 <20190917114210.GM25745@shell.armlinux.org.uk>
 <20190917123326.GN25745@shell.armlinux.org.uk>
 <20190917130759.GO25745@shell.armlinux.org.uk>
 <c12e21c3-6bef-38ed-3693-b958be17d555@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c12e21c3-6bef-38ed-3693-b958be17d555@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_065007_318695_006CCD74 
X-CRM114-Status: GOOD (  45.38  )
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
Cc: dann frazier <dann.frazier@canonical.com>, linux-mmc@vger.kernel.org,
 Adrian Hunter <adrian.hunter@intel.com>, Will Deacon <will.deacon@arm.com>,
 Nicolin Chen <nicoleotsuka@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 02:38:00PM +0100, Robin Murphy wrote:
> On 17/09/2019 14:07, Russell King - ARM Linux admin wrote:
> > On Tue, Sep 17, 2019 at 01:33:26PM +0100, Russell King - ARM Linux admin wrote:
> > > On Tue, Sep 17, 2019 at 12:42:10PM +0100, Russell King - ARM Linux admin wrote:
> > > > On Tue, Sep 17, 2019 at 12:16:31PM +0100, Russell King - ARM Linux admin wrote:
> > > > > On Tue, Sep 17, 2019 at 11:42:00AM +0100, Russell King - ARM Linux admin wrote:
> > > > > > On Tue, Sep 17, 2019 at 09:19:31AM +0100, Russell King - ARM Linux admin wrote:
> > > > > > > On Tue, Sep 17, 2019 at 10:06:12AM +0200, Marc Gonzalez wrote:
> > > > > > > > On 16/09/2019 19:15, Russell King - ARM Linux admin wrote:
> > > > > > > > 
> > > > > > > > > The platform has an iommu, which is in pass-through mode, via
> > > > > > > > > arm_smmu.disable_bypass=0.
> > > > > > > > 
> > > > > > > > Could be 954a03be033c7cef80ddc232e7cbdb17df735663
> > > > > > > > "iommu/arm-smmu: Break insecure users by disabling bypass by default"
> > > > > > > > 
> > > > > > > > Although it had already landed in v5.2
> > > > > > > 
> > > > > > > It is not - and the two lines that you quoted above are sufficient
> > > > > > > to negate that as a cause.  (Please read the help for the option that
> > > > > > > the commit referrs to.)
> > > > > > > 
> > > > > > > In fact, with bypass disabled, the SoC fails due to other masters.
> > > > > > > That's already been discussed privately between myself and Will
> > > > > > > Deacon.
> > > > > > > 
> > > > > > > arm_smmu.disable_bypass=0 re-enables bypass mode irrespective of
> > > > > > > the default setting in the Kconfig.
> > > > > > 
> > > > > > Adding some further debugging, and fixing the existing ADMA debugging
> > > > > > shows:
> > > > > > 
> > > > > > mmc0: ADMA error: 0x02000000
> > > > > > 
> > > > > > So this is an ADMA error without the transfer having completed.
> > > > > > 
> > > > > > mmc0: sdhci: Blk size:  0x00000008 | Blk cnt:  0x00000001
> > > > > > 
> > > > > > The block size is 8, with one block.
> > > > > > 
> > > > > > mmc0: sdhci: ADMA Err:  0x00000009 | ADMA Ptr: 0x000000236df1d20c
> > > > > > 
> > > > > > The ADMA error is a descriptor error at address 0x000000236df1d20c.
> > > > > > The descriptor table contains (including the following entry):
> > > > > > 
> > > > > > mmc0: sdhci: 236df1d200: DMA 0x000000236d40e980, LEN 0x0008, Attr=0x23
> > > > > > mmc0: sdhci: 236df1d20c: DMA 0x0000000000000000, LEN 0x0000, Attr=0x00
> > > > > > 
> > > > > > The descriptor table contains one descriptor of 8 bytes, is marked
> > > > > > as the last (END bit set) and is at DMA address 0x236df1d200.  The
> > > > > > following descriptor is empty, with VALID=0.
> > > > > > 
> > > > > > One may be tempted to blame it on the following descriptor, but having
> > > > > > had another example on eMMC while userspace was booting (rootfs on
> > > > > > eMMC):
> > > > > > 
> > > > > > mmc1: ADMA error: 0x02000000
> > > > > > mmc1: sdhci: Blk size:  0x00000200 | Blk cnt:  0x00000099
> > > > > > mmc1: sdhci: ADMA Err:  0x00000006 | ADMA Ptr: 0x000000236dbfa26c
> > > > > > mmc1: sdhci: 236dbfa200: DMA 0x000000236c25c000, LEN 0x2000, Attr=0x21
> > > > > > mmc1: sdhci: 236dbfa20c: DMA 0x000000236938c000, LEN 0x0000, Attr=0x21
> > > > > > mmc1: sdhci: 236dbfa218: DMA 0x000000236939c000, LEN 0x5000, Attr=0x21
> > > > > > mmc1: sdhci: 236dbfa224: DMA 0x0000002368545000, LEN 0x1000, Attr=0x21
> > > > > > mmc1: sdhci: 236dbfa230: DMA 0x00000023684f1000, LEN 0x1000, Attr=0x21
> > > > > > mmc1: sdhci: 236dbfa23c: DMA 0x0000002368504000, LEN 0x2000, Attr=0x21
> > > > > > mmc1: sdhci: 236dbfa248: DMA 0x0000002368546000, LEN 0x2000, Attr=0x21
> > > > > > mmc1: sdhci: 236dbfa254: DMA 0x00000023684f2000, LEN 0x2000, Attr=0x21
> > > > > > mmc1: sdhci: 236dbfa260: DMA 0x0000002368500000, LEN 0x1000, Attr=0x23
> > > > > > mmc1: sdhci: 236dbfa26c: DMA 0x000000236b55d000, LEN 0x1000, Attr=0x21
> > > > > > 
> > > > > > ... which is interesting for several reasons:
> > > > > > - The ADMA error register indicates a length mismatch error.  The
> > > > > >    transfer was for 0x99 blocks of 0x200, which is 0x13200 bytes.
> > > > > >    Summing the ADMA lengths up to the last descriptor (length=0 is
> > > > > >    0x10000 bytes) gives 0x20000 bytes.  So the DMA table contains more
> > > > > >    bytes than the requested transfer.
> > > > > > 
> > > > > > - The ADMA error register indicates ST_CADR, which is described as
> > > > > >    "This state is never set because do not generate ADMA error in this
> > > > > >    state."
> > > > > > 
> > > > > > - The error descriptor is again after the descriptor with END=1, but
> > > > > >    this time has VALID=1.
> > > > > > 
> > > > > > This _feels_ like a coherency issue, where the SDHCI engine is not
> > > > > > correctly seeing the descriptor table, but then I would have expected
> > > > > > userspace (which is basically debian stable) to fail to boot every
> > > > > > time given that its rootfs is on eMMC.
> > > > > > 
> > > > > > The other weird thing is if I wind the core MMC code back via:
> > > > > > 
> > > > > > $ git diff -u 7559d612dff0..v5.3 drivers/mmc/core | patch -p1 -R
> > > > > > 
> > > > > > and fix the lack of dma_max_pfn(), then SDHCI is more stable - not
> > > > > > completely stable, but way better than plain v5.3.  I don't see
> > > > > > much in that diff which would be responsible for this - although it
> > > > > > does seem that hch's DMA changes do make the problem more likely.
> > > > > > (going from 1 in 3 boots with a problem to being not able to boot.)
> > > > > > 
> > > > > > Note, with v5.2, I _never_ saw any ADMA errors, except if I disabled
> > > > > > bypass mode on the IOMMU (but then I saw global smmu errors right
> > > > > > from when the IOMMU had bypass disabled before MMC was probed - the
> > > > > > reason being is the SoC is not currently setup to have the MMU
> > > > > > bypass mode disabled.)
> > > > > 
> > > > > This looks like an ARM64 coherency issue.
> > > > > 
> > > > > I first tried adding a dma_wmb() to the end of sdhci_adma_table_pre(),
> > > > > which had no effect.  I then tried adding:
> > > > > 
> > > > > +       __dma_flush_area(host->adma_table, desc - host->adma_table);
> > > > > +       dma_wmb();
> > > > > 
> > > > > and so far I haven't had any further ADMA errors.  Adding Will Deacon
> > > > > to the thread.
> > > > 
> > > > These are the changes to sdhci that I'm currently running.  I think
> > > > some of the debugging related changes are probably worth adding to
> > > > the driver, particularly printing the intmask on ADMA error (which
> > > > is not printed by the register dump, as the value is lost) and printing
> > > > the DMA addresses of the descriptor table entries which can be tied
> > > > up with the DMA address error register.  Also, maybe printing the
> > > > DMA descriptor table with the register dump, rather than having to
> > > > resort to enabling debug would be a good idea?
> > > > 
> > > > diff --git a/drivers/mmc/host/sdhci.c b/drivers/mmc/host/sdhci.c
> > > > index a5dc5aae973e..884dcaa9cad5 100644
> > > > --- a/drivers/mmc/host/sdhci.c
> > > > +++ b/drivers/mmc/host/sdhci.c
> > > > @@ -773,6 +773,8 @@ static void sdhci_adma_table_pre(struct sdhci_host *host,
> > > >   		/* Add a terminating entry - nop, end, valid */
> > > >   		__sdhci_adma_write_desc(host, &desc, 0, 0, ADMA2_NOP_END_VALID);
> > > >   	}
> > > > +	__dma_flush_area(host->adma_table, desc - host->adma_table);
> > > > +	dma_wmb();
> > > >   }
> > > >   static void sdhci_adma_table_post(struct sdhci_host *host,
> > > > @@ -2855,6 +2857,8 @@ static void sdhci_cmd_irq(struct sdhci_host *host, u32 intmask, u32 *intmask_p)
> > > >   static void sdhci_adma_show_error(struct sdhci_host *host)
> > > >   {
> > > >   	void *desc = host->adma_table;
> > > > +	dma_addr_t dma = host->adma_addr;
> > > > +	bool end = false;
> > > >   	sdhci_dumpregs(host);
> > > > @@ -2862,21 +2866,26 @@ static void sdhci_adma_show_error(struct sdhci_host *host)
> > > >   		struct sdhci_adma2_64_desc *dma_desc = desc;
> > > >   		if (host->flags & SDHCI_USE_64_BIT_DMA)
> > > > -			DBG("%p: DMA 0x%08x%08x, LEN 0x%04x, Attr=0x%02x\n",
> > > > -			    desc, le32_to_cpu(dma_desc->addr_hi),
> > > > +			SDHCI_DUMP("%08llx: DMA 0x%08x%08x, LEN 0x%04x, Attr=0x%02x\n",
> > > > +			    (unsigned long long)dma,
> > > > +			    le32_to_cpu(dma_desc->addr_hi),
> > > >   			    le32_to_cpu(dma_desc->addr_lo),
> > > >   			    le16_to_cpu(dma_desc->len),
> > > >   			    le16_to_cpu(dma_desc->cmd));
> > > >   		else
> > > > -			DBG("%p: DMA 0x%08x, LEN 0x%04x, Attr=0x%02x\n",
> > > > -			    desc, le32_to_cpu(dma_desc->addr_lo),
> > > > +			SDHCI_DUMP("%08llx: DMA 0x%08x, LEN 0x%04x, Attr=0x%02x\n",
> > > > +			    (unsigned long long)dma,
> > > > +			    le32_to_cpu(dma_desc->addr_lo),
> > > >   			    le16_to_cpu(dma_desc->len),
> > > >   			    le16_to_cpu(dma_desc->cmd));
> > > > +		if (end) break;
> > > > +
> > > >   		desc += host->desc_sz;
> > > > +		dma += host->desc_sz;
> > > >   		if (dma_desc->cmd & cpu_to_le16(ADMA2_END))
> > > > -			break;
> > > > +			end = true;
> > > >   	}
> > > >   }
> > > > @@ -2949,7 +2958,7 @@ static void sdhci_data_irq(struct sdhci_host *host, u32 intmask)
> > > >   			!= MMC_BUS_TEST_R)
> > > >   		host->data->error = -EILSEQ;
> > > >   	else if (intmask & SDHCI_INT_ADMA_ERROR) {
> > > > -		pr_err("%s: ADMA error\n", mmc_hostname(host->mmc));
> > > > +		pr_err("%s: ADMA error: 0x%08x\n", mmc_hostname(host->mmc), intmask);
> > > >   		sdhci_adma_show_error(host);
> > > >   		host->data->error = -EIO;
> > > >   		if (host->ops->adma_workaround)
> > > 
> > > Further debug shows:
> > > 
> > > coherent=0 - sdhci device is not cache coherent
> > > swapper pgtable: 4k pages, 39-bit VAs, pgdp=0000000081cac000
> > > [ffffff8010fd5200] pgd=000000237ffff003, pud=000000237ffff003,
> > > pmd=000000237fffb003, pte=00e800236d62270f
> > > 
> > > The mapping for the ADMA table seems to be using MAIR index 3, which is
> > > MT_MEMORY_NC, so should be non-cacheable.
> > > 
> > > vmallocinfo:
> > > 0xffffff8010fd5000-0xffffff8010fd7000    8192 dma_direct_alloc+0x4c/0x54
> > > user
> > > 
> > > So this memory has been remapped.  Could there be an alias that has
> > > cache lines still in the cache for the physical address, and could we
> > > be hitting those cache lines while accessing through a non-cacheable
> > > mapping?  (On 32-bit ARM, this is "unpredictable" and this problem
> > > definitely _feels_ like it has unpredictable attributes!)
> > > 
> > > Also, given that this memory is mapped NC, then surely
> > > __dma_flush_area() should have no effect?  However, it _does_ have the
> > > effect of reliably solving the problem, which to me implies that there
> > > _are_ cache lines in this NC mapping.
> > 
> > Will suggested reverting bd2e75633c80 ("dma-contiguous: use fallback
> > alloc_pages for single pages") which has been implicated in the same
> > problem here:
> > 
> > https://www.spinics.net/lists/arm-kernel/msg750623.html
> > 
> > Although reverting the commit is not clean, this also fixes the issue
> > for me.
> 
> Note that that one turned out to be something totally different, namely that
> the single-page allocations, in difference to CMA, came from physical
> addresses that the controller needed additional configuration to be able to
> access[1] - no amount of cache maintenance would affect that.

As already replied, v4 mode is not documented as being available on
the LX2160A - the bit in the control register is marked as "reserved".
This is as expected as it is documented that it is using a v3.00 of
the SDHCI standard, rather than v4.00.

So, sorry, enabling "v4 mode" isn't a workaround in this scenario.

Given that v4 mode is not mandatory, this shouldn't be a work-around.

Given that it _does_ work some of the time with the table >4GB, then
this is not an addressing limitation.

> However, the other difference between getting a single page directly from
> the page allocator vs. the CMA area is that accesses to the linear mapping
> of the CMA area are probably pretty rare, whereas for the single-page case
> it's much more likely that kernel tasks using adjacent pages could lead to
> prefetching of the descriptor page's cacheable alias. That could certainly
> explain how reverting that commit manages to hide an apparent coherency
> issue.

Right, so how do we fix this?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
