Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E2C145BE8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 19:57:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2YKBQKkkAz00AfzJroKVg1gjIzXs9CFIyzCoIp00bdc=; b=FHf5BZ8kVLrh74GDTwzk5xfGc
	QzvITy0OxyGRNu3GLQ/cIXh23oCVZX3S2JDdvojF11yjnD912iUN6IAxwi9IPOXGWZV1naU3ETF45
	BzyShC1KouhkIDuRwRjXdT+y1490brq1oVLasQG7qo81pf/0GpYpFS8uu/dL1FH8TQBpHy+OUpzkg
	BlcWP90cOSZW58zEzFCseNPcP6pN2W5EO/11tOPzL8ZqQlkeI6UyjEU7Rbw5cPXuiZyWX2489g8bH
	mNiG2SHTtGyW3HzJ55iLm+++uWpOf9t4dI2zzXWXDsqvfbwr8w9pmzpwQ8q58LCHZoR3DpeswzgXI
	Lge8rT48A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuLBL-0007iV-GZ; Wed, 22 Jan 2020 18:56:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuLBA-0007hr-P4
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 18:56:41 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F26B121835;
 Wed, 22 Jan 2020 18:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579719400;
 bh=A1sveuLlqqQKceZWUAfaJuEVgzcWTxZ9DNy4YwMID1M=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=QZ8CdyDm7SZ5aEnXV0NmjiW3eVtkqaHu+EdT4hcHHRfmTQZepyKl8Hrn/qG/z4MdD
 xT/kCCT1tnBwgq5siEH90jGhstBx1yUgCoGOjf+4XEkIbP3lXVvA1jGuk1qQSDq7LQ
 0/t5wVmcbzzRXcOeast0al9DP3vMqfgwn8b9JF00=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1iuLB8-000o1p-9q; Wed, 22 Jan 2020 18:56:38 +0000
MIME-Version: 1.0
Date: Wed, 22 Jan 2020 18:56:38 +0000
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>, Mike Rapoport <rppt@kernel.org>
Subject: Re: [PATCH v2 0/1] arm/arm64: add support for folded p4d page tables
In-Reply-To: <20200122185017.GA17321@willie-the-truck>
References: <20200113111323.10463-1-rppt@kernel.org>
 <20200122185017.GA17321@willie-the-truck>
Message-ID: <cb6357040bd5d9fa061a8d3bd96fb571@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: will@kernel.org, rppt@kernel.org,
 linux-arm-kernel@lists.infradead.org, anshuman.khandual@arm.com,
 catalin.marinas@arm.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 linux@armlinux.org.uk, suzuki.poulose@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-mm@kvack.org, linux-kernel@vger.kernel.org, rppt@linux.ibm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_105640_836337_E14AFB52 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Mike Rapoport <rppt@linux.ibm.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-22 18:50, Will Deacon wrote:
> On Mon, Jan 13, 2020 at 01:13:22PM +0200, Mike Rapoport wrote:
>> From: Mike Rapoport <rppt@linux.ibm.com>
>> 
>> This is a part of clean up of the page table manipulation code that 
>> aims to
>> remove asm-generic/5level-fixup.h and asm-generic/pgtable-nop4d-hack.h
>> 
>> There is a single patch for both arm and arm64 because doing the 
>> conversion
>> separately would mean breaking the shared mmu bits in virt/kvm/arm.
> 
> Unfortunately, that's going to be really hard to merge, as the two
> architectures are maintained in different trees and the breadth of this
> patch series is likely to lead to conflicts in both.

But maybe this is the reason we've all been waiting for, for which we
sacrifice 32bit KVM host on the altar of progress, and finally move 
along.

Will and I are the only known users, and that'd be a good incentive to
experience some if this 64bit goodness... ;-)

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
