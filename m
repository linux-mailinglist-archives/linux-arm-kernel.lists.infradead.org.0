Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB021B5A98
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 13:33:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bJGnZ9x/yriCYe5u+ZhdnUdgkJh2psdLZcHrUY2IMoE=; b=hXNfJyq1i3kMel
	hzv7fUikYUjZw0X0s9lgcR/8s9OHNc3jZjIjTK2EIvnMW4wwGRkgZz+FWGk+iosnFFhS74Lt9K/p+
	QkJv5EXxaJXhA6Mt8afMqinxq/jqJz6W/rWjAjyT1wPlcfnqytZ6LpfUC/Ytov9piTe/falOAZNOV
	BrHLtLFdH/16cPnzmt9A6DZHK0dtJ/yNtTwsePgULRWCZpCx3EB+xD0KCme3IVWUVpKFqfzRMM3/u
	x/tDwtYskYHXImbpRonJnNeJ2SAlAk+WHuySwhdaoZ6UVvkmK5FgT4SudirLSMrPzExu7cm5gG6Z1
	Ls874EGI+Q2OEseKQLUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRa6l-0004eB-Bc; Thu, 23 Apr 2020 11:33:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRa6c-0004cz-6p
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 11:33:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 072F231B;
 Thu, 23 Apr 2020 04:33:21 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 112023F68F;
 Thu, 23 Apr 2020 04:33:19 -0700 (PDT)
Date: Thu, 23 Apr 2020 12:33:17 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Tim Harvey <tharvey@gateworks.com>
Subject: Re: IMX8MM kernel panic on 5.5+ due to patch series 'Raspberry Pi 4
 DMA addressing support'
Message-ID: <20200423113317.GD4963@gaia>
References: <CAJ+vNU0x+Dd67thRXABKG1AmJW6Babs_XE2hG01yuV3L9meuWA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ+vNU0x+Dd67thRXABKG1AmJW6Babs_XE2hG01yuV3L9meuWA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_043322_292383_9C98431C 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 10:44:33AM -0700, Tim Harvey wrote:
> I'm seeing a kernel panic on an IMX8MM board using defconfig starting
> with the patch series 'Raspberry Pi 4 DMA addressing support':
> 
> 734f924 mm: refresh ZONE_DMA and ZONE_DMA32 comments in 'enum zone_type'
> 1a8e1ce arm64: use both ZONE_DMA and ZONE_DMA32
> a573cdd arm64: rename variables used to calculate ZONE_DMA32's size
> ae970dc arm64: mm: use arm64_dma_phys_limit instead of calling
> max_zone_dma_phys()
> 
> Strangely I don't see this panic on an ARM64 OcteonTX CPU (thunderx)
> with defconfig so perhaps this has to do with some dt thing?
> 
> I find that a573cdd ("arm64: rename variables used to calculate
> ZONE_DMA32's size") breaks building arm64 defconfig due to renaming of
> arm64_dma_phys_limit to arm64_dma32_phys_limit but
> arm64_dma_phys_limit still used in includ/asm/processor.h
> 
> The following patch resolves this build error and panic:

So it means that commit 1a8e1ce causes the break for you. I haven't seen
this problem on any other platform yet. A wrong DT could as well cause
problems as this commit would change where some memory allocations come
from.

Can you run the kernel with memtest=1, just in case the DT is wrongly
pointing to some non-RAM areas.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
