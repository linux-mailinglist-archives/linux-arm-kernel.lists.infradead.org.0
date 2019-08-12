Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F748A9DD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 23:52:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZC8B1zTjHRmBS4vpV4gDcGx8wPYZBTmjPNNNDgCFLY=; b=FlniZAuqzfqWnl
	2d0X2n/EIlhx41MPki3AxUmsM4ye5UwpE4oTOdAoDOoqfN4OITi8yrN8ALWhPriu0u5OOo4XJY84l
	NeaoJ0SflLLejIr2R5zTBjYR5oaI+jyIJOPewpE1EZ1Kycw9VLtcuw1cCTO7sOft1MBx9dbA6cH3/
	mH2I74BYGwbo5qavPh/+RDEVJVYhm3xR++kisrvC4uYHHdjyr2Esh2f8I/4XIWKcbgmOWF1BbN3hw
	4WqKa6VIi3O6kojmEipDQzrGLXWHkZGSlnifdoEI/87P+TBWQj0CN9AgH1PLTgOve2/CTHWdAL0Pd
	p6oqRt9Lol3ainOeCsjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxIEn-0004O9-Aj; Mon, 12 Aug 2019 21:52:21 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxIEY-0004Mu-C9
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 21:52:07 +0000
Received: by mail-qk1-x74a.google.com with SMTP id c79so94768952qkg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 14:52:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=4H9PWcGFWTnQRRpR6qzftNQ0lP7jmcpJc1z5bvKXC0c=;
 b=GOYts8y62z5hDG5UBvKTyRA53eo64IPfTWzoj20oJPWRcHrTKxwsvLxh3a4n5gbZEv
 PEmhfuyQJErUyzHsQgmc+BxiQ+0zaHqdQPYkHNoGmXn1M/p3nNSyCS4YS+QnjsSu15e/
 4p9ECmVJbtW52/m719Gd9XDThtFlJaVi8EAw8eYS5rrF7pNdIpC8S3YQAtKU4R/HoM1y
 BQi3xcPQqrL81dRaMBvh/8Aty6jeE0XDlyzQopxkixPirRMhNQ2BW7dcG4t34N56iTRJ
 t5GaJvbA2lpJTkd80ffPOg6j49O1q9MIvTWyeV3HEdK0REH1ZKW2JM3VYuddT4rKkiLa
 91eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=4H9PWcGFWTnQRRpR6qzftNQ0lP7jmcpJc1z5bvKXC0c=;
 b=CUkmKHhLAJjZ4LGYJW/tUVlHeu0r2asKPkPT0S8Y3YYd2PHoz1Z6FxCpPhK42UlFk0
 c7l7SVfaZt6ZozwTQ4uGatbsfzYrnN1piVN+P04CW4+/IKD/Lk6LtGxnf85G5DGTopMY
 T7hFZ+WuWW0aKw3ewbdZdBkdjuHy9XJhEhx47704kpPt0G4Ka49ZNoMfXNwLFO/r5do6
 eS1Wn9iRxd6PwgKQDzuZ1cBqClpL59NrVBJoGpYcCG2oz1UftIyWro/BONLK6G2KjLob
 RCuW+zpBGYH2hTlGCEi+oeDWmj8gvwi8MlxxezaEBGTCSiksYhx/sAoYrCn+GK54TUpg
 kiXw==
X-Gm-Message-State: APjAAAVHJCbP3Y6HlLqpSkO/uDHa3orgMRUSW7tnDX6V6//eJQV89gtS
 E9DTa+EHxEvE+5l+kcPqNbFGN4e1EYTir/iAYaA=
X-Google-Smtp-Source: APXvYqwes1gV2IDw+8Qi/1BZf+2RvRVqWZMirG+2WSzT6D2Sl6v9dobOMCg6A6UD4p/INQTsMrciAWtKuTDBsrcdsyU=
X-Received: by 2002:ac8:45d2:: with SMTP id e18mr6288417qto.241.1565646724122; 
 Mon, 12 Aug 2019 14:52:04 -0700 (PDT)
Date: Mon, 12 Aug 2019 14:50:40 -0700
In-Reply-To: <20190812215052.71840-1-ndesaulniers@google.com>
Message-Id: <20190812215052.71840-7-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH 07/16] arm: prefer __section from compiler_attributes.h
From: Nick Desaulniers <ndesaulniers@google.com>
To: akpm@linux-foundation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_145206_409580_842D6ABC 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Song Liu <songliubraving@fb.com>, linux-kernel@vger.kernel.org,
 bpf@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 miguel.ojeda.sandonis@gmail.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Russell King <linux@armlinux.org.uk>, Alexei Starovoitov <ast@kernel.org>,
 netdev@vger.kernel.org, clang-built-linux@googlegroups.com,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, jpoimboe@redhat.com,
 sedat.dilek@gmail.com, yhs@fb.com, Thomas Gleixner <tglx@linutronix.de>,
 Enrico Weigelt <info@metux.net>, Martin KaFai Lau <kafai@fb.com>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arm/include/asm/cache.h     | 2 +-
 arch/arm/include/asm/mach/arch.h | 4 ++--
 arch/arm/include/asm/setup.h     | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/include/asm/cache.h b/arch/arm/include/asm/cache.h
index 1d65ed3a2755..cc06079600e0 100644
--- a/arch/arm/include/asm/cache.h
+++ b/arch/arm/include/asm/cache.h
@@ -24,6 +24,6 @@
 #define ARCH_SLAB_MINALIGN 8
 #endif
 
-#define __read_mostly __attribute__((__section__(".data..read_mostly")))
+#define __read_mostly __section(.data..read_mostly)
 
 #endif
diff --git a/arch/arm/include/asm/mach/arch.h b/arch/arm/include/asm/mach/arch.h
index e7df5a822cab..2986f6b4862d 100644
--- a/arch/arm/include/asm/mach/arch.h
+++ b/arch/arm/include/asm/mach/arch.h
@@ -81,7 +81,7 @@ extern const struct machine_desc __arch_info_begin[], __arch_info_end[];
 #define MACHINE_START(_type,_name)			\
 static const struct machine_desc __mach_desc_##_type	\
  __used							\
- __attribute__((__section__(".arch.info.init"))) = {	\
+ __section(.arch.info.init) = {	\
 	.nr		= MACH_TYPE_##_type,		\
 	.name		= _name,
 
@@ -91,7 +91,7 @@ static const struct machine_desc __mach_desc_##_type	\
 #define DT_MACHINE_START(_name, _namestr)		\
 static const struct machine_desc __mach_desc_##_name	\
  __used							\
- __attribute__((__section__(".arch.info.init"))) = {	\
+ __section(.arch.info.init) = {	\
 	.nr		= ~0,				\
 	.name		= _namestr,
 
diff --git a/arch/arm/include/asm/setup.h b/arch/arm/include/asm/setup.h
index 67d20712cb48..00190f1f0574 100644
--- a/arch/arm/include/asm/setup.h
+++ b/arch/arm/include/asm/setup.h
@@ -14,7 +14,7 @@
 #include <uapi/asm/setup.h>
 
 
-#define __tag __used __attribute__((__section__(".taglist.init")))
+#define __tag __used __section(.taglist.init)
 #define __tagtable(tag, fn) \
 static const struct tagtable __tagtable_##fn __tag = { tag, fn }
 
-- 
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
