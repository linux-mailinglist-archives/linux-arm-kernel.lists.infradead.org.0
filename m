Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C32FFA56
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:29:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rqVjU27WmtxQxqAFWovo41Z1ftkZC21+PVSVFDVU+2c=; b=beYOHif876VB4o
	dKSt4IN7ZkEUb4loCZTPQXiBI6YsLdZUdE3kwdXvbR05o37Y3FjCMdxd6Yn/8yzVg+/T7g1gdPCU+
	SErQ0z2Up04lsmKGqrr43o80QmvYugFMnRgy/O6VtPtW1cBz0CKEySJTGqum3NVY8IoEvX/RmOVKN
	9fz2ZYl/JaHUDvyJAXKbNhGtNbpPjeS7gmKbRhmkgjrz/0t6Ox4sYxSgKPNrEQOepHNGIWRMhO/1s
	rKRjwc/eceG013EQrbwlbIGLdaiWqIFY7HC2LKYa466h+42eWb0K7Zd4dEkjHj605vAqYegDJS1dj
	402mR8v7RcOvAe/ihNiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSom-0005ci-Ic; Tue, 30 Apr 2019 13:29:08 +0000
Received: from mail-yw1-xc49.google.com ([2607:f8b0:4864:20::c49])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSlp-0002MI-MQ
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:26:29 +0000
Received: by mail-yw1-xc49.google.com with SMTP id 11so12848486ywt.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 06:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=5vVbThWFeNTYFxwbQq67jdT1oZny+xOKBFoxX+2Uk7M=;
 b=FRME1COezh5b+xsqn4P+Wuk9kST7usWvir2xQhAmIzYbqhd+Dle1XM/PaJl5NwGBwF
 z7/SMrTqJtHy/gO4CF7xbqlFAwpIk8PwR9mnXkXEY1b5HFuyeguAZJRX9uVnCx/+N6Cg
 GdXjue/eQFQ6wfKzJUzNubo15IJ6ki/RwkeGwPRaQhUCcsmSJMlmZ6DdqtqFu3fOL0bX
 01e0qP9aKT8hITIugatecY8TuWXLv4w13ho7n2rx3qvyQwxwSmnnV+ESWDP6rPMjBLm6
 9em8VBa1zwsikfNNQo9I2iNQIYFHDIjY+xXevJ0y76Ma6MtOAyKoTjWTXLT8lERzPHTd
 0Kew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=5vVbThWFeNTYFxwbQq67jdT1oZny+xOKBFoxX+2Uk7M=;
 b=ikaCNb7gk+S3rXWxSR1htOY6R8IEjclbn0jA9cG1s7QOzlc92IAJQWalekNnJAbFjR
 sINQPW/ERp77pNCVgFIP0+O8zrUR7MpPDMf+7IsORTKqFbXdVYUPSL6D4Y5p5Bx5VBP1
 Rsib8JpPhJJIjJz2g+iTBVeRRMhR11TmoGAN9j3e7pOJtZG3e9Qasn/p2a8YviYw9FGP
 6IKtZLnfCSoi31wvn9Q50eWlzC6tp8gLEMOy4ETy9BGz0mHVULwO1JrzvuHQOIcVkplV
 4ZWVzmDlsFqGG7uvr9Lb3vP1xVeKbNzdTzkVTlYtH5/xT+W2+VM9M68Iqrt6pgfp8Hyd
 szhQ==
X-Gm-Message-State: APjAAAUWxYH0ZgAv6jwZHj3FtbDz7D2nudb+KTPBGOvhH82dhaEqV3iM
 HFdzClKjvi+WwXwsL+oYS1mq143nQWOXc6uIpp1ODCI+KmBmcPjfkUCOk/qqFEFbxKexDPJ8OgQ
 wpE+Q5yJ5LfTLouANVO8nE4pZeJbUuackL9WOPtup6W3/HB7DdavmjunYBpAH7ed6EYSup4Y+Vb
 GYAhWV4237AaewHHo=
X-Google-Smtp-Source: APXvYqyv8kHiq9IuRt8k8uxL630nsRVEEuszbAKJggJOMl5SWFBjzMAnW0IWxRwAYYoqlPXLLWZ5sEsVnC5FF0Vx
X-Received: by 2002:a81:3c89:: with SMTP id
 j131mr56890450ywa.183.1556630764032; 
 Tue, 30 Apr 2019 06:26:04 -0700 (PDT)
Date: Tue, 30 Apr 2019 15:25:11 +0200
In-Reply-To: <cover.1556630205.git.andreyknvl@google.com>
Message-Id: <1b2a46dbfa24bde41f11cff6f53683a5ea5915c7.1556630205.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1556630205.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
Subject: [PATCH v14 15/17] tee, arm64: untag user pointers in tee_shm_register
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_062606_468340_D20A7E4C 
X-CRM114-Status: GOOD (  11.33  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Koenig@google.com,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kostya Serebryany <kcc@google.com>, Chintan Pandya <cpandya@codeaurora.org>,
 Felix <Felix.Kuehling@amd.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Kuehling@google.com, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>, Deucher@google.com,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christian <Christian.Koenig@amd.com>,
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

Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 drivers/tee/tee_shm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/tee/tee_shm.c b/drivers/tee/tee_shm.c
index 0b9ab1d0dd45..8e7b52ab6c63 100644
--- a/drivers/tee/tee_shm.c
+++ b/drivers/tee/tee_shm.c
@@ -263,6 +263,7 @@ struct tee_shm *tee_shm_register(struct tee_context *ctx, unsigned long addr,
 	shm->teedev = teedev;
 	shm->ctx = ctx;
 	shm->id = -1;
+	addr = untagged_addr(addr);
 	start = rounddown(addr, PAGE_SIZE);
 	shm->offset = addr - start;
 	shm->size = length;
-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
