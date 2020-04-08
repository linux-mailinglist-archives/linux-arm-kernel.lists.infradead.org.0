Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E86391A284A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 20:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EylUYMwysXQlo/Cmvg2V1TRVdRZt+JspODAEj2dW0mk=; b=hNA
	E3nqcyswAbKIOv5BxaAWhxgyiKnirPQUtHSbJ+Xp6FYos3Ac5shosqspkqp77DpMlRJiUFKQO745t
	yQ3mFJh7pstb74IiJmY5Etl5EYIT6TPzAfiwqbg4roBIzW8VSkx7WBqloLYsVV21q44AjQfDJcUpJ
	pgHCH4mTN0ybBoAHIFLTgrAUMGm708KXir4aHO/VmzapxWff9jVXXU60LOWT05dT14XK2DLHlyYrc
	WEKQSCBe5oSRKNYWiTEBJ5Ylzhc6bv+NUq8o5VpXFLI46/1TpmseeIoML5Uq+qbdHRrhq8ZiaSj39
	6O2t1IghnRUWFR2mUSLhvdxcuS/ewfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMFCA-0007sY-2z; Wed, 08 Apr 2020 18:13:02 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMFC3-0007ri-OY
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 18:12:57 +0000
Received: by mail-pg1-x543.google.com with SMTP id p8so247423pgi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 11:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id;
 bh=E+fjfxRHSsIlS4yIOdyfHZC/ljktt0WCvaJtbmUNwoo=;
 b=Ism6ahYTJhW5k4WOAc7eXKD5UlKcHFqYuDe3MLavAJ8laJI05WhzzBXuq3wURZERbG
 ul6sGaYkLMeDnLYGKyM3tPBIg90jOSNbsNSlyKCGeRshZHc545Qnic2cQONOr4K8jg7e
 u8MZg2nGjhcSxqlULmBlhNu+bhmVu5bQnCBoo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=E+fjfxRHSsIlS4yIOdyfHZC/ljktt0WCvaJtbmUNwoo=;
 b=Kf8kgyt6n5dfQenXyZaDw7yA1Yrvs409e2cx6ck/6O7K6DTeX9naBZ27vogVw/FdZf
 WlHnoVj3BO1FpWwmV0H/lhDAC62yDOuRf0rZRfSCPVfn/RG8ExZ5KbWhMrhhgBdpVRUa
 jVxl5ggELh1xyngrf/4GR9EpBo1G6vpHVxdAnqSsxJLpGoYp7kbcA0flcHNIBZgNrMp4
 fJUFCuPZmQTQus6eRo7nverVO38j7w8Czqy/vGq0JKQnwk40DkBQO08958jo2jLstEhM
 1nBIQpBrqJLCVcedn1m8a306zgwBiz0Hwvh97uD8wpoF7Ag8paMia25JNlRnIDq/hM1u
 KIXg==
X-Gm-Message-State: AGi0PuZTXeSt/FfC9whWSZF+xVVamKyFbfFxB2eEpeVduCVSp/zCOsuq
 Onk5v3JOQeBg4swVeUSSoF/odDcHDeZwIQ==
X-Google-Smtp-Source: APiQypKU16iVofstluSj0s0+NWi5Ig6G1hkZ3yqoxw816RcFYad9JRg8OlR8yQQ5aFZjb5WEC2rGtg==
X-Received: by 2002:a63:770d:: with SMTP id s13mr8197474pgc.5.1586369573527;
 Wed, 08 Apr 2020 11:12:53 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net.
 [73.53.94.119])
 by smtp.gmail.com with ESMTPSA id y9sm17706525pfo.135.2020.04.08.11.12.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 11:12:51 -0700 (PDT)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: bpf@vger.kernel.org
Subject: [PATCH bpf] arm: bpf: Fix bugs with ALU64 {RSH, ARSH} BPF_K shift by 0
Date: Wed,  8 Apr 2020 18:12:29 +0000
Message-Id: <20200408181229.10909-1-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_111255_823229_CCCAFC07 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@chromium.org>,
 Shubham Bansal <illusionist.neo@gmail.com>, Andrii Nakryiko <andriin@fb.com>,
 Martin KaFai Lau <kafai@fb.com>, Xi Wang <xi.wang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current arm BPF JIT does not correctly compile RSH or ARSH when the
immediate shift amount is 0. This causes the "rsh64 by 0 imm" and "arsh64
by 0 imm" BPF selftests to hang the kernel by reaching an instruction
the verifier determines to be unreachable.

The root cause is in how immediate right shifts are encoded on arm.
For LSR and ASR (logical and arithmetic right shift), a bit-pattern
of 00000 in the immediate encodes a shift amount of 32. When the BPF
immediate is 0, the generated code shifts by 32 instead of the expected
behavior (a no-op).

This patch fixes the bugs by adding an additional check if the BPF
immediate is 0. After the change, the above mentioned BPF selftests pass.

Fixes: 39c13c204bb11 ("arm: eBPF JIT compiler")
Co-developed-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
---
 arch/arm/net/bpf_jit_32.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm/net/bpf_jit_32.c b/arch/arm/net/bpf_jit_32.c
index cc29869d12a3..d124f78e20ac 100644
--- a/arch/arm/net/bpf_jit_32.c
+++ b/arch/arm/net/bpf_jit_32.c
@@ -929,7 +929,11 @@ static inline void emit_a32_rsh_i64(const s8 dst[],
 	rd = arm_bpf_get_reg64(dst, tmp, ctx);
 
 	/* Do LSR operation */
-	if (val < 32) {
+	if (val == 0) {
+		/* An immediate value of 0 encodes a shift amount of 32
+		 * for LSR. To shift by 0, don't do anything.
+		 */
+	} else if (val < 32) {
 		emit(ARM_MOV_SI(tmp2[1], rd[1], SRTYPE_LSR, val), ctx);
 		emit(ARM_ORR_SI(rd[1], tmp2[1], rd[0], SRTYPE_ASL, 32 - val), ctx);
 		emit(ARM_MOV_SI(rd[0], rd[0], SRTYPE_LSR, val), ctx);
@@ -955,7 +959,11 @@ static inline void emit_a32_arsh_i64(const s8 dst[],
 	rd = arm_bpf_get_reg64(dst, tmp, ctx);
 
 	/* Do ARSH operation */
-	if (val < 32) {
+	if (val == 0) {
+		/* An immediate value of 0 encodes a shift amount of 32
+		 * for ASR. To shift by 0, don't do anything.
+		 */
+	} else if (val < 32) {
 		emit(ARM_MOV_SI(tmp2[1], rd[1], SRTYPE_LSR, val), ctx);
 		emit(ARM_ORR_SI(rd[1], tmp2[1], rd[0], SRTYPE_ASL, 32 - val), ctx);
 		emit(ARM_MOV_SI(rd[0], rd[0], SRTYPE_ASR, val), ctx);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
