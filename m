Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E251A3C4B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 00:18:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EPio8AU71h7rUY889PE1SKKqAzrbo7ZXkbh3WGHH4qs=; b=SvS
	zrPPUQ4QVNPkp63gHp7RwVJPCCN4neAxihjvYvMZaJlGMUzv7rWoqk9rjHEwtUzrfUf1YNmh7WVmr
	Iimkl+Iu6OnH9foGfB/BLd7ShLNCP9yMKKlLHULP6A8w4hoPUy4n2I4r88Oc1i3avSnmyXG128sD5
	yfN99T7Ywsh1dm0F+ZB0BAIG/uuQgzGh6zTI90rAs2jQs97jU/a5b0E/t5kmkmtTkJZGhIv9oqL6n
	Uz8hq0jw7JDIHlxNIAllveeRVy8MyMtgtt5doj+I3Mb9cqW/T+HYa0LXeCxhWEFPkMwf82X7Keeco
	kbpZaMrsfrIEsnAgeWZ4LyoKSMJTG9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMfV2-0003nJ-FL; Thu, 09 Apr 2020 22:18:16 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMfUt-0003mP-2u
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 22:18:09 +0000
Received: by mail-pl1-x643.google.com with SMTP id w3so10427plz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 15:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id;
 bh=d7I79Px6oW+xidqJy+si2tmnAYd369ZVNNbYLDl32gU=;
 b=W9vJOxKo91GTrNMNOMDe+CcYIVgw/SOaLir7ekED0M2QDlKPHJMg0FkVS8aK5M4xUT
 wKcgwDjPlpAbpIDBkQwzvxwo3aVhwKRbg73R/ocWLnP1YHT83chblwRCKlYUk3f3QcHv
 X6rglaZaHPq7Yu0iL3vU0s8SY7n3uOxzM0y4Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=d7I79Px6oW+xidqJy+si2tmnAYd369ZVNNbYLDl32gU=;
 b=MzDofdDg6OMhAuDgIkutOwrk3GpOUBh+fFJYFEB8k4JNODj+h7dLA2iI+X06E3iWvL
 kom2ps/D60LJ/kDhEkj1R7FbKow4zg4EBhobBa/dnx1hMHPeMdbjQ3I/RNygu1LHQcIy
 2N3XkjyjUCGP8nmTAKXL7ZL/nGct5zwwtilLOBzqx+xSs0xl9zl0DJlzNF6D4z+qDFJs
 eR1v3bxeiPyR897TffXdbGcSAzUj7LsNgI6Lvd+DvgzlE3TDnOd9vZNgqCTEQQIBtQfD
 JsYrYNdIKbaWGM31xj/+qqCBpfqa/5tIO0oY6zzXgfAbgR8NpFB3vYn6SmXRM4vHjoY0
 NLTg==
X-Gm-Message-State: AGi0PuZZETILdgEU6KqV+HqVz9n8kzWCicHrNSuOk26AK9cXEOXUzKDV
 pIfKLg/octU/VFa0zP5PEGXF3g==
X-Google-Smtp-Source: APiQypLfv8Wd0dMcbnojJcRFpZ7fPcaUoNxEFntuU+I+4oPJFPCqFySEK9Ta/6QO6xIo+tI8+FNSxA==
X-Received: by 2002:a17:90a:94c8:: with SMTP id
 j8mr1817350pjw.155.1586470682925; 
 Thu, 09 Apr 2020 15:18:02 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net.
 [73.53.94.119])
 by smtp.gmail.com with ESMTPSA id w29sm111547pge.25.2020.04.09.15.18.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 15:18:02 -0700 (PDT)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: bpf@vger.kernel.org
Subject: [PATCH bpf] arm, bpf: Fix offset overflow for BPF_MEM BPF_DW
Date: Thu,  9 Apr 2020 15:17:52 -0700
Message-Id: <20200409221752.28448-1-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_151807_790838_8FC81021 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

This patch fixes an incorrect check in how immediate memory offsets are
computed for BPF_DW on arm.

For BPF_LDX/ST/STX + BPF_DW, the 32-bit arm JIT breaks down an 8-byte
access into two separate 4-byte accesses using off+0 and off+4. If off
fits in imm12, the JIT emits a ldr/str instruction with the immediate
and avoids the use of a temporary register. While the current check off
<= 0xfff ensures that the first immediate off+0 doesn't overflow imm12,
it's not sufficient for the second immediate off+4, which may cause the
second access of BPF_DW to read/write the wrong address.

This patch fixes the problem by changing the check to
off <= 0xfff - 4 for BPF_DW, ensuring off+4 will never overflow.

A side effect of simplifying the check is that it now allows using
negative immediate offsets in ldr/str. This means that small negative
offsets can also avoid the use of a temporary register.

This patch introduces no new failures in test_verifier or test_bpf.c.

Fixes: c5eae692571d6 ("ARM: net: bpf: improve 64-bit store implementation")
Fixes: ec19e02b343db ("ARM: net: bpf: fix LDX instructions")
Co-developed-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
---
 arch/arm/net/bpf_jit_32.c | 40 +++++++++++++++++++++++----------------
 1 file changed, 24 insertions(+), 16 deletions(-)

diff --git a/arch/arm/net/bpf_jit_32.c b/arch/arm/net/bpf_jit_32.c
index d124f78e20ac..bf85d6db4931 100644
--- a/arch/arm/net/bpf_jit_32.c
+++ b/arch/arm/net/bpf_jit_32.c
@@ -1000,21 +1000,35 @@ static inline void emit_a32_mul_r64(const s8 dst[], const s8 src[],
 	arm_bpf_put_reg32(dst_hi, rd[0], ctx);
 }
 
+static bool is_ldst_imm(s16 off, const u8 size)
+{
+	s16 off_max = 0;
+
+	switch (size) {
+	case BPF_B:
+	case BPF_W:
+		off_max = 0xfff;
+		break;
+	case BPF_H:
+		off_max = 0xff;
+		break;
+	case BPF_DW:
+		/* Need to make sure off+4 does not overflow. */
+		off_max = 0xfff - 4;
+		break;
+	}
+	return -off_max <= off && off <= off_max;
+}
+
 /* *(size *)(dst + off) = src */
 static inline void emit_str_r(const s8 dst, const s8 src[],
-			      s32 off, struct jit_ctx *ctx, const u8 sz){
+			      s16 off, struct jit_ctx *ctx, const u8 sz){
 	const s8 *tmp = bpf2a32[TMP_REG_1];
-	s32 off_max;
 	s8 rd;
 
 	rd = arm_bpf_get_reg32(dst, tmp[1], ctx);
 
-	if (sz == BPF_H)
-		off_max = 0xff;
-	else
-		off_max = 0xfff;
-
-	if (off < 0 || off > off_max) {
+	if (!is_ldst_imm(off, sz)) {
 		emit_a32_mov_i(tmp[0], off, ctx);
 		emit(ARM_ADD_R(tmp[0], tmp[0], rd), ctx);
 		rd = tmp[0];
@@ -1043,18 +1057,12 @@ static inline void emit_str_r(const s8 dst, const s8 src[],
 
 /* dst = *(size*)(src + off) */
 static inline void emit_ldx_r(const s8 dst[], const s8 src,
-			      s32 off, struct jit_ctx *ctx, const u8 sz){
+			      s16 off, struct jit_ctx *ctx, const u8 sz){
 	const s8 *tmp = bpf2a32[TMP_REG_1];
 	const s8 *rd = is_stacked(dst_lo) ? tmp : dst;
 	s8 rm = src;
-	s32 off_max;
-
-	if (sz == BPF_H)
-		off_max = 0xff;
-	else
-		off_max = 0xfff;
 
-	if (off < 0 || off > off_max) {
+	if (!is_ldst_imm(off, sz)) {
 		emit_a32_mov_i(tmp[0], off, ctx);
 		emit(ARM_ADD_R(tmp[0], tmp[0], src), ctx);
 		rm = tmp[0];
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
