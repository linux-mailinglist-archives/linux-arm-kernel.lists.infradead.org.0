Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA35EB3DC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 18:13:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3M8LYMLVQOSzpzv7MdR1t3zdp19vuvsgW3D7C28aeSY=; b=GQUZg8Er/g+eIR
	Gq4AO7gSN5Inh35DuAL8dmHevh3fCpjRV19eOSnUwnJvreMNmSs6pEtpKs3ZAJV3ciV2kIKlM22jM
	7GVdRsggmk4rFqQCXwpgR9TgVoXyBRx4Y43WRlfN9PiVPDEm7Hnfs5qdVeHwMtBsyR68RjSQJUGO4
	jsj/8evoK3pQNgtvNdDnVbSl/Ch+sZM4xw6cdGvNWp0dCzdrw0DKuxNBozlwr/zscfZJ1KPkgF++h
	ihK9Dt3K9TK775d96se9joFztt8UEJXGxO123lYmMJWqwfwAHLN2Jm2j0M8EmZRq2tp1m+3gntH2t
	PtYZvVEfQtRU7EFFC9tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKPwg-00014l-80; Sat, 27 Apr 2019 16:12:58 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKPwZ-00014C-Bh
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Apr 2019 16:12:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6D66B80D;
 Sat, 27 Apr 2019 09:12:48 -0700 (PDT)
Received: from mbp (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 10EEE3F246;
 Sat, 27 Apr 2019 09:12:46 -0700 (PDT)
Date: Sat, 27 Apr 2019 17:12:44 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Jeremy Linton <jeremy.linton@arm.com>
Subject: Re: [PATCH 2/2] arm64: cacheinfo: Update cache_line_size detected
 from PPTT
Message-ID: <20190427161243.6674yszyflgjqbhc@mbp>
References: <1556242821-5080-1-git-send-email-zhangshaokun@hisilicon.com>
 <1556242821-5080-2-git-send-email-zhangshaokun@hisilicon.com>
 <8d9b4fcd-23be-be06-6afa-8cabb1e889c2@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8d9b4fcd-23be-be06-6afa-8cabb1e889c2@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_091251_407419_BB037196 
X-CRM114-Status: GOOD (  14.28  )
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
Cc: john.garry@huawei.com, Will Deacon <will.deacon@arm.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>, qiuzhenfa@hisilicon.com,
 guohanjun@huawei.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 26, 2019 at 12:18:33PM -0500, Jeremy Linton wrote:
> On 4/25/19 8:40 PM, Shaokun Zhang wrote:
> > cache_line_size is derived from CTR_EL0.CWG field and is called mostly
> > for I/O device drivers. For HiSilicon certain plantform, like the
> 
> But there are core users too? Thinkgs like blk-mq, the trace ring buffer,
> iommu/iova, slub/slab.

cache_line_size() is indeed used in the core parts of the kernel, for
example when passing SLAB_HWCACHE_ALIGN on kmem_cache creation. Its
meaning is performance rather than coherency as we use ARCH_DMA_MINALIGN
for the latter.

> And a quick look seems to indicate a number of those
> users are going to be checking the cache line size before the cachinfo is
> populated (it happens fairly late via device_initcall() and a hp notifier).
> Is it going to be a problem if the value changes?

That's a good point. At a quick look I didn't see anything that would be
affected by a non-constant cache_line_size().

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
