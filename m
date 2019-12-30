Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4EA912CDA3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 09:28:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IVB/hrThkZTs64dXkFS8xz4/ahw8TWKSXnJXx9KZGT0=; b=bYaaPU7wpvHi/l
	VudPaTgshx33Gxk1RYfiWAnf2lrXZFuccU9mq38Il+RByKoDy+n8XwfqkSCqoPzk7GdOMJuSpCqJZ
	pxbCHhnO1kMFHjSwAcWXES2Ln4aIHoanUXSdKxGz9DQ97wgEl9JxOLIHFhKZaeCG7wxxE5iXdGpUh
	YDEwSenilYTYzaO7szS2Wx9pMPqDNIKITJ14yw8MCoj4JAwvhrFlf5t142dBsJC7sHeovCMQ/0ilu
	JnsHELmpbBB6K9NpL33yGiGXMCwNX1dr/9LQ8qnOSWFIEedNJ5SutVprbzAo2/JXzNCLLQ389zPxx
	BPsXpzYQV4yrgeQd/T0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilqPA-0005kD-Bz; Mon, 30 Dec 2019 08:28:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilqOy-0005iS-2d
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 08:27:49 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D00A620748;
 Mon, 30 Dec 2019 08:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577694464;
 bh=9EMeHpw5evZdoe+AwHX3tiaQybGvCFpfAbbyvyTNN6g=;
 h=From:To:Cc:Subject:Date:From;
 b=SlEl27wr7bAYPQ+O/tJdPsHjcnV8J61qdvqT5DSXCxmdub51A4W//ahl/C/OrzmSr
 Kk9usdHhNlNC3dsUzy3xLRmk2CZKCFEZjAg70Fz+xCECej8U0BteIE3vvVYm8JPi5j
 42877+aKfAUGr/TxSZ0wXwRPAKqxo7pm+Ju7f5y4=
From: Mike Rapoport <rppt@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/1] arm/arm64: add support for folded p4d page tables
Date: Mon, 30 Dec 2019 10:27:33 +0200
Message-Id: <20191230082734.28954-1-rppt@kernel.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_002748_138104_2D4A59E0 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, James Morse <james.morse@arm.com>,
 Mike Rapoport <rppt@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Rapoport <rppt@linux.ibm.com>

Hi,

This is a part of clean up of the page table manipulation code that aims to
remove asm-generic/5level-fixup.h and asm-generic/pgtable-nop4d-hack.h

There is a single patch for both arm and arm64 because doing the conversion
separately would mean breaking the shared mmu bits in virt/kvm/arm.

The patch is build tested and boot tested on qemu-system-{arm,aarch64}.

Mike Rapoport (1):
  arm/arm64: add support for folded p4d page tables

 arch/arm/include/asm/kvm_mmu.h          |   5 +-
 arch/arm/include/asm/pgtable.h          |   1 -
 arch/arm/include/asm/stage2_pgtable.h   |  15 +-
 arch/arm/lib/uaccess_with_memcpy.c      |   9 +-
 arch/arm/mach-sa1100/assabet.c          |   2 +-
 arch/arm/mm/dump.c                      |  29 +++-
 arch/arm/mm/fault-armv.c                |   7 +-
 arch/arm/mm/fault.c                     |  28 +++-
 arch/arm/mm/idmap.c                     |   3 +-
 arch/arm/mm/init.c                      |   2 +-
 arch/arm/mm/ioremap.c                   |  12 +-
 arch/arm/mm/mm.h                        |   2 +-
 arch/arm/mm/mmu.c                       |  35 +++-
 arch/arm/mm/pgd.c                       |  40 ++++-
 arch/arm64/include/asm/kvm_mmu.h        |  10 +-
 arch/arm64/include/asm/pgalloc.h        |  10 +-
 arch/arm64/include/asm/pgtable-types.h  |   5 +-
 arch/arm64/include/asm/pgtable.h        |  37 +++--
 arch/arm64/include/asm/stage2_pgtable.h |  48 ++++--
 arch/arm64/kernel/hibernate.c           |  46 +++++-
 arch/arm64/mm/dump.c                    |  29 +++-
 arch/arm64/mm/fault.c                   |   9 +-
 arch/arm64/mm/hugetlbpage.c             |  15 +-
 arch/arm64/mm/kasan_init.c              |  41 ++++-
 arch/arm64/mm/mmu.c                     |  52 ++++--
 arch/arm64/mm/pageattr.c                |   7 +-
 virt/kvm/arm/mmu.c                      | 209 ++++++++++++++++++++----
 27 files changed, 565 insertions(+), 143 deletions(-)

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
