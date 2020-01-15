Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F5E13C61D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 15:34:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CXhBfqaQFePNTAak+9+jtwbGNwCf1QICexQg+IPlhhs=; b=s+/tQrlNUxVQAe
	E25heCsb3KgOmDpUMp1KUFpHpWSBH6pooNO4ZT6FrfkOIEWyPZ4WWc1bNnMiJGU3NtgtJRoGnLRhu
	NLaTzfVgeQEsMyv0ULr6CDq0toZOrlBQJ4mWlHQ5LWADvf6NM9L4ea8zZdl5wUOBa72lN9t1ZGJOl
	tjmk4llJwS7fXmLXfPg63X53xjA9Xvz7HTyMJvEUvhcAYa3g4ApG70Ci3Q0WoLRMBDarVFmE0OK3H
	AQjTZHFJtC+xdnE489uWybQvHxC53ZcsM2xD2xmTzhag0w5zTqJTcGp1o7DjxgLwU4SP+gH5OW28T
	vr+kG74YrBDLRSIvHNNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irjk2-0001Ts-32; Wed, 15 Jan 2020 14:33:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjjh-0001SJ-11
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 14:33:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1877631B;
 Wed, 15 Jan 2020 06:33:31 -0800 (PST)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9D5F83F68E;
 Wed, 15 Jan 2020 06:33:30 -0800 (PST)
From: James Morse <james.morse@arm.com>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: [RFC PATCH 0/3] arm64: hibernate: idmap the single page that holds
 the copy page routines
Date: Wed, 15 Jan 2020 14:33:19 +0000
Message-Id: <20200115143322.214247-1-james.morse@arm.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_063333_108099_2541819A 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

Pavel T wants the kexec memory-copy to happen with the MMU on to take
advantage of the caches. Hibernate pulls some tricks in this area
which should be re-used.

Kexec needs to turn the MMU off once its done, which needs to be
done from the idmap. Hibernate's memory-copy code doesn't have this
requirement, lets pretend we do.

These patches are an RFC as I don't think they make sense on their
own. The CC list is short for the same reason.


This series adds another idmap that is created during resume from
hibernate. Forcing the T0SZ up to at least 48 bits means this path
can be tested on a 4K/39 or 64K/42 configuration.

Kexec should be able to re-use his to map its copy routines low,
using a 'safe' copy of the linear map in TTBR1.

Tested on Juno and Seattle's magic 4K/39 configuration.
I haven't been able to test this with the models 52bit PA support,
but would be able to test it through kexec.


Thanks,

James Morse (3):
  arm64: mm: Always update TCR_EL1 from __cpu_set_tcr_t0sz()
  arm64: hibernate: Split create_safe_exec_page() and its mapping code
  arm64: hibernate: idmap the single page that holds the copy page
    routines

 arch/arm64/include/asm/mmu_context.h |   7 +-
 arch/arm64/kernel/hibernate.c        | 146 ++++++++++++++-------------
 2 files changed, 77 insertions(+), 76 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
