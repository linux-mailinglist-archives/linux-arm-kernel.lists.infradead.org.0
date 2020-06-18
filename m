Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F60A1FF19C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 14:26:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VfAPTSIsXQVsenLGXNu0RFDN2+P3H2KYgkEsKJHo10A=; b=P5Q45wYwKHEo9p
	mpR9vxyCFvwYHiuDxUF/XqVnCpBSjrcBWO880R60/d8wC9CKZdSi//r4R3+WKIjnPMmdUPQQ5HtRM
	uqV0ri+SB3TGfDbjhzzIE7sSrLnh8/ZGhk/102RI3g7wcPFk6Bv1K51Q9hpxridv9c9MIMgdBHk0S
	hh6pFv0aBSSfC2wESD00P+zck1OckYQDLzdwo/FG+UF9zNMgL2XjGEyGlQvYptGJQ4+OhHbr3F+0f
	Rpbk8/4xw3q72WTYa49dXI1qei9PMJc2+zU/+2DDmZaveqCBE9WAS+SmbciVkK03IbZOMNZQAb0zr
	Xi4/2dseblhDDp4zjfcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jltcR-0004Ue-7P; Thu, 18 Jun 2020 12:26:11 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jltcC-0004Sq-7g
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 12:25:57 +0000
Received: by mail-wm1-x341.google.com with SMTP id r15so5433778wmh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 05:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=djiFW55yS1Rp4YNDz8isiFDt/Jj9YD2Q3nFMXytrXY8=;
 b=v2fnvJZkLqF0i9ErTBWcqsVxtNWg/3wdSutfObc9AIk4DR/IavDByhXEtlOYekhmdf
 R2CgLoEuJAbgHIWE/vPnL5o/HpKTPnr77VMTfNap2Jdz0WW+qcGIUEwuTapaFS1tKF1p
 ZLLoqMNDzEdm8u5aMtSPYg4A04ypHted9caH6mhehwNz3HStqSoG2BT/EHLQuOauISpr
 IDWxdnQNL5hLTPOnquHTBZ5v3Y/zX4wzZRzveuQ2xKU4K4qfn3raKqsYUtZTiuJ+T2rF
 8RLx+Nk8YRIHIp1ihTyjcJvrrloifKjS1iJbF6NSUB52yi2G+564oLebdH39X7+ZWhVQ
 IuJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=djiFW55yS1Rp4YNDz8isiFDt/Jj9YD2Q3nFMXytrXY8=;
 b=Yz/SjDQBmA5mijkdPJONj1p7kcisqgDIi5lzkKQrpnSRgDr9R2/UZJ1LAlETlakO38
 pJVntP2R9hMqVANniw8mOQ+vWV/xMwSsFte/YIp/edeX6QwE3c/EBRP8tbfKhsy+ONdU
 YR2uSdLssgfOU0Ciy1rbtJnbbRj8inLHZfx7zGoyvgIqe+Gv48Vvz+ijPcgPxzDEKrrv
 1mTwLQ0kDUwxs7W4QM2f+v6flXEpCi/HFvmoulGhyvYGLdvT4n8gWpZcy7N+w/xb0ozr
 hwdo5vr/ubwI9tILmBDxPOJ3aIXpbOQCPkx7CLAtITcAdncFnZPYgUxepcIL2/IbE8gu
 zfCw==
X-Gm-Message-State: AOAM533qVJ0cuVKJdcRNOPvJ/t04zzqiAVxtXiI+6MdHwVdNA8bMxznY
 USDOjGQGzNbq8VHLHRWLaMXH6Q==
X-Google-Smtp-Source: ABdhPJy9A8Zbppj9s06HLgvsvKt+NXsCtHpKYpFtYCSZa2fG9j2ycaFqUHQSP17r/EIg0sOzuQL+lg==
X-Received: by 2002:a1c:5411:: with SMTP id i17mr3942342wmb.137.1592483151024; 
 Thu, 18 Jun 2020 05:25:51 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:c1af:c724:158a:e200])
 by smtp.gmail.com with ESMTPSA id 89sm3423962wrg.56.2020.06.18.05.25.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Jun 2020 05:25:50 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH v3 01/15] arm64: kvm: Fix symbol dependency in
 __hyp_call_panic_nvhe
Date: Thu, 18 Jun 2020 13:25:23 +0100
Message-Id: <20200618122537.9625-2-dbrazdil@google.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200618122537.9625-1-dbrazdil@google.com>
References: <20200618122537.9625-1-dbrazdil@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_052556_293374_5A61E9BE 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: android-kvm@google.com, linux-kernel@vger.kernel.org,
 David Brazdil <dbrazdil@google.com>, kernel-team@android.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

__hyp_call_panic_nvhe contains inline assembly which did not declare
its dependency on the __hyp_panic_string symbol.

The static-declared string has previously been kept alive because of a use in
__hyp_call_panic_vhe. Fix this in preparation for separating the source files
between VHE and nVHE when the two users land in two different compilation
units. The static variable otherwise gets dropped when compiling the nVHE
source file, causing an undefined symbol linker error later.

Signed-off-by: David Brazdil <dbrazdil@google.com>
---
 arch/arm64/kvm/hyp/switch.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index db1c4487d95d..9270b14157b5 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -897,7 +897,7 @@ static void __hyp_text __hyp_call_panic_nvhe(u64 spsr, u64 elr, u64 par,
 	 * making sure it is a kernel address and not a PC-relative
 	 * reference.
 	 */
-	asm volatile("ldr %0, =__hyp_panic_string" : "=r" (str_va));
+	asm volatile("ldr %0, =%1" : "=r" (str_va) : "S" (__hyp_panic_string));
 
 	__hyp_do_panic(str_va,
 		       spsr, elr,
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
