Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6627116C2F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 12:18:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Drmu1zAWY1zX1UcX0/BxjOc8nvT9S4EKGs4xpXHzNTY=; b=nvfwQVAS7VV1tV
	vuSJUgeImWeFmqXl7d+lYEcNaNMaCUevpjf/5ADjewwHMcbxWoCe0y3etqOQLMjxJvc3tWgfyTWbL
	iLdlke/pCAky3/mf4la4MM20UDbIQH+dSKqoe5TzkTA9Eg6Z69Cx1BcVj3BDLJQ/Aes5LXOjIkhui
	N/ZItfBTP0XyiQ4eVRJQkP8YdXN7zINDcXPNwLmdRui1UNRL+XPktHnHFnf8AOllYgtRBjmYzfDJm
	mv486szg2JtQBQmECnv/rkPpwc05CTrAei0aRNVkCHrEYO0v2bFfABj7PoyxMFKR+C0njTMH3/p7d
	dv76L1qMi24RPjbsiUQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieH3I-0005bs-AL; Mon, 09 Dec 2019 11:18:08 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieH3A-0005ax-CL
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 11:18:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XjkK675LJFtaYhlzPVMRnNNjW81WA4APzKu+SB9Uw0M=; b=Imq/0MAl+4ic9wupAscxqljrs5
 QR1m4SntqP1yoy4jMwiWkUD2uIPFBtm+S8XUUiBn3dqH4khEqlC1ATYMe6Rxr3Ux0aPNziSgahxBp
 hP3MDmZp3FX5/hT4hLlnITR8TsImBOrxIeFERrQssdKmLXGNFTCgCzbeGW8eIZxYJrFnBltzxH9kW
 6FDCXb6iBkQpCXxfiNcCAN1bpIU/IciG/k3lqQk2QuDAUgQcXy323gJLnoX1mr/F8soBreh4PSUbT
 AuEquqXEUzpAwU5uTO5meQpP7fRRaNIsdBlOxn97uOguoB0lXr/FAGLwO5aRrKaNFHTmRGCWBTFhP
 0kjUO8sg==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2002:4e20:1eda:1:222:68ff:fe15:37dd]:49900 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1ieH2m-0002aj-Uk; Mon, 09 Dec 2019 11:17:37 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1ieH2l-0004io-VM; Mon, 09 Dec 2019 11:17:36 +0000
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Daniel Borkmann <daniel@iogearbox.net>
Subject: [PATCH] ARM: net: bpf: improve endian conversion
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1ieH2l-0004io-VM@rmk-PC.armlinux.org.uk>
Date: Mon, 09 Dec 2019 11:17:35 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_031800_423180_2A027E7C 
X-CRM114-Status: GOOD (  10.80  )
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

Make the endian conversion function easier to read by moving it out
of the big switch, and avoid doing anything if we're requested to
convert from a 64-bit LE value (we're LE anyway here.)

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm/net/bpf_jit_32.c | 91 +++++++++++++++++++++------------------
 1 file changed, 50 insertions(+), 41 deletions(-)

diff --git a/arch/arm/net/bpf_jit_32.c b/arch/arm/net/bpf_jit_32.c
index cc29869d12a3..646ab5785ca4 100644
--- a/arch/arm/net/bpf_jit_32.c
+++ b/arch/arm/net/bpf_jit_32.c
@@ -1245,6 +1245,55 @@ static inline void emit_rev32(const u8 rd, const u8 rn, struct jit_ctx *ctx)
 #endif
 }
 
+static void emit_a32_endian(const s8 dst[], u8 code, s32 bits,
+			    struct jit_ctx *ctx)
+{
+	const s8 *tmp = bpf2a32[TMP_REG_1];
+	const s8 *tmp2 = bpf2a32[TMP_REG_2];
+	const s8 *rd;
+
+	/* Converting from LE and 64-bit value is a no-op. */
+	if (code == BPF_FROM_LE && bits == 64)
+		return;
+
+	rd = arm_bpf_get_reg64(dst, tmp, ctx);
+
+	if (code != BPF_FROM_LE) {
+		/* endian swap */
+		switch (imm) {
+		case 16:
+			emit_rev16(rd[1], rd[1], ctx);
+			break;
+		case 32:
+			emit_rev32(rd[1], rd[1], ctx);
+			break;
+		case 64:
+			emit_rev32(ARM_LR, rd[1], ctx);
+			emit_rev32(rd[1], rd[0], ctx);
+			emit(ARM_MOV_R(rd[0], ARM_LR), ctx);
+			break;
+		}
+	}
+
+	/* zero-extend size to 64-bit */
+	switch (imm) {
+	case 16:
+#if __LINUX_ARM_ARCH__ < 6
+		emit_a32_mov_i(tmp2[1], 0xffff, ctx);
+		emit(ARM_AND_R(rd[1], rd[1], tmp2[1]), ctx);
+#else /* ARMv6+ */
+		emit(ARM_UXTH(rd[1], rd[1]), ctx);
+#endif
+		/* FALLTHROUGH */
+	case 32:
+		if (!ctx->prog->aux->verifier_zext)
+			emit(ARM_MOV_I(rd[0], 0), ctx);
+		break;
+	}
+
+	arm_bpf_put_reg64(dst, rd, ctx);
+}
+
 // push the scratch stack register on top of the stack
 static inline void emit_push_r64(const s8 src[], struct jit_ctx *ctx)
 {
@@ -1523,47 +1572,7 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx)
 	/* dst = htobe(dst) */
 	case BPF_ALU | BPF_END | BPF_FROM_LE:
 	case BPF_ALU | BPF_END | BPF_FROM_BE:
-		rd = arm_bpf_get_reg64(dst, tmp, ctx);
-		if (BPF_SRC(code) == BPF_FROM_LE)
-			goto emit_bswap_uxt;
-		switch (imm) {
-		case 16:
-			emit_rev16(rd[1], rd[1], ctx);
-			goto emit_bswap_uxt;
-		case 32:
-			emit_rev32(rd[1], rd[1], ctx);
-			goto emit_bswap_uxt;
-		case 64:
-			emit_rev32(ARM_LR, rd[1], ctx);
-			emit_rev32(rd[1], rd[0], ctx);
-			emit(ARM_MOV_R(rd[0], ARM_LR), ctx);
-			break;
-		}
-		goto exit;
-emit_bswap_uxt:
-		switch (imm) {
-		case 16:
-			/* zero-extend 16 bits into 64 bits */
-#if __LINUX_ARM_ARCH__ < 6
-			emit_a32_mov_i(tmp2[1], 0xffff, ctx);
-			emit(ARM_AND_R(rd[1], rd[1], tmp2[1]), ctx);
-#else /* ARMv6+ */
-			emit(ARM_UXTH(rd[1], rd[1]), ctx);
-#endif
-			if (!ctx->prog->aux->verifier_zext)
-				emit(ARM_EOR_R(rd[0], rd[0], rd[0]), ctx);
-			break;
-		case 32:
-			/* zero-extend 32 bits into 64 bits */
-			if (!ctx->prog->aux->verifier_zext)
-				emit(ARM_EOR_R(rd[0], rd[0], rd[0]), ctx);
-			break;
-		case 64:
-			/* nop */
-			break;
-		}
-exit:
-		arm_bpf_put_reg64(dst, rd, ctx);
+		emit_a32_endian(dst, BPF_SRC(code), imm, ctx);
 		break;
 	/* dst = imm64 */
 	case BPF_LD | BPF_IMM | BPF_DW:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
