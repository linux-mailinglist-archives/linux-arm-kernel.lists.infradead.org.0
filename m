Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 596E91F426C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 19:35:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CEverbA78NslStQVExgsYZqKvFTdsASNo0kNoLiWIYg=; b=p68pIYP8/H5/Qp
	2K5CboZJq6iD9wkVFqRVoejL4LzWozCDIG7kUYIJv1yDFZiFvJWSzBtH2rQIqHjPZ8Pe0QyIvmBzp
	FO7et2nY3Fae/2yKjnfxu9wpSJhMq1CNZAEUgI/LmhrZOZX9oluMVcYHJgN+q2m9at22w7FondO4h
	PaE0mYpLi+N6LyxXrd7GctVMTV7hQHlwir3WCF1VbLL2pWGXsr0wGBxldIoJW/OCyngPhj/CMJjjI
	qDfoSn9f+DJP9XDaL/bzhOvOu7J1CwWrm1BjNa6fF4aTk7nbFpVy//GAl1TICnDHqwSHPUlil2VBx
	POPTerPU3yIIZT6TLTDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jii9d-0005Ml-Ji; Tue, 09 Jun 2020 17:35:17 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jii9N-0004ds-Nq
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 17:35:03 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3460168AFE; Tue,  9 Jun 2020 19:34:56 +0200 (CEST)
Date: Tue, 9 Jun 2020 19:34:55 +0200
From: Christoph Hellwig <hch@lst.de>
To: Vladimir Murzin <vladimir.murzin@arm.com>
Subject: Re: [PATCH 2/2] arm-nommu: Add use_reserved_mem() to check if
 device support reserved memory
Message-ID: <20200609173455.GA25467@lst.de>
References: <1591605038-8682-1-git-send-email-dillon.minfei@gmail.com>
 <1591605038-8682-3-git-send-email-dillon.minfei@gmail.com>
 <90df5646-e0c4-fcac-d934-4cc922230dd2@arm.com>
 <CAL9mu0+__0Z3R3TcSrj9-kPxsyQHKS9WqK1u58P0dEZ+Jd-wbQ@mail.gmail.com>
 <20200609153646.GA17969@lst.de>
 <031034fb-b109-7410-3ff8-e78cd12a5552@arm.com>
 <b0c85637-4646-614b-d406-49aa72ce52e1@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b0c85637-4646-614b-d406-49aa72ce52e1@arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_103501_944198_FD95C803 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>, info@metux.net,
 linux@armlinux.org.uk, linux-stm32@st-md-mailman.stormreply.com,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, tglx@linutronix.de,
 dillon min <dillon.minfei@gmail.com>, Christoph Hellwig <hch@lst.de>,
 allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 09, 2020 at 05:25:04PM +0100, Vladimir Murzin wrote:
> Even though commit mentions ARM, I do not see how mmap would continue
> to work for NOMMU with dma-direct. ARM NOMMU needs it's own DMA operations
> only in cases where caches are implemented or active, in other cases it
> fully relies on dma-direct.

> It looks to me that we either should provide NOMMU variant for mmap in
> dma/direct or (carefully) fix dma/mapping.

I think dma-direct is the right place, the common helpers in
dma/mapping.c are basically the red headed stepchilds for misc
IOMMU drivers not covered by dma-iommu only.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
