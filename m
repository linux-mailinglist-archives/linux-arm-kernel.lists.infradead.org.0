Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BDE1BFF5C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:57:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/7Y+2OI1mkcpa6T2zayMiOrepJQYSLKktSJEDu1n0Mg=; b=W/ZZlUbKVEK/kf
	eCBBxhSZveNuJICpCjLmMeOraTazOjIkoBRJpUF2EVZ3t2SHA9fRRALkhnQ7G2VMEwKhfA4CtrjM0
	a9gJYm8Ua8F4BxA2LMgaJ8Z9Rtcuiwm5MviHKowPSNTxn0o9H3K0K1m7IK2vV3SbBiFewyIKSux7+
	qbFdDQvdeq2g+VgvFAVu8soFa9yfqL4H9gg2y2z3GsFyxnKsiQlNeWmPCk13jjJUX2EBA7kfJlA4c
	cBJB3H+TkN6BCKu3giynT43b+5FFBQaHdKjODGOEez+wTEbmet0Ec3q3SkY9s0xfYZqcXFWeX7oaC
	sVkyLj+vxmf7M9oNvFeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAci-000755-Uo; Thu, 30 Apr 2020 14:57:12 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAbc-0005X5-Cr
 for linux-arm-kernel@bombadil.infradead.org; Thu, 30 Apr 2020 14:56:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=W2dOZedYL4JDAAn5nSlmNV+ZjvfKthEjodtzNjqCunU=; b=jxpiI2e9duTIrKodZlyECzFD/m
 fvqjs75ivyzUEi1BHc5V7mafNIhS8uPJ4MOH10Z7Fuk4vG8fZR5/4lWJOUsUe+HnDKq0J3ENfAcBT
 tk33qoykE32CLp+JCGXqO1StTxonrm96hADXPAjUD3dlgttwUnMwjGqgLCF0pZ1HOZFhG5W5fgWr5
 i/ybWZPxXGS4T1I3oyMe+DYWNq9w58bXxKBvPw7UlOb2rGrvOSgU1UNhEfekuGvNYH+AvKWscwBT0
 LeJct8zv19BFXVeMkFyW2jT5Z/N2wtnItVBB5e/Mw16bo9/N5fIYbvPMAzNEzeDBIpl6rjkKabdKq
 BfR4Nn4g==;
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAUf-00025e-J9
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:48:54 +0000
Received: by mail-wr1-x443.google.com with SMTP id k1so7286341wrx.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=W2dOZedYL4JDAAn5nSlmNV+ZjvfKthEjodtzNjqCunU=;
 b=DGkgyiQ0NginXnf8otO/F358XbxPMWkiqajyOjWp3qrwhI3IjJ5VxpWltUxTWpeYhi
 EzYTPLQUJPaT54+Gtq8bQ/kq/LVPXUUOLOkSY4quVOuInKuAhg+If+fiiQWZrk8sg4/2
 wucgIlbFqPSMeVyM7Tcx67kTqaT8iYVNoc7mQXwSN0bIG9PAdu2aOyVCUs1RYJDOp7G5
 J6bYFSMfSCNjHyHht0n7BO/pvp6s1HqaBb0j+1ewoIQxJMbwGe4MmXheqZK06lVBoxN9
 Ih1WCF5C/x/zOa0VU71rHZ7tBJxntN008fOtfonZDN0KIx0kOZdvJ4PzQkI7mNQBaWUq
 yiAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W2dOZedYL4JDAAn5nSlmNV+ZjvfKthEjodtzNjqCunU=;
 b=ms4VJcf9PVC6cegFlshfw1OGlP+ffaTbZiye4xqzWhokqZ25O7QFA3im0s9KjS3i5s
 1gcgsHwTjcYiygj4GVLWztbtfYPDuTLpO4f5MTA9kOyvORGAjEqOwQS8g1FuRQAniSMU
 6mSb3PZxN6FpF1sN2uDUVh3Gs+RtAwgAF1vgEHfQrReLZ0u5INEgszHwwVsM1hwU8jPz
 IHuL67b3ZJYwjt0GlGvSNsAdhVwPQC33wcJ8iWNtvXkJhVrZxYWEW+ddKht973ERp5O+
 BrAgVK7hrZWL+VryJZau3WznKhqf3AZvKG8sJqmvHu3D2mHgbxXCcghqLDSjX3TUESxq
 YCoQ==
X-Gm-Message-State: AGi0PuZnkHD6bEcmp0xyvyqQkiTcCRY2RjkMpQn6C5Fkl5tdXmrFnPM6
 RwQxvTIkdr+M2ZlrlUr7tuwM2A==
X-Google-Smtp-Source: APiQypI092ppnnKBWs4+7y2ui5zUBh7qAbqhxW88bEw98VWLvJPs/WkNEiKJyOlPkCmjk7ivxSWnJQ==
X-Received: by 2002:adf:e445:: with SMTP id t5mr4244456wrm.223.1588258129829; 
 Thu, 30 Apr 2020 07:48:49 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:d4b6:9828:8bd2:ce6f])
 by smtp.gmail.com with ESMTPSA id b66sm12780787wmh.12.2020.04.30.07.48.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Apr 2020 07:48:48 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Marc Zyngier <maz@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Will Deacon <will@kernel.org>
Subject: [PATCH 03/15] arm64: kvm: Fix symbol dependency in
 __hyp_call_panic_nvhe
Date: Thu, 30 Apr 2020 15:48:19 +0100
Message-Id: <20200430144831.59194-4-dbrazdil@google.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200430144831.59194-1-dbrazdil@google.com>
References: <20200430144831.59194-1-dbrazdil@google.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: David Brazdil <dbrazdil@google.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

__hyp_call_panic_nvhe contains inline assembly which did not declare
its dependency on the __hyp_panic_string symbol.

Signed-off-by: David Brazdil <dbrazdil@google.com>
---
 arch/arm64/kvm/hyp/switch.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index 8a1e81a400e0..7a7c08029d81 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -836,7 +836,7 @@ static void __hyp_text __hyp_call_panic_nvhe(u64 spsr, u64 elr, u64 par,
 	 * making sure it is a kernel address and not a PC-relative
 	 * reference.
 	 */
-	asm volatile("ldr %0, =__hyp_panic_string" : "=r" (str_va));
+	asm volatile("ldr %0, =%1" : "=r" (str_va) : "S" (__hyp_panic_string));
 
 	__hyp_do_panic(str_va,
 		       spsr, elr,
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
