Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E62631BB243
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 01:57:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u0ERjCqAJcfi367M3ssJSllkR6HQecFFYOQ5TmFzP5k=; b=AjhP6Uco9AWvk4
	WtZBMY9w/iTu36LdMtY5gomrZ+UAyeH+X8w0koKZQhth0q4wuMzdkaLCyuCd40uP6Ta37eDH1T8cQ
	XShs2OdFGklOqgHwOqar8QUS7k2G4jDQMVjIK1bhBr0wXpMqef4iW5IiwQfowQc7yBn7ogmnQHwO5
	PtdBTOE3GoBRuVuGp5V3et7GkQFEZmsTqW6jpH84OlHBmGLxBF06VZF/Iw5dO+Hj6cfLazfLE3CGL
	Kk1aLeoeldiYL7FLNt495DeJyKNRYtnyAdg+NauaxOapE/5IGSUzswwshGd/8DgpemLCsjyftxytK
	rgSsFO9+VNpsql/aV+9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTDcu-0000Bt-SQ; Mon, 27 Apr 2020 23:57:28 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTDcf-00009s-Pq
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 23:57:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588031832;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=TX3l/PsIBBKAEBFp9II7hFHKmsTrVNvxgpKGxnEg3zs=;
 b=LlkDOFKKSF9tfS0L3MVHmnU6/9z8orRFb6HM3Zac80QGiZl21VEBMp+2Rpy+0pb03+tRkY
 wlGTMAsvWw0RSh9SkZa13wnUuvrAYdzlnIUuXEooosnZ1qfJ/Q5aklzKtqDrK4A9wHCwLm
 FJedj46nVj9cs0b7mr62Qqou6DLFxu0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-314-V-bSCE4gMoyiC7kkAoz9Zg-1; Mon, 27 Apr 2020 19:57:08 -0400
X-MC-Unique: V-bSCE4gMoyiC7kkAoz9Zg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 36668107ACCA;
 Mon, 27 Apr 2020 23:57:07 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-127.bne.redhat.com
 [10.64.54.127])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9B9E960300;
 Mon, 27 Apr 2020 23:57:04 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] arm64/kernel: Fix range on invalidating dcache for boot
 page tables
Date: Tue, 28 Apr 2020 09:57:00 +1000
Message-Id: <20200427235700.112220-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_165716_038512_27209C11 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, steve.capper@arm.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, broonie@kernel.org, shan.gavin@gmail.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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
---
v2: Include the suggested commit log    (Mark Rutland)
    Improved comments and code          (Mark Rutland)
---
 arch/arm64/include/asm/pgtable.h |  1 +
 arch/arm64/kernel/head.S         | 12 +++++++++---
 arch/arm64/kernel/vmlinux.lds.S  |  1 +
 3 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 8c20e2bd6287..5caff09c6a3a 100644
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
