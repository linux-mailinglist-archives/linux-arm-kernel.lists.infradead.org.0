Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 444FA1F2553
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:29:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uMq2ctCZC+TF8rOKyRZLj6l3R/1+8ESI+HJP+c/n5As=; b=dPZnwi2x/pEkyg
	/tcDaThqYLGa9pZDCzpkDEDSRprbmueLvu14cmUpcxv3+jQPekE6P5xIz3Zw8r1pKamhUjxN/XcBP
	iINga+SFMwaKx8sXDqVXcp5AbTyekRD58HBXX/Y3GjJJCxtXmJOIqwdCCP8Duy6uN0UA0szfEsOvo
	ah5nUcghlTxBBcL+42WbmygU1iRlMKQIPytGWjC4Js6zcFK4xu4y/ZEgvLu/0nRerfn1vXOk2kw6k
	Vyx38rA8UtlmKc+lq4crDfu71KSF+kKLl6LNEOonZMCiDefWiCcAdscuY9u9LYLZp4B+SNa5HbMKq
	yDWefYD3Li80JwePuxjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiRCM-0000uY-3e; Mon, 08 Jun 2020 23:28:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQyq-0008Ga-Ug
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 23:15:15 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 45A7D20B80;
 Mon,  8 Jun 2020 23:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658100;
 bh=BXez2DSlSl51P+h9LqOJ6exEtf/VkbpZC0uv0fs2zX0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wKmF3dY24YsfQzYs898Q8NcD23SZH/Gu2jk4B8sUZo8Onxj4Z3nBLMidSnXjsFMjn
 kjh8VpXDWUUMo1JqTHoXCBtfAZVP6LY/IXmTN0ZlHcCkqGzD0Se1C84YbUt3bkehjJ
 3LKmOXOT8puKfvLic/vQpBo31+AQkjHEQuRRhRgM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 141/606] bpf: Restrict bpf_probe_read{,
 str}() only to archs where they work
Date: Mon,  8 Jun 2020 19:04:26 -0400
Message-Id: <20200608231211.3363633-141-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231211.3363633-1-sashal@kernel.org>
References: <20200608231211.3363633-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161501_111074_8FB569A7 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: bpf@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alexei Starovoitov <ast@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>,
 netdev@vger.kernel.org, Brendan Gregg <brendan.d.gregg@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Daniel Borkmann <daniel@iogearbox.net>

commit 0ebeea8ca8a4d1d453ad299aef0507dab04f6e8d upstream.

Given the legacy bpf_probe_read{,str}() BPF helpers are broken on archs
with overlapping address ranges, we should really take the next step to
disable them from BPF use there.

To generally fix the situation, we've recently added new helper variants
bpf_probe_read_{user,kernel}() and bpf_probe_read_{user,kernel}_str().
For details on them, see 6ae08ae3dea2 ("bpf: Add probe_read_{user, kernel}
and probe_read_{user,kernel}_str helpers").

Given bpf_probe_read{,str}() have been around for ~5 years by now, there
are plenty of users at least on x86 still relying on them today, so we
cannot remove them entirely w/o breaking the BPF tracing ecosystem.

However, their use should be restricted to archs with non-overlapping
address ranges where they are working in their current form. Therefore,
move this behind a CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE and
have x86, arm64, arm select it (other archs supporting it can follow-up
on it as well).

For the remaining archs, they can workaround easily by relying on the
feature probe from bpftool which spills out defines that can be used out
of BPF C code to implement the drop-in replacement for old/new kernels
via: bpftool feature probe macro

Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Daniel Borkmann <daniel@iogearbox.net>
Signed-off-by: Alexei Starovoitov <ast@kernel.org>
Reviewed-by: Masami Hiramatsu <mhiramat@kernel.org>
Acked-by: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Brendan Gregg <brendan.d.gregg@gmail.com>
Cc: Christoph Hellwig <hch@lst.de>
Link: https://lore.kernel.org/bpf/20200515101118.6508-2-daniel@iogearbox.net
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/arm/Kconfig         | 1 +
 arch/arm64/Kconfig       | 1 +
 arch/x86/Kconfig         | 1 +
 init/Kconfig             | 3 +++
 kernel/trace/bpf_trace.c | 6 ++++--
 5 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 97864aabc2a6..579f7eb6968a 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -13,6 +13,7 @@ config ARM
 	select ARCH_HAS_KEEPINITRD
 	select ARCH_HAS_KCOV
 	select ARCH_HAS_MEMBARRIER_SYNC_CORE
+	select ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE
 	select ARCH_HAS_PTE_SPECIAL if ARM_LPAE
 	select ARCH_HAS_PHYS_TO_DMA
 	select ARCH_HAS_SETUP_DMA_OPS
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 0b30e884e088..84e1f0a43cdb 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -21,6 +21,7 @@ config ARM64
 	select ARCH_HAS_KCOV
 	select ARCH_HAS_KEEPINITRD
 	select ARCH_HAS_MEMBARRIER_SYNC_CORE
+	select ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE
 	select ARCH_HAS_PTE_DEVMAP
 	select ARCH_HAS_PTE_SPECIAL
 	select ARCH_HAS_SETUP_DMA_OPS
diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index beea77046f9b..0bc9a74468be 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -70,6 +70,7 @@ config X86
 	select ARCH_HAS_KCOV			if X86_64
 	select ARCH_HAS_MEM_ENCRYPT
 	select ARCH_HAS_MEMBARRIER_SYNC_CORE
+	select ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE
 	select ARCH_HAS_PMEM_API		if X86_64
 	select ARCH_HAS_PTE_DEVMAP		if X86_64
 	select ARCH_HAS_PTE_SPECIAL
diff --git a/init/Kconfig b/init/Kconfig
index ef59c5c36cdb..59908e87ece2 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -2223,6 +2223,9 @@ config ASN1
 
 source "kernel/Kconfig.locks"
 
+config ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE
+	bool
+
 config ARCH_HAS_SYNC_CORE_BEFORE_USERMODE
 	bool
 
diff --git a/kernel/trace/bpf_trace.c b/kernel/trace/bpf_trace.c
index b899a2d7e900..158233a2ab6c 100644
--- a/kernel/trace/bpf_trace.c
+++ b/kernel/trace/bpf_trace.c
@@ -857,14 +857,16 @@ tracing_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
 		return &bpf_probe_read_user_proto;
 	case BPF_FUNC_probe_read_kernel:
 		return &bpf_probe_read_kernel_proto;
-	case BPF_FUNC_probe_read:
-		return &bpf_probe_read_compat_proto;
 	case BPF_FUNC_probe_read_user_str:
 		return &bpf_probe_read_user_str_proto;
 	case BPF_FUNC_probe_read_kernel_str:
 		return &bpf_probe_read_kernel_str_proto;
+#ifdef CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE
+	case BPF_FUNC_probe_read:
+		return &bpf_probe_read_compat_proto;
 	case BPF_FUNC_probe_read_str:
 		return &bpf_probe_read_compat_str_proto;
+#endif
 #ifdef CONFIG_CGROUPS
 	case BPF_FUNC_get_current_cgroup_id:
 		return &bpf_get_current_cgroup_id_proto;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
