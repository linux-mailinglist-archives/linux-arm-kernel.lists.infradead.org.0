Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2696669E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:48:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QEyOhIh6jn1G4FFCKmRcBgUq3clX2HV7zBmBKtrFTTE=; b=JV8PlWBmyI22wz
	AaRy9WlNYXlUWTnebjSXOv+aekeYRAN8f/VLmlr0XGtkHDkIDioTcnphj38cu5A0VGwgNCBNWmwWR
	/Bn87w3z0w60tr7/+hxK+lz+v2ACzt7vujAA87KCxK4wSjU2lYl0CL/elp1syRVPkbi1jHfocCHFC
	tuki0SjeJOGGIgGiNOZr1G8/MDcrBiCB9/COQRjvUg2u1kakAz8hb/l/nz4fYuKDL2Qt3vR3naRFj
	doHh3XG6pnNfSJ4wUDv/j51BTGvwMil6LJ7R/liE14oXbqGmg/h31e6du199Y/Z9w9YsUlzITM36E
	IZ9LpsFQYbSTkpv9qqeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloQ6-0008IK-TB; Fri, 12 Jul 2019 05:48:35 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo93-0002uE-Lw
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:31:00 +0000
Received: by mail-pf1-x441.google.com with SMTP id u14so3802529pfn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PDeednBQHQCWJxR0NKh3z84Gd8kBTabHNB90hamsE18=;
 b=fg+1pG/65q1qXXBewk6qvQ3fXz3wzzkJ7zUevy8Y1aRCJChOX+8X7X3JDJPcYtWKI2
 VO4DcEBZ9cyrhoulmGddYbjt5ggPKQHxtm8F3clPGhci3I1aXUQmLQJRB7Ezb8gl8fLi
 FhkAa/BV2XsSz+9MFltsJX4GzpC+8DMP6ODQsCzXh5nf80aw/2plK5nWH5JiYQ2ocbn1
 BaKR8GDvosIPOqJOo7vrd6f/ByVec4o3rRBqiMJ/jO7ZzqAfXXTufXDJ1StpfdiAn6gi
 cnMvgYBDyPFw+RExwgQW9uLq9kLoB/Z/shDKW1HTqmD70MPowKwbZVLiMB0qfnwh/Hw6
 +TPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PDeednBQHQCWJxR0NKh3z84Gd8kBTabHNB90hamsE18=;
 b=Oh5sUJLNBU/AbuJcuVbsqmqvGFQmlIqXB/LmO9iWbzxhABPSbyVE1UGDwfzVPGqzWO
 dTr/R5BsYshSouhE3bthKhLL9OhEfr4UgpUcW+1iCfc5VwFQGiazjk6u4dywnGOfiE9s
 o7fnwQ+Z/plA3SaxwhmiEIOTlcifFhXxBNZ67Qo9c/6OXaBQEyWBOA/WkiKjq42kjIgL
 XSXZNPBsBenmiiUFzCobtF0N/WjLseD58JpiBI4OyEXfh8fWoyeybETvwrzLUSr11nfR
 DfKrSAL5xF8gqq1VoQRHZm2SSODSBcoTOsZGOw+L50V+qOpOhgGqpMG/aLFjRkYSGcKp
 3Pkw==
X-Gm-Message-State: APjAAAU2FwVal4RuxViBVey0Fybv+gLkRsl/LeB4ziLume1U0a0rNFtj
 nmLyICLsc4GqJUjCTVnRzKvowA==
X-Google-Smtp-Source: APXvYqzW2ZFdIDBVTYKNu8BFlnnBclltK1PVkRmVauZ0T/9ZSkmOtGZ5z0BYckQlNm2+hJU6Y866SQ==
X-Received: by 2002:a17:90a:bf02:: with SMTP id
 c2mr9448970pjs.73.1562909456962; 
 Thu, 11 Jul 2019 22:30:56 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id s67sm7989665pjb.8.2019.07.11.22.30.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:30:56 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 43/43] arm64: futex: Mask __user pointers prior to
 dereference
Date: Fri, 12 Jul 2019 10:58:31 +0530
Message-Id: <dfed1476d16176056ead7c124c75895c10937969.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_223057_816072_A442CC2F 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 mark.brown@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
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
