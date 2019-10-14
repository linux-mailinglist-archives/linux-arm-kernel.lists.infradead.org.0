Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FAEDD6296
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 14:33:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YHin9Ql+YM26Iig2KacuFJnGm798Rgo/uQX6f5nAkKY=; b=ZP6QCf3WTsWy/z
	bCLEGnlzLyH168WHdiq1QtuEUfTegRfz+fSZJ7gO5ubMdVMcAGJVL3+mOYbn3vmrVmZJzgRsjxBkg
	3bbmL0jXyDSTnlWlSh+jRHJm/BGmHb3qMhFnlRfe/fFBjQvZTjmp+IYo8tEk1aO2ZEa3Y0N5kV0tT
	plvw3J5jRWLtoS3o4L+f3ry5/nfbkFgJdjVMBEljQ2Hb4ICQMLNa/cFDOXccR+NKDoREfGgw/gtWT
	fOpPtj7RBr6plfK9gBwMtQmMFc7RAq7Sr6SNsWd5bv3hFwZhnTm6OKKEqHbW9mNPjGDsKmnvL7GNZ
	RGnEbxd7hyx40A784p2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJzXD-0004lc-ED; Mon, 14 Oct 2019 12:33:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzX6-0004kX-8l
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 12:33:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B47DC337;
 Mon, 14 Oct 2019 05:32:59 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8D66A3F68E;
 Mon, 14 Oct 2019 05:32:58 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: stable@vger.kernel.org
Subject: [stable-4.4][PATCH 0/2] arm64: cpufeature: Fix truncating a feature
 value
Date: Mon, 14 Oct 2019 13:32:52 +0100
Message-Id: <20191014123254.22002-1-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_053304_350535_433BB00B 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
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
Cc: mark.rutland@arm.com, maz@kernel.org, suzuki.poulose@arm.com,
 gregkh@linuxfoundation.org, catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series fixes the issue with arm64_ftr_value() where the signed
fields are truncated to unsigned values corrupting the system wide
safe values.


Suzuki K Poulose (2):
  arm64: capabilities: Handle sign of the feature bit
  arm64: Rename cpuid_feature field extract routines

 arch/arm64/include/asm/cpufeature.h | 29 +++++++++++++++---------
 arch/arm64/kernel/cpufeature.c      | 35 ++++++++++++++++-------------
 arch/arm64/kernel/debug-monitors.c  |  2 +-
 arch/arm64/kvm/sys_regs.c           |  2 +-
 arch/arm64/mm/context.c             |  3 ++-
 5 files changed, 42 insertions(+), 29 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
