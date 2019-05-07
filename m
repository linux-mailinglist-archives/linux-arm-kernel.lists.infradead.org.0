Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D2B15D94
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 08:37:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pyIxMNDldCp/qyceuckfrUtOkt+172yPTAQQASXdUgk=; b=tjL+EIldnBve1k
	l4vCw6MY3SF4u/xH+GMW6aiLKINVhVJPHujvO2/A4CZvcAn/MQVBv4boMXH8t3J+PcDQmkrRmjBeQ
	2YT+UNO0OnGaktCG3WntSxIzw0zCjby3yn9kS4gO4eZHkLUlmzZkZzfV6MX/papQKxbtnU06dhy4V
	d51MvCLmIrwC/BgASoM/pZwCkB44t7mU0bIoUGrJ0lF3gGY/jkIDSObW+Ojl37D3P2qed2lyQ71dp
	xKZasnSHghWVbnVZzYKhqYrXcSp6T7QySQcz1x/S0CjKa+yliFrsafzvDOffX6XOZcvclU7t6spDK
	SLQ0yPPTCy0o6zRPxTVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNtjW-0002O5-4B; Tue, 07 May 2019 06:37:46 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNtjP-0002Ni-QX
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 06:37:41 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 21A4A67358; Tue,  7 May 2019 08:37:21 +0200 (CEST)
Date: Tue, 7 May 2019 08:37:20 +0200
From: Christoph Hellwig <hch@lst.de>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH 01/25] arm64/iommu: handle non-remapped addresses in
 ->mmap and ->get_sgtable
Message-ID: <20190507063720.GB28147@lst.de>
References: <20190430105214.24628-1-hch@lst.de>
 <20190430105214.24628-2-hch@lst.de>
 <20190503113352.GA55449@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503113352.GA55449@arrakis.emea.arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_233740_011818_8F43EA76 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Tom Lendacky <thomas.lendacky@amd.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 03, 2019 at 12:33:53PM +0100, Catalin Marinas wrote:
> On Tue, Apr 30, 2019 at 06:51:50AM -0400, Christoph Hellwig wrote:
> > DMA allocations that can't sleep may return non-remapped addresses, but
> > we do not properly handle them in the mmap and get_sgtable methods.
> > Resolve non-vmalloc addresses using virt_to_page to handle this corner
> > case.
> > 
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > Reviewed-by: Robin Murphy <robin.murphy@arm.com>
> 
> Acked-by: Catalin Marinas <catalin.marinas@arm.com>

Given that this is a bug fix mostly separate from the rest of the
series - do you want to pick it up for 5.2 and maybe add a Cc for
stable?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
