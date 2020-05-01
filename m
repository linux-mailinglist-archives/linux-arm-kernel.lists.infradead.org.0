Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE34D1C0BED
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 04:03:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BS6JzqISV6+e9RMJ1/4CgpJlKjLsmNjOMX3nS+qpEt0=; b=boaagzAiR1xDlHSrgbd917pcWO
	tR1AEcaunUaI6Lyl7ZssG/usM7TocpGUnHeHGpcvqdacCTwyi7Bi7vhua8zXrgZYy9oG5v5GODDDx
	7/AdzXrnjOdZzX1e2GIg7v2MbITFLqdDriLrf9VhZBtKgznsC1D1EdoQqeOl03B1cL7plqrjxQ83g
	Ec1i7N7fVLtH0i9VnVK6iJBMtYDussmdgmvWq3aG+FDlKPrAcuPe0RB6hzyGZ8TmiIF5bxva3+Mhz
	c0RVgCUgr254AZhD5ksfzWPBWSLMTsfL5jhEx5sIJ9RxrPNKWOTuQjwH8LNIDvnvG7EfW1rF7lBSh
	GprRy43g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUL1F-0004zj-Q7; Fri, 01 May 2020 02:03:13 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUL0P-0004YX-RS
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 02:02:27 +0000
Received: by mail-pg1-x542.google.com with SMTP id q124so3914098pgq.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 19:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tvELNqxAjbVBxzf7Gp8Es5Dk4+hyrWQ5hnmsAjacAVU=;
 b=Lbm9BFkDtR3zwyIVc/ySdZUYZHeNhbKhjemSORm2CSkVwtDvAaLi2nmQLu4HdG8HAP
 xyTzFSKkUYaWO+GOCMXPAaw/qbYZ5JpiK306mVqmmsll4hg+J+DUUV0v5f7cOdinzuNj
 0HERqZdp+4w/0uX8Fl/ETX9miRiHoTqHVJeZE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tvELNqxAjbVBxzf7Gp8Es5Dk4+hyrWQ5hnmsAjacAVU=;
 b=hElIDkez4ol554e30tm6riUgAUKxmA6mfAwV+iBHTwGfLdmsnr+31W6+7JfNYl3qEn
 yyrb+oukNpcw2sot1QlOqjiMJLqr5pYdvyML+XkijfWl/SbluOe7CnrvmYgWlYRNsvQr
 rp2/mtn3HNtu4k8B+zbB0ollH/jgIiEpzpqy41Z8DQUpejm+Q2+oWIa7cvxczfcknoTn
 I0PI1+xINcy/im0OgQPWhWzjKMr/d6BoQ4RcantIGGZm5iZr3vtn+68HfMxa11p5GJtW
 b0S3sazP8k7fMhh2Xfa775Nv4nGSGJsEKf5DvxJ4QR0L/j/cTRrnOU/nOH+jvHdogg6y
 xJ5Q==
X-Gm-Message-State: AGi0PuZhaoIJAQQSz8/T1wJkRl5P2P1EpBqi2RUE7TRy8kS3xco+otmd
 wwVoUkhzOlUjCk71aNnpadL+CQ==
X-Google-Smtp-Source: APiQypJQTsqMdFZLcemxJPj2JqzPwYcmFse4CYahCcdsJKdasZVpwItAmZsTocEKxZjdGIBnXdUizg==
X-Received: by 2002:a63:6d83:: with SMTP id i125mr1999548pgc.365.1588298540989; 
 Thu, 30 Apr 2020 19:02:20 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net.
 [73.53.94.119])
 by smtp.gmail.com with ESMTPSA id fy21sm802915pjb.25.2020.04.30.19.02.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 19:02:20 -0700 (PDT)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: bpf@vger.kernel.org
Subject: [PATCH bpf-next 1/2] bpf,
 arm: Optimize ALU64 ARSH X using orrpl conditional instruction
Date: Thu, 30 Apr 2020 19:02:09 -0700
Message-Id: <20200501020210.32294-2-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200501020210.32294-1-luke.r.nels@gmail.com>
References: <20200501020210.32294-1-luke.r.nels@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_190221_881511_A5D5E7F3 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

This patch optimizes the code generated by emit_a32_arsh_r64, which
handles the BPF_ALU64 BPF_ARSH BPF_X instruction.

The original code uses a conditional B followed by an unconditional ORR.
The optimization saves one instruction by removing the B instruction
and using a conditional ORR (with an inverted condition).

Example of the code generated for BPF_ALU64_REG(BPF_ARSH, BPF_REG_0,
BPF_REG_1), before optimization:

  34:  rsb    ip, r2, #32
  38:  subs   r9, r2, #32
  3c:  lsr    lr, r0, r2
  40:  orr    lr, lr, r1, lsl ip
  44:  bmi    0x4c
  48:  orr    lr, lr, r1, asr r9
  4c:  asr    ip, r1, r2
  50:  mov    r0, lr
  54:  mov    r1, ip

and after optimization:

  34:  rsb    ip, r2, #32
  38:  subs   r9, r2, #32
  3c:  lsr    lr, r0, r2
  40:  orr    lr, lr, r1, lsl ip
  44:  orrpl  lr, lr, r1, asr r9
  48:  asr    ip, r1, r2
  4c:  mov    r0, lr
  50:  mov    r1, ip

Tested on QEMU using lib/test_bpf and test_verifier.

Co-developed-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
---
 arch/arm/net/bpf_jit_32.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/net/bpf_jit_32.c b/arch/arm/net/bpf_jit_32.c
index bf85d6db4931..48b89211ee5c 100644
--- a/arch/arm/net/bpf_jit_32.c
+++ b/arch/arm/net/bpf_jit_32.c
@@ -860,8 +860,8 @@ static inline void emit_a32_arsh_r64(const s8 dst[], const s8 src[],
 	emit(ARM_SUBS_I(tmp2[0], rt, 32), ctx);
 	emit(ARM_MOV_SR(ARM_LR, rd[1], SRTYPE_LSR, rt), ctx);
 	emit(ARM_ORR_SR(ARM_LR, ARM_LR, rd[0], SRTYPE_ASL, ARM_IP), ctx);
-	_emit(ARM_COND_MI, ARM_B(0), ctx);
-	emit(ARM_ORR_SR(ARM_LR, ARM_LR, rd[0], SRTYPE_ASR, tmp2[0]), ctx);
+	_emit(ARM_COND_PL,
+	      ARM_ORR_SR(ARM_LR, ARM_LR, rd[0], SRTYPE_ASR, tmp2[0]), ctx);
 	emit(ARM_MOV_SR(ARM_IP, rd[0], SRTYPE_ASR, rt), ctx);
 
 	arm_bpf_put_reg32(dst_lo, ARM_LR, ctx);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
