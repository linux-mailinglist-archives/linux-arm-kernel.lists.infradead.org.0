Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2669E152CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 19:31:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=etcOYzUW7mWN/FTHv8sm/e+mtI94rwQ09av6jjBTxD0=; b=GMe7GyE6yn1May
	69kN5FZ4Twl3LHmWhzSISUBzzWDtEyxpvAvdLjcqgqhxbMa3v8BYbgxdKO3fR7tWjKM4vZIhrYjRE
	rTmVu3HP9gff0HFG/sH31fktfohd9GeMx2ZvvcYykh6V0ihVPDq3rfGc8sWCygk7M6CZk1axazYTk
	Lv1YNXu0/y7d8oN09VEv4QcRNdxjVw862FzDKDEHvSRTnKZnh+nzxfSPZsg0Le9KWs1NTJNTSBAai
	HASA8kQZFd7YKyP7vNScOjez5etoOxh1frHY1uNKSuxqNjdo/A8g2Zfrsy0RW5+gFmjfqvSzcZ0AW
	kIk0oLIiiTcan6/lZz4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNhSO-0001ny-Kg; Mon, 06 May 2019 17:31:16 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNhS8-0001hB-Nz
 for linux-arm-kernel@bombadil.infradead.org; Mon, 06 May 2019 17:31:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:From:Subject:
 References:Mime-Version:Message-Id:In-Reply-To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=40kxRsKyA2BTdfRG/8ycbW9cjWXHDWQTNAmN4QMp2Tc=; b=tLvUD/dcrOEljghltQ/HEnrbi
 4sF+Zv8UD4F7LjKTGXIaM1M2qSmnW2KXNH3ugjX+w5KWtV0ba7BXdu777zlV6m+PifOB1dfCK8fjn
 J6MiJ/LFVR7/+6SMlbepefoqnpMyAbsQuRuON8ygh4kB9eBic+YDzWGlTK1e2mXxpI3zhN2WaZSYw
 QaNHMxkPPX8r+m/dPBRAKJTb7WZEOj1XiuQTPDRYXJTYPMHFh+hCk2J7WUK6X4fqm5ItvyCoe/3j+
 0SM/spcLY6wpL90KEIT1nl3YFRBZ2H3a61zMez6tSFkLbgaArCzlM6mpgf5xXTA4xqVyszxZohvfI
 LigN6CExA==;
Received: from mail-yw1-xc49.google.com ([2607:f8b0:4864:20::c49])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgX1-00066K-KB
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 16:32:00 +0000
Received: by mail-yw1-xc49.google.com with SMTP id g128so26093713ywf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 09:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=40kxRsKyA2BTdfRG/8ycbW9cjWXHDWQTNAmN4QMp2Tc=;
 b=CbTDaybxwiO68FYaqEU987JbmTIWC/O/zmn5u4LAT2NjIg4zrx3ZZpTdEat2IZI7Zr
 UMjh3JrD6tSSJSHiA2J1SvwKqxkOFH9jD5t4pSSsFkT8XO0YzO5s2D93y2Fvv558QDT8
 PC2RKfy08bb/yMf67M9jkhQd5jNijh0tU+IEPR6RStdwOkRtKLjro1177XiqKVVA8CKn
 7nvBlr71nBnQ+GeGRfOaL9uXIjXsWpEFZPxFZ6iufv0v5siPwgW5vA64wYvStilJ/+ml
 T4dkOygYLm3ryZPhfxVQJsF9+4XGOGyyv3U3USZs8bMzVBnZRwvcMGmsqol00hqY8fWp
 TxbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=40kxRsKyA2BTdfRG/8ycbW9cjWXHDWQTNAmN4QMp2Tc=;
 b=kiY8a5nPUjZunD/EJTTpWp2uc6bxXK9qz0VarI4VlyamJUo4MaUeZiryZ77mP1Wt11
 w3PImyUv95pKMUFf146fiodOcldxFIdlUlCZ19clOs/P/sEfc4Dtv8vNNZxefFEBUVYm
 tQuBH6HqCqrLKeKizqqycmWQVUFQlVbKgToyxjWxJ0w1cPvFhswBgB/iyc8HY/ub+rWc
 RAGO/tKY6S9GPTZvWjGfrQuVMjvqxwr9dfWWAhhW/scsx5M7k7tdqXglHPDCpbuDwWKU
 66L785av/jVceowgpQeUOWbaw/dWs1I0EXhSsDXTT8WqEr3q2paiWwQgFAWZDFmVkQnt
 rMRQ==
X-Gm-Message-State: APjAAAUvkz77tn6wEfA/QPlY/W1BfccTdy6m4hvlTMt4GKyF282C02Ao
 G2Mlw2E6vpRo81NwZy6evzC9iIj4yLANbW/7KU58tV1ONGR/xbDjJ2k743J0n3/72zJyzK2ekDL
 Kke6OmvxHybzRWneWAreehZgPC+u3uHBFqssDJxHjL1MGfxWNKD43mJBkKIUBiR5zsPRnD2izlb
 ygVKsZiMLPcv+6+Kc=
X-Google-Smtp-Source: APXvYqy7sMh67zqP2gW9MSWmQP0vNhHkuufaU8XQ9cxxJZb1a1Qrmr7t2Ui4wSymuQ40ovJdWXqcMvlrm4Ub8jqq
X-Received: by 2002:a25:c5c8:: with SMTP id v191mr18795942ybe.52.1557160316771; 
 Mon, 06 May 2019 09:31:56 -0700 (PDT)
Date: Mon,  6 May 2019 18:31:02 +0200
In-Reply-To: <cover.1557160186.git.andreyknvl@google.com>
Message-Id: <69a675a5c48fa2572162338c51a1bfa2a3ced27d.1557160186.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1557160186.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
Subject: [PATCH v15 16/17] vfio/type1,
 arm64: untag user pointers in vaddr_get_pfn
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_123159_705905_5FAC3001 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c49 listed in]
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

vaddr_get_pfn() uses provided user pointers for vma lookups, which can
only by done with untagged pointers.

Untag user pointers in this function.

Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 drivers/vfio/vfio_iommu_type1.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/vfio/vfio_iommu_type1.c b/drivers/vfio/vfio_iommu_type1.c
index d0f731c9920a..5daa966d799e 100644
--- a/drivers/vfio/vfio_iommu_type1.c
+++ b/drivers/vfio/vfio_iommu_type1.c
@@ -382,6 +382,8 @@ static int vaddr_get_pfn(struct mm_struct *mm, unsigned long vaddr,
 
 	down_read(&mm->mmap_sem);
 
+	vaddr = untagged_addr(vaddr);
+
 	vma = find_vma_intersection(mm, vaddr, vaddr + 1);
 
 	if (vma && vma->vm_flags & VM_PFNMAP) {
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
