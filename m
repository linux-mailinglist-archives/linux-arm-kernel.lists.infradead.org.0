Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D90C450E7B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 16:35:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FKF/SzvwXlxCuuvofdnkykHaNztdPKfMgrpN0WBaDB8=; b=OfvKepNMwC0V2o
	EtYYP27l/1ny9rkdbBFiOXG0whENHzOD/mFE/THXtCrhf/QNsDAm2c9JA4xT48yreUyp1NDRx3TzO
	FAhQGkYCSsXDX80EuXf6W30KqPKJPdLotvEeLf0Sy0JmshaGu22T2N7ncu+biWXnLy0HMoKW29iav
	9vaZ3HBWZ63v1EZ+glTtJGmQ57V4dA8ylzzaVMpvtvDwQc5/ngIyU5a6dVdVGur0yjCglk6nrRIUp
	vf2oXdE6BKoupNlrZRqjbVlw16ovRTK03meDXTPJSVJTI+ZfcW8Ogxs6QbktSNQR/kAFLVBS1GPfi
	2JJPJqbvI5GzAxMglPcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQ4A-0006Yd-HJ; Mon, 24 Jun 2019 14:35:30 +0000
Received: from mail-vk1-xa49.google.com ([2607:f8b0:4864:20::a49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQ26-0004Om-36
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 14:33:23 +0000
Received: by mail-vk1-xa49.google.com with SMTP id m1so6446069vkl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 07:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=WdcdmcPYcZL0TsO1VpqXvB5XTsCD4Aa27drvhQYmelM=;
 b=icIOyvO3zCCmb1V8FS7xfJSkpaqM0fPXCTMb8P53l/4sddyw376GFk7VntBpgH40Jb
 dlVT0eEdK1fq5jmQgL2mnnKbFXpBzrZuKvOPspNemignJXsBOcwCLAzIsieht3b/IonX
 6zR53XzWDMowl976raMoG4ND2r1RJIjiKAB3ytw9JQwx/injyU+afKGG9i0hRkWS9CDw
 EATvoJg1LGBCFewFDqj3C9titqpFuwNcjn3ZH++ykTRmRXVgWgXvHOfj+CupsqyAB/Yo
 cDDXvnZegW7qBTu946VpVm0cbCpkrGmZnjcy3KK2CuBZhA9rQZ6St5/hoz/kt5af2Epi
 DXZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=WdcdmcPYcZL0TsO1VpqXvB5XTsCD4Aa27drvhQYmelM=;
 b=CCGZ6qI7zKQhZKeglF5x4e0m+RLQ4rhZNuEphzmmqTg4XYNXJu5wkydNo/QAmzhQfW
 o6OFXIcHlw45z4bUOu+tWtk10QinF4+Kmo6vjIRX4pwWAM2UcOLVfTaQR2QBA5L03Pby
 n2eOqVWGA4OgoLGGqeGRFZmoJWQ4FMbYbDvHeUrL3JT7D/hXZ/V9reh/prDtu2sUHahm
 3txtZvvmSvAO0SZbyQMs0ylzSLqiGkU8+aArPIeq2YtHY/CWC8omN4g/ipFcMztFYtkq
 bpov6a70SjOJpU9EFLRk+M1Zd+dyklvgmQDyrzIyShl89DoOD1ZGSFOnLlzyJZY40f7/
 +ILQ==
X-Gm-Message-State: APjAAAX9Q9XclAv2I+iz8tzLdKrmje07MyX28977GZ4Y7wL+2eJFXbQw
 f8b2lfnE4nLKJKQ3kiyB6thyIb4GbRX+Wn/vsvUtZqJb4XIbFYugxJzz9kldpG9MSwCtqv1cwd2
 9de6X/TjGpPLUW/Cxo5hldq1BUBlw9Lh06A1Z1RLCDf/UOaiO6bsR3ZvFsi4jqxiSdIVMSELRHz
 +lpXeEfgMYy5K21uI=
X-Google-Smtp-Source: APXvYqyeP684NrNNIM3KhbFTQXwcDTrmwl6IHcjELxzf0coSdSlRrTjZ+0PmPJg+BCNxcMTgBBiBdQWJwdq50pfN
X-Received: by 2002:a1f:ccc4:: with SMTP id c187mr4784377vkg.56.1561386799794; 
 Mon, 24 Jun 2019 07:33:19 -0700 (PDT)
Date: Mon, 24 Jun 2019 16:32:50 +0200
In-Reply-To: <cover.1561386715.git.andreyknvl@google.com>
Message-Id: <3f5c63a871c652369d3cf7741499d1d65413641c.1561386715.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1561386715.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v18 05/15] mm: untag user pointers in mm/gup.c
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_073322_168893_5E21B151 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a49 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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

This patch is a part of a series that extends kernel ABI to allow to pass
tagged user pointers (with the top byte set to something else other than
0x00) as syscall arguments.

mm/gup.c provides a kernel interface that accepts user addresses and
manipulates user pages directly (for example get_user_pages, that is used
by the futex syscall). Since a user can provided tagged addresses, we need
to handle this case.

Add untagging to gup.c functions that use user addresses for vma lookups.

Reviewed-by: Khalid Aziz <khalid.aziz@oracle.com>
Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 mm/gup.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/mm/gup.c b/mm/gup.c
index ddde097cf9e4..c37df3d455a2 100644
--- a/mm/gup.c
+++ b/mm/gup.c
@@ -802,6 +802,8 @@ static long __get_user_pages(struct task_struct *tsk, struct mm_struct *mm,
 	if (!nr_pages)
 		return 0;
 
+	start = untagged_addr(start);
+
 	VM_BUG_ON(!!pages != !!(gup_flags & FOLL_GET));
 
 	/*
@@ -964,6 +966,8 @@ int fixup_user_fault(struct task_struct *tsk, struct mm_struct *mm,
 	struct vm_area_struct *vma;
 	vm_fault_t ret, major = 0;
 
+	address = untagged_addr(address);
+
 	if (unlocked)
 		fault_flags |= FAULT_FLAG_ALLOW_RETRY;
 
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
