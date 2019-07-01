Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ABDB3BE77
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 23:23:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0g7HG7c9LOHqqhx0iuy5MjYcA23XRrbWB18MpFzojGY=; b=l2dFQdCT3843k1
	/amLnv5bQmrP4aKcHpC4+8AxYRMLZXWGo9EwdYxz43maroO+uFdJ7zG4wgSpxcrYMfZtNLhAzRFhq
	VB+pk2nvERgsgRt9cJgFDrG2B8HzXiBHvLuBFQUbckywR2JKDSiROi4O7MSf9AmbRxin7DDB1EL64
	xJvCH7E3ArbY5iYln3l62HNKoQNdeiC6RliHTddUPEgFX4jVpOlrrw8gLdfuNPmaJSBVHSiXURm8C
	n+zlO9wLiJQ+j2bmoqAlLaT3tqsDQ4nfdGdoluyqmZMmc4S/7uTCmFCxtxaHzT0PWZNfptkw8XnQe
	lJG4ajhAlBi7EGvpfzFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haRl6-0002jc-Mm; Mon, 10 Jun 2019 21:23:16 +0000
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1haRiW-0000XW-Qp; Mon, 10 Jun 2019 21:20:37 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Ungerer <gerg@linux-m68k.org>
Subject: [PATCH 07/15] binfmt_flat: use __be32 for the on-disk format
Date: Mon, 10 Jun 2019 23:20:07 +0200
Message-Id: <20190610212015.9157-8-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610212015.9157-1-hch@lst.de>
References: <20190610212015.9157-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

So far binfmt_flat has onl been supported on 32-bit platforms, so the
variable size of the fields didn't matter.  But the upcoming RISC-V
nommu port supports 64-bit CPUs, and we now have a conflict between
the elf2flt creation tool that always uses 32-bit fields and the kernel
that uses (unsigned) long field.  Switch to the userspace view as the
rest of the binfmt_flat format is completely architecture neutral,
and binfmt_flat isn't the right binary format for huge executables to
start with.

While we're at it also ensure these fields are using __be types as
they big endian and are byteswapped when loaded.

Signed-off-by: Christoph Hellwig <hch@lst.de>

wip
---
 include/linux/flat.h | 48 ++++++++++++++++++++++----------------------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/include/linux/flat.h b/include/linux/flat.h
index 21d901ba191b..59e892d5fadb 100644
--- a/include/linux/flat.h
+++ b/include/linux/flat.h
@@ -24,26 +24,26 @@
  */
 
 struct flat_hdr {
-	char magic[4];
-	unsigned long rev;          /* version (as above) */
-	unsigned long entry;        /* Offset of first executable instruction
-	                               with text segment from beginning of file */
-	unsigned long data_start;   /* Offset of data segment from beginning of
-	                               file */
-	unsigned long data_end;     /* Offset of end of data segment
-	                               from beginning of file */
-	unsigned long bss_end;      /* Offset of end of bss segment from beginning
-	                               of file */
+	char	magic[4];
+	__be32	rev;          /* version (as above) */
+	__be32	entry;        /* Offset of first executable instruction
+				 with text segment from beginning of file */
+	__be32	data_start;   /* Offset of data segment from beginning of
+				 file */
+	__be32	data_end;     /* Offset of end of data segment from beginning
+				 of file */
+	__be32	bss_end;      /* Offset of end of bss segment from beginning
+				 of file */
 
 	/* (It is assumed that data_end through bss_end forms the bss segment.) */
 
-	unsigned long stack_size;   /* Size of stack, in bytes */
-	unsigned long reloc_start;  /* Offset of relocation records from
-	                               beginning of file */
-	unsigned long reloc_count;  /* Number of relocation records */
-	unsigned long flags;
-	unsigned long build_date;   /* When the program/library was built */
-	unsigned long filler[5];    /* Reservered, set to zero */
+	__be32	stack_size;   /* Size of stack, in bytes */
+	__be32	reloc_start;  /* Offset of relocation records from beginning of
+				 file */
+	__be32	reloc_count;  /* Number of relocation records */
+	__be32	flags;
+	__be32	build_date;   /* When the program/library was built */
+	__u32	filler[5];    /* Reservered, set to zero */
 };
 
 #define FLAT_FLAG_RAM    0x0001 /* load program entirely into RAM */
@@ -67,19 +67,19 @@ struct flat_hdr {
 #define OLD_FLAT_RELOC_TYPE_BSS		2
 
 typedef union {
-	unsigned long	value;
+	u32		value;
 	struct {
 # if defined(mc68000) && !defined(CONFIG_COLDFIRE)
-		signed long offset : 30;
-		unsigned long type : 2;
+		s32	offset : 30;
+		u32	type : 2;
 #   	define OLD_FLAT_FLAG_RAM    0x1 /* load program entirely into RAM */
 # elif defined(__BIG_ENDIAN_BITFIELD)
-		unsigned long type : 2;
-		signed long offset : 30;
+		u32	type : 2;
+		s32	offset : 30;
 #   	define OLD_FLAT_FLAG_RAM    0x1 /* load program entirely into RAM */
 # elif defined(__LITTLE_ENDIAN_BITFIELD)
-		signed long offset : 30;
-		unsigned long type : 2;
+		s32	offset : 30;
+		u32	type : 2;
 #   	define OLD_FLAT_FLAG_RAM    0x1 /* load program entirely into RAM */
 # else
 #   	error "Unknown bitfield order for flat files."
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
