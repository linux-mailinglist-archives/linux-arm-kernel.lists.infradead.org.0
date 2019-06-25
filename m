Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D3152353
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 08:12:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TsyqiWxfv5MpnTIak1LKOm2IqfDkKt/mhhgKazMF43I=; b=geE8xX+k3dBYZw
	QQx+DFpS/BdZ98Hoc4++3g58pRG9PrCfPv4OsJk4IPR+dSTuKYiMwfR5TkwjyFzsWfcCmVhclNAIj
	d6tA90FJ6eKNJvgUV1AUyCnCNrqkAdW/207mSiRPvzvqqRNuQbboC653pFXc78D3pv7V/jsF+mF2u
	x5lblXlNfKDkg3LWFVQd4NNQIBAwDSiAdnJqGStGv/ksGfWLgkJE+DZ0UyWEZC4PJe0mrmRNyMNd5
	j8TCLTWV1IZbU/+l1/klqLkrYxqKlUlbPKsbxUsvbfPsQQSgSLegBFmPiC/puXN2XX8mlp1R5kMwb
	MVSPCsiUMdd7Ira6Y7JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfege-0000K1-Ui; Tue, 25 Jun 2019 06:12:13 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfeg5-0000Co-D9; Tue, 25 Jun 2019 06:11:39 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 413AB68B02; Tue, 25 Jun 2019 08:11:04 +0200 (CEST)
Date: Tue, 25 Jun 2019 08:11:04 +0200
From: Christoph Hellwig <hch@lst.de>
To: Hillf Danton <hdanton@sina.com>
Subject: Re: [PATCH 5/7] dma-direct: handle DMA_ATTR_NON_CONSISTENT in
 common code
Message-ID: <20190625061104.GB28986@lst.de>
References: <20190614144431.21760-1-hch@lst.de>
 <20190614144431.21760-6-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614144431.21760-6-hch@lst.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_231138_048314_EE47149D 
X-CRM114-Status: GOOD (  10.51  )
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
Cc: Jonas Bonn <jonas@southpole.se>, linux-xtensa@linux-xtensa.org,
 Vladimir Murzin <vladimir.murzin@arm.com>, linux-parisc@vger.kernel.org,
 Vineet Gupta <vgupta@synopsys.com>, Helge Deller <deller@gmx.de>,
 linux-kernel@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 iommu@lists.linux-foundation.org, openrisc@lists.librecores.org,
 Stafford Horne <shorne@gmail.com>, linux-snps-arc@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 16, 2019 at 06:08:40PM +0800, Hillf Danton wrote:
> Literally, any cpu (call it cpuW) other than pcx12 and pcx1 will no longer do
> dma alloc for any device with this patch applied.

Yes.  And that is not a chance from the previous code, where only
pcx1 and pcx12 could do coherent allocations,

> On the other hand, 
> !dev_is_dma_coherent(dev) && !(attrs & DMA_ATTR_NON_CONSISTENT) will ask
> any cpu to do dma alloc, regardless of pcx1. This patch works imo unless cpuW
> plays games only with devices that are dma coherent. I doubt it is true.

I can't parse these two sentences.  But to explains the bits mentioned
here - dev_is_dma_coherent will return if a device is coherently
attached vs the cpu.  This will never be true for the parisc direct
mapping.  DMA_ATTR_NON_CONSISTENT asks for a non-coherent mapping that
needs to be explicitly synced.  This support now is in the dma-direct
core code, and this is what the parisc specific devices used on the
non-pcxl systems use, as they do not support dma coherency at all.
(the story slightly changes when using an iommu, but that is irrelevant
here)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
