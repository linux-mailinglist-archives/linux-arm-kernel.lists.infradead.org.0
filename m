Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F101B27F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 15:32:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XAlUw629O1UXGOej34su7aSRoianoYw8N5FgpyfbfzM=; b=FB3dWKvPrehr/B
	MGpMNpunueviSpMW5O6Jm2rEZccoOjBP65CjyJrgPDsA4qanlqDONTnqaNVoPnDan/kvEhW/9QH8T
	aSk4/dIGQLfZS69jTZlLmIsa4mGTsicaaxPXNnFY/52KGxAE6qNX7s8QXnbYCjsmpH1j+RESKd99l
	cyvGt68COXYGgccg6g/cqquojJ9kI2l92g+/ImAbbepJms4DsVR1QjN44e7RiMDUMbPxuLtCmqtV/
	pal9ca6baPLKvXxuxMPqltI+54fL1TDimrjYkHbe5TOuKxoPRk4y9QPH3qABpO+bD/L4tNtCsxkVx
	zROFS1a2FAPD4uVUPZ2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQt0T-00078E-KB; Tue, 21 Apr 2020 13:32:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQt0L-00076Y-CG
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 13:32:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6F5A531B;
 Tue, 21 Apr 2020 06:31:57 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 925E73F68F;
 Tue, 21 Apr 2020 06:31:56 -0700 (PDT)
Date: Tue, 21 Apr 2020 14:31:54 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: sync kernel APIAKey when installing
Message-ID: <20200421133153.GB12076@gaia>
References: <20200421121014.53120-1-mark.rutland@arm.com>
 <20200421123150.GA17875@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421123150.GA17875@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_063201_459371_23174BF4 
X-CRM114-Status: GOOD (  17.10  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 linux-arm-kernel@lists.infradead.org, Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 01:31:51PM +0100, Will Deacon wrote:
> On Tue, Apr 21, 2020 at 01:10:14PM +0100, Mark Rutland wrote:
> > A direct write to a APxxKey_EL1 register requires a context
> > synchronization event to ensure that indirect reads made by subsequent
> > instructions (e.g. AUTIASP, PACIASP) observe the new value.
> > 
> > When we initialize the boot task's APIAKey in boot_init_stack_canary()
> > via ptrauth_keys_switch_kernel() we miss the necessary ISB, and so there
> > is a window where instructions are not guaranteed to use the new APIAKey
> > value. This has been observed to result in boot-time crashes where
> > PACIASP and AUTIASP within a function used a mixture of the old and new
> > key values.
> > 
> > Fix this by having ptrauth_keys_switch_kernel() synchronize the new key
> > value with an ISB. At the same time, __ptrauth_key_install() is renamed
> > to __ptrauth_key_install_nosync() so that it is obvious that this
> > performs no synchronization itself.
> > 
> > Fixes: 28321582334c261c ("arm64: initialize ptrauth keys for kernel booting task")
> > Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> > Reported-by: Will Deacon <will@kernel.org>
> > Cc: Amit Daniel Kachhap <amit.kachhap@arm.com>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Marc Zyngier <maz@kernel.org>
> > ---
> >  arch/arm64/include/asm/pointer_auth.h | 9 ++++++---
> >  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> Tested-by: Will Deacon <will@kernel.org>
> 
> Catalin -- please can you queue this for -rc3?

I will. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
