Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D665315184
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 18:33:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5R6HkjIiTKNsUHexS+lXLmNM7aTg0IH/qmEx3wNtRfI=; b=EdaVg0E8WAUr/S
	4lcUvJkO0SCdEOh+y1A2cdCmJ8XzBUzFTV+TxKX1lQeNDB9r6KUmNaMHj9tAQu8q/WattNSnHLP4d
	DHpuqC4YXXL8cAHMtf/ScwJMVY9CkaF7/30R5WpHBS5WPLXgNQRVa8J9u3BCHZaGDKLPRP8Wh0I/5
	SlM5fQ30wdkVbqZhGYpfylU88lLt+zaK+nPqkJwakMixaF5Nqr1CXMAYZreRhUWMzE5MUEh6ciMlL
	snt5Qd9dC+yKIg7otPIU6ogGzpO5/V2jwFvG/frjeA0OD5P2o0WV/gDCgY5HfvWrBL4Q5vC71nWiW
	TFgmJlVCHq+N9HbTjegw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgY2-000092-5Q; Mon, 06 May 2019 16:33:02 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgWo-0007N6-Qf
 for linux-arm-kernel@bombadil.infradead.org; Mon, 06 May 2019 16:31:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:From:Subject:
 References:Mime-Version:Message-Id:In-Reply-To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RiesdCLpp+R0f3O9XnLGGd6rw9hYPfKFlydZlXAyMMc=; b=3V80JLEBMnKLqjJVUtJ3Go+GK
 9ZWy7d0kO8exdne5R8rvN0LnOFK1A/dygQVpQn/RbyOLwUg9je1624iohtYBDQjJdMvHSwHm7zdmz
 DJXS7nzgemV2r6ZzlQUOAkNOS1kfoCovR6/yFiO8tsq2vYV7H63kdiZ/eqpu3iljLrkgIpdzrchmr
 EEf98QfdXNspnxhByPVyTHJXsk5Bz3irpgSWiUSslfP29ZNbtRk4LMmC1JK1LPlxReswZ+svaA1Ih
 bebsi0+ykAiizh8cVzAn/QKj56sdgg0GrM5rlknpSIGOyqlYbdXLm2kVrKgWqzBaVlqjKp5wWywoY
 J7ftTSOeg==;
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgWm-00064P-9C
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 16:31:45 +0000
Received: by mail-qk1-x74a.google.com with SMTP id a64so11072672qkf.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 09:31:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=RiesdCLpp+R0f3O9XnLGGd6rw9hYPfKFlydZlXAyMMc=;
 b=Q6QAvdDCFNZuLS9ja3NkrMR3RvJ0S09G7HKj9q0ktYjp11DSu6sbwte4Z+MCgpdXSa
 OGL0kcCil/ti4co+BeFvhTmmJ7+RXsHFsfK1hhHv1eec6VZbNopqVkjLet50ydoaeiwT
 XvmlmBaXIzsx1T6Dyaajg7Bz5pq9Axsw6cJNm2DtIdCFs4IeQzb8CYH1eWRXRhTqPi8L
 9AZ0ieEA2P7xzH+IK3hHC6FzJl7z9XjQD9wvxFqfvRNHuz4Kvz+PKDcTznem4kO3i/YF
 7eAO6TlPEh3PGwlYJ/3xngzxB39JPbQ+aqDHIcDB8TtrzW/euZk2kR1+K4+g3OqdGfdF
 qJTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=RiesdCLpp+R0f3O9XnLGGd6rw9hYPfKFlydZlXAyMMc=;
 b=H5mBS+QjWjlAV3eLvJsUQ5170iqt/7qK/YDmRoHabh2wZGeDfpjDZ8LSOTb5XKBeUP
 YZAVb3yOkdTR7oy6gfUKZqcEMS2LqFlGSwBmmv2oUVMrCkYqLqLhUa5wjcbosNvZnmsa
 ZEyIa3uNxim4X4GRcdZVF12sNw4es1q11bVQ9fzC1j/tTWZXPhpeKCuEnWej+EMHwIRa
 bo6nYlflOpvo0I9RViiPZZgqLkM4RgZdykUtUfJVPG3tbTijrEv5Xhv883RYsyVKQV3T
 8x/n9min+4zAUBvnzWKbegjgdOVfpGeWI71iQH78JEWeqVZMqsQQuKoUAfyxqPFii4Tm
 8RDQ==
X-Gm-Message-State: APjAAAUNTBxT+KYN/+SMWnr8jti2ELavsTFSqcyHpL+mcZJuxeQGUKtJ
 Yl0STJmBD4ls5hvAPSS35z9LDn2xHz0QHCOMeA2KRVVEZ/HPGCudq+FeKzvR75ZMSwp3uJKYwVb
 kyQKsZk8FzgccIZ6lOzqZOw8g7JbJToHI5Iyck+iHPCXu8jxYh0+I72Z5OiTdIf2YZbG1eJWAhB
 rpzcd/HxTqXrwsBKk=
X-Google-Smtp-Source: APXvYqxNt6uYI1SB2jQypHitLB3ZO6cfBHn8QWvA0b8eMRqYbeBN0u2XyLJdNX/EJB3bCPY6PcnOySobJPUt2l9F
X-Received: by 2002:a37:9ed6:: with SMTP id h205mr2433459qke.152.1557160294772; 
 Mon, 06 May 2019 09:31:34 -0700 (PDT)
Date: Mon,  6 May 2019 18:30:55 +0200
In-Reply-To: <cover.1557160186.git.andreyknvl@google.com>
Message-Id: <ac2ca3454b1ae8856ea2e29a1316fea50a30c788.1557160186.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1557160186.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
Subject: [PATCH v15 09/17] fs, arm64: untag user pointers in copy_mount_options
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_123144_335603_CBDB1B64 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
 [list.dnswl.org]
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
 Kostya Serebryany <kcc@google.com>, Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>, Lee Smith <Lee.Smith@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch is a part of a series that extends arm64 kernel ABI to allow to
pass tagged user pointers (with the top byte set to something else other
than 0x00) as syscall arguments.

In copy_mount_options a user address is being subtracted from TASK_SIZE.
If the address is lower than TASK_SIZE, the size is calculated to not
allow the exact_copy_from_user() call to cross TASK_SIZE boundary.
However if the address is tagged, then the size will be calculated
incorrectly.

Untag the address before subtracting.

Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 fs/namespace.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/namespace.c b/fs/namespace.c
index c9cab307fa77..c27e5713bf04 100644
--- a/fs/namespace.c
+++ b/fs/namespace.c
@@ -2825,7 +2825,7 @@ void *copy_mount_options(const void __user * data)
 	 * the remainder of the page.
 	 */
 	/* copy_from_user cannot cross TASK_SIZE ! */
-	size = TASK_SIZE - (unsigned long)data;
+	size = TASK_SIZE - (unsigned long)untagged_addr(data);
 	if (size > PAGE_SIZE)
 		size = PAGE_SIZE;
 
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
