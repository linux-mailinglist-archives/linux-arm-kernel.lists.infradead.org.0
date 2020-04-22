Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 081441B46B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 15:57:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sn06nomnluGbpuOyM/5YFLe78MnmTb2K7ahzt6W1QFY=; b=BavOXijjV+8CAm
	RQt2DU/xPTlkbt26Q0izBgfv5+FiF9VleIMlTaedNt55NaqknIgasCr+xm3QzOLaHfBiDpC6QV/0u
	sFOx/1SYMZubQLwBn1eBSBYE4DQLuE+wCXTA7tQ6TjlnA4um00M5OtGBsmdMDDKQZL5JJz0HG/2li
	FitJtFq+IV/rHHvJF2D+5AWdek25Tor3O49QpcOq5l3EfICcCMnaq/GeRVigVUw5Lxhal1ulHtRJT
	f5L3ReE++L1tdbyRZK7bApbKCwrkmCZsu7orenVX3NZny6PQZdkSfuM1EdF+LF/euxR18aTbwWGzl
	VlFuFVl4qtnfz/ovXCtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRFs1-0004eB-W0; Wed, 22 Apr 2020 13:56:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRFrt-0004cS-Lj
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 13:56:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0CBFC30E;
 Wed, 22 Apr 2020 06:56:47 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6426A3F68F;
 Wed, 22 Apr 2020 06:56:45 -0700 (PDT)
Date: Wed, 22 Apr 2020 14:56:43 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] arm32: fix flushcache syscall with device address
Message-ID: <20200422135642.GD3585@gaia>
References: <1587456514-61156-1-git-send-email-tiantao6@hisilicon.com>
 <20200421081239.GA15439@willie-the-truck>
 <20200421121651.000009f0@Huawei.com>
 <d0814ab2-03fc-42c1-e447-bfee2df038da@arm.com>
 <20200421165515.GF25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421165515.GF25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_065649_754816_27774907 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Will Deacon <will@kernel.org>, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linuxarm@huawei.com,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@Huawei.com>,
 Tian Tao <tiantao6@hisilicon.com>, tglx@linutronix.de, info@metux.net,
 allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 05:55:16PM +0100, Russell King wrote:
> On Tue, Apr 21, 2020 at 05:50:22PM +0100, James Morse wrote:
> > (Subject Nit: arm64, as that is what your patch modifies)
> 
> That is irrelevent.  This is a compatibility interface which is supposed
> to reflect the arm32 implementation.  Augmenting a compatibility
> interface to do more than what it's counterpart that it's supposed to
> be compatible with is senseless.
> 
> The API concerned is an ARM32 API which is expected to only be used
> for ensuring I/D cache coherency, it is not for DMA.
> 
> Augmenting it on ARM64 for DMA is senseless.

I fully agree. I don't see any valid reason why this needs to be fixed.
It looks like some broken user process trying to do cache maintenance to
PoU on the mapped PCIe BAR (either inadvertently or for the wrong
reasons).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
