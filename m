Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 185C7FA24
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:27:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xql0EoY9lYhC5rpnikP+W+BycPlar7mEyILn1U9EWUc=; b=thCjUNNCuFR+dw
	nkgCc7SZr3I3mePs2S7cpQYghxrS48jKX/acpJKa0/8hx6jJJ/n41qhqplFW7cSfs8tV91OM+cTDI
	28edPjWAs4oW06SVyf1iNoffG4Ac7+lfJT3fPq4PP4LsYjRUVd5PJnwKQX7pY8l5GIuhICFwUgDop
	dlEnuJ75dOsW2n5GnvkUS51bToqFaHlT/a6bfV+lCC7pXNRoWhYyhmnGpeWXeSjAHSQ7pPFNFLtFi
	T6ZKJkzhWPyzGAuzL3TQtK+v0are0EwPCjo2MiigsYgNecbN15Jbx1p7XNUGZZW/Tlr5zSB7Xf1FA
	CP7oYYLjHGqbgvr0b9jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSnJ-0003bu-Mg; Tue, 30 Apr 2019 13:27:37 +0000
Received: from mail-qt1-x84a.google.com ([2607:f8b0:4864:20::84a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSlQ-0001mB-UK
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:25:43 +0000
Received: by mail-qt1-x84a.google.com with SMTP id d39so8570433qtc.15
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 06:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=buRPOjJBA3ZIe0xT2AqduI9dnmEg9opX2ORFfRDPnW0=;
 b=MSiPsDRD20G5RApt1tKO2qR1lu+49IUxbNva1JnuQQuFWBLmYjGsyYMIbTfczh9PgZ
 LZDjXLLUSTuHLQNcWT+JZ9uqhm42MotSkIywGhSEtO5Qo/efiUjRdnETJ9HiPnIEMC0G
 Psfny8eMA3Hhr5M3y/dGxBagnarVCzNzCOPBE7unSjVZRyN7RZGPxN+EiQrIg6TYKayd
 TbH8puePOyzHgUDHu0r16X0QIZiy8sIilI5NkVuEFwagLhwm1Doy6sj5Nc20vSi1QEC6
 U4ZuKp24KxWFzfXdfPQJckkIwH9zeR4BqyMjbNu7gnM8XYqQKJF/hqcaAUToZRnS5F/8
 +rFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=buRPOjJBA3ZIe0xT2AqduI9dnmEg9opX2ORFfRDPnW0=;
 b=OutYkgVWo05DMx5CCQYKig49/HZZ6S+XLq9PpM89JQbN0N2/NzfAb46recQxb2sY36
 y4/2TCuH0wP4Gfe5GuHaUKMaFV+/qK9IhDwOCjN+bby7TFOj9mzDA6umhVamnHytpfdO
 yzLJM8IFACxpNAykIWLnbMfWrivdPdx1cqK7Amg6YS+GMJ0DdiW3NF2E44wB6Uuzaol5
 c9NrK7fqCKMPt+zs1IrHd1kqEVX91NcRSeW4/BaeCBOfEHg+alfs1KkBpyvUwnIbhKl/
 fINdAq0z3mTKtozVbqsXXNUvgdrwJE2G5nuQuKU63Pd6T0KVopTfZic4+9n70cEqKoP9
 GLDw==
X-Gm-Message-State: APjAAAWfjjBzZBeCtMl43/9w6b6s5FcqirZoiX+zZ/DdbsnNP9Rfa5Az
 bcf7cyGDgrjD2ePZS28KOEHtmL2vdh3wx9jNHRCsMBHqJZbcecW8owulD7wT8BY9ddMYeYaNvem
 SEORBvtvFh4jam7x3UHsG63esXPDzpne2c37AEVSHarNyr+/KHx6mBRviGCS+LLog+MJH5psT9v
 5Kkn9rH3iEYEWg+ZQ=
X-Google-Smtp-Source: APXvYqzAjOcf9MQ3Z/Pp48cxI+z95y8oMsVd6n1et+BqzlTkjxro8PcOOzrVkSjDVN6zaY8gkVAdj4JwROetfHnZ
X-Received: by 2002:a37:78f:: with SMTP id 137mr13240464qkh.66.1556630738975; 
 Tue, 30 Apr 2019 06:25:38 -0700 (PDT)
Date: Tue, 30 Apr 2019 15:25:03 +0200
In-Reply-To: <cover.1556630205.git.andreyknvl@google.com>
Message-Id: <373d33e4cb0087da32ad019fd212414292ce04c8.1556630205.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1556630205.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
Subject: [PATCH v14 07/17] mm, arm64: untag user pointers in mm/gup.c
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_062541_294765_A043E55A 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:84a listed in]
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
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
