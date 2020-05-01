Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 907F41C0BEC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 04:03:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3Q6QaJv405EnaQ808WnoKmxnr4+MBRYTCXcwNVNyj7M=; b=O5ezDgw6Er5Zg9XMY+Y8BHtE2p
	g8EQsXN0qGZrS7TrXheFUK5aRXUR52trQc08Xbu7gLSzjyRnNI/NbC1fogkTLsfLzQdsjh04LpBen
	dSTvOnOR56kEgeYwi12/MPSAa5++El++BEEYswlWcr3VOxsGSrytvQ2CG6QvpUy3RbQ7Ho+CGmR+2
	4XcjdZi7UXGS/Q98sySIyMtp7+iLWusDIDR22CPWRLollndDIxtL6e4yu7et2guDtGOubc3C0ucCO
	bNH9/RH4kbcROqGZFpP27F3qhh8tAAXNB1UyiEhH9kPBnWWroy8f0lBd4f4ieGjiPAaoJB0YOFocw
	0anNGarA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUL11-0004i8-39; Fri, 01 May 2020 02:02:59 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUL0Q-0004Yy-RK
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 02:02:31 +0000
Received: by mail-pj1-x1043.google.com with SMTP id a31so1824107pje.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 19:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=fJ0X3HmB1iDCnqYSKzBuKNLlmf+ZNE7akQZz7eS+SQs=;
 b=buGYG1zPmUGmihTBS3FalBgnSAVFf5gYRLV938Kf3kJS7zBbWoaUgQlCNRvsd7Gm5v
 v2Ybw0vo68ILLFIbam3bSlhEXbSKXz3l13n0o1RPtmFAXsR5ue7ZzwtajUY8Q3ntIJfz
 e9gVZ4kpwNw5XkxtEthuLibHWDwI4OQuPiaZo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=fJ0X3HmB1iDCnqYSKzBuKNLlmf+ZNE7akQZz7eS+SQs=;
 b=QwkFkVN1GMna5oE4VDmvGEkVR4PWPSuDbH3OCypSAyDApIVUuMMAlnzmwmMY7M1kMf
 LWA5grfjPjU654tzVAbtLD9d5u2nOqQZ7y61dM3tkhcjV4Sh9NVdvoxxmT6TkRjgg7uB
 Yvlgi1U5cd3zSnte6oPlBMsxpy3qrEMRKdoAMZf+E/6k4xw/U3rBBzq8BLLOHOJZplCW
 sz48JRXGl6g+hhLf1oEVmVor0Q59XzAtiefcUiNMbZ6Vxirfg+UqBRX1+CZFCP4wmPx4
 Q7MkXjx4QKAbRL+pzElouRJvyjcYF9SYiWKC7PxHdQQlBzZYVxlKdHeOO8hv6SK7MRCn
 wHkg==
X-Gm-Message-State: AGi0Pub6y4YjT4LX9LuO68BchB2GJcBVYlLKx3DyttcwZHvJG2T4S693
 RH2odyXqifB78ozTO+MACs3E3g==
X-Google-Smtp-Source: APiQypIIPeSyeqjGDdK6yZnRaWppj/2y2OI0Sxy/utZnN7It04QldoSdy+Qq/1GaEPCvXdGHIPur/Q==
X-Received: by 2002:a17:90b:1044:: with SMTP id
 gq4mr1928047pjb.81.1588298542058; 
 Thu, 30 Apr 2020 19:02:22 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net.
 [73.53.94.119])
 by smtp.gmail.com with ESMTPSA id fy21sm802915pjb.25.2020.04.30.19.02.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 19:02:21 -0700 (PDT)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: bpf@vger.kernel.org
Subject: [PATCH bpf-next 2/2] bpf,
 arm: Optimize ALU ARSH K using asr immediate instruction
Date: Thu, 30 Apr 2020 19:02:10 -0700
Message-Id: <20200501020210.32294-3-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200501020210.32294-1-luke.r.nels@gmail.com>
References: <20200501020210.32294-1-luke.r.nels@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_190222_877652_C9828172 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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
Cc: Song Liu <songliubraving@fb.com>, linux-kernel@vger.kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>, Luke Nelson <luke.r.nels@gmail.com>,
 netdev@vger.kernel.org, John Fastabend <john.fastabend@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Yonghong Song <yhs@fb.com>,
 KP Singh <kpsingh@chromium.org>, Shubham Bansal <illusionist.neo@gmail.com>,
 Andrii Nakryiko <andriin@fb.com>, Martin KaFai Lau <kafai@fb.com>,
 Xi Wang <xi.wang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds an optimization that uses the asr immediate instruction
for BPF_ALU BPF_ARSH BPF_K, rather than loading the immediate to
a temporary register. This is similar to existing code for handling
BPF_ALU BPF_{LSH,RSH} BPF_K. This optimization saves two instructions
and is more consistent with LSH and RSH.

Example of the code generated for BPF_ALU32_IMM(BPF_ARSH, BPF_REG_0, 5)
before the optimization:

  2c:  mov    r8, #5
  30:  mov    r9, #0
  34:  asr    r0, r0, r8

and after optimization:

  2c:  asr    r0, r0, #5

Tested on QEMU using lib/test_bpf and test_verifier.

Co-developed-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
---
 arch/arm/net/bpf_jit_32.c | 10 +++++++---
 arch/arm/net/bpf_jit_32.h |  3 +++
 2 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/arch/arm/net/bpf_jit_32.c b/arch/arm/net/bpf_jit_32.c
index 48b89211ee5c..0207b6ea6e8a 100644
--- a/arch/arm/net/bpf_jit_32.c
+++ b/arch/arm/net/bpf_jit_32.c
@@ -795,6 +795,9 @@ static inline void emit_a32_alu_i(const s8 dst, const u32 val,
 	case BPF_RSH:
 		emit(ARM_LSR_I(rd, rd, val), ctx);
 		break;
+	case BPF_ARSH:
+		emit(ARM_ASR_I(rd, rd, val), ctx);
+		break;
 	case BPF_NEG:
 		emit(ARM_RSB_I(rd, rd, val), ctx);
 		break;
@@ -1408,7 +1411,6 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx)
 	case BPF_ALU | BPF_MUL | BPF_X:
 	case BPF_ALU | BPF_LSH | BPF_X:
 	case BPF_ALU | BPF_RSH | BPF_X:
-	case BPF_ALU | BPF_ARSH | BPF_K:
 	case BPF_ALU | BPF_ARSH | BPF_X:
 	case BPF_ALU64 | BPF_ADD | BPF_K:
 	case BPF_ALU64 | BPF_ADD | BPF_X:
@@ -1465,10 +1467,12 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx)
 	case BPF_ALU64 | BPF_MOD | BPF_K:
 	case BPF_ALU64 | BPF_MOD | BPF_X:
 		goto notyet;
-	/* dst = dst >> imm */
 	/* dst = dst << imm */
-	case BPF_ALU | BPF_RSH | BPF_K:
+	/* dst = dst >> imm */
+	/* dst = dst >> imm (signed) */
 	case BPF_ALU | BPF_LSH | BPF_K:
+	case BPF_ALU | BPF_RSH | BPF_K:
+	case BPF_ALU | BPF_ARSH | BPF_K:
 		if (unlikely(imm > 31))
 			return -EINVAL;
 		if (imm)
diff --git a/arch/arm/net/bpf_jit_32.h b/arch/arm/net/bpf_jit_32.h
index fb67cbc589e0..e0b593a1498d 100644
--- a/arch/arm/net/bpf_jit_32.h
+++ b/arch/arm/net/bpf_jit_32.h
@@ -94,6 +94,9 @@
 #define ARM_INST_LSR_I		0x01a00020
 #define ARM_INST_LSR_R		0x01a00030
 
+#define ARM_INST_ASR_I		0x01a00040
+#define ARM_INST_ASR_R		0x01a00050
+
 #define ARM_INST_MOV_R		0x01a00000
 #define ARM_INST_MOVS_R		0x01b00000
 #define ARM_INST_MOV_I		0x03a00000
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
