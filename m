Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DDC1CB6E3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 20:16:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=i7UHSARk1d3c6M8ZM2pCrUDgJ9/s+ic0q9ZotJ03UhA=; b=GVqt5wFxOpqr69mnvrN5X2UM31
	vnRdNoEIFkc8Urz5KAK9IaD7DSiueFfqOZF9gpc3kPywCRxvszAX+OoFeNMZQYWMWr+r5oPNGWnWZ
	RbgGln8CoUXCv3lVL/IE7CWZeJb2D0N0JM2qbBpWxoLDE8SObS4mrvO6ReB/p6kIN/ZrtrBN+KSzu
	hLci8WtX2ecPFkJOOWn8fVjHh5kcfLJXlHuICxicrXId19DbSxrHE7gxDAViaW4AzCwNX84VWhpwL
	SYOg6dV7oobZyH7nl6oZXQef7k5gP+kmpGFZ/RM4/yUu8pPKkY2JKoH2KrCxTC0hqwLls0Gc2cn+0
	IqJM/3kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX7Xs-0007qJ-V8; Fri, 08 May 2020 18:16:24 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX7XV-0007gC-Pw
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 18:16:03 +0000
Received: by mail-pl1-x643.google.com with SMTP id b8so1078129plm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 11:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+grFk/1b6m5GXQB6Do7/JZsbw7ECp6r+S8upQGe4+gI=;
 b=I6sVrCyeN1Al9+YXglL0XwffqWho/yTDT1r7S/K6Apz4jUPalQFiMfGpHSI54ALlc+
 V6dIZM6i+WLjQlh5ywJ5byFfTeg9EfIH49M7i84H/uOfLRN+vZzIfo59Q3OEXEIJQEsx
 7x2tnn1OPyog3FsuhfzlEBVIKdmsUugJfu5W4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+grFk/1b6m5GXQB6Do7/JZsbw7ECp6r+S8upQGe4+gI=;
 b=lZK6PkBWITs8BZ4i/RcIf9jmtOaqvyOaFqV2xdjxCfwfWR6KoDV2SEPzU2Kk/N0OHE
 hRezwXtMmOC9ieizWdVfdNJPy2Oa8dsY8cNqrqt5ftoyb/Iakj7kRJLkGCHN0TWgkj6g
 /1htIRVaP/SNe1GOH0vkGkNYDRj4nS6PYQgvBF7WksL4m7H+M8MhOqW1KUIoNKJWqnv3
 +mn7BR+cI1pxIuXPDH05hDMawEvRr54dZehBAg5IOC0MoDtQu/bupl6DXqwNfZwN7Y7a
 JQO+LxY3m+sLL7H6ZnPHPAe4KI0YI/z5rEjtlFDY7Mjfpv6CSqqZ6LGDeQvIc6AGvgMm
 ijZA==
X-Gm-Message-State: AGi0PuZXAKJ/SbINIUbzCe6dh+R52JgMROSG0f0STE1oYLNB4kruagn8
 XTUTOyz82OSjhyxYktr7tWnkZA==
X-Google-Smtp-Source: APiQypKtbeWNjjqucMJ+BC3YWrrXzqesmFdn18zvEh3fztWZsGRRr05NnDcv2TODGa7UTSA8QZCmwg==
X-Received: by 2002:a17:902:6114:: with SMTP id
 t20mr3762825plj.324.1588961760860; 
 Fri, 08 May 2020 11:16:00 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net.
 [73.53.94.119])
 by smtp.gmail.com with ESMTPSA id e11sm2349463pfl.85.2020.05.08.11.15.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 May 2020 11:16:00 -0700 (PDT)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: bpf@vger.kernel.org
Subject: [PATCH bpf-next v2 1/3] arm64: insn: Fix two bugs in encoding 32-bit
 logical immediates
Date: Fri,  8 May 2020 11:15:44 -0700
Message-Id: <20200508181547.24783-2-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200508181547.24783-1-luke.r.nels@gmail.com>
References: <20200508181547.24783-1-luke.r.nels@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_111601_836614_ABD4B408 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Song Liu <songliubraving@fb.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Will Deacon <will@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Marc Zyngier <maz@kernel.org>, John Fastabend <john.fastabend@gmail.com>,
 clang-built-linux@googlegroups.com, Zi Shen Lim <zlim.lnx@gmail.com>,
 Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>,
 Xi Wang <xi.wang@gmail.com>, Luke Nelson <luke.r.nels@gmail.com>,
 Alexios Zavras <alexios.zavras@intel.com>, KP Singh <kpsingh@chromium.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Martin KaFai Lau <kafai@fb.com>,
 Christoffer Dall <christoffer.dall@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch fixes two issues present in the current function for encoding
arm64 logical immediates when using the 32-bit variants of instructions.

First, the code does not correctly reject an all-ones 32-bit immediate,
and returns an undefined instruction encoding.

Second, the code incorrectly rejects some 32-bit immediates that are
actually encodable as logical immediates. The root cause is that the code
uses a default mask of 64-bit all-ones, even for 32-bit immediates.
This causes an issue later on when the default mask is used to fill the
top bits of the immediate with ones, shown here:

  /*
   * Pattern: 0..01..10..01..1
   *
   * Fill the unused top bits with ones, and check if
   * the result is a valid immediate (all ones with a
   * contiguous ranges of zeroes).
   */
  imm |= ~mask;
  if (!range_of_ones(~imm))
          return AARCH64_BREAK_FAULT;

To see the problem, consider an immediate of the form 0..01..10..01..1,
where the upper 32 bits are zero, such as 0x80000001. The code checks
if ~(imm | ~mask) contains a range of ones: the incorrect mask yields
1..10..01..10..0, which fails the check; the correct mask yields
0..01..10..0, which succeeds.

The fix for both issues is to generate a correct mask based on the
instruction immediate size, and use the mask to check for all-ones,
all-zeroes, and values wider than the mask.

Currently, arch/arm64/kvm/va_layout.c is the only user of this function,
which uses 64-bit immediates and therefore won't trigger these bugs.

We tested the new code against llvm-mc with all 1,302 encodable 32-bit
logical immediates and all 5,334 encodable 64-bit logical immediates.

Fixes: ef3935eeebff ("arm64: insn: Add encoder for bitwise operations using literals")
Co-developed-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
Reviewed-by: Marc Zyngier <maz@kernel.org>
Suggested-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/insn.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
index 4a9e773a177f..cc2f3d901c91 100644
--- a/arch/arm64/kernel/insn.c
+++ b/arch/arm64/kernel/insn.c
@@ -1535,16 +1535,10 @@ static u32 aarch64_encode_immediate(u64 imm,
 				    u32 insn)
 {
 	unsigned int immr, imms, n, ones, ror, esz, tmp;
-	u64 mask = ~0UL;
-
-	/* Can't encode full zeroes or full ones */
-	if (!imm || !~imm)
-		return AARCH64_BREAK_FAULT;
+	u64 mask;
 
 	switch (variant) {
 	case AARCH64_INSN_VARIANT_32BIT:
-		if (upper_32_bits(imm))
-			return AARCH64_BREAK_FAULT;
 		esz = 32;
 		break;
 	case AARCH64_INSN_VARIANT_64BIT:
@@ -1556,6 +1550,12 @@ static u32 aarch64_encode_immediate(u64 imm,
 		return AARCH64_BREAK_FAULT;
 	}
 
+	mask = GENMASK(esz - 1, 0);
+
+	/* Can't encode full zeroes, full ones, or value wider than the mask */
+	if (!imm || imm == mask || imm & ~mask)
+		return AARCH64_BREAK_FAULT;
+
 	/*
 	 * Inverse of Replicate(). Try to spot a repeating pattern
 	 * with a pow2 stride.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
