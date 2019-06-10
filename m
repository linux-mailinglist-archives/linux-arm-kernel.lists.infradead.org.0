Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 192793BE90
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 23:25:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NE9vHC0RJ88yuDEQjDWRcQAZkRHgtFzHre8ncuxmErY=; b=ixzwty5lYKIua5
	vwlX0aqg4X9lK9fqJA5v9GfzoUFFbjdh8JaTgB9Wc+ZKEFmrdIWgrtQyP/AEKSyEUdmZGvDRLu+cw
	1TVEX5RubICk5X4sDSM+TF1qwRXM+H2fflJC3khQbu2OzLtvp9b1P7AFZ8DbMVIlwbnVXFUYNGzVX
	pJHXNC4RCmlNjm/PljbViRAqB4Ipguoz46Qep6FiEzSjifxwJk80v9fi7A/S3/clAPbJg6aDBDA9V
	3zj76o3sS5Xbs8E8l67OiOFrbDFEc4l0qIkK+pC7ZrpTKCH9siNVse6MdKQcwt4Een3o9hlrGMJhm
	6akfUiSUuy87W3gTZAow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haRnV-00062Q-Vl; Mon, 10 Jun 2019 21:25:46 +0000
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1haRip-0000p9-Vm; Mon, 10 Jun 2019 21:20:56 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Ungerer <gerg@linux-m68k.org>
Subject: [PATCH 14/15] binfmt_flat: don't offset the data start
Date: Mon, 10 Jun 2019 23:20:14 +0200
Message-Id: <20190610212015.9157-15-hch@lst.de>
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

Ever since the initial commit of the binfmt_flat shared library
support back in the bitkeeper days we've offset the actual in-memory
.data start by one field per possible shared library, or 1 in case
shared library support isn't enabled.  I can't find anything in the
loader that actually makes use of it, nor was it present before
shared library support it.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/binfmt_flat.c | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/fs/binfmt_flat.c b/fs/binfmt_flat.c
index 2c7f32d5435f..e1ccc9f14150 100644
--- a/fs/binfmt_flat.c
+++ b/fs/binfmt_flat.c
@@ -572,7 +572,7 @@ static int load_flat_file(struct linux_binprm *bprm,
 			goto err;
 		}
 
-		len = data_len + extra + MAX_SHARED_LIBS * sizeof(unsigned long);
+		len = data_len + extra;
 		len = PAGE_ALIGN(len);
 		realdatastart = vm_mmap(NULL, 0, len,
 			PROT_READ|PROT_WRITE|PROT_EXEC, MAP_PRIVATE, 0);
@@ -586,9 +586,7 @@ static int load_flat_file(struct linux_binprm *bprm,
 			vm_munmap(textpos, text_len);
 			goto err;
 		}
-		datapos = ALIGN(realdatastart +
-				MAX_SHARED_LIBS * sizeof(unsigned long),
-				FLAT_DATA_ALIGN);
+		datapos = ALIGN(realdatastart, FLAT_DATA_ALIGN);
 
 		pr_debug("Allocated data+bss+stack (%u bytes): %lx\n",
 			 data_len + bss_len + stack_len, datapos);
@@ -618,7 +616,7 @@ static int load_flat_file(struct linux_binprm *bprm,
 		memp_size = len;
 	} else {
 
-		len = text_len + data_len + extra + MAX_SHARED_LIBS * sizeof(u32);
+		len = text_len + data_len + extra;
 		len = PAGE_ALIGN(len);
 		textpos = vm_mmap(NULL, 0, len,
 			PROT_READ | PROT_EXEC | PROT_WRITE, MAP_PRIVATE, 0);
@@ -633,9 +631,7 @@ static int load_flat_file(struct linux_binprm *bprm,
 		}
 
 		realdatastart = textpos + ntohl(hdr->data_start);
-		datapos = ALIGN(realdatastart +
-				MAX_SHARED_LIBS * sizeof(u32),
-				FLAT_DATA_ALIGN);
+		datapos = ALIGN(realdatastart, FLAT_DATA_ALIGN);
 
 		reloc = (__be32 __user *)
 			(datapos + (ntohl(hdr->reloc_start) - text_len));
@@ -652,8 +648,9 @@ static int load_flat_file(struct linux_binprm *bprm,
 					 (text_len + full_data
 						  - sizeof(struct flat_hdr)),
 					 0);
-			memmove((void *) datapos, (void *) realdatastart,
-					full_data);
+			if (datapos != realdatastart)
+				memmove((void *)datapos, (void *)realdatastart,
+						full_data);
 #else
 			/*
 			 * This is used on MMU systems mainly for testing.
@@ -709,8 +706,7 @@ static int load_flat_file(struct linux_binprm *bprm,
 		if (IS_ERR_VALUE(result)) {
 			ret = result;
 			pr_err("Unable to read code+data+bss, errno %d\n", ret);
-			vm_munmap(textpos, text_len + data_len + extra +
-				MAX_SHARED_LIBS * sizeof(u32));
+			vm_munmap(textpos, text_len + data_len + extra);
 			goto err;
 		}
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
