Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64661424AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:47:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=357ASgs6XByHbRqiJ3xVdIPHaAVCDTu32scDRZhmN7c=; b=ctdxo7gVywOaul
	Hoy9NR5xLzEoAss2FYffupYemUXZlSRkJ0mboQEoYHYUXMg1NtnncXZ9Y27sxZKOX8wkhLDnl8Dai
	k3WiuTdPOrgZGaygYsM1HhLwdpj7idrJrrlBp9fkka8svltXpcF2mEQ7qxF7SDx/YEwt6nUOM+6Xa
	LZuJQ5l6Of9nklb/St4MLuYJosBTrDtSbjyJ5xDm43YTfpD5qXjKIKXCQy1LcIVy9PdzQVdTmqhvI
	tMA7682thhRPtDp+Md/jLbWRYeeuSXz7ge7YZnfOwSlpysLGZZDMzIoGaayHoGVOmy2suGEGxSIJS
	00+6CAeLoBvmzsRD/FMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1j2-000375-DP; Wed, 12 Jun 2019 11:47:32 +0000
Received: from mail-ot1-x34a.google.com ([2607:f8b0:4864:20::34a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1fm-00078a-Ig
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:44:12 +0000
Received: by mail-ot1-x34a.google.com with SMTP id l7so7611238otj.16
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 04:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=9qcG2BgTwk3XlX0RcWVeDPHI8lhK5DjmwRDy1FE/sPA=;
 b=NtLJcSSFMHHu317AevzAQ/30ZKEUOStp0YqobtwksbYseFWqgtaBTFdiHMGyyyf7At
 YDJhLaCkyHoSzl2vKPQ0kqczt1dgoIP6M4Ipn73b/OGJITm9/nwiI3El0EdSAptKyxy3
 b89x7f/UmAMLYhahbGWtvHAEQvqe/KEbHnD9FTBIwA/5CD9mYyTGMXM5MGTE55QAL6sy
 I3ZLX4P7OcoVJPIKw9PZDhGTJmKOWHMHOrsjABMEwlErwDLgIe9+iGkSdgcah0pP/nqE
 b30uAgSnuW/RhTjVNWI3Kw8grpBZAvIwRQ2tzxM9A7fFKVadA2sdBJN3nJtOltKf1dPe
 uUMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=9qcG2BgTwk3XlX0RcWVeDPHI8lhK5DjmwRDy1FE/sPA=;
 b=b3vzYsfBCVzPI8le/BW9NQ7tIBrXlPXOcAhVMBC/HhHPLwyRiYcHNIQVljsBUeuBIJ
 JwQSw4Bk69n2NLF/KQwre7WIDdiKdpMjjK7cntS0upd2chk9Ss0LFfG7/nn8XSTIgHLd
 u2L6a6+dl83cbQdiPYCBzoXS18ZkXPSyfYAnIHihbqWv1jrq1fNUvz2ILlCSMGXh4DZq
 GKbYw7rONtj7TG01c8MZntx1i2a4oVLAqIxUSA6bhwp7yJQTZKeuw0Py7djk/wypxUKo
 0NLBa/qaykoLZ+a3+9vCo3AXugYck7OJfIYoEbZ2MO72rZkC0y+iCQyW8ZgUT0xi4mp6
 UbUg==
X-Gm-Message-State: APjAAAVDOu0THsk/eitgbk3Uire2comMQ/vKwC1gBXYeFcqPi4aUnq3D
 MSjwNGmSahXvVM85JtrJBukyb6UaEMp6vipMHzC6tH4v2ZtV2fcdtN+UCfYUbVRBiCHeC2Ujzxb
 O318rrdv4Y8WjrKM9ry774TJLKEyLUAcMvg9sKr77k9yFk8/En5n23iOc3FE6/tB8hZs/IJyCb7
 51bdhRtXGE09YZpLE=
X-Google-Smtp-Source: APXvYqwmn5LtjaTY+f4hsmtZfAoqdCdKYyyJ3TA1JpFnaOV6Nu/BG+R38vnyWSwcum180MP3Ic/YmQmm8bwHU1r3
X-Received: by 2002:a05:6830:119:: with SMTP id
 i25mr175410otp.288.1560339848209; 
 Wed, 12 Jun 2019 04:44:08 -0700 (PDT)
Date: Wed, 12 Jun 2019 13:43:27 +0200
In-Reply-To: <cover.1560339705.git.andreyknvl@google.com>
Message-Id: <9ba6199f01b8e941404b18bf8f7079ff384fb60b.1560339705.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1560339705.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
Subject: [PATCH v17 10/15] drm/radeon,
 arm64: untag user pointers in radeon_gem_userptr_ioctl
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_044410_643414_C2A131FD 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:34a listed in]
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

In radeon_gem_userptr_ioctl() an MMU notifier is set up with a (tagged)
userspace pointer. The untagged address should be used so that MMU
notifiers for the untagged address get correctly matched up with the right
BO. This funcation also calls radeon_ttm_tt_pin_userptr(), which uses
provided user pointers for vma lookups, which can only by done with
untagged pointers.

This patch untags user pointers in radeon_gem_userptr_ioctl().

Suggested-by: Felix Kuehling <Felix.Kuehling@amd.com>
Acked-by: Felix Kuehling <Felix.Kuehling@amd.com>
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
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
