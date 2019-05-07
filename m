Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1CF1601E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 11:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Qed2YcAyrrrh6lH5YXg1gNxaIwd0HwLhM220w30134=; b=Ik2EOfSFRVMUh9
	KG1EAXNelqcFvWIlPNf6bq0iTIkoZE/gfseW2EmZjS8hDXREkSHgExSslrQ2qfsoRaGLH35NRURMh
	r+uyd8C0fCwi9fbznaTJnbavzzo4g3S7tNUcOfXKWPb68/O8aTi+gsXViAh01thIt3JfKMMBhRK5+
	iCwf54Spt/R0SCZu5n90ROzovjXsIdG4UyhQtR43nfVTJqvzusM+OvNKVORk7diVkmQgJmwF/Zk2Y
	fa3L00LXHIot7pR/JJ/Eq+lmE8jVW4azlvRQkfBwqmUmQ0NyapYRhNsxBtJYBMy+jZLhruDTrf0dQ
	0fN6h6G8JRQDKTV1wYMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNw33-0004Ay-Ov; Tue, 07 May 2019 09:06:05 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNw2v-00049A-QP
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 09:05:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0DE3B374;
 Tue,  7 May 2019 02:05:57 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 868BD3F238;
 Tue,  7 May 2019 02:05:55 -0700 (PDT)
Date: Tue, 7 May 2019 10:05:50 +0100
From: Will Deacon <will.deacon@arm.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 01/25] arm64/iommu: handle non-remapped addresses in
 ->mmap and ->get_sgtable
Message-ID: <20190507090550.GA16148@fuggles.cambridge.arm.com>
References: <20190430105214.24628-1-hch@lst.de>
 <20190430105214.24628-2-hch@lst.de>
 <20190503113352.GA55449@arrakis.emea.arm.com>
 <20190507063720.GB28147@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507063720.GB28147@lst.de>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_020557_915960_AFB784DB 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Tom Lendacky <thomas.lendacky@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 08:37:20AM +0200, Christoph Hellwig wrote:
> On Fri, May 03, 2019 at 12:33:53PM +0100, Catalin Marinas wrote:
> > On Tue, Apr 30, 2019 at 06:51:50AM -0400, Christoph Hellwig wrote:
> > > DMA allocations that can't sleep may return non-remapped addresses, but
> > > we do not properly handle them in the mmap and get_sgtable methods.
> > > Resolve non-vmalloc addresses using virt_to_page to handle this corner
> > > case.
> > > 
> > > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > > Reviewed-by: Robin Murphy <robin.murphy@arm.com>
> > 
> > Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> 
> Given that this is a bug fix mostly separate from the rest of the
> series - do you want to pick it up for 5.2 and maybe add a Cc for
> stable?

Sure thing; I'll probably send it after -rc1 unless we get some other fixes
in during the merge window.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
