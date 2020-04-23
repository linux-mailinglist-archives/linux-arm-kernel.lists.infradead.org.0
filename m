Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0281A1B58EA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 12:16:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=v7WqwR2UiwINbrSOSnyBG7d01qNkImU352x0Mu4S5/g=; b=eK+
	Be53BYNs8U3phYdrc83s4Bhsy2Upzgth76SZJDsQT/Ig6Xb91xLndd6wbe5+LvJW9P2v5DVdB79gY
	pMXP1lzuPOWbWq0Gb+CNpSsfSmOPEe6vYtIAEBVgs9ASZ2svGNtHA0Cp0Lhpn/NSfeKfFkCiEgj3d
	ukt1dDI/l6Ncv+BCW+USU7cS/Vw6DHeFbMjh1AFAGctxP+1VrLJKyLrsz/a1ABvqj71ZRGd7+9y1m
	JK73EbWwO5+EwJoG9GJdhIzMOu51ZdHXoTUtDdg3c9BJc4hcqe8apeTQKOxD2WjIp9S7+OzP/yVOh
	DnlSAu24hct1YH17U2WIfRSTACX2igQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRYuK-0000qX-RF; Thu, 23 Apr 2020 10:16:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRYu0-0000eh-G0
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 10:16:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 947B431B;
 Thu, 23 Apr 2020 03:16:15 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 913DE3F68F;
 Thu, 23 Apr 2020 03:16:14 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] arm64: pointer authentication initialization cleanup
Date: Thu, 23 Apr 2020 11:16:04 +0100
Message-Id: <20200423101606.37601-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_031616_577126_739BDEA7 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 james.morse@arm.com, amit.kachhap@arm.com, will@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These patches refactor the pointer authentication initialization code to make
it easier to reason about and to reduce duplication of code.

The big wins are:

* Moving the initialization after the MMU has been enabled. This means we can
  initialize the keys using the same helpers as context switch, and don't need
  to temporarily duplicate them in secondary_data.

* Moving primary/secondary conditional initialization into the respective
  primary/secondary boot paths. This minimizes potentially-confusing control
  flow and still allows for code sharing via helper macros.

I've given this a spin on a foundation model, with userspace and kernel tests,
playing with CPU hotplug, etc.

Patches based on v5.7-rc2. These have no dependency on my fix queued in
for-next/core.

Thanks,
Mark.

Mark Rutland (2):
  arm64: remove ptrauth_keys_install_kernel sync arg
  arm64: simplify ptrauth initialization

 arch/arm64/include/asm/asm_pointer_auth.h | 43 +++++++++++++++++++++++++----
 arch/arm64/include/asm/smp.h              | 11 --------
 arch/arm64/kernel/asm-offsets.c           |  3 --
 arch/arm64/kernel/entry.S                 |  4 +--
 arch/arm64/kernel/head.S                  | 12 ++++++--
 arch/arm64/kernel/sleep.S                 |  1 -
 arch/arm64/kernel/smp.c                   |  8 ------
 arch/arm64/mm/proc.S                      | 46 +------------------------------
 8 files changed, 51 insertions(+), 77 deletions(-)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
