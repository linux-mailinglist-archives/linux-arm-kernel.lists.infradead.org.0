Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FB21C3E8E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 17:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hsCVvlL7D5YqN9EnK3coaVSwrspDfGEZfzvIFsE9Zl0=; b=qLqKwBK2mmiv0s
	UT9uSMnnrHQ9tKwse49L1BRfm+saDLcopPbiy10ovx5G4AMF6VsWw2AoDwd+FJ82L4KlO+60hqRwH
	8RBaue7+db03wvrBRarAneVwQ5TVOLaflCNLC+8cLzuDZOEJdj16xdZ139u9g8Y2qQC3O1KAF/Cp5
	dS1zl4I7/Qn/+VkzSaVqAt+TNa3ZHfneawYk1Ag6VK92GR3JLV+QuY2A4SYr65f7Igff0y7rxrpEU
	SSMZo1IIQZSxV2Y1ToXDHsphoXNRNn6PfXj3gTOM4Bu4+wvaBoee6/HEvQBfWoOsfW8UjiTcSyWik
	WLGXfKum/1Na6ruiWl+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVd5K-0007BY-KZ; Mon, 04 May 2020 15:32:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVd5E-0007AN-0j
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 15:32:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 85E241FB;
 Mon,  4 May 2020 08:32:38 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 69D2C3F68F;
 Mon,  4 May 2020 08:32:37 -0700 (PDT)
Date: Mon, 4 May 2020 16:32:35 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Michael Kerrisk <mtk.manpages@gmail.com>
Subject: RFC: Adding arch-specific user ABI documentation in linux-man
Message-ID: <20200504153214.GH30377@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_083240_101176_6B0F88E5 
X-CRM114-Status: GOOD (  11.14  )
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

I considering trying to plug some gaps in the arch-specific ABI
documentation in the linux man-pages, specifically for arm64 (and
possibly arm, where compat means we have some overlap).

For arm64, there are now significant new extensions (Pointer
authentication, SVE, MTE etc.)  Currently there is some user-facing
documentation mixed in with the kernel-facing documentation in the
kernel tree, but this situation isn't ideal.

Do you have an opinion on where in the man-pages documentation should be
added, and how to structure it?


Affected areas include:

 * exec interface
 * aux vector, hwcaps
 * arch-specific signals
 * signal frame
 * mmap/mprotect extensions
 * prctl calls
 * ptrace quirks and extensions
 * coredump contents


Not everything has an obvious home in an existing page, and adding
specifics for every architecture could make some existing manpages very
unwieldy.

I think for some arch features, we really need some "overview" pages
too: just documenting the low-level details is of limited value
without some guide as to how to use them together.


Does the following sketch look reasonable?

 * man7/arm64.7: new page: overview of arm64-specific ABI extensions

 * man7/sve.7 (or man7/arm64-sve.7 or man7/sve.7arm64): new page:
   overview of arm64 SVE ABI

 * man2/arm64-ptrace.2 (or man2/ptrace.2arm64): new page:
   arm64 ptrace extensions

 * man2/mmap.2: extend with arm64-specific flags (only two flags, so we
   add them to the existing man page rather than creating a new one).

etc.


Ideally, I'd like to adopt a pattern that other arches can follow.

Thoughts?

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
