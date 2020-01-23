Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD87B146772
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 13:00:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f54c+w7sBdH3azRTTDvBS0CvDML+qsl9rxcJtgTh6/g=; b=TzbstZrf4ayszr
	H8KScXnvSruiMvBpQBvL8deWyKY3/GyiALMEGUsqMoJiLNtBCvkF8v6Kte+lPQHKffgf4AIYDldTY
	KVR1zeH6k+oLvtFJBFymStoLwzHHYV6tUnafMbi5g0/N3MXk0H99Xmo10RUi+IVSZVluT6YGO4iu1
	wi6ZIJB1kahPH0L8ZbbrpVM+FDlTdmitfz+oqccjbtNW6pY8reSIvdBNL+3JYMTua1MMQ5CVZiNcu
	4003F1P9X5iCwobBhGe42txx/wWJDOjQroQQDsOVcZfRIqkeKu5eRTxEYC/fiScywdv8XZUujtu2H
	IHAra4o7q+r3OPwhZibQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iubA2-0002Xi-6h; Thu, 23 Jan 2020 12:00:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iub8l-0000TB-D0
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 11:59:16 +0000
Received: from hump.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ACD3320704;
 Thu, 23 Jan 2020 11:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579780754;
 bh=sPgVONfMBssyrYeOuNYXulKqcfSKytB9nRTLqgRxmS8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uVF5rERqT0jd+V9y/x+9lELDQyPdGpV1tP/mdrlK+qSKbSW1torLX2dCc/MLqgBEL
 Yn8ARXFSFu9OEqhGmdOsVxFcvKEe8f6UjhQcmBYEF4pxjKECfqUBjqawzluK1cE5pt
 fVrjwg4K5wErH4qLiwrRsizZx4Ecd9NfIs6YthKc=
Date: Thu, 23 Jan 2020 13:59:04 +0200
From: Mike Rapoport <rppt@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 0/1] arm/arm64: add support for folded p4d page tables
Message-ID: <20200123115904.GA10436@hump.haifa.ibm.com>
References: <20200113111323.10463-1-rppt@kernel.org>
 <20200122185017.GA17321@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200122185017.GA17321@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_035915_510689_F19B8519 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Marc Zyngier <maz@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Mike Rapoport <rppt@linux.ibm.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 22, 2020 at 06:50:17PM +0000, Will Deacon wrote:
> On Mon, Jan 13, 2020 at 01:13:22PM +0200, Mike Rapoport wrote:
> > From: Mike Rapoport <rppt@linux.ibm.com>
> > 
> > This is a part of clean up of the page table manipulation code that aims to
> > remove asm-generic/5level-fixup.h and asm-generic/pgtable-nop4d-hack.h
> > 
> > There is a single patch for both arm and arm64 because doing the conversion
> > separately would mean breaking the shared mmu bits in virt/kvm/arm.
> 
> Unfortunately, that's going to be really hard to merge, as the two
> architectures are maintained in different trees and the breadth of this
> patch series is likely to lead to conflicts in both.

I anyway realized that sending these changes arch-by-arch was not so bright
idea, so my intention is to make "v2" include all the changes required to
drop asm-generic/5level-fixup.h and merge it via the -mm tree.
 
> Will

-- 
Sincerely yours,
Mike.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
