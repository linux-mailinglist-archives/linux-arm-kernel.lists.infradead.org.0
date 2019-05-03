Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2580C12C84
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 13:37:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Rg8iDVu8+wmU+qiEUw5Tam/oJE6xXmrJnXMYsoW7Xc=; b=KvZZyuwBp5tHJ7
	bM4iUmkaflR35HZbD+9URhc2RGMFOmTOYOtyvq2Z+RhPdEMtXBySSLcQCbGEPncIh5djt3dmv3vMz
	rjJIi9CaYTNcBnqCQjpPLOWA9eeQwPqajyePKQ26wa56V6b7Rcmx+oJyuy4RyHQsC10jOSVvflELY
	/cQL3zPloAn2Pwn1tGXBY/rLaOpwmERpkfTi5OzAm5zuboQyENIyWLtUkemPmGfKARkfMIkpC9Zyg
	lPdHmPv6C8xj3qqQSjM8l0h3puFVHsyRym7x/TjI8GqDfZiVoXhvbfjOxHlUL3lEWWgvMv/XwUEB+
	9IBQedeHjq8GeXZkbqag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMWV2-0005wc-5N; Fri, 03 May 2019 11:37:08 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMWUu-0005wB-Ts
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 11:37:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 97E58374;
 Fri,  3 May 2019 04:36:59 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 0DF6F3F220; Fri,  3 May 2019 04:36:57 -0700 (PDT)
Date: Fri, 3 May 2019 12:36:55 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 02/25] dma-mapping: add a Kconfig symbol to indicated
 arch_dma_prep_coherent presence
Message-ID: <20190503113655.GB55449@arrakis.emea.arm.com>
References: <20190430105214.24628-1-hch@lst.de>
 <20190430105214.24628-3-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430105214.24628-3-hch@lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_043700_967433_EA2D196E 
X-CRM114-Status: GOOD (  14.29  )
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
Cc: Tom Lendacky <thomas.lendacky@amd.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 06:51:51AM -0400, Christoph Hellwig wrote:
> Add a Kconfig symbol that indicates an architecture provides a
> arch_dma_prep_coherent implementation, and provide a stub otherwise.
> 
> This will allow the generic dma-iommu code to use it while still
> allowing to be built for cache coherent architectures.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Robin Murphy <robin.murphy@arm.com>

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
