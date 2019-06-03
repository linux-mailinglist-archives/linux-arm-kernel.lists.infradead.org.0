Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE55D335C6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 18:57:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EJDVc0qKP75tzt3Q3658jokCb78ht9Erd1AwnyhKQYI=; b=UDaCNjZ7T6cASt
	qXAaqVlkLnWku9uCWC3Nmc5p248pwkSUKFcLKPIiSeyZVrZfhEH3i5QSkqY7cNcDbNHhACkA1Gx0A
	c6Lr873UnjyUAMrNOC5fWbk//NEOEHy94XeQBAveYSrAy62oJ4/LqyP6DPMHuCryzfD8o2E4pvpiY
	UMh2lnCdz2T96t8RriQK2UgG9Il6wNrFqu235rl8+goFRXvG2EJVLIKheIYNYGonOJR1bdytQssfj
	2qMZoEaevUVVPUiEiX7wnTIBwbha1MPtSTMG+KTkOzlqiq7GlRR/Y5LSnmV1n9a14rSIO+PJPPt0P
	m0EF/2gLh17HInBVvLVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXqHR-0002fX-OC; Mon, 03 Jun 2019 16:57:53 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXqFu-0000oU-LN
 for linux-arm-kernel@bombadil.infradead.org; Mon, 03 Jun 2019 16:56:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:From:Subject:
 References:Mime-Version:Message-Id:In-Reply-To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UdKHGBZnbXnYOdacGwXVLbo2mp7I3OpbNnEy2rn9dE0=; b=bBIQ4gV7CbkSuT5PXt9T+u0v1
 ep3Sim+2AwYN81nqLoUhrJd8MkRSLo4XC1b694hm8c+j293gsQwyuA+zrxckUS+5Qb0cG2Y9L6HFp
 xI4dhU/ex4Xqpvx0jcCqK0QiqrQXPGDq+9+lBfHrqNYv8Y0qnLfOocFcGR+WsUr3fGPfn1Fzzxpu2
 5KTv/UGENevoR+Z86FU4yFRvWVPKFg483TRLfCrVWZonWCltTlLLjmLACoppBggdgQjexRDK3PabN
 jSDWV2l4AT+uTwMBh/Cde7ftivGnhXe0RNg+flQaiBpKg6mwGcnFpt33vCrCcZsMVny1pDLqg5dD/
 R0H/1MmqA==;
Received: from mail-ot1-x34a.google.com ([2607:f8b0:4864:20::34a])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXqFr-0004ks-NU
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 16:56:16 +0000
Received: by mail-ot1-x34a.google.com with SMTP id h12so3275909otn.18
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 09:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=UdKHGBZnbXnYOdacGwXVLbo2mp7I3OpbNnEy2rn9dE0=;
 b=aMwQlO/uqKNquhxQCaOybakc925QpZfJO8wh15xEZQIyCg72vlDGXrUg/ROAuoQDUD
 yCBHc/elg2gmmBaFllCt7o9fko/cMYEXNqMBN5Ib8jP974H6cgrFWFCLBOtmTziaRGQQ
 SwI/Xt1vXIDm1HuVmNbFHcArxU2bsmwx6xs/PbNEoDywCtOeBm47QoZ+wae08e7pzq/K
 a7mRKG2GqnFCVji4AY+94HQ5eVsYgsMp8E/PA4r/OPS0psFqvjDQbyz4YEbR/PgBj2Aq
 436HnabGuSm3Rvtg2LN9VhA8Rs2mRcn4xgL77EZC0LMuRu0EvZQAUUg9zFkbP9a8AWHr
 YN2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=UdKHGBZnbXnYOdacGwXVLbo2mp7I3OpbNnEy2rn9dE0=;
 b=hGAZY7CsBr3Mt4uFBw5UR/9OxFUeenR3pkmXX0kQ0YHn1z/RD7E0XGPjXnnVVd95B3
 gCBa8C/q/EkDoweIuKFyCWiZuMv85jRQnIiacFs2rCHl2JjSwpndcsemPFxW6Hmg8G1A
 Jnuz4vIZ1ExKiWXesXjMOG2P36lA8LRcDCitMNO9Pk7HVMmtaHhQNi1sc23L/DJuMLFI
 uF/B69ARC9a8aQY2+dG5txITB7U7vyRWrDBNvyxmygb2VL6kFpW5DxxY3XR59rkOjDFN
 duD/JU8Cp+hBFuX50PUvjp5+9wOKnvKoHlsXAC7s8N/bJETv+gZ9GTsuGalaoy+GfD3W
 RyEQ==
X-Gm-Message-State: APjAAAWAZajCBNkdJq1CIwevS1p6EdnWQ7JPNofl3/J4xBq3F8aUmSJv
 710AJ/7ihsB6/7ydfyuMLQCAfWqgvwe9pZq9gK5DN9f9FAoy+M0Pfl3qG0tqi+bG41Pjs+EohHu
 DVIQMMmUSu87JDNNbsl8Wf/yspnilSCsrA2tWbL9sW/JgNrv+GSOguZqT6WigcfVQ/wEy1C7pge
 LgB8nTRUpP3V/+/q0=
X-Google-Smtp-Source: APXvYqxMjN/4yHR2ThXEEFJeDuxNxY18SC+MmNXgYJ7rlNGji/L0sGyo9f6aEs2c6lSgFUC7mMKDb3c6mMlyiMDt
X-Received: by 2002:a9d:4109:: with SMTP id o9mr1768838ote.353.1559580969728; 
 Mon, 03 Jun 2019 09:56:09 -0700 (PDT)
Date: Mon,  3 Jun 2019 18:55:16 +0200
In-Reply-To: <cover.1559580831.git.andreyknvl@google.com>
Message-Id: <dc3f3092abbc0d48e51b2e2a2ca8f4c4f69fa0f4.1559580831.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1559580831.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
Subject: [PATCH v16 14/16] tee, arm64: untag user pointers in tee_shm_register
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_125615_771657_213A6FAA 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:34a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 drivers/tee/tee_shm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/tee/tee_shm.c b/drivers/tee/tee_shm.c
index 49fd7312e2aa..96945f4cefb8 100644
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
2.22.0.rc1.311.g5d7573a151-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
