Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE796B0184
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 18:22:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tQQDumdseq3gqA6ZB991jfT743I9dDZHp7EEDDajGoM=; b=DojKSSFQdS38HeHHJsYZOKIS6
	07CtxbE/duBADvjJoPkwmVq/p2pz6WCTQ4cXvQUiJ/2AYWl5UJGV4u1So2BvIzy028e15x8mNFVgE
	6Nnx6GPc/B3wh0t5Wijux+S+0OPtMRsn4TTFpjcGBkU10T6/rcihftmAafGnX5rskhk0wxGJvxM8X
	0bq+ulIt34ArLWax2svnlG7lzrrCyTuQAVkoVlmBwzbnMhJSmK/Qxf9Xs0FddKLb8+ca/w26Hqvgd
	dI3/88iJQ87CD0kS4ISd20th88lbY51O2rB4M2bSebbnWt0iHKOaoZDVy8ZLAiehSpoj2Qs9TTXzh
	GbuRCZktg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i85OM-0000PY-OJ; Wed, 11 Sep 2019 16:22:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i85O8-0000PE-CT
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 16:22:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C0F8D28;
 Wed, 11 Sep 2019 09:22:35 -0700 (PDT)
Received: from [10.37.13.2] (unknown [10.37.13.2])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2F5C83F67D;
 Wed, 11 Sep 2019 09:22:35 -0700 (PDT)
Subject: Re: [PATCH] aarch64/mm: speedup memory initialisation
To: Hubert Ralf <Ralf.Hubert@preh.de>
References: <20190910085822.27072-1-ralf.hubert@preh.de>
From: James Morse <james.morse@arm.com>
Message-ID: <93e5d420-91b7-0e42-7d3f-776323abe450@arm.com>
Date: Wed, 11 Sep 2019 17:22:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190910085822.27072-1-ralf.hubert@preh.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_092236_470141_FF8DB5EC 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hubert,

(Subject-Nit: The prefix for this part of the kernel is 'arm64: mm:'. 
git log --oneline $file will usually give you enough examples you can 
spot the pattern.)

On 9/10/19 9:59 AM, Hubert Ralf wrote:
> On ARM64 memmap_init_zone is used during bootmem_init, which iterates over
> all pages in the memory starting at the lowest address until the highest
> address is reached. On arm64 this ends up in searching a memmory region
> containing for each single page between lowest and highest available
> physicall address.

> Having a sparse memory system there may be some big holes in the
> memory map. For each page in this holes a lookup is done, which is
> implemented as a binary search on the available memory blocks.
> 
> Adding a memmap_init for aarch64 to do the init only for the available
> memory areas reduces the time needed for initialising memory on startup.
> On a Renesas R-CAR M3 based system with a total hole of 20GB bootmem_init
> execution time is reduced from 378ms to 84ms.

Hmm, there is nothing arm64 specific about this SPARSEMEM behaviour.
Is there any reason this can't be done in core code, where it would 
benefit other architectures too?

(You'd need it to depend on !ARCH_DISCARD_MEMBLOCK as it looks like 
memory-hotplug uses this late).


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
