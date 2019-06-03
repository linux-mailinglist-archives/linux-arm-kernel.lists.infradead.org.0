Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 417CF3355D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 18:55:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9y4CL1g1Vfsw/6xkamygtaap96fyarKKYGkEXE5sE0Q=; b=YfHcLUIxV2F9M2
	VQsSb9wYLyR1uMIJQcpVhTYryXW7XTnT1+x2vy3a7CK3Q36yZ/Mg1dWS7kPoHPD7AYxNQlWdZrA/P
	LLc1N1DL3QmTi2/w3Ajg2JumtuOqBMRjU96cq8nc1nnQ5i1GhsA5vBbOd/U3ROO+jeXpdszLYwy7d
	9e/a7AlHS7hjc04uGTbP98YbabZCVQTJfGzvNEb3Cwl+Y+YkIyDk/z/AnNq+O8abmdoWcO6rlVE13
	/WKvSryC97ylf4tKTWudYW87ptWueM3ozpH5Xp1yqZSR+E/3fPEp2OdrrOLjQhMwHuYGcUJaVH9so
	ONFFHfBrA44neN2InHMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXqFN-0008BL-DQ; Mon, 03 Jun 2019 16:55:45 +0000
Received: from mail-yw1-xc49.google.com ([2607:f8b0:4864:20::c49])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXqF6-00082U-Lc
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 16:55:30 +0000
Received: by mail-yw1-xc49.google.com with SMTP id q188so17290292ywc.15
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 09:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=BzAJ0+9x2pcfr7Do5TUN53ZGOyHm87DfwLwwZIYymzc=;
 b=Gd3MS7x4gwNqCAsuebDb+LQXe1ROUCAjzPqIs7DNAteGO+I/k2kuk/JUQDg2yytLs0
 mAnj4aXyNOLD53bou+rnAjAI+DoFCDM6597Xb+r9d5tHdnUBLOhHUJdZUvwspRQQklB/
 nVb9mJ+RVgKXuTmdk46XK6MPO9GX2CvoeDiI4JmSZych6aS7p7s1LkUgQ8IFSJW5YLx/
 IwfItaZEAlz+YxcxGixqEutWhh0H0I+YiPlFdGJFMPEbbW0iVK8sXmL/5Dzp9W2t8wq7
 Jn42agr19zJj2QbOHan385htTUuPv+QknbBnCycF9d956GlhodbETKPupW6IU9maR3WJ
 cryQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=BzAJ0+9x2pcfr7Do5TUN53ZGOyHm87DfwLwwZIYymzc=;
 b=MzUVlEMjejaBBLbCGazdHwl3jbpaaeIc++d7x3J8+yFlZVSBMKvWcnBUewTl2uq5Te
 thMr+LPkBLbjuW4kzgy3v2ur4ESsrKy6wG65eLtSDbp/rFAyAz2T7XP+qS/tHobRx6zW
 wHEJ51BQAX9ncZdqnPFb1p0Vz8VcL7FSVOGWalRt/DdkexiyMzvlT9Db2WkykpECUC5r
 kNXf/+u2SY7s1UKBvCNmySFBfcUP5WyQxcXEbjZVqGYvj0Cr3Tg87Fl5c3Kd6nOOvLYx
 yMx4g489Xcxya5z2U5t8XP1QWpBIXbOWqZJ6bCQXn7eJ5jqH5eYzn5lM4mmP8KBdvpG1
 je8g==
X-Gm-Message-State: APjAAAXrWK1JcAfG+tWAaDRRAERdpMnaYpx101+T0oK1JL72Oj9FoOXd
 OCWzg+ihpInR6NamlijuLYy6sSmKwJiv5N2vNQ6bP8bOZURBZeTJQxHIjWU9oKYFAx28dEkwzWJ
 BwViSaK33/pZrWdyoEFQkc/Hfb2By4wA5BPQa2jtNa7ChjycoOFhCdpsR2dNXBdOeW+0zZR//1o
 vleEiEw71ZhveeVXI=
X-Google-Smtp-Source: APXvYqw8qo6YCAA2LDG0hCmceBSOfUoHZIsTSjRJKNeADMAk1c3BAJX7XTjP1o6wTWUARrevZDffoxW7ORioylDq
X-Received: by 2002:a25:4445:: with SMTP id r66mr13094125yba.55.1559580926346; 
 Mon, 03 Jun 2019 09:55:26 -0700 (PDT)
Date: Mon,  3 Jun 2019 18:55:03 +0200
In-Reply-To: <cover.1559580831.git.andreyknvl@google.com>
Message-Id: <097bc300a5c6554ca6fd1886421bb2e0adb03420.1559580831.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1559580831.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
Subject: [PATCH v16 01/16] uaccess: add untagged_addr definition for other
 arches
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_095528_942605_CCF8D187 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c49 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kostya Serebryany <kcc@google.com>, Khalid Aziz <khalid.aziz@oracle.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To allow arm64 syscalls to accept tagged pointers from userspace, we must
untag them when they are passed to the kernel. Since untagging is done in
generic parts of the kernel, the untagged_addr macro needs to be defined
for all architectures.

Define it as a noop for architectures other than arm64.

Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Reviewed-by: Khalid Aziz <khalid.aziz@oracle.com>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 include/linux/mm.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index 0e8834ac32b7..949d43e9c0b6 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -99,6 +99,10 @@ extern int mmap_rnd_compat_bits __read_mostly;
 #include <asm/pgtable.h>
 #include <asm/processor.h>
 
+#ifndef untagged_addr
+#define untagged_addr(addr) (addr)
+#endif
+
 #ifndef __pa_symbol
 #define __pa_symbol(x)  __pa(RELOC_HIDE((unsigned long)(x), 0))
 #endif
-- 
2.22.0.rc1.311.g5d7573a151-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
