Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1206345C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 13:45:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kR//3pNQ3nMqf9DzEMrWUkQqIBijL8G34StG4MY06OQ=; b=n0geXjN2u/fQjS
	56hJM3ZW6IOY7e6VRxEcLNhfWi/Vf+xbM/xDs9X5isoGyBOlcRf76NYUIDQnZQeo/4Dz+8aFmSffR
	fkBi6DiPgG9VJXK+whp/Yq/DQrW/x0ViDuQBifDLkzr7X9PayFq9dL2ObbeDtKrZuIc6WYA8l4rqZ
	2u/r4s1IxSKhV58lvrd5V7bwRSlHCYdwLDRaHnRQKv/Z8UgqM+RToSzICXGTIL1pY/p+YFGTpsFde
	D9OGSSggEWFb02voZ4lTYESBibv5YkiPPRkKl5KqaVUauZWMFcJM1cXQuxD/DYhcDwHQG4Kc1RmCX
	VBvvkL0p53fNaWo/GAtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY7sC-0007Gk-9S; Tue, 04 Jun 2019 11:45:00 +0000
Received: from mail-ot1-x349.google.com ([2607:f8b0:4864:20::349])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY7s5-0007Fp-53
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 11:44:54 +0000
Received: by mail-ot1-x349.google.com with SMTP id p7so3049426otk.22
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 04:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=XCrbwdAiEJS3sao46jIToUSxgqStqSIKmjosXIycN10=;
 b=OQowASfC1DkZBD6ZzOOewK6YqgU2ZfNgbzHcLMXLm94xATdoL7pRsYoq0Ca983wUlW
 1AzHjVsjPZzLOSw/EYwBC5zTDiT3rRisFVr0otD4kGjI5Q1J+eBrFP3oWQBc3R8o7rZS
 +nEENWNe0lpacPo8kwRr2Cz7TDEttnz9npQcNVZJmeIO9eL9YROdUfyY9G7dPjCT5G4S
 n3vggAvgZl5bnPFVyY5V8gpZBFjsU9LmOWcovr1/jb8oFePv4CCtwEGaE9uoVlfJANln
 MTN/BlGEha/hwcouVsL2ZU5SkLr7wvck5RykyLLoKj5+diBYr1ixXCNWeLnwmH0fmyZF
 THpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=XCrbwdAiEJS3sao46jIToUSxgqStqSIKmjosXIycN10=;
 b=LTlYDYTjnjrdDBDBiUHirV0sJOE0ydDtbNHaYOIYWAWGkcjVVsyDeVn2l6MSUumOV3
 RWeaglvrmfvw2B+GSh8WmFwCid+1nLZHa9G4Jbu8V9L455AhTiSZS5xMU/FXTawY2I8H
 xooZyVeOKxKpdFAfG6UJzoevOHdkvu8m7hykTcQ0GDAuAb+eFFTsUCdSM1qUCG94Pu+R
 caGYvZBI7Az2ttVlQ466eJuGQaE6M2cJqIUdEBHCUSmprGpzFZEjVbXPMD2VtdQfJZcN
 rq0BtcfhH4fWKVkjnqK5aF5Y1OGQZBxFTfQjpdObuQ2hKjNbZAWYW6GA1KjQb55EDUtz
 tj7g==
X-Gm-Message-State: APjAAAVcVHsQwmBJunnNmZRKztr8roSLSSPrSeEiZw2L5TWrYh5GwpVn
 YLKGjPsvjwaAjcZsty+0vHVYQxpF+Om7iR+t
X-Google-Smtp-Source: APXvYqwXsyeZ/z4p68zy0w3OgwmszH6BSy/5gFuyx/JVk90VXHjFqwFwXGlvbDPhexYH3Gb/pFc8t/if0dU8diyp
X-Received: by 2002:aca:b108:: with SMTP id a8mr4013564oif.81.1559648689594;
 Tue, 04 Jun 2019 04:44:49 -0700 (PDT)
Date: Tue,  4 Jun 2019 13:44:45 +0200
Message-Id: <8ab5cd1813b0890f8780018e9784838456ace49e.1559648669.git.andreyknvl@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
Subject: [PATCH] uaccess: add noop untagged_addr definition
From: Andrey Konovalov <andreyknvl@google.com>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, 
 sparclinux@vger.kernel.org, linux-mm@kvack.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_044453_195525_9C45C885 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:349 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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

Architectures that support memory tagging have a need to perform untagging
(stripping the tag) in various parts of the kernel. This patch adds an
untagged_addr() macro, which is defined as noop for architectures that do
not support memory tagging. The oncoming patch series will define it at
least for sparc64 and arm64.

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
