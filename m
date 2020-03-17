Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D09818883F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 15:55:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JxzTTzOz2pqSGmhsaYCNKVG4tR0hR5T3gCEkAHpqe0A=; b=IpjtFfT64597vH
	SZG55/BaIvaOx0EopLI3Z0aYGyCQikQZymaTD8s8zEX6TC8O/KE+h2Ts1hzcKub1wOp3/9fuz0E5o
	s1DSjvg9sRh8P3ALoGH509AdDV5UUMkvqlHE0n7JfyLxK5lOhwHmJbZjrWBDjd/QvOEti6kpz4Mhx
	PWKizG0V8ejWh45TxMy3S2ODcjR7FNxd/77Ox2VzoYMLe/h0dprapvu/8YfxYm62N7jZW8rj36eer
	mgpbhoKbz0lx3nQpuO0LvR9g9mBG+sKq09oTaKDNsTzocNrn+UffE97ULU6snDMtJPWKDwUA5rMLa
	fQ6YZn17dOgtsvTvNysQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEDc8-0001w4-KK; Tue, 17 Mar 2020 14:54:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEDbz-0001uq-5s
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 14:54:32 +0000
Received: from mail.kernel.org (ip5f5ad4e9.dynamic.kabel-deutschland.de
 [95.90.212.233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4F90F20724;
 Tue, 17 Mar 2020 14:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584456870;
 bh=EQt8XNF67n6Qz/qYgjsQ6OrZnV8PGeVV9kM2E6Xo1RM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RueX3oIjzReC6mbi0x8E5FbR4B6JmuuosRjGYhQfoJP6FUW5I1d87YHLzroI3VqHr
 aTlyextonkTgWKILznM0gPhOolMhHWhoCwjS4lmyZRoAF6OcqNFTe24gxlNj44gMMY
 nLp9fwI1zZvq+RkAkB/vMntVV6cEiLmBE7xn/ETw=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jEDbw-000AMH-Bc; Tue, 17 Mar 2020 15:54:28 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Subject: [PATCH 01/17] docs: amu: supress some Sphinx warnings
Date: Tue, 17 Mar 2020 15:54:10 +0100
Message-Id: <d12f2ee809ee078c1e5e6d6da6dd9465f35109e2.1584456635.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1584456635.git.mchehab+huawei@kernel.org>
References: <cover.1584456635.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_075431_247774_6A78DA89 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add extra blank lines on some places, in order to avoid those
warnings when building the docs:

    Documentation/arm64/amu.rst:26: WARNING: Unexpected indentation.
    Documentation/arm64/amu.rst:60: WARNING: Unexpected indentation.
    Documentation/arm64/amu.rst:81: WARNING: Unexpected indentation.
    Documentation/arm64/amu.rst:108: WARNING: Unexpected indentation.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 Documentation/arm64/amu.rst | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/arm64/amu.rst b/Documentation/arm64/amu.rst
index 5057b11100ed..452ec8b115c2 100644
--- a/Documentation/arm64/amu.rst
+++ b/Documentation/arm64/amu.rst
@@ -23,6 +23,7 @@ optional external memory-mapped interface.
 
 Version 1 of the Activity Monitors architecture implements a counter group
 of four fixed and architecturally defined 64-bit event counters.
+
   - CPU cycle counter: increments at the frequency of the CPU.
   - Constant counter: increments at the fixed frequency of the system
     clock.
@@ -57,6 +58,7 @@ counters, only the presence of the extension.
 
 Firmware (code running at higher exception levels, e.g. arm-tf) support is
 needed to:
+
  - Enable access for lower exception levels (EL2 and EL1) to the AMU
    registers.
  - Enable the counters. If not enabled these will read as 0.
@@ -78,6 +80,7 @@ are not trapped in EL2/EL3.
 
 The fixed counters of AMUv1 are accessible though the following system
 register definitions:
+
  - SYS_AMEVCNTR0_CORE_EL0
  - SYS_AMEVCNTR0_CONST_EL0
  - SYS_AMEVCNTR0_INST_RET_EL0
@@ -93,6 +96,7 @@ Userspace access
 ----------------
 
 Currently, access from userspace to the AMU registers is disabled due to:
+
  - Security reasons: they might expose information about code executed in
    secure mode.
  - Purpose: AMU counters are intended for system management use.
@@ -105,6 +109,7 @@ Virtualization
 
 Currently, access from userspace (EL0) and kernelspace (EL1) on the KVM
 guest side is disabled due to:
+
  - Security reasons: they might expose information about code executed
    by other guests or the host.
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
