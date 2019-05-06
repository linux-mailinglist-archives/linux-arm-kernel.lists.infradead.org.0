Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CBAC151A6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 18:33:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wMf/CAxgKWgi94uFgKr4oJYKJXyDNEiuO/4aDGS5Ny8=; b=BTc/0aQstxezPS
	ObLl9WrFCUvTXoPbcSvhFUkoA+YLdFYwVm7h407WKsCln0cmk0QikkaTHWif5sVQ/cbrD2ZHpUSTh
	Nq1fPBXb9zqY9ic2gUiy7jDdTOETMU8IsJcDZhXlDg9hgvPQPJci07CB/Ikry+us91ev2QXIKu15K
	70fzn0Dtu2/zzXugOslBx/g0ZbpGAWJSqBENyc5T/+oKqM9A2W7rEJuhuJ2eB5Z/zqbhnNurGe5le
	/aTYSKBFbM9D4rWkfs6BM3ogbmddkPQaD2/crpWnMun7lj+md+wm/q4XwykYewtBd41kPMaJF30u5
	mXNZLvkzwJLM+fSCRfiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgYc-0000qt-4e; Mon, 06 May 2019 16:33:38 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgWY-00070Y-VK
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 16:31:49 +0000
Received: by mail-qk1-x74a.google.com with SMTP id i124so14997983qkf.14
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 09:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=TZHV8An4OEXfkqFgrZuDjdlNeU7w3PdkPz1ZU4+cbAs=;
 b=lVlAxmmY4nFExOi7qcKMHLUyvk1dgMtcIDWsIxNnuOIKi7SENIWoorvqYx22FhFeiH
 qNv3aCOvVP2Cd8JsXC4f5fwupU4T2PFYzqayLiNCFI9HFlqX4lWPhufSiUZxYZlKJbSP
 xpayFPpaQpM+egkX1gh0HyRA3qPTTcL2EH50qtn8LLi1pPJilWqtH0/kYJiIyAq+8b8K
 r7XbnjhrPxJ/+aU0+7xAQJYRuQVqDAYCQIetrAi8pdeAX3hMSEX83RJtSz7KeAzNa4AL
 TEi4LWr1V919AH8PPG3nTQ8k7FsrBwYY7/UQoSLOaq/gIbNGSmHdWR4W58sdfzeJRSfR
 CtWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=TZHV8An4OEXfkqFgrZuDjdlNeU7w3PdkPz1ZU4+cbAs=;
 b=A/rGmloHahxEAEdIA1p5bzTtLqNn84mW0+TukJqBscktXUHDaYT/UCcwJSHY/RMBg9
 gdQMutWYix9zMKH14zo7JoNiuohZcjeebMhDei6DAZWiMtR8zpuSvwexD/MV+z0anQs8
 WrDGDR5N4RDKSG9bz0Dq0cFKtTDrSkGPlBOCcvicVx4TZQJY+lg55R+cnl7VIxYKzuqB
 7XOoS/PVPcTVwUf6w3iVGiIPXJmjyoNx6cscmfpc+UWkTEFPw2K0mqVVzfI7QaRvWIhS
 GnljQyaeuPvoXDbZxDZqWtsH3iZyrBqnLV5N5vt8yQ6cPFqjeXiOJkukoEU/DKjZEN2p
 JHKQ==
X-Gm-Message-State: APjAAAW0sv3SDg4SEyO/ikJVpWdSewFHYvU51b9nW9LQGvR9QYi7XwQa
 VSPhTjzVHyOfQM1NL2HWHKhSfHUrESK+oU5sFIaN0PzQo44y4bzftLF8AC6WTPDlM1AYmi2Vggl
 iyMnNEiT30TaBfHIE+Tqye/CFSdDY39QaVgLWcVspOVCEfUg/pkIRn6TZ/6+8AfeewmmyvBteBz
 0D0P6Udqdwo5oLNOk=
X-Google-Smtp-Source: APXvYqzHIfoRqtGD9gbf6U+p/ZZcVtiOU3rLeCD3rrtZumSW95xfAvgD6n9pasKaBp9DQWdRwfRV+d2riHaf6boR
X-Received: by 2002:a0c:d449:: with SMTP id r9mr16625749qvh.223.1557160288557; 
 Mon, 06 May 2019 09:31:28 -0700 (PDT)
Date: Mon,  6 May 2019 18:30:53 +0200
In-Reply-To: <cover.1557160186.git.andreyknvl@google.com>
Message-Id: <d234cd71774f35229bdfc0a793c34d6712b73093.1557160186.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1557160186.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
Subject: [PATCH v15 07/17] mm, arm64: untag user pointers in mm/gup.c
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_093131_593450_B95FC764 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

mm/gup.c provides a kernel interface that accepts user addresses and
manipulates user pages directly (for example get_user_pages, that is used
by the futex syscall). Since a user can provided tagged addresses, we need
to handle this case.

Add untagging to gup.c functions that use user addresses for vma lookups.

Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 mm/gup.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/mm/gup.c b/mm/gup.c
index 91819b8ad9cc..2f477a0a7180 100644
--- a/mm/gup.c
+++ b/mm/gup.c
@@ -696,6 +696,8 @@ static long __get_user_pages(struct task_struct *tsk, struct mm_struct *mm,
 	if (!nr_pages)
 		return 0;
 
+	start = untagged_addr(start);
+
 	VM_BUG_ON(!!pages != !!(gup_flags & FOLL_GET));
 
 	/*
@@ -858,6 +860,8 @@ int fixup_user_fault(struct task_struct *tsk, struct mm_struct *mm,
 	struct vm_area_struct *vma;
 	vm_fault_t ret, major = 0;
 
+	address = untagged_addr(address);
+
 	if (unlocked)
 		fault_flags |= FAULT_FLAG_ALLOW_RETRY;
 
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
