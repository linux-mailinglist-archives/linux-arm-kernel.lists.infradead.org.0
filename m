Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1F3278CF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 11:07:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eAYQBvwqc2CE9qf7RYBQPqcQg7faUGKbD/vlaD32GWY=; b=hVa2TVSCOEN5j4r4gCQggjpSRk
	E2/NgEIfKRQRiN2wRSpUZU/fqUldmfAEArvtvCvapnRH0KgsGuwSv6QHnP1XSApNM/+rtw6ub28hS
	yk7wISwJQJg3pgxPwxCA8hZXMTt0CZWmu9iy0HnRcvlAx/swnlC6Hk6sn4h1+J47elva0rQICmuNl
	Fq/3N/0ZJyoy3+JZyREeAd0TyQxnhLn6jgf/WEIiHLC46qr0TFG3UdfBTjjEgd0+vGuo1gcVmfELX
	uXd/eJTY0yju4SRn6h2b5a2fEmcg9mh4LrW5YDPfW62KUnde1mbeQeFPMzPE2lOBKgIgSBp3oCHeN
	DJ1j/LJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTjh1-0004dJ-VK; Thu, 23 May 2019 09:07:19 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTjgO-00041P-62
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 09:06:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C296015BF;
 Thu, 23 May 2019 02:06:39 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A698E3F575;
 Thu, 23 May 2019 02:06:37 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: x86@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/4] arm64: add PTRACE_SYSEMU{,
 SINGLESTEP} definations to uapi headers
Date: Thu, 23 May 2019 10:06:17 +0100
Message-Id: <20190523090618.13410-4-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190523090618.13410-1-sudeep.holla@arm.com>
References: <20190523090618.13410-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_020640_647167_43B0D903 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Haibo Xu <haibo.xu@arm.com>, Steve Capper <Steve.Capper@arm.com>,
 Richard Weinberger <richard@nod.at>, jdike@addtoit.com,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will.deacon@arm.com>,
 Oleg Nesterov <oleg@redhat.com>, Bin Lu <bin.lu@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

x86 and um use 31 and 32 for PTRACE_SYSEMU and PTRACE_SYSEMU_SINGLESTEP
while powerpc uses different value maybe for legacy reasons.

Though handling of PTRACE_SYSEMU can be made architecture independent,
it's hard to make these definations generic. To add to this existing
mess few architectures like arm, c6x and sh use 31 for PTRACE_GETFDPIC
(get the ELF fdpic loadmap address). It's not possible to move the
definations to generic headers.

So we unfortunately have to duplicate the same defination to ARM64 if
we need to support PTRACE_SYSEMU and PTRACE_SYSEMU_SINGLESTEP.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm64/include/uapi/asm/ptrace.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/include/uapi/asm/ptrace.h b/arch/arm64/include/uapi/asm/ptrace.h
index d78623acb649..627ac57c1581 100644
--- a/arch/arm64/include/uapi/asm/ptrace.h
+++ b/arch/arm64/include/uapi/asm/ptrace.h
@@ -62,6 +62,9 @@
 #define PSR_x		0x0000ff00	/* Extension		*/
 #define PSR_c		0x000000ff	/* Control		*/
 
+/* syscall emulation path in ptrace */
+#define PTRACE_SYSEMU		  31
+#define PTRACE_SYSEMU_SINGLESTEP  32
 
 #ifndef __ASSEMBLY__
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
