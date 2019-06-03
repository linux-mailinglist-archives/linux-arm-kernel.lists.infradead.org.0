Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1C1335CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 18:58:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j76ANo1EGZ2w4KT1baUtpU32lRU0QrwRyo7nBYny0Gw=; b=A38vcGHlc/woMg
	eAT710rPXrIfXgt8SqLTCeG6trygE0cvrKmSRblX3sZrm6U8gDGiOjSLRaK3/RBbSMSLqpgHl5vBG
	8hDKtwQwa5ULzp7wC6U+UnZBmVHxLgJeFZIcShVClxRf3W88oiSLpZWLiCibeGpOhofxE7tNnP9rA
	xlewaxRzk2a+AxSkvHTR5V8ljTRw+e000cY1m0/EVLzpPnWAAtvu8uoY5Hvg++Pc/n4LI+eKq/oxq
	QvkYtxQKpSLDdszIwmMFIL37YY1Yuo8vBsVRKuzID0+92+QqTpkUISCwGDlUDf1qsN3hfqOvLMqiR
	5sgEfRNzMvlADuFE26CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXqHf-0002wi-Q3; Mon, 03 Jun 2019 16:58:07 +0000
Received: from mail-ot1-x349.google.com ([2607:f8b0:4864:20::349])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXqFe-0000QU-1q
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 16:56:28 +0000
Received: by mail-ot1-x349.google.com with SMTP id d62so9220342otb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 09:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=J9pRn7M3NANi3nsm6t0U9rkGUXnmKvJ1SqswIr7oBNs=;
 b=uyCC5R6PocJkucx1jg/Ao87LrvuuxuIBF6MJgtDNhRfSLGfd93TT+616KNBdU1kmQ0
 AgUDtRxuemeCNPWARnIzmKXOHJHBg+nlDVnGcRWa1zFo9sO/boLQmVSMKTOceUEyeuWg
 mQemhEJH0YpA4zNTW5udZ12GKI5bnl80kC7VZlC60TPzrs4d4KpnJ4TkMFczujBnqjPI
 s1PIMD6Bv9mJiTZ+Ezsulw1mODRNfzAxvwpKccvPVlqp//q9tEM3ODpqGbBulPCkTHr1
 l2f+hVLNHUHhV92giHpjab5jQ7AF27XvPV9Duk2JrwjNtkOIOBAX18N6EpfDx4AK8S9m
 dKQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=J9pRn7M3NANi3nsm6t0U9rkGUXnmKvJ1SqswIr7oBNs=;
 b=OT1e/LWnrJs+RdMt6vyTHqwj4C0joTa9GMkeDbc7E6r8VNNtQFquNjHQyZGyZp/lpL
 GDY7pqDUsd7qXc41SL5QPjgLLbnyhToEQ0mbrrhMwcJVgIfNZJJvO+YIEe3XI90Ncq0T
 L3oUUeiAcG9aP/5QE6jR9ZlN8Z101KdNoXkF5zW7zZ3COFKxuF8zqQSR8chTywLG1pd0
 krxA7YoK25kNUUDk/+H6ZsTenF9aRFtnlb3DVb1x0dLQ31jPjPfeebpEAW3K5cKcerNe
 thGNA5TSYwFZeP29HX0XMvL4QpceVe53cs7MDuVecoSOkj7foxOQ8fwhn2Svf35RATPg
 ZSKA==
X-Gm-Message-State: APjAAAV++TQnbxkecbo3CcmZD1V/Wt9D5uITnwQDVwdjwhFmEUNbt1r6
 u0etSvcXDtQoFnu0h+rnxsQcNeAs1sgHFYCbkFdzkyqli6KHFyipHRDBqufuiuK4+fyE2yzOYY2
 CPz2dUhEbkBHblJNXsVMhlPPogD9o1+UyHfkpTC3srNp1nX0kEbAjz+jNngOY9Z4QI06tuuVdQ4
 DslnyKvZ/ICRnB3RA=
X-Google-Smtp-Source: APXvYqxkxhXEjx8ehUwO+4U+/PSwW95cfpd51BrO1CGROW1JbuARWLoPLbgzmMBGokFlEw6Kw7ByzaocLX6whXWc
X-Received: by 2002:aca:4341:: with SMTP id q62mr1665112oia.140.1559580959661; 
 Mon, 03 Jun 2019 09:55:59 -0700 (PDT)
Date: Mon,  3 Jun 2019 18:55:13 +0200
In-Reply-To: <cover.1559580831.git.andreyknvl@google.com>
Message-Id: <f293884fad5f741b9202a9db6006f4bfdaedc2bd.1559580831.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1559580831.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
Subject: [PATCH v16 11/16] drm/radeon,
 arm64: untag user pointers in radeon_gem_userptr_ioctl
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_095602_721738_2BF744DC 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:349 listed in]
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
 Kuehling@google.com, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
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

In radeon_gem_userptr_ioctl() an MMU notifier is set up with a (tagged)
userspace pointer. The untagged address should be used so that MMU
notifiers for the untagged address get correctly matched up with the right
BO. This funcation also calls radeon_ttm_tt_pin_userptr(), which uses
provided user pointers for vma lookups, which can only by done with
untagged pointers.

This patch untags user pointers in radeon_gem_userptr_ioctl().

Suggested-by: Kuehling, Felix <Felix.Kuehling@amd.com>
Acked-by: Felix Kuehling <Felix.Kuehling@amd.com>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 drivers/gpu/drm/radeon/radeon_gem.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/radeon/radeon_gem.c b/drivers/gpu/drm/radeon/radeon_gem.c
index 44617dec8183..90eb78fb5eb2 100644
--- a/drivers/gpu/drm/radeon/radeon_gem.c
+++ b/drivers/gpu/drm/radeon/radeon_gem.c
@@ -291,6 +291,8 @@ int radeon_gem_userptr_ioctl(struct drm_device *dev, void *data,
 	uint32_t handle;
 	int r;
 
+	args->addr = untagged_addr(args->addr);
+
 	if (offset_in_page(args->addr | args->size))
 		return -EINVAL;
 
-- 
2.22.0.rc1.311.g5d7573a151-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
