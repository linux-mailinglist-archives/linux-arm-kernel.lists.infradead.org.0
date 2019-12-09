Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16617116C35
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 12:20:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E6GRF/V/+QLUxKoSHZ4jmw0dcDi+jlyvBwhTEpkBPck=; b=tCqldbohlYfvqB
	AX/Xva+c45/UCYpKIGMGyb20f4RCi1pq9iqQvu1nxXeuTjhU2VyRn+KUSYepZBs978ZOz1WxNWUcf
	l3/jzccHB67+pzhY7JNhpgZp9BEDfU0IfTnQqfiaGxKo4ceJJzZeacfwWkfHt1lqEzQqB19TRmjgf
	Y/8V9Or0zyEZWgbQSZNrunoYppFlv7Kpb6rS58sh/sqj1yOjL/2xvOwgHIcboSRLkYUwqsOTsOpQb
	AqRDwTvm3vk/fjbrmPa5Fvy6Oj9E6w6m8dQFpUfbYBL3j3VsSzSqGC1YzM7szfXo14eFj9UIo5fnG
	Y9N6gY7c8mzoUocKr01w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieH5K-0005ua-Po; Mon, 09 Dec 2019 11:20:14 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieH54-0005aw-Bk
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 11:19:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zNwAfgbihveYX3iyZDtyodrTjs/LbblnpjaNpvYxvPg=; b=I7xKYWN7FPjXEFzNKAb3meLHIP
 aOSCH8Mvloi4ruOFfZg4DQHgrvcAMweNE2bonxIsf20LJc0JY516so1k/6TJK7mucTRLI083k9oX/
 xfSpDkrmNXK/Y9qRGii5Tte8/Go8SgJbIvuvQGhW1GQD7lKjOcgFgP3w0utEXEAkxPGJNW/eDtZww
 kuZz8NY/HZBRd+9vPmljKCwyUArjVdUj1Jw4PhH/8chm/jyIQ+GhlW0fdyWUJsZOhb/GinOdqOiVu
 Zn2b4xkTiMqvXrVdhQoXsWknuoxbI+VSxWvcyI+ljEkNQi5azuSZ/8hQ7q2d3nI7n67zxkV9jMIUU
 XojUyQ2w==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:37710 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1ieH2h-0002ab-EY; Mon, 09 Dec 2019 11:17:31 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1ieH2g-0004ih-Rb; Mon, 09 Dec 2019 11:17:30 +0000
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Daniel Borkmann <daniel@iogearbox.net>
Subject: [PATCH] ARM: net: bpf: improve prologue code sequence
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1ieH2g-0004ih-Rb@rmk-PC.armlinux.org.uk>
Date: Mon, 09 Dec 2019 11:17:30 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_031958_405220_4645E998 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Song Liu <songliubraving@fb.com>, netdev@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>,
 Shubham Bansal <illusionist.neo@gmail.com>, Yonghong Song <yhs@fb.com>,
 bpf@vger.kernel.org, Andrii Nakryiko <andriin@fb.com>,
 Martin KaFai Lau <kafai@fb.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Improve the prologue code sequence to be able to take advantage of
64-bit stores, changing the code from:

  push    {r4, r5, r6, r7, r8, r9, fp, lr}
  mov     fp, sp
  sub     ip, sp, #80     ; 0x50
  sub     sp, sp, #600    ; 0x258
  str     ip, [fp, #-100] ; 0xffffff9c
  mov     r6, #0
  str     r6, [fp, #-96]  ; 0xffffffa0
  mov     r4, #0
  mov     r3, r4
  mov     r2, r0
  str     r4, [fp, #-104] ; 0xffffff98
  str     r4, [fp, #-108] ; 0xffffff94

to the tighter:

  push    {r4, r5, r6, r7, r8, r9, fp, lr}
  mov     fp, sp
  mov     r3, #0
  sub     r2, sp, #80     ; 0x50
  sub     sp, sp, #600    ; 0x258
  strd    r2, [fp, #-100] ; 0xffffff9c
  mov     r2, #0
  strd    r2, [fp, #-108] ; 0xffffff94
  mov     r2, r0

resulting in a saving of three instructions.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm/net/bpf_jit_32.c | 30 +++++++++++++-----------------
 1 file changed, 13 insertions(+), 17 deletions(-)

diff --git a/arch/arm/net/bpf_jit_32.c b/arch/arm/net/bpf_jit_32.c
index 97dc386e3cb8..cc29869d12a3 100644
--- a/arch/arm/net/bpf_jit_32.c
+++ b/arch/arm/net/bpf_jit_32.c
@@ -1260,12 +1260,9 @@ static inline void emit_push_r64(const s8 src[], struct jit_ctx *ctx)
 
 static void build_prologue(struct jit_ctx *ctx)
 {
-	const s8 r0 = bpf2a32[BPF_REG_0][1];
-	const s8 r2 = bpf2a32[BPF_REG_1][1];
-	const s8 r3 = bpf2a32[BPF_REG_1][0];
-	const s8 r4 = bpf2a32[BPF_REG_6][1];
-	const s8 fplo = bpf2a32[BPF_REG_FP][1];
-	const s8 fphi = bpf2a32[BPF_REG_FP][0];
+	const s8 arm_r0 = bpf2a32[BPF_REG_0][1];
+	const s8 *bpf_r1 = bpf2a32[BPF_REG_1];
+	const s8 *bpf_fp = bpf2a32[BPF_REG_FP];
 	const s8 *tcc = bpf2a32[TCALL_CNT];
 
 	/* Save callee saved registers. */
@@ -1278,8 +1275,10 @@ static void build_prologue(struct jit_ctx *ctx)
 	emit(ARM_PUSH(CALLEE_PUSH_MASK), ctx);
 	emit(ARM_MOV_R(ARM_FP, ARM_SP), ctx);
 #endif
-	/* Save frame pointer for later */
-	emit(ARM_SUB_I(ARM_IP, ARM_SP, SCRATCH_SIZE), ctx);
+	/* mov r3, #0 */
+	/* sub r2, sp, #SCRATCH_SIZE */
+	emit(ARM_MOV_I(bpf_r1[0], 0), ctx);
+	emit(ARM_SUB_I(bpf_r1[1], ARM_SP, SCRATCH_SIZE), ctx);
 
 	ctx->stack_size = imm8m(STACK_SIZE);
 
@@ -1287,18 +1286,15 @@ static void build_prologue(struct jit_ctx *ctx)
 	emit(ARM_SUB_I(ARM_SP, ARM_SP, ctx->stack_size), ctx);
 
 	/* Set up BPF prog stack base register */
-	emit_a32_mov_r(fplo, ARM_IP, ctx);
-	emit_a32_mov_i(fphi, 0, ctx);
+	emit_a32_mov_r64(true, bpf_fp, bpf_r1, ctx);
 
-	/* mov r4, 0 */
-	emit(ARM_MOV_I(r4, 0), ctx);
+	/* Initialize Tail Count */
+	emit(ARM_MOV_I(bpf_r1[1], 0), ctx);
+	emit_a32_mov_r64(true, tcc, bpf_r1, ctx);
 
 	/* Move BPF_CTX to BPF_R1 */
-	emit(ARM_MOV_R(r3, r4), ctx);
-	emit(ARM_MOV_R(r2, r0), ctx);
-	/* Initialize Tail Count */
-	emit(ARM_STR_I(r4, ARM_FP, EBPF_SCRATCH_TO_ARM_FP(tcc[0])), ctx);
-	emit(ARM_STR_I(r4, ARM_FP, EBPF_SCRATCH_TO_ARM_FP(tcc[1])), ctx);
+	emit(ARM_MOV_R(bpf_r1[1], arm_r0), ctx);
+
 	/* end of prologue */
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
