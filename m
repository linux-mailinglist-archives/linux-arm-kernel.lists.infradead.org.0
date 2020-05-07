Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF1A1C7FA4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 03:05:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FhF2VWzwm6FN9q41Khd+1g2yHlbc2v9ujHAHxAT/uJ0=; b=RW6kTN6rSuUqi5tjvPVqzsSU2/
	0cr97NotFfIm0lcmg4Cw0+i1sSyyaEuCVzrbm0I9eTVqAEFK4BXk8G1osR7Db9CMggILgH3sCQFgY
	TKRHCLvWK/tuyOJRK8jT3EKpPsIHYZi3/2cg7i3tKOfBS8BAPXxlK9FMmqu+T1NhvdLokOhUVVYtw
	5MWAtCVqP22tOjoBE3XFCjujbzYgmxCjGoZgaATPtKIfreVFeHVb6efKMJxKzho1gjghEIBq1SdiN
	Ck0YjADTUZ95xCsCFWmFUoSwz0Vfslu3/Zl4RmViL0ECjOmDDhO16H2nbl8F4oYvbbPTbyMpVrYzY
	gVefokNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUyo-0001FE-8x; Thu, 07 May 2020 01:05:38 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUyP-00016Y-RK
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 01:05:15 +0000
Received: by mail-pg1-x543.google.com with SMTP id o18so1701857pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 18:05:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=d68RkE5cUlQYJi4OtfTvAYhJJDA5HOgjSHowTSdBNCQ=;
 b=aNteDNbspIs9Glmh/mFjc8BOXg8S0Ca8B8LdGCTylILkDT1X53VNGpvY2sKmwEIt2D
 2LQFsRPQa2s0snapgqlU4uqdx9+VG+5989Tpp+AB7M4cM+rYd529iUL1uwx2M2i4qurd
 Bp2axaRstmpVUtZssFn9tvFE9GKV2jGGnUElY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=d68RkE5cUlQYJi4OtfTvAYhJJDA5HOgjSHowTSdBNCQ=;
 b=RBS1DambvWdJatA/F/f09KDJX20LmD6g5caZoOVsE37m9PtTLnutxXKfcG97Wb8YZP
 Xdv0tYec9FRSUNP2LVwvgB40YO/Eqs8bu7vu/jJ9M9Y0UYu2u1gOtuouRDoh5HiZlW1Y
 F9nlEv+8fS9PExnB/AZ0fTaUOBQ8jzLTMhzdefkY/MpJjUYX9/aXZUi8opWw+gWSBd2U
 N5IVHGy5x4P6BGKHm8N4ZdjUtGvr+X/9qD8PIGb0B54oLsUiIchSQ2lXGC2g8OaAluAm
 cH/neBehHArWYiYCn2ZOE7xzjeMfiIl4Ot7m7LlV41eEVTJpPehEFf93hDg+1h879w7d
 1JSw==
X-Gm-Message-State: AGi0PubeWVk11/hCalKY6+vNm8VBoE6QF+oSI28ORMuGGPM1mnBqBrWi
 OXzewjKlQ86Oq6dH2SqTkb5X0Q==
X-Google-Smtp-Source: APiQypIZNgVmwLRidWuxLxiLH6PVWFdqH1ydpGuO62XWtWLjxZ1wcT+PjiOw7eW2Cl7EvdNoj9f9Sg==
X-Received: by 2002:aa7:955a:: with SMTP id w26mr11271899pfq.292.1588813512792; 
 Wed, 06 May 2020 18:05:12 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net.
 [73.53.94.119])
 by smtp.gmail.com with ESMTPSA id ev5sm6165250pjb.1.2020.05.06.18.05.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 18:05:12 -0700 (PDT)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: bpf@vger.kernel.org
Subject: [RFC PATCH bpf-next 1/3] arm64: insn: Fix two bugs in encoding 32-bit
 logical immediates
Date: Wed,  6 May 2020 18:05:01 -0700
Message-Id: <20200507010504.26352-2-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507010504.26352-1-luke.r.nels@gmail.com>
References: <20200507010504.26352-1-luke.r.nels@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_180513_887097_8E83FB09 
X-CRM114-Status: GOOD (  17.28  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 KP Singh <kpsingh@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Martin KaFai Lau <kafai@fb.com>,
 Christoffer Dall <christoffer.dall@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch fixes two issues present in the current function for encoding
arm64 logical immediates when using the 32-bit variants of instructions.

First, the code does not correctly reject an all-ones 32-bit immediate
and returns an undefined instruction encoding, which can crash the kernel.
The fix is to add a check for this case.

Second, the code incorrectly rejects some 32-bit immediates that are
actually encodable as logical immediates. The root cause is that the code
uses a default mask of 64-bit all-ones, even for 32-bit immediates. This
causes an issue later on when the mask is used to fill the top bits of
the immediate with ones, shown here:

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

The fix is to use a 32-bit all-ones default mask for 32-bit immediates.

Currently, the only user of this function is in
arch/arm64/kvm/va_layout.c, which uses 64-bit immediates and won't
trigger these bugs.

We tested the new code against llvm-mc with all 1,302 encodable 32-bit
logical immediates and all 5,334 encodable 64-bit logical immediates.

Fixes: ef3935eeebff ("arm64: insn: Add encoder for bitwise operations using literals")
Co-developed-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
---
 arch/arm64/kernel/insn.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
index 4a9e773a177f..42fad79546bb 100644
--- a/arch/arm64/kernel/insn.c
+++ b/arch/arm64/kernel/insn.c
@@ -1535,7 +1535,7 @@ static u32 aarch64_encode_immediate(u64 imm,
 				    u32 insn)
 {
 	unsigned int immr, imms, n, ones, ror, esz, tmp;
-	u64 mask = ~0UL;
+	u64 mask;
 
 	/* Can't encode full zeroes or full ones */
 	if (!imm || !~imm)
@@ -1543,13 +1543,15 @@ static u32 aarch64_encode_immediate(u64 imm,
 
 	switch (variant) {
 	case AARCH64_INSN_VARIANT_32BIT:
-		if (upper_32_bits(imm))
+		if (upper_32_bits(imm) || imm == 0xffffffffUL)
 			return AARCH64_BREAK_FAULT;
 		esz = 32;
+		mask = 0xffffffffUL;
 		break;
 	case AARCH64_INSN_VARIANT_64BIT:
 		insn |= AARCH64_INSN_SF_BIT;
 		esz = 64;
+		mask = ~0UL;
 		break;
 	default:
 		pr_err("%s: unknown variant encoding %d\n", __func__, variant);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
