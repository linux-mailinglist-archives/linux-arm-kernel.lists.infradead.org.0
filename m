Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C44FB117F28
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 05:47:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=31DpA9jBIlfPdekm+r+xwbnuaRtgdpraSLxtFVZw1u8=; b=JyzffKEovlV6i+
	FesWfjdRIukBCWmecg1sy8ivcMopAa0BofjNj5HKd9Vwzed5Ck92qI4rzGO7HGcY5JFjhcx7VIdx6
	irkpWveaq9NHfXKdldOgPXQzZj8faR8uKwhOIRmPzhSpgebUszUpsyDm+2v7eTsrj/wP4SqRxf8db
	Eg+pahH0HgT5m+m0e/MZRlPLMN2BEecDnsHhe96dXUqlmDvf7J5753kwlHdnrqkZuCeO8L+I8WKUQ
	LBH7o0G9XkzZI4txjkx74jmxByP3p69I1ba8axv0WCeV97yV/ZabCsXkfud5zXFoTDx6mnqRpfBs4
	B/1dYaBDyo2yoik5x6vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieXQu-00042N-G8; Tue, 10 Dec 2019 04:47:36 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieXQj-00041p-LN
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 04:47:26 +0000
Received: by mail-pl1-x643.google.com with SMTP id c23so1474218plz.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 20:47:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axtens.net; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y8tQSVFZXpglTzCwnCQJ/H8jDbSquTv0j0/ujEPlW6k=;
 b=Q5ohWjCIeOzukO5LCkWh2UDZUjzpG6Dg+k5QibSsNEXqnEUsNI3eOHJLFy8voZYt1D
 zWAwzTdpWafUiM/2V3jWWisOZsqR4bWCl+3Si1gmC/LlI61VQXqM8pt6m9UAyMGHCMQR
 a4aAP4oUxg9Iibn2yn+JTh0K/J6050DPkyO3I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y8tQSVFZXpglTzCwnCQJ/H8jDbSquTv0j0/ujEPlW6k=;
 b=jSjPuK8NOm8uHDECUi7K1x3l3CdtPTa/X0srCe09OrUvO1HYSAF0PjnBA7dBU2VYlx
 uZ3y7jJ8PR7psjfVZETLRcIU3Y/c4LWnBkKSfVoN0MLYUH80sqGGDOe545JQdbKRSFjT
 ObYUoWKMcGaWtTaFGS/MELj9GOB/ibsaI7go5Rcp4UGMajgEE8/rH38feoK2ODfSYdjD
 2RWlGswVjd5y2OxIGcAuLoY//7z3f3eDH6Aj2axbYiAW6mywI/a3hHfJRSOhtymc0dyH
 715MpTZQoRya0ICT0IoDiMny5tSpcyiaIAQJtPmpCDN+jNfxa3Mw2ENlxOV8rlNOrmDF
 I96Q==
X-Gm-Message-State: APjAAAWOng3pYcnPPlq0RKFFNlFG1AC3sNu0AWOTUW5CA9qcdb8mnf0P
 xFdleQSkALubRU/hhcsmg3HA3g==
X-Google-Smtp-Source: APXvYqzZzlhFQwpykUHNZoV4iqQbstcouL0rgALlQzDURKcSExHxCCWi3YgmjP5uPHJuX5j1JCnLyA==
X-Received: by 2002:a17:902:9f83:: with SMTP id
 g3mr30957647plq.234.1575953242726; 
 Mon, 09 Dec 2019 20:47:22 -0800 (PST)
Received: from localhost
 (2001-44b8-1113-6700-e460-0b66-7007-c654.static.ipv6.internode.on.net.
 [2001:44b8:1113:6700:e460:b66:7007:c654])
 by smtp.gmail.com with ESMTPSA id e16sm1159270pgk.77.2019.12.09.20.47.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 20:47:21 -0800 (PST)
From: Daniel Axtens <dja@axtens.net>
To: linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linuxppc-dev@lists.ozlabs.org, linux-s390@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, linux-arch@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kasan-dev@googlegroups.com,
 christophe.leroy@c-s.fr, aneesh.kumar@linux.ibm.com, bsingharora@gmail.com
Subject: [PATCH v2 0/4] KASAN for powerpc64 radix, plus generic mm change
Date: Tue, 10 Dec 2019 15:47:10 +1100
Message-Id: <20191210044714.27265-1-dja@axtens.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_204725_700733_2B4E4C9C 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Daniel Axtens <dja@axtens.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Building on the work of Christophe, Aneesh and Balbir, I've ported
KASAN to 64-bit Book3S kernels running on the Radix MMU.

This provides full inline instrumentation on radix, but does require
that you be able to specify the amount of physically contiguous memory
on the system at compile time. More details in patch 4.

The big change from v1 is the introduction of tree-wide(ish)
MAX_PTRS_PER_{PTE,PMD,PUD} macros in preference to the previous
approach, which was for the arch to override the page table array
definitions with their own. (And I squashed the annoying intermittent
crash!)

Apart from that there's just a lot of cleanup. Christophe, I've
addressed most of what you asked for and I will reply to your v1
emails to clarify what remains unchanged.

Regards,
Daniel

Daniel Axtens (4):
  mm: define MAX_PTRS_PER_{PTE,PMD,PUD}
  kasan: use MAX_PTRS_PER_* for early shadow
  kasan: Document support on 32-bit powerpc
  powerpc: Book3S 64-bit "heavyweight" KASAN support

 Documentation/dev-tools/kasan.rst             |   7 +-
 Documentation/powerpc/kasan.txt               | 112 ++++++++++++++++++
 arch/arm64/include/asm/pgtable-hwdef.h        |   3 +
 arch/powerpc/Kconfig                          |   3 +
 arch/powerpc/Kconfig.debug                    |  21 ++++
 arch/powerpc/Makefile                         |  11 ++
 arch/powerpc/include/asm/book3s/64/hash.h     |   4 +
 arch/powerpc/include/asm/book3s/64/pgtable.h  |   7 ++
 arch/powerpc/include/asm/book3s/64/radix.h    |   5 +
 arch/powerpc/include/asm/kasan.h              |  20 +++-
 arch/powerpc/kernel/process.c                 |   8 ++
 arch/powerpc/kernel/prom.c                    |  59 ++++++++-
 arch/powerpc/mm/kasan/Makefile                |   3 +-
 .../mm/kasan/{kasan_init_32.c => init_32.c}   |   0
 arch/powerpc/mm/kasan/init_book3s_64.c        |  67 +++++++++++
 arch/s390/include/asm/pgtable.h               |   3 +
 arch/x86/include/asm/pgtable_types.h          |   5 +
 arch/xtensa/include/asm/pgtable.h             |   1 +
 include/asm-generic/pgtable-nop4d-hack.h      |   9 +-
 include/asm-generic/pgtable-nopmd.h           |   9 +-
 include/asm-generic/pgtable-nopud.h           |   9 +-
 include/linux/kasan.h                         |   6 +-
 mm/kasan/init.c                               |   6 +-
 23 files changed, 353 insertions(+), 25 deletions(-)
 create mode 100644 Documentation/powerpc/kasan.txt
 rename arch/powerpc/mm/kasan/{kasan_init_32.c => init_32.c} (100%)
 create mode 100644 arch/powerpc/mm/kasan/init_book3s_64.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
