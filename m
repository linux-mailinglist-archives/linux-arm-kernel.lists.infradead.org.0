Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5829335B6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 18:57:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Q8T+FboazPkIvtqDUZzSpqF7wWO8iKWbGWnVeUnagc=; b=jReOIVLsBB3RHZ
	gTUYH7sHrZk6AMKA3jO4GnecYcLabMvO20RicDUndmIdwjAz2ORgtHC0bmUbieF8DnNrLOkeoadNF
	X8Et+jcUA+PjR0cPvOZAUjSM7DMCr120fZVuBZ7RaKMYDYJgrh7n/Fg0239k4nCoolcfq/j5nOj6L
	5LmAsBJ4knIyNwTHx3NwrDRbvbj8uagh2bjCXqoELQ/DLscmweFuBd8U849rV1x6yAHCOoAM6QMr8
	i5++YPU2DbNgcjmIzBuL+8vmOYw2e2Osa6jy6qVpcDLi6HqcdwF0HaWbZQL3sVRXhvJfWbM+J0QCD
	s2F/SSozVEFc5c6sIWZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXqHH-0002Pc-Fh; Mon, 03 Jun 2019 16:57:43 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXqFZ-0000Ki-Uv
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 16:56:17 +0000
Received: by mail-qk1-x74a.google.com with SMTP id b7so1004148qkk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 09:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=QTQ4ZZ+1ONHvx3iNcSe/c62gqBzIbuX20WtdiRnopfw=;
 b=Iulw2LDXuMXrguiNT2nc8pImmlAd9SEaHxzy+PIXZoC7Ry1861+IgSJT7msXK0lxjW
 Stlg9JACJI0q7DDqW7dFD1lXLlRa2BWigOxwo5Vw8cFe6qNirKkII0FhPNgtUk9+cp1T
 aHJGoLoDr4Q8979Fk7TFLPwhp9/TzWuYwglUurKj3rFU9GpRJ5xL6D7/jxXgMSu4llum
 hXs/FNVkTTazIDAfHhBMirRaAiVUM4CzdwvnR1yvQzgHmFdNai1A63k4wvi7etXyFGuo
 QDD/dhSJypo/bxB/7BkdNMWk1BD1fsQcPpD2mwu3O8zxH9SkplM6OKzkYqDvbWZfOgAq
 9GzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=QTQ4ZZ+1ONHvx3iNcSe/c62gqBzIbuX20WtdiRnopfw=;
 b=GEIeY6pRs5zhEYJtQGjwS+1vjjnlI0C84ejdzDghu7IsNe98jVprqgXCd9fwrqHsAj
 PKdKZUQGP4vNy+nJsSVe01HAhkG3OK47baTkYEd9a8USdz8Wo+rV88VDZxg3jUJuX7Ye
 QMV6amWAP3GQQoZu0B65phEvRzc/S73GX69i4L9cOCyxDt8wW7pxEj1j2GNTg4DMlBUL
 mIiUtU/ZMjwNWpTXKnc9fciWslEM59BNotE1jYadLpUvz8Mr6rRhlEJbW2UddfgIg+Tb
 9cDwTmEANRI0O2+rr/I5uzwdqrIfTW/TUYaMgqyVJrsrC8SrWHs6OFrdHbqJ3eN9LZqG
 lfqA==
X-Gm-Message-State: APjAAAWIIM6y2l8h6wuS6aweD+BgZ7uH8tuQzP5tffgCX3dn+dXt/0Ua
 ST2EqgvznfGWJBCaRPzLhgdJZnTfRlSHow36oMLzLSZ1Vi+wg0fKAcu0FZ40KeGTkJaeG9muE8o
 EEtjz9bjWhViuAZZfyNNJ57MYbwlUY9xPiSq6HmtkKU9hW2iZ73WFhcBEGIv7piiNHFba5iyUAY
 vMH11Y6M6cEYAtli0=
X-Google-Smtp-Source: APXvYqynCi8uC9mwY5hf72ttWfEiYBsQ+6wl0nvKi3Uj+AQb+Ufw5GSOsuV9qYkE0ai47XUYEZWA+IZ0Az+FoQAg
X-Received: by 2002:a37:8002:: with SMTP id b2mr23304828qkd.289.1559580956267; 
 Mon, 03 Jun 2019 09:55:56 -0700 (PDT)
Date: Mon,  3 Jun 2019 18:55:12 +0200
In-Reply-To: <cover.1559580831.git.andreyknvl@google.com>
Message-Id: <47d4e95b61013933ffe4f0be8832d03179d94b27.1559580831.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1559580831.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
Subject: [PATCH v16 10/16] drm/amdgpu, arm64: untag user pointers
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_095558_420138_BADB0293 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
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

In amdgpu_gem_userptr_ioctl() and amdgpu_amdkfd_gpuvm.c/init_user_pages()
an MMU notifier is set up with a (tagged) userspace pointer. The untagged
address should be used so that MMU notifiers for the untagged address get
correctly matched up with the right BO. This patch untag user pointers in
amdgpu_gem_userptr_ioctl() for the GEM case and in amdgpu_amdkfd_gpuvm_
alloc_memory_of_gpu() for the KFD case. This also makes sure that an
untagged pointer is passed to amdgpu_ttm_tt_get_user_pages(), which uses
it for vma lookups.

Suggested-by: Kuehling, Felix <Felix.Kuehling@amd.com>
Acked-by: Felix Kuehling <Felix.Kuehling@amd.com>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c | 2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c          | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
index a6e5184d436c..5d476e9bbc43 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
@@ -1108,7 +1108,7 @@ int amdgpu_amdkfd_gpuvm_alloc_memory_of_gpu(
 		alloc_flags = 0;
 		if (!offset || !*offset)
 			return -EINVAL;
-		user_addr = *offset;
+		user_addr = untagged_addr(*offset);
 	} else if (flags & ALLOC_MEM_FLAGS_DOORBELL) {
 		domain = AMDGPU_GEM_DOMAIN_GTT;
 		alloc_domain = AMDGPU_GEM_DOMAIN_CPU;
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
index d4fcf5475464..e91df1407618 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
@@ -287,6 +287,8 @@ int amdgpu_gem_userptr_ioctl(struct drm_device *dev, void *data,
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
