Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B821F222A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:06:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3PsVgksnEPWfaiEVoi9l+HYLv9ZxGEPI73UtLL7O7Ko=; b=o9vht/ideni4w0
	qwTNhPEgX8kHtFDmRyo1G5b0kWiJKfNgCPvR+LJrs/r69+pSJjWCT3dxhstWkcXz4ixUmT3Xlp/ml
	QC9STzAcqAmjuOpFpPRsBEQRUIq8yiMuAtxXQq5zH4CdVXMXcuOybCzjrF7S9HU73RSKZzfY+oAYd
	nwLkr90vrKIKLXVbTRb+aYniJiYjBRcjr3w0NTxq426xSUyhFyeiQo7GUGKG0W9lrvadkSqbAeoiz
	mffHK9/70ZQXQyybqQM1EGQhvbp7IBrSuHsNgmnbRDJp61+PU98F51O6Ed64Tv1qi/aVxkMXcQUbI
	EZMaHUu+sr/uTZAFEuew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiQqs-0006bW-Ct; Mon, 08 Jun 2020 23:06:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQqi-0006Zx-1k
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 23:06:37 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D4D3E207C3;
 Mon,  8 Jun 2020 23:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657595;
 bh=1Bo6mQ3UXemvfcY+3K6du4CSfs7iEjEpfOdhQeNvJW0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sa9v6HA9KjtrGk9x6r6bvrXPTUW7Ql3ItsrtWESnorKSSlruutG8Hy+up7uRxrWcI
 zNa2/5CgKYlhZOpLXPrZZwr3g0XQsomm8w8XeMpcvyj3sz/4yxSxu8173pn8xD0Mbu
 RbQ8eJVBg+dLH2Y1ESl/mPpHHu3VAAgSmXn/T27w=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 022/274] arm64/kernel: Fix range on invalidating
 dcache for boot page tables
Date: Mon,  8 Jun 2020 19:01:55 -0400
Message-Id: <20200608230607.3361041-22-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_160636_130574_F79FAAD6 
X-CRM114-Status: GOOD (  14.87  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 Gavin Shan <gshan@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Sasha Levin <sashal@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Gavin Shan <gshan@redhat.com>

[ Upstream commit 9d2d75ede59bc1edd8561f2ee9d4702a5ea0ae30 ]

Prior to commit 8eb7e28d4c642c31 ("arm64/mm: move runtime pgds to
rodata"), idmap_pgd_dir, tramp_pg_dir, reserved_ttbr0, swapper_pg_dir,
and init_pg_dir were contiguous at the end of the kernel image. The
maintenance at the end of __create_page_tables assumed these were
contiguous, and affected everything from the start of idmap_pg_dir
to the end of init_pg_dir.

That commit moved all but init_pg_dir into the .rodata section, with
other data placed between idmap_pg_dir and init_pg_dir, but did not
update the maintenance. Hence the maintenance is performed on much
more data than necessary (but as the bootloader previously made this
clean to the PoC there is no functional problem).

As we only alter idmap_pg_dir, and init_pg_dir, we only need to perform
maintenance for these. As the other dirs are in .rodata, the bootloader
will have initialised them as expected and cleaned them to the PoC. The
kernel will initialize them as necessary after enabling the MMU.

This patch reworks the maintenance to only cover the idmap_pg_dir and
init_pg_dir to avoid this unnecessary work.

Signed-off-by: Gavin Shan <gshan@redhat.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Link: https://lore.kernel.org/r/20200427235700.112220-1-gshan@redhat.com
Signed-off-by: Will Deacon <will@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/include/asm/pgtable.h |  1 +
 arch/arm64/kernel/head.S         | 12 +++++++++---
 arch/arm64/kernel/vmlinux.lds.S  |  1 +
 3 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 538c85e62f86..25f56df7ed9a 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -457,6 +457,7 @@ extern pgd_t init_pg_dir[PTRS_PER_PGD];
 extern pgd_t init_pg_end[];
 extern pgd_t swapper_pg_dir[PTRS_PER_PGD];
 extern pgd_t idmap_pg_dir[PTRS_PER_PGD];
+extern pgd_t idmap_pg_end[];
 extern pgd_t tramp_pg_dir[PTRS_PER_PGD];
 
 extern void set_swapper_pgd(pgd_t *pgdp, pgd_t pgd);
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index 57a91032b4c2..32f5ecbec0ea 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -394,13 +394,19 @@ SYM_FUNC_START_LOCAL(__create_page_tables)
 
 	/*
 	 * Since the page tables have been populated with non-cacheable
-	 * accesses (MMU disabled), invalidate the idmap and swapper page
-	 * tables again to remove any speculatively loaded cache lines.
+	 * accesses (MMU disabled), invalidate those tables again to
+	 * remove any speculatively loaded cache lines.
 	 */
+	dmb	sy
+
 	adrp	x0, idmap_pg_dir
+	adrp	x1, idmap_pg_end
+	sub	x1, x1, x0
+	bl	__inval_dcache_area
+
+	adrp	x0, init_pg_dir
 	adrp	x1, init_pg_end
 	sub	x1, x1, x0
-	dmb	sy
 	bl	__inval_dcache_area
 
 	ret	x28
diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index 497f9675071d..94402aaf5f5c 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -139,6 +139,7 @@ SECTIONS
 
 	idmap_pg_dir = .;
 	. += IDMAP_DIR_SIZE;
+	idmap_pg_end = .;
 
 #ifdef CONFIG_UNMAP_KERNEL_AT_EL0
 	tramp_pg_dir = .;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
