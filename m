Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 539CE71E89
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 20:01:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IBtD+IYpgjpsng23E1+j5qObf+bO0PG0kMTmv20DMIQ=; b=nBqPjlQ2Y5ulJP
	7muzdagP0fZZ+IwS8Yfd7PWwVAn5WbAxcaLFAUBO1V2KmsjE5KlkDmx8tZreSuHfoCbSNWM8kaqZr
	HZQx1NNZ/m3CoP1WxXnCxe6vD7kcV56xZ5Vh18Ps71HGAWCwJ5Li5bPoofbDPNSFVpUem/7tX0UBO
	f5CHooyN23D+o+CCEoaBEdaQVDZS/Xa61Xnu8Sg0J+WKaWuiov9W++634+fwRmjasN+oSbFOt8aw0
	WtwrlThoy3zIP/0beOMJvRNzxzb/TDQqKTGSSR/76JTNlJIFOJfWG0awoFr03egoAx/GCbK2cFCTy
	dej4YV6+74HDRJf/FT0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpz6a-0008GO-1Q; Tue, 23 Jul 2019 18:01:40 +0000
Received: from mail-qt1-x84a.google.com ([2607:f8b0:4864:20::84a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpz4O-0005Rm-KS
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 17:59:26 +0000
Received: by mail-qt1-x84a.google.com with SMTP id 41so33258003qtm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 10:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=4Wn1GFyfxt3NCYf4PGNTFvqYM1MN1tNvgEFxNqktnk8=;
 b=XwZfpnbXFN1ibF12kJh4UX27GKqgHpAYVMgncvRg2XMsGuyHBAM2BbcbV2FMLG6KI2
 Eail8AtVvVEkdWyRNAKDAPdYJBEXOQRcSGAF4Z+pO2ORJP6spfMGKAIf7M0K0GlZ5J+x
 8yVEMOwDv+oyp2b+30vvjnV2SNVEvVcKU1T+4yjg+W1ok7J01teWzQ68jS7jmU8ro/kC
 Oxn9FlCYKBVtK3Jwi5MWr/zhUNuljezL1OPreJbqbiZZtnxrZ1CQ3LvL2shMV2iJ2vVT
 olnzEJp2mTvJs0fngbdCdc/sbDwJUI9/28M468SMn/xpTOjrRZ2LIWF7gDkmDS+GMcl9
 Q1sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=4Wn1GFyfxt3NCYf4PGNTFvqYM1MN1tNvgEFxNqktnk8=;
 b=KmeZt958KsOENx6YTMejNknnJ27rDLPCMGgd9LtoYOvVmREZuSdYKtAvaNF1f/zEq/
 8/6zLfoGcdLRYHnmZxK1Nw2A2D1/eu76sdRGnbj4Tm8xwsofKkltJfGt/reQZaF+9rSs
 8p5Ak+6nyjw5UI9gjdtf/AEnQCICm3A2YIxTbdltnKIjUAU8Q8nMTKvnuXRLWykiSD/9
 mv2H4OBr6Vzo0itcaNRRwxzCP1LO5wlZySyheuNeoPKB0pZBUU3fxsw3REPmtcBeizji
 X/17REM+3V2SM1evcZjWtHhehBLazA39Znk4M/blKJIQncPOBYVohCEasJSPAJn9CBNY
 Irpg==
X-Gm-Message-State: APjAAAW11OUY0dIHWs8VdTTDaIq9QV/1o0VbmO4S7BiuLgTzF5V8RIOu
 fHIFW4eyY59laNArj/yCF5/SjolGXUkoqfB9xfONfa3f+OZkyxUSJ3TvNb3ddaT6V2uspVZGWk5
 dre03jn9xkt6hIC02CFG4AKa7e8CzJCvEmjOge1is1SEBQuGZCLFs1xNlSZbFaI9bQgkkGfl8Vr
 YfXIvicB43PexHftk=
X-Google-Smtp-Source: APXvYqy0Hkccu8SUSwSAcf0RwepBseg9rSnBcrNaRpXVNhE8d6jRb6uSi4vWmbN3MkxTqVVfEdk8tSl4b+EbX0xe
X-Received: by 2002:a37:4f47:: with SMTP id d68mr50765232qkb.104.1563904762211; 
 Tue, 23 Jul 2019 10:59:22 -0700 (PDT)
Date: Tue, 23 Jul 2019 19:58:42 +0200
In-Reply-To: <cover.1563904656.git.andreyknvl@google.com>
Message-Id: <4731bddba3c938658c10ff4ed55cc01c60f4c8f8.1563904656.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1563904656.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v19 05/15] mm: untag user pointers in mm/gup.c
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_105924_783760_A957835C 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:84a listed in]
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

mm/gup.c provides a kernel interface that accepts user addresses and
manipulates user pages directly (for example get_user_pages, that is used
by the futex syscall). Since a user can provided tagged addresses, we need
to handle this case.

Add untagging to gup.c functions that use user addresses for vma lookups.

Reviewed-by: Khalid Aziz <khalid.aziz@oracle.com>
Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 mm/gup.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/mm/gup.c b/mm/gup.c
index 98f13ab37bac..1c1c97ec63df 100644
--- a/mm/gup.c
+++ b/mm/gup.c
@@ -799,6 +799,8 @@ static long __get_user_pages(struct task_struct *tsk, struct mm_struct *mm,
 	if (!nr_pages)
 		return 0;
 
+	start = untagged_addr(start);
+
 	VM_BUG_ON(!!pages != !!(gup_flags & FOLL_GET));
 
 	/*
@@ -961,6 +963,8 @@ int fixup_user_fault(struct task_struct *tsk, struct mm_struct *mm,
 	struct vm_area_struct *vma;
 	vm_fault_t ret, major = 0;
 
+	address = untagged_addr(address);
+
 	if (unlocked)
 		fault_flags |= FAULT_FLAG_ALLOW_RETRY;
 
-- 
2.22.0.709.g102302147b-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
