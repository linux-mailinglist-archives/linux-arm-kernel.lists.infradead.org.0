Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C9B1F76CD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 12:35:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eh9p9r5OiK46w8BxJpWMGyfyxrLIHiGwJsBdz1gchrQ=; b=c/XzsghLoiQKlH
	sEmSX/bOGCTYvKrg4CavEI4HGAUzJz887ufcPEGmRIBfxRKMeWFvbLTxHIvJoLlhEA43BCoaWsAag
	h8PoHl3P+SqSYKmjVzUc8VpiVY3PFu+C4RCtgTInQMhqIRHZEBmGrZ5N5dX5MKhO9u4ShdPLNZ1dz
	APRN9hQeLkfHYvoNPxmDOKBLDy96FmPQ6KEtI2eI5Y5GUhYeKgYn8wiRwyaB+TICIjdA9ihQ8DZGj
	e6y25zFi93k7P8+0wk4csClUfauTM9Xd8HbHezHh5Sost5uRzjc/2HlnjQMb9E64i6HgG0+5Ke33z
	ixCg0kZaSSXhNnNFL5sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjh2F-0006Lh-Dy; Fri, 12 Jun 2020 10:35:43 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjh27-0006LC-Up
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 10:35:37 +0000
Received: by mail-pg1-x542.google.com with SMTP id b5so2990527pgm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 03:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=B+uCmGmrUDUyRyPB3kHwj55jM7AMnRFQSRH6oEWT10U=;
 b=Ev2n12PJNBehiSS+hgzbVlxmsYc/1TqcdVxHpevSYSN3H3Gw2u8SfE7WO3m3T9JPre
 +fx2zW/djTa0594OHSVecnVdXb6rSK6pQcZPpTOPT9Hs9dW8C5co8rB5nAALEtWNaWEY
 mrIZwPBdZDCXvIdvVzyHZJP9X+kx7UNUUAHKjWmrNqGfnQObC625ofOAqPo14XOw4TD8
 IaCre3B9P3DR5M/lBZga1EcuFBSiCtMu7exs++PYUlwDML/rRmXi4tM21tahngHHYcWw
 fprs4x0z4dQdTpyile68dVUtcbw1wKfuazsbzaxWMb/wz0tt+JsAHqLzq6cuaCS9AISy
 fEUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=B+uCmGmrUDUyRyPB3kHwj55jM7AMnRFQSRH6oEWT10U=;
 b=doYevDQ+Ig24YDYn1eTaztrr1n7Z0PCQMPswjYubu9aFXuWyri5r6WO7SPfFjsl47q
 byRx2s8V67AX5jfkm534ZNx2h/C3sc6LfO3rfPmefKl4AFiWlwFonUKe3Ddm5uKQRnBd
 SOFrTQqRS+JZoT3dM/G+YzRwi9A12yJwmmCCacniGBTPCclK/qtrVNX2OTariEDiH3GY
 PAZPL8ecrHwEsWAkOUtyUVm2FSwrKzEQXbKk40iXgtNTjEQjOAaNbJItaNm+9CvQBhGc
 FuMPHh5oOdQwTTIL/oHIsogcPOAzgUmo/cbaUHjadLEg27Yg0aZHk7Exd+LxMmS4XskO
 1PJQ==
X-Gm-Message-State: AOAM5338CFWcbblHFASU0rwZdThb0jEZAbfhPvOHojcUfPNNDk338pLc
 T0LZovGzjXmyCHQF8ufmAY+XmJAE
X-Google-Smtp-Source: ABdhPJxLPlKFsOdhvyKar66GvPbniOplhidOUeMNARbpGYRwi4AIDMkyok1XlnqttPpfBkMZjfGOOw==
X-Received: by 2002:aa7:804a:: with SMTP id y10mr10795731pfm.186.1591958134854; 
 Fri, 12 Jun 2020 03:35:34 -0700 (PDT)
Received: from localhost ([49.205.222.116])
 by smtp.gmail.com with ESMTPSA id y69sm616174pfg.207.2020.06.12.03.35.34
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 12 Jun 2020 03:35:34 -0700 (PDT)
Date: Fri, 12 Jun 2020 16:05:32 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 1/3] lib: copy_{from,to}_user using gup & kmap_atomic()
Message-ID: <9e1de19f35e2d5e1d115c9ec3b7c3284b4a4e077.1591885760.git.afzal.mohd.ma@gmail.com>
References: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_033536_009314_722BE8D8 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

copy_{from,to}_user() uaccess helpers are implemented by user page
pinning, followed by temporary kernel mapping & then memcpy(). This
helps to achieve user page copy when current virtual address mapping
of the CPU excludes user pages.

Performance wise, results are not encouraging, 'dd' on tmpfs results,

ARM Cortex-A8, BeagleBone White (256MiB RAM):
w/o series - ~29.5 MB/s
w/ series - ~20.5 MB/s
w/ series & highmem disabled - ~21.2 MB/s

On Cortex-A15(2GiB RAM) in QEMU:
w/o series - ~4 MB/s
w/ series - ~2.6 MB/s

Roughly a one-third drop in performance. Disabling highmem improves
performance only slightly.

'hackbench' also showed a similar pattern.

uaccess routines using page pinning & temporary kernel mapping is not
something new, it has been done long long ago by Ingo [1] as part of
4G/4G user/kernel mapping implementation on x86, though not merged in
mainline.

[1] https://lore.kernel.org/lkml/Pine.LNX.4.44.0307082332450.17252-100000@localhost.localdomain/

Signed-off-by: afzal mohammed <afzal.mohd.ma@gmail.com>
---

Resending to linux-arm-kernel ml(only), as received a mail that it is
waiting for moderator approval, trying the resend by adding 'PATCH' in
subject after 'RFC', in the hope it will hit ml with this manipulation

 lib/Kconfig                   |   4 +
 lib/Makefile                  |   3 +
 lib/uaccess_gup_kmap_memcpy.c | 162 ++++++++++++++++++++++++++++++++++
 3 files changed, 169 insertions(+)
 create mode 100644 lib/uaccess_gup_kmap_memcpy.c

diff --git a/lib/Kconfig b/lib/Kconfig
index 5d53f9609c252..dadf4f6cc391d 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -622,6 +622,10 @@ config ARCH_HAS_MEMREMAP_COMPAT_ALIGN
 config UACCESS_MEMCPY
 	bool
 
+# pin page + kmap_atomic + memcpy for user copies, intended for vmsplit 4g/4g
+config UACCESS_GUP_KMAP_MEMCPY
+	bool
+
 config ARCH_HAS_UACCESS_FLUSHCACHE
 	bool
 
diff --git a/lib/Makefile b/lib/Makefile
index 685aee60de1d5..bc457f85e391a 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -309,3 +309,6 @@ obj-$(CONFIG_OBJAGG) += objagg.o
 
 # KUnit tests
 obj-$(CONFIG_LIST_KUNIT_TEST) += list-test.o
+
+# uaccess
+obj-$(CONFIG_UACCESS_GUP_KMAP_MEMCPY) += uaccess_gup_kmap_memcpy.o
diff --git a/lib/uaccess_gup_kmap_memcpy.c b/lib/uaccess_gup_kmap_memcpy.c
new file mode 100644
index 0000000000000..1536762df1fd5
--- /dev/null
+++ b/lib/uaccess_gup_kmap_memcpy.c
@@ -0,0 +1,162 @@
+// SPDX-License-Identifier: GPL-2.0
+// Started from arch/um/kernel/skas/uaccess.c
+
+#include <linux/err.h>
+#include <linux/slab.h>
+#include <linux/highmem.h>
+#include <linux/mm.h>
+
+#include <asm/page.h>
+#include <asm/pgtable.h>
+
+static int do_op_one_page(unsigned long addr, int len,
+		 int (*op)(unsigned long addr, int len, void *arg), void *arg,
+		 struct page *page)
+{
+	int n;
+
+	addr = (unsigned long) kmap_atomic(page) + (addr & ~PAGE_MASK);
+	n = (*op)(addr, len, arg);
+	kunmap_atomic((void *)addr);
+
+	return n;
+}
+
+static long buffer_op(unsigned long addr, int len,
+		      int (*op)(unsigned long, int, void *), void *arg,
+		      struct page **pages)
+{
+	long size, remain, n;
+
+	size = min(PAGE_ALIGN(addr) - addr, (unsigned long) len);
+	remain = len;
+	if (size == 0)
+		goto page_boundary;
+
+	n = do_op_one_page(addr, size, op, arg, *pages);
+	if (n != 0) {
+		remain = (n < 0 ? remain : 0);
+		goto out;
+	}
+
+	pages++;
+	addr += size;
+	remain -= size;
+
+page_boundary:
+	if (remain == 0)
+		goto out;
+	while (addr < ((addr + remain) & PAGE_MASK)) {
+		n = do_op_one_page(addr, PAGE_SIZE, op, arg, *pages);
+		if (n != 0) {
+			remain = (n < 0 ? remain : 0);
+			goto out;
+		}
+
+		pages++;
+		addr += PAGE_SIZE;
+		remain -= PAGE_SIZE;
+	}
+	if (remain == 0)
+		goto out;
+
+	n = do_op_one_page(addr, remain, op, arg, *pages);
+	if (n != 0) {
+		remain = (n < 0 ? remain : 0);
+		goto out;
+	}
+
+	return 0;
+out:
+	return remain;
+}
+
+static int copy_chunk_from_user(unsigned long from, int len, void *arg)
+{
+	unsigned long *to_ptr = arg, to = *to_ptr;
+
+	memcpy((void *) to, (void *) from, len);
+	*to_ptr += len;
+	return 0;
+}
+
+static int copy_chunk_to_user(unsigned long to, int len, void *arg)
+{
+	unsigned long *from_ptr = arg, from = *from_ptr;
+
+	memcpy((void *) to, (void *) from, len);
+	*from_ptr += len;
+	return 0;
+}
+
+unsigned long gup_kmap_copy_from_user(void *to, const void __user *from, unsigned long n)
+{
+	struct page **pages;
+	int num_pages, ret, i;
+
+	if (uaccess_kernel()) {
+		memcpy(to, (__force void *)from, n);
+		return 0;
+	}
+
+	num_pages = DIV_ROUND_UP((unsigned long)from + n, PAGE_SIZE) -
+				 (unsigned long)from / PAGE_SIZE;
+	pages = kmalloc_array(num_pages, sizeof(*pages), GFP_KERNEL | __GFP_ZERO);
+	if (!pages)
+		goto end;
+
+	ret = get_user_pages_fast((unsigned long)from, num_pages, 0, pages);
+	if (ret < 0)
+		goto free_pages;
+
+	if (ret != num_pages) {
+		num_pages = ret;
+		goto put_pages;
+	}
+
+	n = buffer_op((unsigned long) from, n, copy_chunk_from_user, &to, pages);
+
+put_pages:
+	for (i = 0; i < num_pages; i++)
+		put_page(pages[i]);
+free_pages:
+	kfree(pages);
+end:
+	return n;
+}
+
+unsigned long gup_kmap_copy_to_user(void __user *to, const void *from, unsigned long n)
+{
+	struct page **pages;
+	int num_pages, ret, i;
+
+	if (uaccess_kernel()) {
+		memcpy((__force void *) to, from, n);
+		return 0;
+	}
+
+	num_pages = DIV_ROUND_UP((unsigned long)to + n, PAGE_SIZE) - (unsigned long)to / PAGE_SIZE;
+	pages = kmalloc_array(num_pages, sizeof(*pages), GFP_KERNEL | __GFP_ZERO);
+	if (!pages)
+		goto end;
+
+	ret = get_user_pages_fast((unsigned long)to, num_pages, FOLL_WRITE, pages);
+	if (ret < 0)
+		goto free_pages;
+
+	if (ret != num_pages) {
+		num_pages = ret;
+		goto put_pages;
+	}
+
+
+	n = buffer_op((unsigned long) to, n, copy_chunk_to_user, &from, pages);
+
+put_pages:
+	for (i = 0; i < num_pages; i++)
+		put_page(pages[i]);
+free_pages:
+	kfree(pages);
+end:
+	return n;
+}
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
