Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 606B871E96
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 20:04:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z5D2joGLWAsCnoDXBfmvJ/tG7yzUcXTsg7nLYFLQs0c=; b=pV0bfJT58djPTF
	+dsOJmeYh7gCO76NsTdajv7VtjG1nkp5Uw8gtByxxjswqZdCuOvlv3/F1Fxld3iRs3ch5QLFnrTQ/
	TCP+9zXm0k3qdCeTfkC0GHQDaPau0sBfaXU/tCKVjXSseorsmmvmXV+aQQ6Cph04no1V5G6h+IHBo
	ckZ9PiNLN3CqctxwdDVjckSEYbX9qeJubntF4eAo5IKNHIamcHS9okyp5UbNPsM3w0KC4XHl0Br6h
	iD0an94FiTS37cch70+qceNxOgirIO4tcphu96bdephbGrVg2abfDkn6K/O/Xgo+S4oQF0qck0D9U
	+dbY3P28AMzcuTkC4qjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpz92-0001uf-R2; Tue, 23 Jul 2019 18:04:12 +0000
Received: from mail-qt1-x84a.google.com ([2607:f8b0:4864:20::84a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpz4p-0005rc-Bj
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 17:59:53 +0000
Received: by mail-qt1-x84a.google.com with SMTP id d26so39183470qte.19
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 10:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=IHvI+dZahLSsu4iMw8K110v852ALNB6rzz3nOC21G6Y=;
 b=mF8OyWPtPa27KaGkiSCnss6c8b+Y3jxSBp/iDga+MY7c9cKbX9nGHJwK2xlzSk0dvM
 46/b1IA06ke81wJzctvuMT0KvjYlT0hkwU/YFyMD3O3ZkppaxsJ6Qh96lV4fTWRGdGnB
 ViGf78WRhfhot+50mrRcEJP8ehDMTkQZYjXXgXUH6rOFs4T1KVaDzPVU6ktcbKr8zaRJ
 i3A/F+iOLc+6M6QJ7QteIj4THksgVZVnbx5C2fEtCjTVS1TOypq05pLtbtct8EtWO8pG
 Q61f0pOK8VaMaWwFM4favMJo4cb+2j4wmdeEX5CGZBr0ScIwqtpQSHdV7dFwlIUR9Dz4
 yLvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=IHvI+dZahLSsu4iMw8K110v852ALNB6rzz3nOC21G6Y=;
 b=gNqEfM0xpNe0KALfpoNl1OtKAJPV/NUuXpfMRX0e0pK59eCQXL4kck4VGNL5HoxQ6X
 7YOMf3LxrX3KvfGALEQ9HIfOuvMVfq/D+ZnUwoJdLwbq/B1i/cvi9hz1Iz3wyVH64TrE
 wNmqwBOOC8XdaAmCEqpz2rWSaaWRcvWYB2wdqUcbFHq0s4KdkomJ6b3V0N0WakUBfpbh
 sQoPa47sj5CF9089oXULZleFseoNMNE8J+92tRcTfqXA+fwy/9p4UHFQoQOrmg/9UAdN
 AypOyTFz3X2jHreadr6SZj4jakiu5AIPxtBxEAgJ4omJ7T4Q45W2JHsKLk7xKjuk7apC
 IrEg==
X-Gm-Message-State: APjAAAXy3ybPPcNSepLFj5V4hmUe36J+6CvoecVoPqwmx1gIBunxG9fJ
 Rj7W0bKt4UqI0nnNxrz+eINEllB8aEvy2Z5yx5zswgT8hkncz8L5a/v8s848Fiv3hRu/PKrAHYF
 7ikXfs8QOjxZJICddBIgMT+asEnygKN/RiYxWiqdX4yYJ+Lj2/PfxfKcLuEo4EcC2ATxlNvvY04
 a1MxQIj3JXQ8Y+sGQ=
X-Google-Smtp-Source: APXvYqzRyHp7WBTqlPGt29onShJXh3Cp/pE5/lej0P3nE1XW0gw1bUQxpG45N1NN4OdbAYc7oUndTzJUESDpF144
X-Received: by 2002:a0c:ffc5:: with SMTP id h5mr55634338qvv.43.1563904788555; 
 Tue, 23 Jul 2019 10:59:48 -0700 (PDT)
Date: Tue, 23 Jul 2019 19:58:50 +0200
In-Reply-To: <cover.1563904656.git.andreyknvl@google.com>
Message-Id: <4b993f33196b3566ac81285ff8453219e2079b45.1563904656.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1563904656.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v19 13/15] tee/shm: untag user pointers in tee_shm_register
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_105951_549859_D4875833 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:84a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
2.22.0.709.g102302147b-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
