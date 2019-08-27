Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B97C9DD95
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 08:21:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y2WBsDp9qmg6Ej+8+8j7sw3sQebbB4MZCf5O0KtDwUg=; b=i5IizLu8zjTs9z
	zdeNjcznf6RPj/3Uz4FDimNwCjXPK8Km0lwjAJFFWrDV66LDIAbcsdgHqGMoKb8uNw/vCE8UMU/Dr
	i8S8HcT74rUtc0ZpEZE0uj9oiWpcE0hphBGXkYBYAuVzUPvOy0l/5NTXPTNgCsMvjOnolDWiXvv24
	wzI1YUbDAbIzr/LqNW5L/UedQ7qt+CIM9/QFDclsusx4QDIlTyGzNdVIoSFD8SIknJXUAGRzW9+1h
	CURMNhumnR2hUI6v/7tw44Z1rbjZyvUf+phKg84jZRBuTwkB683mSwOv7s8/+AvaDpte2uoIROzeo
	bym3nip3T1ZG+HKfOt6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2UrD-0007ok-OG; Tue, 27 Aug 2019 06:21:31 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Ur0-0007oG-E4
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 06:21:20 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 2A12468AFE; Tue, 27 Aug 2019 08:21:14 +0200 (CEST)
Date: Tue, 27 Aug 2019 08:21:13 +0200
From: Christoph Hellwig <hch@lst.de>
To: Stefano Stabellini <sstabellini@kernel.org>
Subject: Re: swiotlb-xen cleanups
Message-ID: <20190827062113.GA31752@lst.de>
References: <20190816130013.31154-1-hch@lst.de>
 <alpine.DEB.2.21.1908261859490.3428@sstabellini-ThinkPad-T480s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1908261859490.3428@sstabellini-ThinkPad-T480s>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_232118_626983_1437F598 
X-CRM114-Status: GOOD (  11.93  )
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
Cc: Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 xen-devel@lists.xenproject.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 07:00:44PM -0700, Stefano Stabellini wrote:
> On Fri, 16 Aug 2019, Christoph Hellwig wrote:
> > Hi Xen maintainers and friends,
> > 
> > please take a look at this series that cleans up the parts of swiotlb-xen
> > that deal with non-coherent caches.
> 
> Hi Christoph,
> 
> I just wanted to let you know that your series is on my radar, but I
> have been swamped the last few days. I hope to get to it by the end of
> the week.

Thanks, and no rush.  Note that I posted a v2 with a few significant
changes yesterday.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
