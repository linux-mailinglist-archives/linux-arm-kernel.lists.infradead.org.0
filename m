Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E15A531377
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 19:08:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=udOjDzRQBHz46hD61Tu8Yb65SHszkZz0v6i2VvwobW4=; b=kX9HAj3+W+R47R
	+lTt9V1RR3n2mf6O7UuHGRM0K9Z58NHCYfbciYAFWIcBQFQUAyuu6VnsvWImcNDITzkGvydH6sOIk
	LwI6JhhibnjMM/nRzyMBQFOUmZapVZA6N/Y3hGmg+fWzjXq9N+8hQbetA+S+hl3XablJEwTsogUfH
	RDKsxIdPk0CLa5EycJHOBIhm4Y75OHcHbZUTcGtlmu/IernFt37DWlErvSxhFz06+fGToXstNUAEz
	7fQdIr42RnT+vxa7d5RjBeSUh17QSqFR87LOx+tIQPyHlYkkmqIM/cVRS1+3C0urDF0/o7hhqokHM
	Kqa3mJjH7hGmiumFipSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWl0k-0003Cp-84; Fri, 31 May 2019 17:08:10 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hWl0e-0003CU-6E; Fri, 31 May 2019 17:08:04 +0000
Date: Fri, 31 May 2019 10:08:04 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v3 0/6] Prerequisites for NXP LS104xA SMMU enablement
Message-ID: <20190531170804.GA12211@infradead.org>
References: <20190530141951.6704-1-laurentiu.tudor@nxp.com>
 <20190530.150844.1826796344374758568.davem@davemloft.net>
 <20190531163350.GB8708@infradead.org>
 <37406608-df48-c7a0-6975-4b4ad408ba36@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <37406608-df48-c7a0-6975-4b4ad408ba36@arm.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
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
Cc: madalin.bucur@nxp.com, netdev@vger.kernel.org, roy.pledge@nxp.com,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 Christoph Hellwig <hch@infradead.org>, Joakim.Tjernlund@infinera.com,
 iommu@lists.linux-foundation.org, camelia.groza@nxp.com,
 linuxppc-dev@lists.ozlabs.org, David Miller <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 06:03:30PM +0100, Robin Murphy wrote:
> > The thing needs to be completely redone as it abuses parts of the
> > iommu API in a completely unacceptable way.
> 
> `git grep iommu_iova_to_phys drivers/{crypto,gpu,net}`
> 
> :(
> 
> I guess one alternative is for the offending drivers to maintain their own
> lookup tables of mapped DMA addresses - I think at least some of these
> things allow storing some kind of token in a descriptor, which even if it's
> not big enough for a virtual address might be sufficient for an index.

Well, we'll at least need DMA API wrappers that work on the dma addr
only and hide this madness underneath.  And then tell if an given device
supports this and fail the probe otherwise.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
