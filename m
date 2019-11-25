Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25314108962
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 08:44:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Sqby5lkTXavAYpVM9S3iuIaqu6poBydw/YEyHtsKAU=; b=WaCEnU4hQe0nzT
	gn/wU0dYjCbji9g3T2TjKzLXG05kK63BO/5McazT41Mp1aQV27wlQLHGOFUHxaw5jcjiecabRuGym
	1KuzGd8z1p3jXhYx3FBVeRokOdAa/hEID7A3GI0EWv6e7pcZMe5UJjjtZaoWKSfwgMfLeU7Te0ZHY
	2vjR2ffz5ZJPxeOacPAjcOff3WrU3rhaw3t6YACVVScu7nLjknZwWA1ZfYC/od8Taf82PcxL14ErT
	hyyv7gfcMjScNlH2f375EZ1JB/LnmbX6U/d5qhO/oubP0QubhvBLds7wiTyBHDN7apUPYSecmqCOv
	AIFysX+h2Km+SeARn3UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ92o-0004YK-B6; Mon, 25 Nov 2019 07:44:26 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ92f-0004Xe-27
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 07:44:18 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id D394368C4E; Mon, 25 Nov 2019 08:44:12 +0100 (CET)
Date: Mon, 25 Nov 2019 08:44:12 +0100
From: Christoph Hellwig <hch@lst.de>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH v2] dma-mapping: treat dev->bus_dma_mask as a DMA limit
Message-ID: <20191125074412.GA30595@lst.de>
References: <20191121092646.8449-1-nsaenzjulienne@suse.de>
 <20191123165108.GA15306@ubuntu-x2-xlarge-x86>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191123165108.GA15306@ubuntu-x2-xlarge-x86>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_234417_255582_D3BDA326 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
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
 Hanjun Guo <guohanjun@huawei.com>, Frank Rowand <frowand.list@gmail.com>,
 Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "H. Peter Anvin" <hpa@zytor.com>, Paul Burton <paulburton@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Joerg Roedel <joro@8bytes.org>,
 x86@kernel.org, linux-acpi@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 linux-pci@vger.kernel.org, James Hogan <jhogan@kernel.org>,
 Len Brown <lenb@kernel.org>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Jens Axboe <axboe@kernel.dk>, linuxppc-dev@lists.ozlabs.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, iommu@lists.linux-foundation.org,
 Sudeep Holla <sudeep.holla@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Nov 23, 2019 at 09:51:08AM -0700, Nathan Chancellor wrote:
> Just as an FYI, this introduces a warning on arm32 allyesconfig for me:

I think the dma_limit argument to iommu_dma_alloc_iova should be a u64
and/or we need to use min_t and open code the zero exception.

Robin, Nicolas - any opinions?

Also I wonder how this file gets compiled on arm32 given that arm32
has its own set of iommu dma ops..

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
