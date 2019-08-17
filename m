Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA7090D69
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 08:50:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/7N3fSSwyuY7Qv/3nNlHIDt0qc+SsazCctCnXc0H8g=; b=pOfAf5yj75Hjzo
	y8nI9z5B2izNSI21QXzp/VgCD8oUF1+F6Y3MvYCujBN2/Mds9ATOF1LB1ccsminlcVeMoKTR5vNix
	VYS/3rpRvbzE7NhmN8es5ApEXAuJHUTZaQDIF3pgmMk+WP061ogXmlMxxLwQvB7tPu+KHDGsqkG5W
	Ru5D2wDkf+Tfev0Ed2QMc1hjukyYLrAnALgO9vksPVRgKKvDDKGHL5ZTGpjI1Pey5J+yKUPWa4m8C
	t8S4p2XYY7RiSIMP65gYO/lcNab8XvNK6bE4Vm6rAWDvIPf8f31kscdl/r/2+IgyBKHva6VcGdvG8
	6VpdJ/lKciB9pILdMhEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hysXl-0001Ig-RL; Sat, 17 Aug 2019 06:50:29 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hysXc-0001I5-T5
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 06:50:22 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 70BE768B05; Sat, 17 Aug 2019 08:50:12 +0200 (CEST)
Date: Sat, 17 Aug 2019 08:50:11 +0200
From: Christoph Hellwig <hch@lst.de>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [Xen-devel] [PATCH 07/11] swiotlb-xen: provide a single
 page-coherent.h header
Message-ID: <20190817065011.GA18599@lst.de>
References: <20190816130013.31154-1-hch@lst.de>
 <20190816130013.31154-8-hch@lst.de>
 <9a3261c6-5d92-cf6b-1ae8-3a8e8b5ef0d4@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9a3261c6-5d92-cf6b-1ae8-3a8e8b5ef0d4@arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_235021_092196_71E1169D 
X-CRM114-Status: UNSURE (   9.55  )
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
Cc: Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 xen-devel@lists.xenproject.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 11:40:43PM +0100, Julien Grall wrote:
> I am not sure I agree with this rename. The implementation of the helpers 
> are very Arm specific as this is assuming Dom0 is 1:1 mapped.
>
> This was necessary due to the lack of IOMMU on Arm platforms back then.
> But this is now a pain to get rid of it on newer platform...

So if you look at the final version of the header after the whole
series, what assumes a 1:1 mapping?  It all just is

	if (pfn_valid())
		local cache sync;
	else
		call into the arch code;

are you concerned that the local cache sync might have to be split
up more for a non-1:1 map in that case?  We could just move
the xen_dma_* routines into the arch instead of __xen_dma, but it
really helps to have a common interface header.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
