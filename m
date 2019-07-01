Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 919A45B88B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 12:04:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SYcX2XODOqtRnY3C7As90GBDIfHOxATDVBwqmVMG5UM=; b=LSdQxe0NaIKXtc
	5ZD9p7YL81t9H37xNnnUWJtczZcV9wRlsYD+4Kxcif9+fKCet0u2GP4MZ/RCwMQDVAK7ZTxmN4Emx
	LWuXmiIZjAdROa60eVNfVvlSB3e56YyodV0bV159pMMiJP0IqIJ1n66u66d/qDSCwmVTItSUfRR36
	kzmcyE5Hx3Hh4ll4up/tRcM8WUwSTpR6VaG33PYO1XogiBjUkPgfGQABXYGQ0afobOsuEzqsZ3a35
	WLdYpeCqMN0sHZIHGqoJAp2+PI2hL1GA9mBTlz1GI/ylUSzFAFNtw6+n6zgKllz8GqgKFvpPVS7Nf
	J6cjtYJNnkiC2DeS/LnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhtAM-0005Ec-H1; Mon, 01 Jul 2019 10:04:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hhtAC-0005EC-AI
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 10:03:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8F1772B;
 Mon,  1 Jul 2019 03:03:55 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0B4143F718;
 Mon,  1 Jul 2019 03:03:52 -0700 (PDT)
Subject: Re: Re: [PATCH 1/3] arm64: mm: Add p?d_large() definitions
To: Will Deacon <will@kernel.org>, Nicholas Piggin <npiggin@gmail.com>
References: <20190623094446.28722-1-npiggin@gmail.com>
 <20190623094446.28722-2-npiggin@gmail.com>
 <20190701092756.s4u5rdjr7gazvu66@willie-the-truck>
From: Steven Price <steven.price@arm.com>
Message-ID: <3d002af8-d8cd-f750-132e-12109e1e3039@arm.com>
Date: Mon, 1 Jul 2019 11:03:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190701092756.s4u5rdjr7gazvu66@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_030356_402890_F4334B7E 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-mm@kvack.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01/07/2019 10:27, Will Deacon wrote:
> Hi Nick,
> 
> On Sun, Jun 23, 2019 at 07:44:44PM +1000, Nicholas Piggin wrote:
>> walk_page_range() is going to be allowed to walk page tables other than
>> those of user space. For this it needs to know when it has reached a
>> 'leaf' entry in the page tables. This information will be provided by the
>> p?d_large() functions/macros.
> 
> I can't remember whether or not I asked this before, but why not call
> this macro p?d_leaf() if that's what it's identifying? "Large" and "huge"
> are usually synonymous, so I find this naming needlessly confusing based
> on this patch in isolation.

Hi Will,

You replied to my posting of this patch before[1], to which you said:

> I've have thought p?d_leaf() might match better with your description
> above, but I'm not going to quibble on naming.

Have you changed your mind about quibbling? ;)

Steve

[1]
https://lore.kernel.org/lkml/20190611153650.GB4324@fuggles.cambridge.arm.com/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
