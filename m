Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2084249C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:46:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sUkMOGrd0nq9FcmR84apMTkkSxOIpZe58sD88P5UDgw=; b=q5Wt1Rf8HVeYIC
	c2CcyKjq+wTAXXKnLSF+nFJxztEmYUm1morLGm4hkIr7WCvpI0pxKn6lBSUC4wjJP4DjAs7eqqwJE
	yIl0gKl6edMXhHj8JTyv0JasA0FsbKbnbsv/nan5Yk9WZCSxJWcGj+0OjKcXFPqM+/lSgnFrNg1sz
	o0AUoA7rhwV2gAhRgYSNSYtY6gKK3R5+0X4NTAG9T6tpXHB7L3EukpQ8vtn6+iQVifMnCB6gqEIU/
	ive1iGDO8u15oshpyaFT4EPX8PBdNhOTbobb3XChS4uUJcD6tZrRNNtjLV7bLk5IWcSvyMVzXvL+w
	MljS2ezOtBL36VSzMtTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1hx-0001rS-Ii; Wed, 12 Jun 2019 11:46:25 +0000
Received: from mail-yb1-xb4a.google.com ([2607:f8b0:4864:20::b4a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1fZ-0006wG-V5
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:43:59 +0000
Received: by mail-yb1-xb4a.google.com with SMTP id v67so15172956yba.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 04:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=YVD/WVehggR5Wc73HNU/6Lbl/J+rO7t+BXcE3PMRRDE=;
 b=hBGTTVG6ghhZ3+0guLELKJ8wGbky2Qh0tZY2BONpI+zCvbTSjhlIF7W0/JokOx5TzR
 VO5Rbf4FBD1McYuvKbubXsd/VFsD/O7BipMIP18RAMdpnsTMlCRbLlZbiP7oKXwSNsh/
 7N4rlsaJS9M2NXxtFUlEJJPsr6p+or/nlT4Zv12ZmDZup6gUVLdgoPgHeFDcpmGNRrjd
 3ALIrSuYojaH/pslqsc0jXMozZhljZkCeYnT4XFg9eFUPMSJzEQdr0RcX9d6uIudOkk2
 t4M2C4U//NS1sNKKoHlt+ReZpRZW4iLnE+17ISBaStJwmRniOrfV+Za5ClmC/tGhrMxn
 H1LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=YVD/WVehggR5Wc73HNU/6Lbl/J+rO7t+BXcE3PMRRDE=;
 b=FMOxiEwrERG/Qul81j5zsMyK7DOvpMFVQbHRaUBdRbT8WxjvLH9YuAekXmPn9qLxIB
 eLorXHczeRSzwDXV5mjSHMIEUpaEInivDIX5kGYpWrqVvpowQXt2QBsqGLdBvWwRy45w
 uvQA4YEc4Z1krloZD7S7M/q0KxfvDF9bzTlhyrgAaK2kemICGkmJyAHRgF8zhYWJmcUQ
 TSZAy3jym2hXWe0a3rdyBAyIk8Wa35blAbqw9E6eACNOVNj6xJRkzYctKLsxo6IVMJC+
 U32pzSyNRMjoNITryp41fVihJSIrHNVmkcV2cQ6O0S4w+IvjsJXjG7/oVD/QtzzfkE8W
 KGkA==
X-Gm-Message-State: APjAAAVlEOgD2o9PoIZFaTw9+TbbRDKdzBhw2k/b9QBCIKNLfT4qjghU
 DLaJfiw1oSY0pTTHRKVeVgEoUq0vEk40MYdagxzKGSwh3e2IqKKvGODgQnPxYw0h81n8X8cCS3J
 XNVI/+EFMTycNd+nPZ6OiEcZMDxz0gSJnIozx44ennCdKkiMCvr7dhMiUJ2U4ijntnqzR4afvJo
 53pD+xAr3pc4SI2e4=
X-Google-Smtp-Source: APXvYqzC8DIDqxpBDUE3Cs2MqoYPwBYxauFh78Yi9sE2QOVumKFBSV5WM5ycdrw0GZ9JIDvcxx34zgkY7MRSX6GJ
X-Received: by 2002:a81:9947:: with SMTP id q68mr46506819ywg.197.1560339835908; 
 Wed, 12 Jun 2019 04:43:55 -0700 (PDT)
Date: Wed, 12 Jun 2019 13:43:23 +0200
In-Reply-To: <cover.1560339705.git.andreyknvl@google.com>
Message-Id: <4c0b9a258e794437a1c6cec97585b4b5bd2d3bba.1560339705.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1560339705.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
Subject: [PATCH v17 06/15] mm, arm64: untag user pointers in get_vaddr_frames
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_044358_030091_548AE17B 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b4a listed in]
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

get_vaddr_frames uses provided user pointers for vma lookups, which can
only by done with untagged pointers. Instead of locating and changing
all callers of this function, perform untagging in it.

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
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
