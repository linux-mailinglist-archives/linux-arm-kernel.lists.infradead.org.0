Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 034951CB6EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 20:16:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kTgtVedBvQVbXcxKFoPjkuaUDF2N+MwLfhyBoa6o9jo=; b=gJo3SDcl7kQ0YvFx6EgNQ9fLQV
	0VzKX9bZdEamu6ZD4FVjcYHLLemiStdff1d7VRuJzZrqfkJdTgy6WlBDxo4vsw/MSdmAvFcCz9kmH
	O6suOnOfuzwWAg35DFHKihShjFKwF3yHbekdyLI8aamzcAzMlgeaLmfmkzU8T2tlei0H2ovm+Htkf
	g48CI6J2yXgk2mdlsx2b8ncgRMRt08Z7R+GtusxYw80+cUI1ciKU8wZ9TX/BPKdgzoNhr5Y50UwR0
	f83x8TtJyrlfc798ROc8asJKF7AR+0mkuPiHKd9KOJPG/MP+CeGvIXTkEnyZWRgzcVSCvK1gHOzEI
	RAFX0JEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX7YK-0008Pz-Tr; Fri, 08 May 2020 18:16:52 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX7Xa-0007l2-Ju
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 18:16:08 +0000
Received: by mail-pg1-x542.google.com with SMTP id d22so1230064pgk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 11:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1RkJFS+t50tivJwSHzxWQpizFYGiyRAPi5B/W8OYM90=;
 b=CCWu0LupJQSLY09+5kTFGNYiHYCgaMr3aDRuRcSjVMD7wkRduR4zrHrWLKa53mVjjP
 9DMnW8euiPBliMtpPia67Qi698Z94wMFIWcXHzXx/3KnrghW58Dl0By0ArPQMx0jRC4E
 xAxlH1UM5bTdYo8pmzNqUBGKcKRxGOFWRpDAk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1RkJFS+t50tivJwSHzxWQpizFYGiyRAPi5B/W8OYM90=;
 b=d1v13HGiLIz+GJQ1E8pIyJHHXsXZmAoLbmzOhrNNpormmTSFZQJeM3BEn0VGFkx7LP
 avDGLTtt9M/3sFguX9121N2EVeDQ3SeCDJe1kiZ8/TAhMcUR9YH+eCZi0UVV5Tq4f4In
 nvW5P/WLJLNESnWJPKrmYxsmwnaJ4njPwvT3yQcTkbr2574SS4oWBWEiV3NLu8XKGeZ7
 mBLV6ln5LikPSRSgAIuiV/TYOa+i8hKjqLzjsTEECoBznqcU2CuiKALxL7OL+EAlxRZ5
 90nawlcHRP0ixIFrn71nGLawpDVUZs7tHWErdRXVJ708rV23EYucfaPpj+Tk6T7yjJz0
 W5hQ==
X-Gm-Message-State: AGi0PuZMcEyH7q0/sYpgg5xlxDfwlVoMzS8OsZAFcT2NUrWk7OT/Zw09
 TFlEOyMFjBgecvhlMZc7XZTlPw==
X-Google-Smtp-Source: APiQypKlpWm+EIgUVSCtoFz2t937EsJIcePxRHt5/hrRD9OkiuRJ1E5BYoVCYwVZF5C/mgLC1saWKA==
X-Received: by 2002:aa7:951b:: with SMTP id b27mr4228455pfp.2.1588961765560;
 Fri, 08 May 2020 11:16:05 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net.
 [73.53.94.119])
 by smtp.gmail.com with ESMTPSA id e11sm2349463pfl.85.2020.05.08.11.16.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 May 2020 11:16:05 -0700 (PDT)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: bpf@vger.kernel.org
Subject: [PATCH bpf-next v2 3/3] bpf, arm64: Optimize ADD, SUB,
 JMP BPF_K using arm64 add/sub immediates
Date: Fri,  8 May 2020 11:15:46 -0700
Message-Id: <20200508181547.24783-4-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200508181547.24783-1-luke.r.nels@gmail.com>
References: <20200508181547.24783-1-luke.r.nels@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_111606_672093_E910D644 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
 clang-built-linux@googlegroups.com, linux-arm-kernel@lists.infradead.org,
 Zi Shen Lim <zlim.lnx@gmail.com>, Yonghong Song <yhs@fb.com>,
 Andrii Nakryiko <andriin@fb.com>, Xi Wang <xi.wang@gmail.com>,
 Luke Nelson <luke.r.nels@gmail.com>, Alexios Zavras <alexios.zavras@intel.com>,
 KP Singh <kpsingh@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>,
 Christoffer Dall <christoffer.dall@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current code for BPF_{ADD,SUB} BPF_K loads the BPF immediate to a
temporary register before performing the addition/subtraction. Similarly,
BPF_JMP BPF_K cases load the immediate to a temporary register before
comparison.

This patch introduces optimizations that use arm64 immediate add, sub,
cmn, or cmp instructions when the BPF immediate fits. If the immediate
does not fit, it falls back to using a temporary register.

Example of generated code for BPF_ALU64_IMM(BPF_ADD, R0, 2):

without optimization:

  24: mov x10, #0x2
  28: add x7, x7, x10

with optimization:

  24: add x7, x7, #0x2

The code could use A64_{ADD,SUB}_I directly and check if it returns
AARCH64_BREAK_FAULT, similar to how logical immediates are handled.
However, aarch64_insn_gen_add_sub_imm from insn.c prints error messages
when the immediate does not fit, and it's simpler to check if the
immediate fits ahead of time.

Co-developed-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
Acked-by: Daniel Borkmann <daniel@iogearbox.net>
---
 arch/arm64/net/bpf_jit.h      |  8 ++++++++
 arch/arm64/net/bpf_jit_comp.c | 36 +++++++++++++++++++++++++++++------
 2 files changed, 38 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/net/bpf_jit.h b/arch/arm64/net/bpf_jit.h
index f36a779949e6..923ae7ff68c8 100644
--- a/arch/arm64/net/bpf_jit.h
+++ b/arch/arm64/net/bpf_jit.h
@@ -100,6 +100,14 @@
 /* Rd = Rn OP imm12 */
 #define A64_ADD_I(sf, Rd, Rn, imm12) A64_ADDSUB_IMM(sf, Rd, Rn, imm12, ADD)
 #define A64_SUB_I(sf, Rd, Rn, imm12) A64_ADDSUB_IMM(sf, Rd, Rn, imm12, SUB)
+#define A64_ADDS_I(sf, Rd, Rn, imm12) \
+	A64_ADDSUB_IMM(sf, Rd, Rn, imm12, ADD_SETFLAGS)
+#define A64_SUBS_I(sf, Rd, Rn, imm12) \
+	A64_ADDSUB_IMM(sf, Rd, Rn, imm12, SUB_SETFLAGS)
+/* Rn + imm12; set condition flags */
+#define A64_CMN_I(sf, Rn, imm12) A64_ADDS_I(sf, A64_ZR, Rn, imm12)
+/* Rn - imm12; set condition flags */
+#define A64_CMP_I(sf, Rn, imm12) A64_SUBS_I(sf, A64_ZR, Rn, imm12)
 /* Rd = Rn */
 #define A64_MOV(sf, Rd, Rn) A64_ADD_I(sf, Rd, Rn, 0)
 
diff --git a/arch/arm64/net/bpf_jit_comp.c b/arch/arm64/net/bpf_jit_comp.c
index 083e5d8a5e2c..561a2fea9cdd 100644
--- a/arch/arm64/net/bpf_jit_comp.c
+++ b/arch/arm64/net/bpf_jit_comp.c
@@ -167,6 +167,12 @@ static inline int epilogue_offset(const struct jit_ctx *ctx)
 	return to - from;
 }
 
+static bool is_addsub_imm(u32 imm)
+{
+	/* Either imm12 or shifted imm12. */
+	return !(imm & ~0xfff) || !(imm & ~0xfff000);
+}
+
 /* Stack must be multiples of 16B */
 #define STACK_ALIGN(sz) (((sz) + 15) & ~15)
 
@@ -479,13 +485,25 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 	/* dst = dst OP imm */
 	case BPF_ALU | BPF_ADD | BPF_K:
 	case BPF_ALU64 | BPF_ADD | BPF_K:
-		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_ADD(is64, dst, dst, tmp), ctx);
+		if (is_addsub_imm(imm)) {
+			emit(A64_ADD_I(is64, dst, dst, imm), ctx);
+		} else if (is_addsub_imm(-imm)) {
+			emit(A64_SUB_I(is64, dst, dst, -imm), ctx);
+		} else {
+			emit_a64_mov_i(is64, tmp, imm, ctx);
+			emit(A64_ADD(is64, dst, dst, tmp), ctx);
+		}
 		break;
 	case BPF_ALU | BPF_SUB | BPF_K:
 	case BPF_ALU64 | BPF_SUB | BPF_K:
-		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_SUB(is64, dst, dst, tmp), ctx);
+		if (is_addsub_imm(imm)) {
+			emit(A64_SUB_I(is64, dst, dst, imm), ctx);
+		} else if (is_addsub_imm(-imm)) {
+			emit(A64_ADD_I(is64, dst, dst, -imm), ctx);
+		} else {
+			emit_a64_mov_i(is64, tmp, imm, ctx);
+			emit(A64_SUB(is64, dst, dst, tmp), ctx);
+		}
 		break;
 	case BPF_ALU | BPF_AND | BPF_K:
 	case BPF_ALU64 | BPF_AND | BPF_K:
@@ -639,8 +657,14 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 	case BPF_JMP32 | BPF_JSLT | BPF_K:
 	case BPF_JMP32 | BPF_JSGE | BPF_K:
 	case BPF_JMP32 | BPF_JSLE | BPF_K:
-		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_CMP(is64, dst, tmp), ctx);
+		if (is_addsub_imm(imm)) {
+			emit(A64_CMP_I(is64, dst, imm), ctx);
+		} else if (is_addsub_imm(-imm)) {
+			emit(A64_CMN_I(is64, dst, -imm), ctx);
+		} else {
+			emit_a64_mov_i(is64, tmp, imm, ctx);
+			emit(A64_CMP(is64, dst, tmp), ctx);
+		}
 		goto emit_cond_jmp;
 	case BPF_JMP | BPF_JSET | BPF_K:
 	case BPF_JMP32 | BPF_JSET | BPF_K:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
