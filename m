Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21298452E9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:27:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QEyOhIh6jn1G4FFCKmRcBgUq3clX2HV7zBmBKtrFTTE=; b=AiR9+AtcYqPjfv
	IBAHQE5ajpVe3YJLmzjAghs51DSBDxHYVyb5mK0qJizaz4Tf1CW8RlbaKHE8wP3bd5OvgY0v8yafP
	+SbhPJZUyPR5iZEUjDjNOhrLZWute3NiKfHdnByD2jODvbVo/vul0WmfvcUmtrD+sFpZnGVJmXa+S
	wI8Ecvcyp4HdXJ6bxDZ0i+01zWD/+ssiWMyoirLvQc2Y/SG4Ejzy+AbrigemA0+vxxDScbtMvmWvn
	4ga383GksriuY9jnzre8IID52+PdeuGtlhPEvTH1N1O29crGfL+0pveVEwBPjax6HIMUIDlU+19mz
	ZAbX2aF1l5wGANBpspvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcs8-0007kD-3Z; Fri, 14 Jun 2019 03:27:24 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcf3-0001Mm-2h
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:13:55 +0000
Received: by mail-pg1-x544.google.com with SMTP id n2so663669pgp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PDeednBQHQCWJxR0NKh3z84Gd8kBTabHNB90hamsE18=;
 b=h4QWP2mvAS916s6auJJfFzviYDDjb+PpuiP6IFws5Q2EJ2uXczHMoheg4jezvSjnWr
 IJZk2FdXIdxz4vVreKM+jSnz4myExFPgAWxesJ/pE5wWSokxF95skddVsLWzPAFq2qBa
 rWImiMAK2fNA0OmFptcJ3wBYFUWzhWTrrdjce/uktXZQsjpCDqQr+9KgdFG8HvaxatBa
 dldxbR/0B1pKiGZFbiisf23ByiGrVPy4yxKyj4SQtn3SLEwGY6B/MqLfsRWtZ1Y79LDF
 G069q0y5MeHuXEEZZlup4NZcn5SOiaCUZOD1Ayqbx3h0mCWmJuDIykLZNpm1YUL0O0cp
 P4+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PDeednBQHQCWJxR0NKh3z84Gd8kBTabHNB90hamsE18=;
 b=swG9eYhuNpURRTSAEImYqUKhul2aJSkvjMcUsbS2oXFam6KWiU+0cI49oEyiLff4dh
 m4Y78bTSDTmRbdZdOcLVvkkGY0BMlbIYB9uL5x6prHZzJLAbR1iktGUyKKUGS7Sum3Sb
 v05NG6G+h9yQAlEm0N4exw9p63hWOp+zlqEfDXS6isHQCW7Z5lO76b3jP3WQgXAkQ626
 gdjUzOe0vs5TNCPym9SAEA9l2n8eJC9l3dWFXrzqvBB2NeVxcBlzmv5Ux91TDOPpa6t9
 vC1XE2h27efFbUQZqTOMTdzcp+Z5L013HbdYmx/a0WE9uHJYQw3Kj296tNYTeyK2X/6D
 o4cA==
X-Gm-Message-State: APjAAAXYrmKB1ruF0jPyi0/RwjQiWa8pgGtiWA7ryqVlqwe/QqX5Vivl
 /9GqXNxgyyLRKcnClquI/Zo3WUpfxeg=
X-Google-Smtp-Source: APXvYqyB8Yl7Jcgzm5jDA6YzQVPHMarwbfyU+veTySu1KhLykTJJEGVatBN2jEFN1ggpDp0OoSP18Q==
X-Received: by 2002:a63:a056:: with SMTP id u22mr33204122pgn.318.1560482031830; 
 Thu, 13 Jun 2019 20:13:51 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id s12sm1032837pfe.143.2019.06.13.20.13.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:13:51 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 45/45] arm64: futex: Mask __user pointers prior to
 dereference
Date: Fri, 14 Jun 2019 08:38:28 +0530
Message-Id: <1e0218d2ca5026bccbad88acba998349fe2195f1.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201353_256501_F15F2805 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

commit 91b2d3442f6a44dce875670d702af22737ad5eff upstream.

The arm64 futex code has some explicit dereferencing of user pointers
where performing atomic operations in response to a futex command. This
patch uses masking to limit any speculative futex operations to within
the user address space.

Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/futex.h | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/futex.h b/arch/arm64/include/asm/futex.h
index 34d4d2e2f561..8ab6e83cb629 100644
--- a/arch/arm64/include/asm/futex.h
+++ b/arch/arm64/include/asm/futex.h
@@ -53,9 +53,10 @@
 	: "memory")
 
 static inline int
-arch_futex_atomic_op_inuser(int op, int oparg, int *oval, u32 __user *uaddr)
+arch_futex_atomic_op_inuser(int op, int oparg, int *oval, u32 __user *_uaddr)
 {
 	int oldval = 0, ret, tmp;
+	u32 __user *uaddr = __uaccess_mask_ptr(_uaddr);
 
 	pagefault_disable();
 
@@ -93,15 +94,17 @@ arch_futex_atomic_op_inuser(int op, int oparg, int *oval, u32 __user *uaddr)
 }
 
 static inline int
-futex_atomic_cmpxchg_inatomic(u32 *uval, u32 __user *uaddr,
+futex_atomic_cmpxchg_inatomic(u32 *uval, u32 __user *_uaddr,
 			      u32 oldval, u32 newval)
 {
 	int ret = 0;
 	u32 val, tmp;
+	u32 __user *uaddr;
 
-	if (!access_ok(VERIFY_WRITE, uaddr, sizeof(u32)))
+	if (!access_ok(VERIFY_WRITE, _uaddr, sizeof(u32)))
 		return -EFAULT;
 
+	uaddr = __uaccess_mask_ptr(_uaddr);
 	asm volatile("// futex_atomic_cmpxchg_inatomic\n"
 ALTERNATIVE("nop", SET_PSTATE_PAN(0), ARM64_HAS_PAN, CONFIG_ARM64_PAN)
 "	prfm	pstl1strm, %2\n"
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
