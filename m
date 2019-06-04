Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8883488B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:22:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CKPDctOh3L+3O4KXL29z16zzQKeHZH+B1e2E/Q4XxMI=; b=HMaO5T+4SHMJFR
	GUwmiJj7xeFCXq6SZ6XxI3febbKKog1FvpH4u+R7gwByYcBkb0O8AEsmdciHzeJs0ibFHOxBUJu5p
	0KC5EV3D3Wb90dxJOaLoGg57vxTeeij0cgd3mWqq0jo370nOKiUOplYy18eIjS1h8a/HVybSCLYqh
	DEIxsKk61Kjjy8trI2Y7GbUxg+sWJia7btV4telL54/4r7MH+9DWRT2i5p5U90ZHDnauSFdSQOVcK
	Clp+6fkNcc/AFQa56O2/7bJF3tDhTmVJIos+1E6Y83MNZHVbP133Lzy4PVrLvSAgyhoc0ALRO6o+J
	Eow1oBxqhb/iVMDuCcZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9OE-0001KC-PE; Tue, 04 Jun 2019 13:22:10 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9O8-0001Jq-8t; Tue, 04 Jun 2019 13:22:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D06C8A78;
 Tue,  4 Jun 2019 06:22:03 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 7A4F03F690; Tue,  4 Jun 2019 06:22:02 -0700 (PDT)
Date: Tue, 4 Jun 2019 14:21:59 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Miles Chen <miles.chen@mediatek.com>
Subject: Re: [PATCH v2] arm64: mm: make CONFIG_ZONE_DMA32 configurable
Message-ID: <20190604132159.GD6610@arrakis.emea.arm.com>
References: <1559059700-19078-1-git-send-email-miles.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559059700-19078-1-git-send-email-miles.chen@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_062204_311247_79287ED4 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: wsd_upstream@mediatek.com, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 12:08:20AM +0800, Miles Chen wrote:
> This change makes CONFIG_ZONE_DMA32 defuly y and allows users
> to overwrite it only when CONFIG_EXPERT=y.
> 
> For the SoCs that do not need CONFIG_ZONE_DMA32, this is the
> first step to manage all available memory by a single
> zone(normal zone) to reduce the overhead of multiple zones.
> 
> The change also fixes a build error when CONFIG_NUMA=y and
> CONFIG_ZONE_DMA32=n.
> 
> arch/arm64/mm/init.c:195:17: error: use of undeclared identifier 'ZONE_DMA32'
>                 max_zone_pfns[ZONE_DMA32] = PFN_DOWN(max_zone_dma_phys());
> 
> Change since v1:
> 1. only expose CONFIG_ZONE_DMA32 when CONFIG_EXPERT=y
> 2. remove redundant IS_ENABLED(CONFIG_ZONE_DMA32)
> 
> Cc: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Miles Chen <miles.chen@mediatek.com>

Queued for 5.3. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
