Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2652D287
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 01:58:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3Fr3GVOeh9i/vqKL1uryQP0s/HvSOj9Ijouz6ScBNjA=; b=LldpDlY39tT6Qe
	soYCOBGjluS9Z7fjXxZN/0WA67vv94jmDwSXqAp1tjRTctoa78GKijQ+CKvnxlfVoLn/dAHfnpNCU
	vHUJ3Z3dwfw1O4v0hXQoixnttX2FyHZskRWe0PeX7J1uycyRd3yKYbu7tC9MN2UcYu7Lbilu3Wcu+
	/ed4mXBChSuB0gT7sIX132xuPdwfGGNREgvkmmUHpklwDu28UTD1/+khjxkmyxAShnrRYZ9V1jI4W
	adzhup4EPycpvCE0wXd6f6hkjl1VUObpEzOKznCY0ldt85zUa07/0A/HM9eooBB8Ms2eOkz1DA2DT
	quZx9uW+PGIE1+sWaOlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVlyd-0001Qn-9H; Tue, 28 May 2019 23:57:55 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVlyW-0001QU-OS
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 23:57:50 +0000
Received: by mail-ed1-x541.google.com with SMTP id a8so660627edx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 16:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tY1S9QD7vrCtWoh/cKmDSkmGt1HGWJIL0pZvj39EZVc=;
 b=JI5A5RfOFw7zOIGH20VztXP0bA2BvcknRnm0vFZRC3rSsuffHbE7bgrV9ZVhUenjBH
 PSug/nv+vELoCpRaNVwey/8uixFj8fMi/O+9mYe+HSkse6CsLZnYP04lRBQsMBthTRs3
 2RmR8I4z+x6MODC5cdThOQrYER+d0kg5skVN2WAkU7AEIoYTkxUglfTfVCxackfHR1qi
 7FcwGF5FbgrlcZ3OMCkUSYakKTtnVkHD8yscBKtVvSittUlBw1W0ZyWJllZml7InwpLC
 NrSQJ39xiWtSyVaNN3+sxnM6l8IgncM8c/PQXM61UtfTBgbYtGDPnksQf6rUhwZGMnTo
 ndkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tY1S9QD7vrCtWoh/cKmDSkmGt1HGWJIL0pZvj39EZVc=;
 b=Ko+rHG53vO1gi2Oog98HneCpjfjjssQ5GHDKBIrONNhZTqQD+X9QDL+Fr7PZ7/Pg3r
 5gI34WGSzV4ZO/R6BxgdEPfxJkmd+pJXkbM2Re/7Lqkn5SOuKuacxp7UKmfIJlCH84Ed
 cKwPMQdmAK/MbxnWJGi/eriNcv0T8Mn29gPaxa37Oo4gzja2DwDcXis6YRLXzkBKiwLG
 lidiyJXg6iHuJqtNga7Ak4VKUMMb8jYsDKeHUv99RGpRojF1ZGCFMSnk7TTYIMDb309V
 FF6r0Mt6kKj5shV+er+MJVRsYbcBhDmuGYjS7nnSIosYbRPTaDXzB/QK6XfSjRpVDHF/
 pQGg==
X-Gm-Message-State: APjAAAVdODqSrfv63m4Ojoqs1gPzTZTft1JDu03egvR4LOv8DKpW6JAl
 cNkH4Aq29k0BBUNlEE2LGnA=
X-Google-Smtp-Source: APXvYqwe8zzoO0T1q2g/lUQM7eKqTZrrvLgQ/+AH38CB0uekNs1XDc1NdxoBewlXX0FRRvcFAk/Ayg==
X-Received: by 2002:a17:906:ca5b:: with SMTP id
 jx27mr94012887ejb.233.1559087866574; 
 Tue, 28 May 2019 16:57:46 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f9:2b:2b15::2])
 by smtp.gmail.com with ESMTPSA id v22sm2499638eji.13.2019.05.28.16.57.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 16:57:45 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH] ARM: xor-neon: Replace __GNUC__ checks with CONFIG_CC_IS_GCC
Date: Tue, 28 May 2019 16:57:42 -0700
Message-Id: <20190528235742.105510-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.22.0.rc1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_165748_822757_ACA4F39F 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nicolas Pitre <nico@fluxnic.net>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Stefan Agner <stefan@agner.ch>,
 clang-built-linux@googlegroups.com,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, when compiling this code with clang, the following warning is
emitted:

    CC      arch/arm/lib/xor-neon.o
  arch/arm/lib/xor-neon.c:33:2: warning: This code requires at least
  version 4.6 of GCC [-W#warnings]

This is because clang poses as GCC 4.2.1 with its __GNUC__ conditionals
for glibc compatibility[1]:

$ echo | clang -dM -E -x c /dev/null | grep GNUC | awk '{print $2" "$3}'
__GNUC_MINOR__ 2
__GNUC_PATCHLEVEL__ 1
__GNUC_STDC_INLINE__ 1
__GNUC__ 4

As pointed out by Ard Biesheuvel and Arnd Bergmann in an earlier
thread[2], the oldest version of GCC that is currently supported is gcc
4.6 after commit cafa0010cd51 ("Raise the minimum required gcc version
to 4.6") so we do not need to check for anything older anymore.

However, just removing the version check is not enough to silence clang
because it does not recognize '#pragma GCC optimize':

  arch/arm/lib/xor-neon.c:25:13: warning: unknown pragma ignored
  [-Wunknown-pragmas]
  #pragma GCC optimize "tree-vectorize"

Looking into it further, -ftree-vectorize (which '#pragma GCC optimize
"tree-vectorize"' enables) is an alias in clang for -fvectorize[3],
which according to the documentation is on by default[4] (at least at
-O2 or -Os).

Just add the pragma when compiling with GCC so that clang does not
unnecessarily warn.

[1]: https://reviews.llvm.org/D51011#1206981
[2]: https://lore.kernel.org/lkml/CAK8P3a3NjTCgFd2dQ9KbHP8DpXf6s-ULfeU6acAYC4SDi+2qvw@mail.gmail.com/
[3]: https://github.com/llvm/llvm-project/blob/eafe8ef6f2b44ba/clang/include/clang/Driver/Options.td#L1729
[4]: https://llvm.org/docs/Vectorizers.html#usage

Link: https://github.com/ClangBuiltLinux/linux/issues/496
Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/arm/lib/xor-neon.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
index c691b901092f..d532bc072ee4 100644
--- a/arch/arm/lib/xor-neon.c
+++ b/arch/arm/lib/xor-neon.c
@@ -22,15 +22,8 @@ MODULE_LICENSE("GPL");
  * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
  * NEON instructions.
  */
-#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
+#ifdef CONFIG_CC_IS_GCC
 #pragma GCC optimize "tree-vectorize"
-#else
-/*
- * While older versions of GCC do not generate incorrect code, they fail to
- * recognize the parallel nature of these functions, and emit plain ARM code,
- * which is known to be slower than the optimized ARM code in asm-arm/xor.h.
- */
-#warning This code requires at least version 4.6 of GCC
 #endif
 
 #pragma GCC diagnostic ignored "-Wunused-variable"
-- 
2.22.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
