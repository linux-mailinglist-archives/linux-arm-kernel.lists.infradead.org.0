Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFAC71E8A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 20:02:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lY3oa/ON5HV1649g2qB3JuMMsbqT1dXMFm4SYZzcgGM=; b=UfHZ0B5eKN1LWr
	nXI99Iy345XbH1VRFJmu4fAPzIuNjg/dUVCtOWX0ryJKUXmDgyn37Adz/Q+3jEWmIROSz8gEpR3RQ
	VemVn1bGuVK7y+FRF9btLyZvGwkVsxfVo+N37v33gmBuKxyigCGwreZDmsigOECGwxf3wFRuFDFM6
	ulRfAJNB9Y75KWLUwDAMdx4XE10nquUCCP5SPJ6o6aKejOgjM7Ms9IKolKCCjXPt3tmq+hh08lpGE
	7yfXDOdvZ9gcpCr2aTee3o1wkHRsL97/QsWHQ8s9C2FZMzgglbArQ8G3t3A9X6ywWQkQr8Uze3MZH
	lQTR1y/ZdmpeehjgMMFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpz6v-0008VK-5q; Tue, 23 Jul 2019 18:02:01 +0000
Received: from mail-vk1-xa49.google.com ([2607:f8b0:4864:20::a49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpz4S-0005Ut-Js
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 17:59:30 +0000
Received: by mail-vk1-xa49.google.com with SMTP id y198so19497371vky.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 10:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=/huzVrn6iDinNK3gESNF6fMWuVj1J0a8E8YliY+JUMI=;
 b=Y7zAf+EqSsPzgFlPRtHiU2eaf3uvF3mBfxNqtK2dkyuo3VTBYXjjpviaGnsQe0yYUQ
 RZjdFooS3ZC7uUt58aVI/4cdpsAs60vswb3AsNKQ+PFZtVBvzHw5kY0TqkqeCmyj7riF
 mtQh5FnaNVG9iaAtW+G98/NdplTTfZ9IkSgAzb8usp7NHgKVNq41drkIZNhCHbFrZwbP
 oh8Z0GVIBTZb34XQapQJ/Cc8NMSc6thxgEsgQUYNQcR1lgRqwCY4KcosdJFpWo+DlmgQ
 eRBAMO05IGodFWFysR4D+7FGT50746wIbh4QySN2wsOGOenRi1KIej0OqRFaxZbG5kzF
 UnOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=/huzVrn6iDinNK3gESNF6fMWuVj1J0a8E8YliY+JUMI=;
 b=Uv1lAJLp5EaYrBaEojPZ2Ce33+AIEoWqOzMXnD09Q7FKXzLGbRZc7DSC4M74WwFtVp
 7hE1/hCQEIPPeLqnYnLKAdOOr7Z4obZm2Um6A2ULDGLcgflEAfzsPLcfzLChlvYnJzoK
 F2cn3ILeVn6cm6eloeB8K5IercF1AWYx1FFT7D5gEjKSorAaKhjG1bmjZOa8rUjB5eHG
 +PTX1+ResPyc5T+ME/4xLKq3v5xeOoXmQCLKcUczv7ZctmIi1zFEfd0a4YNKOXie6cly
 5C2Uw8xwUYiIg5t5bjf9ArahaFe3ktYvGoNmOssLiIX7atuZV12Xv27X8ZAcDROm/aPx
 MW0g==
X-Gm-Message-State: APjAAAVxprX4APXyTBAYo4YV/EjTbg5UKgQlc45KIBbj6MRkUuqE5uaS
 tsz+fSz7LbNNUsFdQTkk/viiI1C8LXJ554hrxf2tSxtLbXa6d4pw4tWq0wcQdqmf6RSpx8+2c+C
 f8P7Fs47ByQACS2glvaUZBMrD6ayLRR6ctObeii2646UpjGqv/4Qljhqsx+QuwE3T3+J4ATlNTs
 K6p2s147j4aRmljQM=
X-Google-Smtp-Source: APXvYqza4RkKEiX9RSMJ4O0WeYRSe7jZPKwJC2E9aqA1oTke3kgtphbjO4en0GBzP/IdlZCHDhS+pYVnwN9x8xEl
X-Received: by 2002:ab0:1c2:: with SMTP id 60mr34283049ual.78.1563904765450;
 Tue, 23 Jul 2019 10:59:25 -0700 (PDT)
Date: Tue, 23 Jul 2019 19:58:43 +0200
In-Reply-To: <cover.1563904656.git.andreyknvl@google.com>
Message-Id: <28f05e49c92b2a69c4703323d6c12208f3d881fe.1563904656.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1563904656.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v19 06/15] mm: untag user pointers in get_vaddr_frames
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_105928_834112_05FCDDD7 
X-CRM114-Status: GOOD (  11.22  )
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

get_vaddr_frames uses provided user pointers for vma lookups, which can
only by done with untagged pointers. Instead of locating and changing
all callers of this function, perform untagging in it.

Reviewed-by: Khalid Aziz <khalid.aziz@oracle.com>
Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 mm/frame_vector.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/mm/frame_vector.c b/mm/frame_vector.c
index c64dca6e27c2..c431ca81dad5 100644
--- a/mm/frame_vector.c
+++ b/mm/frame_vector.c
@@ -46,6 +46,8 @@ int get_vaddr_frames(unsigned long start, unsigned int nr_frames,
 	if (WARN_ON_ONCE(nr_frames > vec->nr_allocated))
 		nr_frames = vec->nr_allocated;
 
+	start = untagged_addr(start);
+
 	down_read(&mm->mmap_sem);
 	locked = 1;
 	vma = find_vma_intersection(mm, start, start + 1);
-- 
2.22.0.709.g102302147b-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
