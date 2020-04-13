Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1CC31A6944
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 17:57:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=t8bU7BjSm3f2fmFs5ngtyoGwQgQejL9j9Q+2L4YU7q8=; b=BECwgb7f564+fMRDceR9p+FRhE
	ND6zxZLVQcI+QK21FDlsX1yZEIz+flbEhZlTx7d9cX+AtSX1882eavx3MXaMjQTuXEjnAI8rhW0RH
	R7HShYX38DioDl+DejJn9o1iwaRicWnZXEwpa8ju8kRmXfeoj8JIVrimRz7EJ9GYqeCzVBC6j4QyL
	BY2V2hmyv1Qzxd3SUDUz31zeeX86FwerGfVVt6eVI/VJxGFl8Fc7493LymxI2BBttmHrCN/iuHhpG
	nu0T+OMChrXymQRJ5+Tskbyo/Eq9M2oliSdyijGvOh6GH17qZr+7ETnLjYHurQyy3z9BW8HnlBSwE
	exDYHrXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO1SF-0008Dw-5n; Mon, 13 Apr 2020 15:56:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO1R0-0007EQ-Ea
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 15:55:44 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E10472074B;
 Mon, 13 Apr 2020 15:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586793341;
 bh=+Tttb0huoTKw4Ijl4wZLMTzjGhDuFYIUmN0xtS3Uu8k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aYt4ZJwov+lrO9dBwuFbE+/3tT7eKk4Q4lPtkNDOCp6pDeidruxK0ndeNlAMftJ/6
 EE55wHJhPL7J0Qnrw1Di8SZ6hArpEGneqpIU8YHS27gIOMqK78Xp+dh58o1RQgJ38b
 xiQC1am92GQc/1nJS7JAq1KKdLpCkx6a3RB81Fw0=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH v2 5/8] efi/libstub/arm64: align PE/COFF sections to segment
 alignment
Date: Mon, 13 Apr 2020 17:55:18 +0200
Message-Id: <20200413155521.24698-6-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200413155521.24698-1-ardb@kernel.org>
References: <20200413155521.24698-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_085542_646573_2BA182B1 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, nivedita@alum.mit.edu,
 Jonathan.Cameron@huawei.com, will@kernel.org, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The arm64 kernel's segment alignment is fixed at 64 KB for any page
size, and relocatable kernels are able to fix up any misalignment of
the kernel image with respect to the 2 MB section alignment that is
mandated by the arm64 boot protocol.

Let's increase the PE/COFF section alignment to the same value, so that
kernels loaded by the UEFI PE/COFF loader are guaranteed to end up at
an address that doesn't require any reallocation to be done if the
kernel is relocatable.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm64/kernel/efi-header.S  | 2 +-
 arch/arm64/kernel/vmlinux.lds.S | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/efi-header.S b/arch/arm64/kernel/efi-header.S
index 914999ccaf8a..6f58998ef647 100644
--- a/arch/arm64/kernel/efi-header.S
+++ b/arch/arm64/kernel/efi-header.S
@@ -32,7 +32,7 @@ optional_header:
 
 extra_header_fields:
 	.quad	0					// ImageBase
-	.long	SZ_4K					// SectionAlignment
+	.long	SEGMENT_ALIGN				// SectionAlignment
 	.long	PECOFF_FILE_ALIGNMENT			// FileAlignment
 	.short	0					// MajorOperatingSystemVersion
 	.short	0					// MinorOperatingSystemVersion
diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index 497f9675071d..1d399db0644f 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -175,7 +175,7 @@ SECTIONS
 		*(.altinstr_replacement)
 	}
 
-	. = ALIGN(PAGE_SIZE);
+	. = ALIGN(SEGMENT_ALIGN);
 	__inittext_end = .;
 	__initdata_begin = .;
 
@@ -246,6 +246,7 @@ SECTIONS
 	. += INIT_DIR_SIZE;
 	init_pg_end = .;
 
+	. = ALIGN(SEGMENT_ALIGN);
 	__pecoff_data_size = ABSOLUTE(. - __initdata_begin);
 	_end = .;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
