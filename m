Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41357104CA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 08:32:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TmxTxhGa5/b7adr4b0r1AM9kEs5pB5QZ+qf0OE72hkE=; b=FkS99UavLTA+Ub
	m28/DmHn9FsTsEdrAyE//7gXqBJWDaII+KvSdQNBPr4FAS6FB92qiArkCjMEio8fA93evgAh3Uevj
	Jf8/+++80GHlWANFi1nJffLW0Vo+QMcNQDNDAuIT2oceeO/nq+/Hqi0OnxHZVnOUgearFSz1OC9QB
	UBd3jDtQ/0I40J9QwVH2R9K7Ba380U6AVA5YLSgum3NExDo8QMZMnJoCdVxrAAgQKA02Q/aMY+owj
	mFfQm2h/JQFav5841v0IRu2R4MoCw+KMSO3Lc+TMAJE50KlfMZN9ZCzwggA7M4ltl0u3CLcDHC4zY
	THkuqGXRPvOSvJx51Mcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXgwj-00041N-Gn; Thu, 21 Nov 2019 07:32:09 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXgwX-000412-Es
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 07:31:58 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0FAB768B05; Thu, 21 Nov 2019 08:31:53 +0100 (CET)
Date: Thu, 21 Nov 2019 08:31:52 +0100
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] dma-mapping: treat dev->bus_dma_mask as a DMA limit
Message-ID: <20191121073152.GB24024@lst.de>
References: <20191113161340.27228-1-nsaenzjulienne@suse.de>
 <dd074ef5c23ba56598e92be19e8e25ae31b75f93.camel@suse.de>
 <20191119170006.GA19569@lst.de>
 <7609007d-52f5-bb10-e8d5-96fadbfab46d@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7609007d-52f5-bb10-e8d5-96fadbfab46d@arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_233157_650676_DAEA021F 
X-CRM114-Status: GOOD (  12.03  )
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-mips@vger.kernel.org,
 linux-ide@vger.kernel.org, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Frank Rowand <frowand.list@gmail.com>,
 Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Paul Burton <paulburton@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Joerg Roedel <joro@8bytes.org>, x86@kernel.org, phil@raspberrypi.org,
 linux-acpi@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 linux-pci@vger.kernel.org, James Hogan <jhogan@kernel.org>,
 Len Brown <lenb@kernel.org>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Jens Axboe <axboe@kernel.dk>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Hanjun Guo <guohanjun@huawei.com>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, iommu@lists.linux-foundation.org,
 Sudeep Holla <sudeep.holla@arm.com>, linuxppc-dev@lists.ozlabs.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 05:17:03PM +0000, Robin Murphy wrote:
> TBH I can't see it being a massive problem even if the DMA patch, driver 
> and DTS patch went entirely separately via the respective DMA, PCI, and 
> arm-soc trees in the same cycle. Bisecting over a merge window is a big 
> enough pain in the bum as it is, and if the worst case is that someone 
> trying to do that on a Pi4 has a wonky PCI controller appear for a couple 
> of commits, they may as well just disable that driver for their bisection, 
> because it wasn't there at the start so can't possibly be the thing they're 
> looking for regressions in ;)

Agreed.

Nicolas, can you send a respin?  That way I can still queue it up
for 5.5.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
