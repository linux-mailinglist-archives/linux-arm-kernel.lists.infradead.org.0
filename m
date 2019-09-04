Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89055A7C37
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 09:01:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OgIK+vccmgwu329hi2TT5foS56Cwu4PM7vtx8UH9jAg=; b=koP196MC6LDnUv
	lJA0WAlVCcvg8TW7tZyAZrbYf+ChI/Sx1ZytuCRJi1SZ0WigvksUVRdrbr4JGGZEkBQj5xFAy0kNE
	yEZRvg1wcOxjduYzlR8qedIKFoHc7M5eZVYbBGzylfS4rx6CUcBRReFXQ+W6qN3pbTB9/jE8iv72S
	9Btk4u8R8/usVhKOZwIbXGXPVpljf4ZeYe2opfm9H4KjgoyebD6cCrfsxMbV4xGc7jQDZUHbuU275
	NXeHDdFdWQjI5jFtbcu8r9SzYa3R1R2151Ifxvz5JBxTwDxKsSqpn7JBtxpDusqtG7xrLxuawa3Mo
	qrMbZC/jzLmTHaf/xJvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5PHx-00025v-MA; Wed, 04 Sep 2019 07:01:09 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5PHR-00025J-Ug
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 07:00:39 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 57523227A8A; Wed,  4 Sep 2019 09:00:33 +0200 (CEST)
Date: Wed, 4 Sep 2019 09:00:33 +0200
From: Christoph Hellwig <hch@lst.de>
To: Boris Ostrovsky <boris.ostrovsky@oracle.com>
Subject: Re: [PATCH 08/13] swiotlb-xen: always use dma-direct helpers to
 alloc coherent pages
Message-ID: <20190904070033.GA11643@lst.de>
References: <20190902130339.23163-1-hch@lst.de>
 <20190902130339.23163-9-hch@lst.de>
 <5799ca4b-7993-b1c5-73fa-396a560f58e8@oracle.com>
 <8a7f9e23-ef26-e83b-8d1e-dcd7d233642a@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8a7f9e23-ef26-e83b-8d1e-dcd7d233642a@oracle.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_000038_193951_870AB41E 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 xen-devel@lists.xenproject.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 03, 2019 at 06:25:54PM -0400, Boris Ostrovsky wrote:
> > If I am reading __dma_direct_alloc_pages() correctly there is a path
> > that will force us to use GFP_DMA32 and as Juergen pointed out in
> > another message that may not be desirable.

Yes, it will add GFP_DMA32.  So I guess for now we'll just keep the
direct page allocator calls and resend.  I don't think this is the
right thing to do long term, but I'd really like to get this series
finished.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
