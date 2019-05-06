Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F092C151AB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 18:33:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K0rztoPO83vEZaw77NqB0mDQ2vbcKw7Ml9Hg0rqrzyU=; b=Z91oZziqi4OTp5
	hzOMYqiToP8u2HJLKo+O7T/Kf4CAv3C43MyTtrkPUfDJ+u/OnZAirkIkcx66VD5XSPdh+QUO8qrq7
	n/8HsIwhcQng1EnY0j6Gfz0xElIPOvhq8kAJ/tmEYILOTif+PwDJHILRd2Sqc7XrY4i6tOBfEaT/P
	51L4ZVBkzRj3P7M3foqyGFame+iPw/l7YZIGuAZq97bBVWpCXDn28//LEcM/pH9mUukWuyt6QviF0
	tFhEahp/latHuTf/Qf+pvnz2s5QqlqXGXWLmiauXGsAMDoRUoS6as0SZYofZQ6qMpA+x0M9Cw9pzE
	ZHBbjKxEKaqpfhBFyyQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgYk-00014O-HG; Mon, 06 May 2019 16:33:46 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgWs-0007Tj-Qb
 for linux-arm-kernel@bombadil.infradead.org; Mon, 06 May 2019 16:31:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:From:Subject:
 References:Mime-Version:Message-Id:In-Reply-To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eYbhxmTmdaiTVlq2aRmj2n9QkL6CX4/S4opJ9oDHFhE=; b=Gta2PKbjFfzh7TKDCrYRTM9VU
 Zc9j6wpVH74o10cYb/Pg7AvkLnWjI5UAUs0yFtpiNT4dSTxWX2XmUpLuqLAsAimOloKsieMHuG5Sq
 ykbncJn8OfIao7qR0lXPtFMX931JyjR17nL9QkgC9OAU4kRYrocP09EIhZ1uwGdh2KRxuRubBvfYR
 6OKMRNoTqZgkOTkRylZuItP+l5x7MQRhftAPbs2NxM3qUzWwqExvz1+jdl/5KvtZ7NLZRS/Tvy+Wn
 9mG2XHAaGrZxyMdkOKVX1LPeJP/9PRzjVumx1JhTOLEmtdNPDPDfhfQR7DFqSbSBOKpKcEb9s10bH
 8vOIpnpPw==;
Received: from mail-ot1-x349.google.com ([2607:f8b0:4864:20::349])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgWr-00065I-Dx
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 16:31:50 +0000
Received: by mail-ot1-x349.google.com with SMTP id f11so7743679otl.20
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 09:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=eYbhxmTmdaiTVlq2aRmj2n9QkL6CX4/S4opJ9oDHFhE=;
 b=ZSFHbQPvMQhkrf29+rXmES4x80rxWQfO3CRg3EirSkEvMHaN6TChbsHuGqG8tqYPqI
 EOCA65HA1vwG2VBAq4EN+A4OM16jXXWhM8t5gUCVAGxaFpj7A96cWjckSSXVB9ifgUBP
 JPRXtbLz3WvjXz6TEKimgkTZH4CSKnvPcLkcG+UwjiKkw5OJqJ0dywa/iWl3MUEMoYLx
 yX/R0TAlH28V7Dy/lDpZ2CQKiEy+5rLrSQMyM1Z1SBWcw4VX+lOfzjflOLQGIDoNcKIy
 Lw+nu7cdx5CVE6SIyoKDCFcQFHBzYbom0atBI7FulTuqD2oMzEvZRTJLiB0pdkfBeBX2
 irnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=eYbhxmTmdaiTVlq2aRmj2n9QkL6CX4/S4opJ9oDHFhE=;
 b=EwAgygOrwo103yaEMMUcEtAh//kIRYaMBgQx3ST6b51oXUUPrA2z4Rnz5d1xpn8xRZ
 pEhnhM9hc0PhVh77OItw2fylKgjNXgSGBS3beof+2nDHe1sBhPioQ4hCt8VoSrz2X4mV
 YnIESFnERcQgSq/syiCZP9ak+8Hem/W7jv+AzvD6onyQ2/Vr1a3ea2zI+NxEI03nYZI1
 3MaJbiENVW7J3RaSUEQ6TRK1c/SYwKQgJy6BbXkPIt3JtcXFcYuxwfcSvMzK8M8s2CAK
 V/XUQg56LdjSVi5N2u2yMfT2PZjZM2/7AGFj4KDvxOnEAR02tw/2JMVZZWZT32kzg+S4
 Iztg==
X-Gm-Message-State: APjAAAVIcfCurON5lH1CamsBybEMlh1ABxDUMT5vFj54jS5lIitpdo79
 GPwrkrkAateePfkxrR25cDBof1yvQA4kWhJ+NdgK7iIPNXvVFtGQCPNhQlOr5Y+YhEBUNp0QMfg
 uNcNyS/9jSgyiiti5ermRZUb9wgJjtWlVfpg1d4kRl4m+uhi1X6qjKJBQtYSoHPEJujcO1sin0J
 WSyyACrS5Zypxl6ac=
X-Google-Smtp-Source: APXvYqzdzQlfaHkw0Qwo4QQtxGeWhxSSS13Ps1SOtj6ReWwWjESZwRkhi/LnnldOgTKgizVRLfncWXFiUgbgbiQx
X-Received: by 2002:a9d:7d04:: with SMTP id v4mr16958653otn.185.1557160304159; 
 Mon, 06 May 2019 09:31:44 -0700 (PDT)
Date: Mon,  6 May 2019 18:30:58 +0200
In-Reply-To: <cover.1557160186.git.andreyknvl@google.com>
Message-Id: <03fe9d923db75cf72678f3ce103838e67390751a.1557160186.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1557160186.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
Subject: [PATCH v15 12/17] drm/radeon,
 arm64: untag user pointers in radeon_gem_userptr_ioctl
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_123149_495778_18D9C056 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:349 listed in]
 [list.dnswl.org]
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

In radeon_gem_userptr_ioctl() an MMU notifier is set up with a (tagged)
userspace pointer. The untagged address should be used so that MMU
notifiers for the untagged address get correctly matched up with the right
BO. This funcation also calls radeon_ttm_tt_pin_userptr(), which uses
provided user pointers for vma lookups, which can only by done with
untagged pointers.

This patch untags user pointers in radeon_gem_userptr_ioctl().

Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 drivers/gpu/drm/radeon/radeon_gem.c | 2 ++
 1 file changed, 2 insertions(+)

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
 
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
