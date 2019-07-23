Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B24071E92
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 20:03:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lAdfMpghpfD6gjzr0Qpmecrkud8bVzxo8JBTfATLBCE=; b=um7AFEX1eiN3KP
	dTlcMUYqvxmB5EVT7aP3jH7njfECRylH+3jy26sb5AqYF9HrWVjw9pG008WLMdJgXJShcdfTapwHV
	/uTntSPYzaOwzvLB2A435mQXA5O6Ot4VMnhBC4UPZSDzdMoRqXpbA3qZvROAPY6gwDfRASK4K0eae
	EYzUepj3JtEunXGm7Qm+ikHQuonshMUeQoRpcwGxyOngerRca4HKp3DnhHATf1k0llyn+3FwXInQ3
	OhbqRl+NuKNJ8AZRKsL3eB+qnRT1wNFjpMvBvKOb5if2w3KbUXivwWHyoO3rs3/ALxKCyZ3m2KTrR
	jzh0ZnGJxBiOHKPOZ+RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpz7u-0000tN-6o; Tue, 23 Jul 2019 18:03:02 +0000
Received: from mail-qt1-x849.google.com ([2607:f8b0:4864:20::849])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpz4b-0005gA-T5
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 17:59:43 +0000
Received: by mail-qt1-x849.google.com with SMTP id x10so39051717qti.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 10:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=bNeVrTrPvpjyJWHVtXYqgQlj6F1/0IzkZ0bc3aEFST0=;
 b=uWaCwrDkBN5GRSLhaw7WQwMKcK3AhPqO/fzElVN3JcPy98UFLj7JeXsg8P+SLlr/8N
 uTaOa6VggUuncDHcvq/dm+VjbWoXQVCEMVj3yqEv0lzhkp6ZqhxIJZIXWJox0QqwZPpw
 oblQlXNCYt4tHVrvlJypYdteLVvehIkVLfAlFHjgdjHvnPpCAD6GJOEurxmklM0IOqwa
 r3we5GB8/FJKwWzwzqUCJtO6E9+uXUbwxjMkihzlNrMKNzLhjZggf+0ZB/LMAafHfS91
 EJUlnCmBt8+isj3aFtdbAWI7Fy268Gzi52Ek2+IZaH/c0AJ5vAsChMY+9qCOx6dYD5bK
 14lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=bNeVrTrPvpjyJWHVtXYqgQlj6F1/0IzkZ0bc3aEFST0=;
 b=LU/sXqHoXnqpa+FqdOAQVcup6g5fcCJG6Z59LmQH6H+WEo5Idonf42vI7iip5HgQRc
 PAtAsORWTzfhEj6tRfgfza77aEtK2WwtBi0KG6OPNMXeaDsFOzAOIJNIW7Cm3K+TMdJ8
 7f46cRg6veX9edZ0AVLjyudPq9o+LvLVnI9Kr4mOSZ4lcGAojEb+5R5o/rVpoxy/xcUM
 pYcDbzkwDTU0fMdywDT1wPO20Jq3QcASaUv3C645Dk5hQzGgcjGNQ2d8pSAM2FHtwFYG
 cZfe8zOrsjTj4PTdFJaG9o2uwXyhB0MAQheT2LDJ+IQ1jtR3qJE9gl5MntljWCEzoOr4
 pZAw==
X-Gm-Message-State: APjAAAW/L/hxX6gs+fr6WWWqnlGgcGWFewUZbZAUsfkyugPrAv3fKVBe
 ZV5/lI7j/oDs4GSLN0I8tR7wPLJPSt0ngUkZYqsBrJZhfioQ8manNNMFv3HlNF4VHnPPoaSfSxa
 ZkXJBR2s/qRu+hJF/tDGu10AhszAPZ0ZeNTfmNfeGmzVR38OmTeCMonxIAOvoCB95vR1E26KcO1
 fedn3ULYSHB14N2VI=
X-Google-Smtp-Source: APXvYqyRt/sslYOExeWvOFH4KfKnKxW+V8w8qG436u1Li2H+fm4BIS46hHRf2O8j3VSTAztC1lSBD2N1vfHNfs72
X-Received: by 2002:a05:620a:522:: with SMTP id
 h2mr54247961qkh.329.1563904775319; 
 Tue, 23 Jul 2019 10:59:35 -0700 (PDT)
Date: Tue, 23 Jul 2019 19:58:46 +0200
In-Reply-To: <cover.1563904656.git.andreyknvl@google.com>
Message-Id: <d684e1df08f2ecb6bc292e222b64fa9efbc26e69.1563904656.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1563904656.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v19 09/15] drm/amdgpu: untag user pointers
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_105938_023486_95A2BC1B 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:849 listed in]
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

In amdgpu_gem_userptr_ioctl() and amdgpu_amdkfd_gpuvm.c/init_user_pages()
an MMU notifier is set up with a (tagged) userspace pointer. The untagged
address should be used so that MMU notifiers for the untagged address get
correctly matched up with the right BO. This patch untag user pointers in
amdgpu_gem_userptr_ioctl() for the GEM case and in amdgpu_amdkfd_gpuvm_
alloc_memory_of_gpu() for the KFD case. This also makes sure that an
untagged pointer is passed to amdgpu_ttm_tt_get_user_pages(), which uses
it for vma lookups.

Reviewed-by: Kees Cook <keescook@chromium.org>
Suggested-by: Felix Kuehling <Felix.Kuehling@amd.com>
Acked-by: Felix Kuehling <Felix.Kuehling@amd.com>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c | 2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c          | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
index 1d3ee9c42f7e..00468ebf8b76 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
@@ -1103,7 +1103,7 @@ int amdgpu_amdkfd_gpuvm_alloc_memory_of_gpu(
 		alloc_flags = 0;
 		if (!offset || !*offset)
 			return -EINVAL;
-		user_addr = *offset;
+		user_addr = untagged_addr(*offset);
 	} else if (flags & (ALLOC_MEM_FLAGS_DOORBELL |
 			ALLOC_MEM_FLAGS_MMIO_REMAP)) {
 		domain = AMDGPU_GEM_DOMAIN_GTT;
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
index 939f8305511b..d7855842fd51 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
@@ -291,6 +291,8 @@ int amdgpu_gem_userptr_ioctl(struct drm_device *dev, void *data,
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
