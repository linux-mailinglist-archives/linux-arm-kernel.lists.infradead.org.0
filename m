Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A83391AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 18:12:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7Re2ybl3od0gCSg4tCCXBWT2u1iqzhh4clssypypl4Y=; b=eIExbuxttaCM9h
	KZV+DAWkKfrABUdWbDnENeBIJ048LVcX+6ck5ZgCHLsK9ZqaaDyldUG7dNq8qBbW7awdjdvPvTZEr
	zQJTYaJfz25IH0C9BD2VL50yN/XY8ILcOl4WDTdAd1ct/5SOQnvvVnQLOIdeccJ1Y0BnCIz0sQBLf
	lhjDF7AKpfyXcfbGIgGBAbFMqqFIGXuUH1+N903sAvTSkEQJ+IOwpV7cExvVDOonR6EPFN2pDWxNC
	afKD8XVQsM92aCmAkF/WQWZR2nn0r7jdpzZnBUsqaQm88DUSPua4eaKdW4v9hMaFB3b0/TsxRbzFv
	jl4WfMs5rNWspu4IJYPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZHTR-0002t0-CA; Fri, 07 Jun 2019 16:12:13 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZHTK-0002sX-G5
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 16:12:08 +0000
Received: by mail-ed1-x542.google.com with SMTP id a14so1878179edv.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 09:12:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0JpUdTsOa7EIqirFoRpEdJ3i1kEV+MZYFQgC803VPU4=;
 b=JqR33tXvj7r3SHSdAHfYwNexD3XwyD1ZvtvYnpUh+WuFIqsP+hRuv63fN0FauVOcjj
 RtW7VNOkguzUN+evgxN0vU5f6Utscp5VDT9uCSvFv9ErP39f1DoZVwUcEudOh1cCg4xf
 tXEHhviwSiYhRa8OVpLjGGzNq1UZOdWKHbbxVqkr7wucaWqoqdi9VfXzJ2u3vOnrJ6T5
 FFQajWDRxOgOQOxXqEJyUwGhAWYf8n9qUP7QiVrxOXxdsH/MO7OnaTDxomnk5pjOseKK
 yTYkGnLAsm7mvkh4RoLf/xq8TfoJt46ZDhv8N6jrBWO+qUc1gTrp1g6Lf4hKfaVUQ+pg
 pg6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0JpUdTsOa7EIqirFoRpEdJ3i1kEV+MZYFQgC803VPU4=;
 b=gHXaFXbmBqDTaY1Ptv+FKfx2nN4DO5O+yLU0K2yHyqtmiZnS2V0+Ayb9uN4Kq3GOBa
 PRGTMFvEzmnaRCm3LvYVL3YNvBrq+KvlbV0H4+LEUTZO51/kdLA0tk6Z8k0gUhjD2HRs
 85Hbj7Qs7yfZD9HXmQbGmOMXXoqjTFodfGt2T7aJJalzca4tE3j7aJ/kfUFaswMiKOkL
 LyhjHTJYuw1MbrM2BSsetbg0i2bpqmJ5pMoBHbgd2VNcyEyvJJjxdMSJgMxSoDmTW3EV
 RlIJR31kvp7LCrcSBDT9QCLrHss+UwhPla2YDW+l4BumMW7WqOdsKcY2UmTvOqfRYP28
 XVzg==
X-Gm-Message-State: APjAAAXRfgy36KFeE3QbqPNaED8Ywb1EMxZiSB+X3e7LRSl+XogS2Zmc
 x//exhv91tw5rG5BRExHVQs=
X-Google-Smtp-Source: APXvYqxaqFHNuIkJrpIMXSYPMvOKZbnkIur25HxoxqrDANRMZ9mZX+ezXOZ6faSEaGlGt95Y6uIsEQ==
X-Received: by 2002:a17:906:53c8:: with SMTP id
 p8mr48103973ejo.18.1559923925065; 
 Fri, 07 Jun 2019 09:12:05 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f9:2b:2b15::2])
 by smtp.gmail.com with ESMTPSA id q24sm440117ejr.35.2019.06.07.09.12.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 09:12:04 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH] arm64: Don't unconditionally add -Wno-psabi to KBUILD_CFLAGS
Date: Fri,  7 Jun 2019 09:12:01 -0700
Message-Id: <20190607161201.73430-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.22.0.rc3
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_091206_540230_4AB7F471 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Qian Cai <cai@lca.pw>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a GCC only option, which warns about ABI changes within GCC, so
unconditionally adding breaks Clang with tons of:

warning: unknown warning option '-Wno-psabi' [-Wunknown-warning-option]

and link time failures:

ld.lld: error: undefined symbol: __efistub___stack_chk_guard
>>> referenced by arm-stub.c:73
(/home/nathan/cbl/linux/drivers/firmware/efi/libstub/arm-stub.c:73)
>>>               arm-stub.stub.o:(__efistub_install_memreserve_table)
in archive ./drivers/firmware/efi/libstub/lib.a

I suspect the link time failure comes from some flags not being added
via cc-option, which will always fail when an unknown flag is
unconditionally added to KBUILD_CFLAGS because -Werror is added after
commit c3f0d0bc5b01 ("kbuild, LLVMLinux: Add -Werror to cc-option to
support clang").

$ echo "int main() { return 0; }" | clang -Wno-psabi -o /dev/null -x c -
warning: unknown warning option '-Wno-psabi' [-Wunknown-warning-option]
1 warning generated.

$ echo $?
0

$ echo "int main() { return 0; }" | clang -Werror -Wno-psabi -o /dev/null -x c -
error: unknown warning option '-Wno-psabi' [-Werror,-Wunknown-warning-option]

$ echo $?
1

This side effect is user visible (aside from the inordinate amount of
-Wunknown-warning-option and build failure), as some warnings that are
normally disabled like -Waddress-of-packed-member or
-Wunused-const-variable show up.

Use cc-disable-warning so that it gets disabled for GCC and does nothing
for Clang.

Fixes: ebcc5928c5d9 ("arm64: Silence gcc warnings about arch ABI drift")
Link: https://github.com/ClangBuiltLinux/linux/issues/511
Reported-by: Qian Cai <cai@lca.pw>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/arm64/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 8fbd583b18e1..e9d2e578cbe6 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -51,7 +51,7 @@ endif
 
 KBUILD_CFLAGS	+= -mgeneral-regs-only $(lseinstr) $(brokengasinst)
 KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables
-KBUILD_CFLAGS	+= -Wno-psabi
+KBUILD_CFLAGS	+= $(call cc-disable-warning, psabi)
 KBUILD_AFLAGS	+= $(lseinstr) $(brokengasinst)
 
 KBUILD_CFLAGS	+= $(call cc-option,-mabi=lp64)
-- 
2.22.0.rc3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
