Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1875914D721
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 08:54:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gag2ATcCoArrS5/L+0nWVNmcW+IQyyA/rSmVdHEgBRs=; b=ZuRqW75Q3+I5n8
	MMBlNylw5L0zZoJntNC+TXw0xDAUzORMFOSauEhFrjT+75l7JO4yyof11CMoliNNkB0ECqS1mT33R
	J7N99ypEBFQnP2oS1OqZkgZgxw3GsRQUgnKCJICmI4bjL+LblCHg+pkpm2O5N5mLoLhe65OcVPtWh
	SSNTUd1OQzZ/RRUE/5Z4VFQLcEHoZfs/yJwKh158DZhmxO6gYopTpdZr1U3j+hJ0sNLysToTfaxSf
	pa3Dq7MjjcBnD6t4f4+MtHKOQAYQ82FklHijiDHx0u+f+OOTurXDHuRruXYmM3YvH41lXZjyCmk+0
	dKIkUn76famHqmKO4Cnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix4e4-0001bc-VE; Thu, 30 Jan 2020 07:53:48 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix4dv-0001ax-AO
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 07:53:41 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 57B3C68B05; Thu, 30 Jan 2020 08:53:32 +0100 (CET)
Date: Thu, 30 Jan 2020 08:53:32 +0100
From: Christoph Hellwig <hch@lst.de>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PoC] arm: dma-mapping: direct: Apply dma_pfn_offset only when
 it is valid
Message-ID: <20200130075332.GA30735@lst.de>
References: <8eb68140-97b2-62ce-3e06-3761984aa5b1@ti.com>
 <20200114164332.3164-1-peter.ujfalusi@ti.com>
 <f8121747-8840-e279-8c7c-75a9d4becce8@arm.com>
 <28ee3395-baed-8d59-8546-ab7765829cc8@ti.com>
 <4f0e307f-29a9-44cd-eeaa-3b999e03871c@arm.com>
 <75843c71-1718-8d61-5e3d-edba6e1b10bd@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <75843c71-1718-8d61-5e3d-edba6e1b10bd@ti.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_235339_508876_DB040E62 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: robh@kernel.org, vigneshr@ti.com, konrad.wilk@oracle.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>,
 hch@lst.de, linux-arm-kernel@lists.infradead.org, rogerq@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[skipping the DT bits, as I'm everything but an expert on that..]

On Mon, Jan 27, 2020 at 04:00:30PM +0200, Peter Ujfalusi wrote:
> I agree on the phys_to_dma(). It should fail for addresses which does
> not fall into any of the ranges.
> It is just a that we in Linux don't have the concept atm for ranges, we
> have only _one_ range which applies to every memory address.

what does atm here mean?

We have needed multi-range support for quite a while, as common broadcom
SOCs do need it.  So patches for that are welcome at least from the
DMA layer perspective (kinda similar to your pseudo code earlier)

> > Nobody's disputing that the current dma_direct_supported()
> > implementation is broken for the case where ZONE_DMA itself is offset
> > from PA 0; the more pressing question is why Christoph's diff, which was
> > trying to take that into account, still didn't work.
> 
> I understand that this is a bit more complex than I interpret it, but
> the k2g is broken and currently the simplest way to make it work is to
> use the arm dma_ops in case the pfn_offset is not 0.
> It will be easy to test dma-direct changes trying to address the issue
> in hand, but will allow k2g to be usable at the same time.

Well, using the legacy arm dma ops means we can't use swiotlb if there
is an offset, which is also wrong for lots of common cases, including
the Rpi 4.  I'm still curious why my patch didn't work, as I thought
it should.  We'll need to find the minimum change to make it work
for now without switching ops, even if it isn't the correct one, and
then work from there.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
