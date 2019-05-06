Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 779C915185
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 18:33:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GwVnEy2auxVt+3APYNGfFD+JIajHjExX8AoDeD3rHZI=; b=PH8sRNRIJCaQBp
	BX/HGouUSp5ADojhhWAGa1N3tm0hlY5q1xeycMnoYATshPOWAwZByCumX2HmI05NKBzk2DTx60XEg
	MXAy/2oYilVxB3/pCWRMwjFEDp9jqIGhMikaAZ8Sf36utvmIJWyKFXd4zHrVv/BIJ/x6t62LkU2aw
	Ym02yQyoSfif2K8dToapmNnWgP9AItZt1ISCTN+qvyBX5hKga6YuiqAnGS1lpcaW82Tu8yjf/b7y5
	LZsmlZz5bKpHuEfXBqOZHkCJrxEKVaJ8cJVU5iZAEEHKjbG0zYezniPsEKpj6G2sdgu2hq2sDJzy+
	r/2BwqMxyU0gNIWw+nHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgYF-0000NQ-40; Mon, 06 May 2019 16:33:15 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgWp-0007PX-R9
 for linux-arm-kernel@bombadil.infradead.org; Mon, 06 May 2019 16:31:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:From:Subject:
 References:Mime-Version:Message-Id:In-Reply-To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=djVJuNgpi4hl4AvZn47gmwsvHOuvfT3jzvA6F10IO5w=; b=zZwOtFKglVagfl3dZQd/d8t03
 uxJ/uaEnO9o/fkeaERI6ahna3s1Wx4/4frYbqYYeUYNC+BuyAuExWRWJg6DzGQillEzsocXVgPK2Q
 VkPcojk3BTet1SfwU9SPY9Xaz0RNykzImON+uANTyLKZnykDqNDRLhS+DzXW/Xjm4zfUFahu3czGg
 0Cmr66sNZH4ncgJ5AfIoibujVjvNLZaKCt/S8alqcpZi3Fqk/b6dpmde3CYZy53RzXM/+pruXlnnJ
 /8FKz2MifrwIo5CoNwaUVp9hcbc6mKOt71PEaGy8US67K+WS3FU3x9ljHzw3WaePAgRYJxTXaH+ko
 4yVRH4iJw==;
Received: from mail-yw1-xc49.google.com ([2607:f8b0:4864:20::c49])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgWo-00064X-IX
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 16:31:47 +0000
Received: by mail-yw1-xc49.google.com with SMTP id z193so20523531ywd.22
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 09:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=djVJuNgpi4hl4AvZn47gmwsvHOuvfT3jzvA6F10IO5w=;
 b=fxyQnlZpVUSYjQyqKRvVjTFbSpnAaN40vHoDyTt86Wr9XkiWv6H47O5fV6+YfqSjKb
 ya9LAHunO5tkq38NxGwIBHRUa8t3xRmbLIMp/Ei/Ay4bKwx0V2sP2cpbt1VZJxkDe/I+
 9QcnUwoNsbvRkE6TQ1eqETcSj1FHDhcRF+86nS+29Dm7yx2+fQzWUL/UiXGimZGBqjEk
 x92RLHdIO29i4yL8cPFFrUa5OfqGP4F8w4+T2ndS2TLCjkCTICe9DBa54uexWvxllQFG
 iUS8CZcMLYnxYz/mG/GVZOcto/nPYEof7WD9aPSyYBI6CjVI7kE5mMY0QntuPkboh2oc
 AONw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=djVJuNgpi4hl4AvZn47gmwsvHOuvfT3jzvA6F10IO5w=;
 b=f3hzB5aGk050ySEge9OJ6NvZLNS6Ne/QjW4utJv3A7nkjNuv2YCGbX/a8Q1WgCywon
 TUiaSU2d3oWxqfZKFGpWFFgRexerbKy1td/+cE8Aegj8Z6c+dOivt6fShBuDgl1kDCV7
 ARvIeOjujC22fNiDafUkNwUqkw7iIwrtP9IzLZq59igoZQCtOD5HmlKeBFs8/5+adrGZ
 kSHGvWsV+YyQI199PHApEQmjPlt3jozYx3PxhDVzz7B+zL51DjneBtlwK8Fe1+a3NnDD
 T5dLOK8rrnDxPvfzoxNWlfMOotus/how7vlgxzdH+18PDGXjtlHn2vTAr4ZLP47E0D7l
 tynA==
X-Gm-Message-State: APjAAAVXY3BPTUAQFz8yakqvWPjSsV7sK/obB3/3jt9gCBtt7MQkAawW
 Y9w7V+Keb8RQhHOb4zMQC2uBsbYRgn5JCSmVP8ZDrs/qz99vZsqH24eYOV/zMmxFtpnvIDiCEp9
 VUnkJV/K7DxEYVw5kcUjR2Bxr8ZcVZ2X+3mBotWlEuUmfNWbL1dSgswancyFDqhrRWP5DH2gKAU
 s8rwS3la2GvUJfewk=
X-Google-Smtp-Source: APXvYqw1IXBcBTBvqlPhK0DepGTPQ34Nul5KO/wJ08CLzILZcvtlszbJT4QAmRZRcoo1MWPuYSMoe4MfIRPtaEwV
X-Received: by 2002:a0d:e60d:: with SMTP id p13mr8305580ywe.155.1557160301102; 
 Mon, 06 May 2019 09:31:41 -0700 (PDT)
Date: Mon,  6 May 2019 18:30:57 +0200
In-Reply-To: <cover.1557160186.git.andreyknvl@google.com>
Message-Id: <84676a97cec129eb7a10559ceae2bec526160ad6.1557160186.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1557160186.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
Subject: [PATCH v15 11/17] drm/amdgpu, arm64: untag user pointers
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_123146_617786_3E9688FF 
X-CRM114-Status: GOOD (  16.63  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c49 listed in]
 [list.dnswl.org]
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
 Kuehling@google.com, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
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

In amdgpu_gem_userptr_ioctl() and amdgpu_amdkfd_gpuvm.c/init_user_pages()
an MMU notifier is set up with a (tagged) userspace pointer. The untagged
address should be used so that MMU notifiers for the untagged address get
correctly matched up with the right BO. This patch untag user pointers in
amdgpu_gem_userptr_ioctl() for the GEM case and in amdgpu_amdkfd_gpuvm_
alloc_memory_of_gpu() for the KFD case. This also makes sure that an
untagged pointer is passed to amdgpu_ttm_tt_get_user_pages(), which uses
it for vma lookups.

Suggested-by: Kuehling, Felix <Felix.Kuehling@amd.com>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c | 2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c          | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
index 1921dec3df7a..20cac44ed449 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
@@ -1121,7 +1121,7 @@ int amdgpu_amdkfd_gpuvm_alloc_memory_of_gpu(
 		alloc_flags = 0;
 		if (!offset || !*offset)
 			return -EINVAL;
-		user_addr = *offset;
+		user_addr = untagged_addr(*offset);
 	} else if (flags & ALLOC_MEM_FLAGS_DOORBELL) {
 		domain = AMDGPU_GEM_DOMAIN_GTT;
 		alloc_domain = AMDGPU_GEM_DOMAIN_CPU;
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
index d21dd2f369da..985cb82b2aa6 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
@@ -286,6 +286,8 @@ int amdgpu_gem_userptr_ioctl(struct drm_device *dev, void *data,
 	uint32_t handle;
 	int r;
 
+	args->addr = untagged_addr(args->addr);
+
 	if (offset_in_page(args->addr | args->size))
 		return -EINVAL;
 
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
