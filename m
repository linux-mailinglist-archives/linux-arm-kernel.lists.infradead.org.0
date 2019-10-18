Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8616BDCDC2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 20:17:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GMy6fBaXNDdEBbtvxMzcWVyxrLLQJBn9YKbyjrdEUEY=; b=PHtJAjwDUEvHbC
	tbvrSzkIAKYPlihUgWddd0yIn3/JDbCjdvEkgJS+7dAf3irYzhaSbar/QXDE+9Q8PukH5d02BFWJ/
	yR+1kqECMa3GL7Ape/1LKboS62jDjGvhgN2nhjkMYzkUkefFYKuiy0dpAUzIJvvXEQVmri8zDUa2S
	9px87aF59zgavX+t+QDKft7OGS8JDGsJ6rFRbgCXRQ2YAnLhKiRwu7jm0MsxayZjOi4vQ4jfmiKqL
	RJJbKLosQfKiGB5PboU3GAzE+q73kKhufjOgK4Y2A5nOX9u8IdajejBBaCri0Ftlly6iMyaAw1bCn
	ZKHCNryr9OQFnd/19xdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLWoY-0007e9-Pd; Fri, 18 Oct 2019 18:17:26 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLWo5-0007RS-Jj
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 18:16:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 64A4ACA3;
 Fri, 18 Oct 2019 11:16:46 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B1D853F718;
 Fri, 18 Oct 2019 11:16:45 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	catalin.marinas@arm.com
Subject: [PATCH v2 0/8] arm64: Optimise and update memcpy,
 user copy and string routines
Date: Fri, 18 Oct 2019 19:16:34 +0100
Message-Id: <cover.1571421836.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_111657_692420_598FC23F 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: sam-tebbs@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

v1: https://lore.kernel.org/linux-arm-kernel/cover.1571073960.git.robin.murphy@arm.com/

Hi,

This version fixes the couple of minor issues for big-endian and KASAN
builds turned up by v1. An additional patch[1] for the kprobes issue is
now effectively a prerequisite as well.

Robin.

[1] https://lore.kernel.org/linux-arm-kernel/e70f7b9de7e601b9e4a6fedad8eaf64d304b1637.1571326276.git.robin.murphy@arm.com/


Robin Murphy (1):
  arm64: Tidy up _asm_extable_faultaddr usage

Sam Tebbs (7):
  arm64: Allow passing fault address to fixup handlers
  arm64: Import latest Cortex Strings memcpy implementation
  arm64: Import latest version of Cortex Strings' memcmp
  arm64: Import latest version of Cortex Strings' memmove
  arm64: Import latest version of Cortex Strings' strcmp
  arm64: Import latest version of Cortex Strings' strlen
  arm64: Import latest version of Cortex Strings' strncmp

 arch/arm64/include/asm/alternative.h |  36 ---
 arch/arm64/include/asm/assembler.h   |  13 +
 arch/arm64/include/asm/extable.h     |  10 +-
 arch/arm64/lib/copy_from_user.S      | 103 ++++++--
 arch/arm64/lib/copy_in_user.S        | 106 ++++++--
 arch/arm64/lib/copy_template.S       | 304 ++++++++++-----------
 arch/arm64/lib/copy_template_user.S  |  24 ++
 arch/arm64/lib/copy_to_user.S        | 102 +++++--
 arch/arm64/lib/copy_user_fixup.S     |  14 +
 arch/arm64/lib/memcmp.S              | 317 ++++++++--------------
 arch/arm64/lib/memcpy.S              |  48 ++--
 arch/arm64/lib/memmove.S             | 236 ++++++-----------
 arch/arm64/lib/strcmp.S              | 278 ++++++++------------
 arch/arm64/lib/strlen.S              | 249 ++++++++++++------
 arch/arm64/lib/strncmp.S             | 379 ++++++++++++---------------
 arch/arm64/mm/extable.c              |  13 +-
 arch/arm64/mm/fault.c                |   2 +-
 17 files changed, 1125 insertions(+), 1109 deletions(-)
 create mode 100644 arch/arm64/lib/copy_template_user.S
 create mode 100644 arch/arm64/lib/copy_user_fixup.S

-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
