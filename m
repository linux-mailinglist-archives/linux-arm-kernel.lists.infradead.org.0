Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28463424B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:48:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+eB8qXfj/N4a23AQIdwWdoaq3yWJBBvVie9oT7JRs8k=; b=VhxoQY4/1XZDz3
	VOlIIG9SxhXYJNoobm3GMsTiHhW8K6lcmzKxwNrtwFYZiyD/2vv0JGbx2AXhL4AiBBGSh64D2z6g+
	ccVv8FWWAtDUJT1dU95mzfbeT7RDlZSOZ/8g5fmR7N0sR0Dty30dbSpxcg+GxrM/5Qrt1fHO8SH+i
	ZiMxItMGAgjNIYilCblz2IfbHBWgvK7MHszomLbWMcNvOkb6HDrSRgADwtRue/kdi380Tq9NwRhjb
	QXFQrpGGIX94wJUxCww9aImwvJba/1SDk3XJj4UwygjRufM2a+9hUPFcz1vz+Bu4mePF3UMAc1Bf6
	8IbPfRRsvEl147z7EYBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1jt-0004GO-Lc; Wed, 12 Jun 2019 11:48:25 +0000
Received: from mail-qt1-x84a.google.com ([2607:f8b0:4864:20::84a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1fw-0007IY-L3
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:44:23 +0000
Received: by mail-qt1-x84a.google.com with SMTP id z8so14473770qti.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 04:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=Tg03Gniv02ZbxFz4TR6ORKJ5z+YRDkk6YMGCeNMzVJA=;
 b=SFF/l4UFcejexpzLF8WLlQfmQ26wur6/Lp5UaETnaEcEawlk3l/6lGLaUMMooAgs8s
 H8BXtM8Po2kTy/ERZiKnsQjpEuZwCfivxhd6SyQ7RL+iB0sQfj/clPfIeMIPz6uKVDLv
 xUHwWlMKGfxD6gcgGhDGYlQ/8FvPYT93r6i2RnedCW6E6xVhUJOencUb8rKP9J6i4iHL
 r+rptZFaLXc6jhn3wSb4NX5Q2zQt78sd6zAnhaXM0vfZ1qtib0qyN9SWZBmopO4jCPUZ
 R6Ny3CDz7f0jULr5eWdVbsgq1nlATw+QzZpUThV+z5VYuwsEypjY/9FNseoLEmXCwIbk
 +Rew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=Tg03Gniv02ZbxFz4TR6ORKJ5z+YRDkk6YMGCeNMzVJA=;
 b=j4foEWAPC7d7ccGo6gE96ieQT+37IEUiWBOblLhifhcKR8NanBr7zG68tHos/5DxRW
 J7wiSv2ASdm2TjZCrfykcgHruxtYBRnyYhfVl11RfD7Nys6T23ANWVk6ObyddJtJXe7o
 OqxOvJWp4BC8nPa7xE5rzhLIH6Jmpws6cfvxdCf0WXgLowN653yCFYWXCebZxck14soT
 y2mT6kf4uA6EcNpmXYE7n2JC0YKy575ieeex0BaKbN3rnAYmEfTbxYo6KZn8/LsUV+n5
 xVpvM9KC4HMpeYQ+fRmnxlMU/DIQwe/hj0kIWd/9rt6v2dl//BhrgIiE36zuzyEUQs1+
 6Z2w==
X-Gm-Message-State: APjAAAU1jK6D7NZyOtzJ38SD4bOhPHgy6V0pTj0NzquwOlynch30nzwy
 29ljDAaUpeQDNK+Tfxdn9AP//z9zU2cEeEF7vw2hfrsh2AywdA0XjasrBbU19SyPCBsdxwXOeRK
 6vCjsci8MmV2P9XLraB4YQsUcRIwrFloeTqSxAeab3uRSniLjfcagm9gPuraP6+FDtcB1tQf7t9
 L5xpjlsXQbda1d+HU=
X-Google-Smtp-Source: APXvYqyCeVb0C2VnUmKvZl/NXpmzEb8PXfZVfFDAeRPGCnyVezO7o0ITR/pw5X1cgaGDH/zdBw+sIaHhGO7/u0mq
X-Received: by 2002:ac8:5485:: with SMTP id h5mr67932284qtq.253.1560339857730; 
 Wed, 12 Jun 2019 04:44:17 -0700 (PDT)
Date: Wed, 12 Jun 2019 13:43:30 +0200
In-Reply-To: <cover.1560339705.git.andreyknvl@google.com>
Message-Id: <9d68d9e7f9f89900adb4cb58c34ffe532dfb964a.1560339705.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1560339705.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
Subject: [PATCH v17 13/15] tee/shm,
 arm64: untag user pointers in tee_shm_register
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_044420_773395_32ED4B30 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:84a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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

This patch is a part of a series that extends arm64 kernel ABI to allow to
pass tagged user pointers (with the top byte set to something else other
than 0x00) as syscall arguments.

tee_shm_register()->optee_shm_unregister()->check_mem_type() uses provided
user pointers for vma lookups (via __check_mem_type()), which can only by
done with untagged pointers.

Untag user pointers in this function.

Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Jens Wiklander <jens.wiklander@linaro.org>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 drivers/tee/tee_shm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/tee/tee_shm.c b/drivers/tee/tee_shm.c
index 2da026fd12c9..09ddcd06c715 100644
--- a/drivers/tee/tee_shm.c
+++ b/drivers/tee/tee_shm.c
@@ -254,6 +254,7 @@ struct tee_shm *tee_shm_register(struct tee_context *ctx, unsigned long addr,
 	shm->teedev = teedev;
 	shm->ctx = ctx;
 	shm->id = -1;
+	addr = untagged_addr(addr);
 	start = rounddown(addr, PAGE_SIZE);
 	shm->offset = addr - start;
 	shm->size = length;
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
