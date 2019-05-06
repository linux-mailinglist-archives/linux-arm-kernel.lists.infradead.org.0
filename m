Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC84151AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 18:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4qyK1IhdL6CXuiZ7srow3uepbOllESBU+AXko+zvll8=; b=C2CFLEJ3uJNlJF
	bID2Xb9bJl4aHxYE/y3AXt9oG2Z4D5b8MonydkhsPVGD+4wRmE/prtPZZp/A61BShsN0VBo6ceq8f
	xx/tXDcz73MSFbZFZFSfkjDkAX6vHjry2Ins/3ktY3EjBKrp390GYy2Vk5qDJrVQeItloItN99cQB
	oNih9dA+ShWeZsM/Myf5D2OaFZI0CuHiFdr3oMDdWs1stXVICoXNEehj50A4nqAPPW1G8vZ92JI1Q
	nBTJhfVCFSKUE4kVACTTYpcUCfFuU18PEdcF+OuD3UBnDJFUNOODQvOvSu/sOZvPDEx77yN2H0W+P
	70aAHtTnd+Krbudt7K7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgYw-0001GU-Uu; Mon, 06 May 2019 16:33:58 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgX1-0007do-5d
 for linux-arm-kernel@bombadil.infradead.org; Mon, 06 May 2019 16:31:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:From:Subject:
 References:Mime-Version:Message-Id:In-Reply-To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E5WO9ODhUeb7gchIl3e11LSllsWmM1E2YpuEe+KMyVo=; b=wXjd2L3DdlZVuF1WOjswIgS83
 QCGSRc38LvIP+9h8SS2E9/mLaaDkXzcoW5Q0513bnTDHQMnF7EgYIVEtN4TFAPCLpJVSoLfFLWNi4
 FcDldh8T8l38jpbH5bCdOWBvNsnJ8K/9UdsBHyI8DMrHRALE08IMwMnO4Th4vQ+UuU1nPVJ1cSG+r
 1XWfwDU1sn0S0ZZwLWZgFsSI+dV6kntVL12T+1dZVjYVEcW/jd8TuGR4hyiRNcEuKsMtAJcXQJE+6
 bm9QQtjVfnpM+LmTp0x1HmrKqsRZpa04VtynwDQEAXDpxpvD2DoJOuHbzWkS+DeYKed41qZw+PMvO
 vnQR8rc/w==;
Received: from mail-vk1-xa49.google.com ([2607:f8b0:4864:20::a49])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgWz-00066C-Q3
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 16:31:58 +0000
Received: by mail-vk1-xa49.google.com with SMTP id q191so2077208vkh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 09:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=E5WO9ODhUeb7gchIl3e11LSllsWmM1E2YpuEe+KMyVo=;
 b=ZAV3tC6ygeuQpYDYrKMnamvWU4Ola27jwmOvJT0NrB9zkA9/9VwZpqZILeD/kCkNoz
 2YieZRVMa/AXiEzwBIxCU1l+GEYmKclsxxyQTiWJfi3V4eZQV5Ty6cVbJ946qs6vtwua
 FnVZYy8h8LlcT9zEGoHGJFhxw76fNhlXkwiMMdgNAFJQ0fdrxIy60WNM3Dx5/MSJjbMm
 JoRnUusKGOL9DOHOG1d4lxStTE2KnFUHyp2053KQyza8HaWrD88UcCSEHERhBeycqSfG
 PaS1O1Y2zDlyyujLwl9tuNkVlIoFOsc0GRtgaeegMD911ZalfKNXqOUfZljQAA2/cuom
 1W3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=E5WO9ODhUeb7gchIl3e11LSllsWmM1E2YpuEe+KMyVo=;
 b=AUJ5Q7I8wTgK6H1Z6iVTrYpgFQxoAVYmjENPg87BaACiqOX30XayCu3EYFe8pivnMY
 RdHOWjdqU4xdu+j+GksYfXPIq9bSuspsmJGdLcfpm+MQPXlMsrCHInJ/tTTQis2uEic0
 m3+dexnG0+BA31BJ3Xl+sj5z6Ff8mz1mLKWtjmT4IrmAQLAqTZFqJDKZ1apRPUl4imiz
 sgPde8DXqaZxwXX9SCcp+yN6349wQgsFRtlAQPYk0Ixn5cEqbzTQZp4nNdwpr+sYf+YB
 IY0mIwMKRx39Ad/5q5bW/4+blUToshUDP1J8roJcwW7nndZIEb52n125eCLE4bHjDnSx
 B0cw==
X-Gm-Message-State: APjAAAXWe4mOBagOXEgLLeHgKXcXTxQYve6ejhEVCSaTMilt/+NZy2Lc
 382XqyRtvAW4O9Kg4j26otaFpVNLgW/p+QWoK2+RiE/OZsM1FSlauNRdteBb5qZw8SvtQRljt4O
 i68cs5HN1uZctZaT0O9jSzo4o9Me2EGuNnlBC1B7eFARxs+6zuVjHtlTESLPJ83/kDAMTJS1Kjq
 3zw6IEK7mGxoOz80k=
X-Google-Smtp-Source: APXvYqw1xOoCnPO8YfwpZ5nRgaPpPr24xspNBV17LLiBFtD2eWt0/j9p08QSESkEcGjJ9SGNKNyhv8KaV3q9K4HX
X-Received: by 2002:a67:efcc:: with SMTP id s12mr4512139vsp.120.1557160313543; 
 Mon, 06 May 2019 09:31:53 -0700 (PDT)
Date: Mon,  6 May 2019 18:31:01 +0200
In-Reply-To: <cover.1557160186.git.andreyknvl@google.com>
Message-Id: <cdf0b98edefa9227db4a3d1fb6e3c7bc5a6a6215.1557160186.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1557160186.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
Subject: [PATCH v15 15/17] tee, arm64: untag user pointers in tee_shm_register
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_123157_851575_14B46DDA 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a49 listed in]
 [list.dnswl.org]
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
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
