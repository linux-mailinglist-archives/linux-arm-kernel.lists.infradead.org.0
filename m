Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 868A8135FAA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 18:50:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VHzD1ZbrskffDc4cqmX7/Q/IgHNwzlGuSSFkIAeUw2E=; b=bbDBZ0WKViYYaQ
	MDmnAoR8o1UXFKf83S+0Z1meYIJ3Fijk6dkXwoiJSID/MsHgJ4e6kMefQ8ycVwBs/agt0q4MUUO0/
	kYUolp1GT6DcizmASQPpkBgLWMF8ESaDQhZj1zRtLzmOj0mFzF/zXkAsYR6XNWpZ8bzST+p8AWyPr
	UgnUyIG7iyuDtGp92WSDSZS0iuUePyrNXgJbrzoY2rqb4NXb2gP/759/JGm2VBZsXp8ASIPytkre1
	GUp4duk7DVp1s3bSVIWcEQimM4cVJHunFRPK9YeajuDcI8mbSB/dJSyYkv5isa+bpjnUsuhKrvnuC
	0GAQSkWVcRS81r4c1Nbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipbwe-0001zg-9m; Thu, 09 Jan 2020 17:50:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipbwP-0001yS-7J
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 17:49:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4F15C328;
 Thu,  9 Jan 2020 09:49:52 -0800 (PST)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9ABE93F703;
 Thu,  9 Jan 2020 09:49:51 -0800 (PST)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] arm64: Simplify gas LSE support detection
Date: Thu,  9 Jan 2020 17:49:46 +0000
Message-Id: <20200109174948.48211-1-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_094953_303467_72F8B325 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The first patch was developed as part the of the MTE support [1] and
acked by the kbuild maintainers [2].

The second patch removes the Makefile logic to define CONFIG_AS_LSE
since the $(as-instr) check can now be handled in Kconfig.

[1] https://lore.kernel.org/linux-arm-kernel/20191211184027.20130-3-catalin.marinas@arm.com/
[2] https://lore.kernel.org/linux-arm-kernel/CAK7LNARR=DjdnZdu=L+0H8ALr4XJNpVbcRTOz_sVZdZpcM0pdQ@mail.gmail.com/

Catalin Marinas (2):
  kbuild: Add support for 'as-instr' to be used in Kconfig files
  arm64: Move the LSE gas support detection to Kconfig

 arch/arm64/Kconfig                    |  4 ++++
 arch/arm64/Makefile                   | 13 ++-----------
 arch/arm64/include/asm/atomic_ll_sc.h |  2 +-
 arch/arm64/include/asm/lse.h          |  6 +++---
 arch/arm64/kernel/cpufeature.c        |  4 ++--
 scripts/Kconfig.include               |  4 ++++
 6 files changed, 16 insertions(+), 17 deletions(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
