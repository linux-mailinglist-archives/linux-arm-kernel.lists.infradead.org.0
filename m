Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8C5FA4F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:28:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TOZBnYB8Ekc+4TyAJEIvvbiZ2unK0esiYOfqvEu58l0=; b=hTEc5ZbAwxYcpJ
	2eLppvmcdYv5bSECJrSNoXzw5DWujaXiIUXPQjcZizsAzOSeNYfDALM43C6AM7WgczSX3X69B7YBt
	3oGeLGE7kedScBcxA7FMcZOj5ZeBVgf7/ETlWFeIAAhnaeszqYCE9uGFx91pLm6MAUDGGxzraLYm8
	jWsMJKcESF/+Su54JbsEn1aL719gGxejv+m6Zw09qAOM7opKOVRP3S7hIo1c7XfAttBw4wyjSvxoF
	KnKfWVsWr6wXOXApNcfPpfUMpThNl2R+xCq1+3VrfcgP0FAIl3rE+LJ2vKMOT5bpC1Zp9MuY5Vtbm
	jMQi7Ug7Ym4NyWc3mlZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSoD-0004uS-5H; Tue, 30 Apr 2019 13:28:33 +0000
Received: from mail-ua1-x94a.google.com ([2607:f8b0:4864:20::94a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSlg-000285-Px
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:26:06 +0000
Received: by mail-ua1-x94a.google.com with SMTP id 63so1912072uat.14
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 06:25:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=/erHdYVyxDvhPu3v7RMhd3dO9bpNIdyHyuRFKthPw/o=;
 b=eEiOGFetYWxih+SqIZFzGNfWcb2WG27fgr8umX6U99zGn9TVk7qoyvUJvyLbyO9646
 My6AFQXfx+E54pBbdCbbmUTy552nSiekbu8p+Z3EjOZkkRzKh6/KPKq2xMXR6PGCbeOC
 fF7Wnybo7p7oNGCxEtdGcC/SjUjb33krZmpxfplFBazN0BgfioX0FSzySTA4N97gTFrT
 W6ijBCliSwnkOOpdiWk5kSemwYixok6PKUQxZHW6VplcdEwGvrCZqCKdW+XjRywAL4b4
 tr3KgVn6nyJgYRcK+gwURasQznomoMLJd50NL8tFT/I0TUKbeATfwfeLLEXDX2wH0kWJ
 cXSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=/erHdYVyxDvhPu3v7RMhd3dO9bpNIdyHyuRFKthPw/o=;
 b=hmh4iIh7MB8s6fHZraPpDwq6E8gsXqoir8wySHyVcTpFYSOna5XXKxXo+mYzQetg79
 HuEayj+4wVGDutKzPdmJtjKiAOwV2n7Nx2PSDDWMVD4boZdiviGV8c50qWsHMtlVML5E
 3UXoeFbBzIGrRP0+cB2U1RhKPaTvs64lxUTrcRWiJd3CL3VMrgsI0SYm64kww+vkxaL6
 tLrqeMXCy8iSTIJg86TQml5Srm9R7MSCaUxILn8JPY+jJ5BsW+I8IqRIzLTRryvQGM1f
 HbvsRorBn98+17RpLySl9lqGHWWJWbexhmhAM318TIHTrlTaLbsSqH5dUr40Chi4anub
 BwVA==
X-Gm-Message-State: APjAAAWFDWqU148mNop4LG4+7+h7YdbCT7rcU3KvLXyaGb913GX9m4C/
 Ks3McwzV4u0StVCEmAN9k2eDsQfDNmwzYbJnh7fWga0RICPeUHxsVMh6Mj4PTTLYk2yFBKUvOln
 ByF0Zb0cLhxT3ruRZwWUS6JQdj7CVcb67auYN+w3MngnTk0l3G/IzmWXCgEz2n1XZEKoNBOgMUP
 5z+0cD+/pWR7Jiw70=
X-Google-Smtp-Source: APXvYqz67px3tLUaZFP489IW2cHQSs+LvJjC7bfPcwFfPsiBelEm070ukqvUpFmAC3UEaQxQ+Sud/QNcvCPvUR/K
X-Received: by 2002:a67:82c8:: with SMTP id e191mr36596964vsd.24.1556630754448; 
 Tue, 30 Apr 2019 06:25:54 -0700 (PDT)
Date: Tue, 30 Apr 2019 15:25:08 +0200
In-Reply-To: <cover.1556630205.git.andreyknvl@google.com>
Message-Id: <9a50ef07d927cbccd9620894bda825e551168c3d.1556630205.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1556630205.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
Subject: [PATCH v14 12/17] drm/radeon, arm64: untag user pointers
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_062557_442305_383E7B81 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:94a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Koenig@google.com,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kostya Serebryany <kcc@google.com>, Chintan Pandya <cpandya@codeaurora.org>,
 Felix <Felix.Kuehling@amd.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Kuehling@google.com, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>, Deucher@google.com,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christian <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch is a part of a series that extends arm64 kernel ABI to allow to
pass tagged user pointers (with the top byte set to something else other
than 0x00) as syscall arguments.

radeon_ttm_tt_pin_userptr() uses provided user pointers for vma
lookups, which can only by done with untagged pointers. This patch
untags user pointers when they are being set in
radeon_ttm_tt_pin_userptr().

In amdgpu_gem_userptr_ioctl() an MMU notifier is set up with a (tagged)
userspace pointer. The untagged address should be used so that MMU
notifiers for the untagged address get correctly matched up with the right
BO. This patch untags user pointers in radeon_gem_userptr_ioctl().

Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 drivers/gpu/drm/radeon/radeon_gem.c | 2 ++
 drivers/gpu/drm/radeon/radeon_ttm.c | 2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/radeon/radeon_gem.c b/drivers/gpu/drm/radeon/radeon_gem.c
index 44617dec8183..90eb78fb5eb2 100644
--- a/drivers/gpu/drm/radeon/radeon_gem.c
+++ b/drivers/gpu/drm/radeon/radeon_gem.c
@@ -291,6 +291,8 @@ int radeon_gem_userptr_ioctl(struct drm_device *dev, void *data,
 	uint32_t handle;
 	int r;
 
+	args->addr = untagged_addr(args->addr);
+
 	if (offset_in_page(args->addr | args->size))
 		return -EINVAL;
 
diff --git a/drivers/gpu/drm/radeon/radeon_ttm.c b/drivers/gpu/drm/radeon/radeon_ttm.c
index 9920a6fc11bf..dce722c494c1 100644
--- a/drivers/gpu/drm/radeon/radeon_ttm.c
+++ b/drivers/gpu/drm/radeon/radeon_ttm.c
@@ -742,7 +742,7 @@ int radeon_ttm_tt_set_userptr(struct ttm_tt *ttm, uint64_t addr,
 	if (gtt == NULL)
 		return -EINVAL;
 
-	gtt->userptr = addr;
+	gtt->userptr = untagged_addr(addr);
 	gtt->usermm = current->mm;
 	gtt->userflags = flags;
 	return 0;
-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
