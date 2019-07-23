Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1DC71E93
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 20:03:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k1IP6JHtt0YpWpOriMHnbroSB2OLNPRJ2oauDiUClv8=; b=R7Ib7KeiVXQELD
	WGKSZ0qXCwmPikEmmw7FaiAbqtqyidbt7DH7pF+jJQn95noO+h0d0qrQUdT0DsU/BfzwGr5OoMSdo
	HA/eX08LYmANJ+1Ixqu9ncXWqUDDoqb3ghZPsubGESyvxraQrLCX1UBjGpqfpdQ0dha/kF2py4Tp6
	jP3UoZCjJw1OF2LwfYaL4awp2GjV8TN+2Hu5oc/BIAVTTyO+t0Q+TDrvAINxkxxqrfJnX7TC5YXPT
	PTRE+8EmmDUv/OVme8BU8BhpUjon32HFCdIQWNu3QmLyvEsMO+l03EwMYltuHri5vE75l82xeqUwF
	MzGscGNzCp643APHvc0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpz8B-00019d-4V; Tue, 23 Jul 2019 18:03:19 +0000
Received: from mail-yb1-xb4a.google.com ([2607:f8b0:4864:20::b4a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpz4e-0005ij-Er
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 17:59:43 +0000
Received: by mail-yb1-xb4a.google.com with SMTP id i70so33953481ybg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 10:59:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=JHpRt1iV1Yui2063ArtK5NZw3fPfTbQsXHZ/X8tSe2c=;
 b=a1WmmrmprQZ/rcrg4bnGXYSWuW8VRJo8q/rb7ZTLQKZa1K7I67ixfos045Wbs17Hsc
 4ubobzNkIuAipJMS7ZPZPbwqhOEcQBYGSdXPH8NmRc6nBI3x8EfWx1KUwQ8GdoHMrOVu
 pQBBRoSlOoWQvrJK6Ndgh0M+u5SrtS+Z7XLFtzHXYzmOZcoQreZcqxEy8gyvJGE0ittV
 1ErCh2wjdbyE4mfBH/bts1VkhHwv8KlRuO+94TszgBwo8vjAMA7AFwRnm9ELenbWUlad
 Ar6m6acLtYRugfggNK1CttVM0dqBedFHVAahPgUmqPuarVGgg9aYEhjvXatkNn9RUbXS
 DjvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=JHpRt1iV1Yui2063ArtK5NZw3fPfTbQsXHZ/X8tSe2c=;
 b=qqdZoZ0PBuBMF0scUTadsF0iE+QJuG+p3worNVsSRsG6+VvMeh1ZA5BbZ1m5noFjsH
 ujSsRe7LmeJtYC4iysqTJoxRau+5Rw54LYEgRqsz3NEDd/ieWW/Qm13dlJx3xbxJOwLQ
 hJP7J0qelAXpjmoA0yVkXkfn1yAxkAqgLuvwotVOv4xr+YEtwFbXoNMoQDjAvXYovKQQ
 /hFBdAJc1hTtdyprpkOv2MomBly189LTB0H7cuiifO0HQqez+w/XkZMtrznyMkWHzgOa
 yH0H0a7siRSkJhvvfeHM6coGv0kPOa3/vy8IO4tTwhzCzEO6fZXvdPn9SHEbPMVzeFFY
 uXZQ==
X-Gm-Message-State: APjAAAUINb3nCVKLMmOJ//FvHiv00XpBXaG92jwDzoAQxCS8Nlw68FQC
 6oHg4LHYJn7YUHUxMDGcYbKjC3V6edPozcgJp3Zq/aWQx5kNqxxYCXApL7w3rdEmNUeZyD5aEQ/
 Adj1gaej6CoOyixsBnXvoTg8CQPO7WCV3Qx3x5pZ6q3G5CtGk6ixLEc1/+gfBlXhWGHXuptlQoR
 jzj9SMnFdVVRnQlp8=
X-Google-Smtp-Source: APXvYqzQ4z/ZiuFK+6sqRZERC5QgYRRFA4U1Dnbp9V3f1PKQeQRLZSu3TG/nr3g90hvkMvcrT8eNvmOVLDqS9X26
X-Received: by 2002:a0d:d616:: with SMTP id y22mr43437325ywd.365.1563904778592; 
 Tue, 23 Jul 2019 10:59:38 -0700 (PDT)
Date: Tue, 23 Jul 2019 19:58:47 +0200
In-Reply-To: <cover.1563904656.git.andreyknvl@google.com>
Message-Id: <c856babeb67195b35603b8d5ba386a2819cec5ff.1563904656.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1563904656.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v19 10/15] drm/radeon: untag user pointers in
 radeon_gem_userptr_ioctl
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_105940_549793_ACA7A3C9 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b4a listed in]
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

In radeon_gem_userptr_ioctl() an MMU notifier is set up with a (tagged)
userspace pointer. The untagged address should be used so that MMU
notifiers for the untagged address get correctly matched up with the right
BO. This funcation also calls radeon_ttm_tt_pin_userptr(), which uses
provided user pointers for vma lookups, which can only by done with
untagged pointers.

This patch untags user pointers in radeon_gem_userptr_ioctl().

Reviewed-by: Khalid Aziz <khalid.aziz@oracle.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Suggested-by: Felix Kuehling <Felix.Kuehling@amd.com>
Acked-by: Felix Kuehling <Felix.Kuehling@amd.com>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 drivers/gpu/drm/radeon/radeon_gem.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/radeon/radeon_gem.c b/drivers/gpu/drm/radeon/radeon_gem.c
index d8bc5d2dfd61..89353098b627 100644
--- a/drivers/gpu/drm/radeon/radeon_gem.c
+++ b/drivers/gpu/drm/radeon/radeon_gem.c
@@ -296,6 +296,8 @@ int radeon_gem_userptr_ioctl(struct drm_device *dev, void *data,
 	uint32_t handle;
 	int r;
 
+	args->addr = untagged_addr(args->addr);
+
 	if (offset_in_page(args->addr | args->size))
 		return -EINVAL;
 
-- 
2.22.0.709.g102302147b-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
