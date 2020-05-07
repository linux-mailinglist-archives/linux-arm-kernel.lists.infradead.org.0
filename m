Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4191D1C7FAE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 03:06:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oPU5lH9UBJHA+szg22ZAtd4DGLCHhUSQpXRyDIoUZo0=; b=pIGDogaYQfCa/BsJyUkyJVoWPa
	SKCN8f2QXymBDfibWc8yKWUrAhQjMLiml9dGSlHcjxxgTO7R9dnXVygr/9LC3XUXj4xhL0R4CEr52
	+bAUrS3NDtyxFXN4o1/vARmFtEfx4AFrjdmPKR6veaM4iiEYYpfGvmv95HfVU6Tt7YNqbUIxD2Iau
	m52xueWwawIwU88kSQW+1zjqTF+yX7g0jlpCmbCs+99pFm29hBRRUZTULsVMD/jP8oU41/A/YoAnD
	6NSH4Xm5OAWuskJi3WMYxYceGt6BNm3HzyLChOsikA2GKmpPpFsxzrYV0uKHHVR9vu5llwhotdExK
	m7nHnewA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUzF-0001lZ-KQ; Thu, 07 May 2020 01:06:05 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUyU-00019h-6k
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 01:05:19 +0000
Received: by mail-pl1-x644.google.com with SMTP id u22so1355663plq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 18:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=35i1uOH32weCZseOrM7fgg14K7q1B6kLHtPYbgszlOo=;
 b=R/LDR7DFzMXYZtRwYFLz7iACbiKbk+k+Fkge+bTZCHhLGYhkN4PhrbjMvBie2fQe2+
 +eAjuQYI/c48Lsec6zz61Z9S5eMUUq/CRbcaT3r7NoM2/8p/Ifi8rb+EmEzXzyzm6zzs
 P5IC8QPCu1DOeyp9e1xAwHT3aEwgIZBFbdcLA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=35i1uOH32weCZseOrM7fgg14K7q1B6kLHtPYbgszlOo=;
 b=XpYlJ+3ERNQSH9hqa79z1BorySu5nDINKkgoXL6KfDOjpj3sa4NLLWhTZwMXNpcFbv
 6G9d6pTomFVyMOAndgT5oK2jAwUnRUt4dj/0CidaJZ+kzNL9mfg4YbEpyD6C5hRLytgy
 mHFbJGlRsK1sdBOF84HlC58jxsYHyLwOuu/SGvU7Vh2vvOqpUdEQSZdDmuVYOTDsbw0+
 4tfx7CcqZA2m+WpXlHiC9VeW8JAINbpiDxmglyV7TyOM6xt5pVe0YAepV9o7YOnp05mt
 mlsQ/961FymDPzv/2Xlfw+uUlHwuaFnFbbK9Z+PqSenIDYEjfH0nhQfmP+miNGGsgz03
 LgfQ==
X-Gm-Message-State: AGi0Pub5TTV16r4zuhjuIM8N4ME6X6WO8Y/xaH6B4fxPfwAtSs+i/wax
 zma3P1Bu8e8oRRY2014aNk7bVg==
X-Google-Smtp-Source: APiQypKFU2PaEl7A2Ov+j6vFjii0e84UEN8OWo1rfo+p71phRPmL3Wiz+FYt/QG7MmEDbct+2lejIA==
X-Received: by 2002:a17:902:694b:: with SMTP id
 k11mr8267407plt.59.1588813517313; 
 Wed, 06 May 2020 18:05:17 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net.
 [73.53.94.119])
 by smtp.gmail.com with ESMTPSA id ev5sm6165250pjb.1.2020.05.06.18.05.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 18:05:16 -0700 (PDT)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: bpf@vger.kernel.org
Subject: [RFC PATCH bpf-next 3/3] bpf, arm64: Optimize ADD, SUB,
 JMP BPF_K using arm64 add/sub immediates
Date: Wed,  6 May 2020 18:05:03 -0700
Message-Id: <20200507010504.26352-4-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507010504.26352-1-luke.r.nels@gmail.com>
References: <20200507010504.26352-1-luke.r.nels@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_180518_268257_5620BD0F 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
 clang-built-linux@googlegroups.com, linux-arm-kernel@lists.infradead.org,
 Zi Shen Lim <zlim.lnx@gmail.com>, Yonghong Song <yhs@fb.com>,
 Andrii Nakryiko <andriin@fb.com>, Xi Wang <xi.wang@gmail.com>,
 Luke Nelson <luke.r.nels@gmail.com>, Torsten Duwe <duwe@suse.de>,
 KP Singh <kpsingh@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Enrico Weigelt <info@metux.net>,
 Martin KaFai Lau <kafai@fb.com>,
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
