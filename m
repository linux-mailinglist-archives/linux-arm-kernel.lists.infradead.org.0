Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D25BA1931
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:47:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SN6CbOE6sJwLsMZWWfqvuVy/FQqu158LBIK0N6r25TE=; b=CvZ+RvLLO1jlaZ
	wt8qYzz2OMV04tvbH2H6/vMu6/F2BFLSAIuJ9jYSz9Df4mgfe0EtOXS5LnfEwoMkzPZ8bZQ58gs5U
	zJIqhp3tYPZMmfsFxy98lw2RaKjZqf+Wz73rY7AHZpNJxHNI0H/i6eoxsnNKAYz7NzasGRlhqlDUq
	d7kXf5xmjQpyv0ZMP3u06I4g+JhZyz7reBIWUX5X2Q+RnzMiGEHJtE4AtHN0whrzKhpoyST8DAZ/X
	KQ3DKQUhP040yxxGU5wkKWJjURpZQ4QlSONmhqNOGIKYV9/24IZw5Sro3lKSvz8kymkePmU73j2zu
	w9wZggmhal8i6gtWWfSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3ItF-00015N-F1; Thu, 29 Aug 2019 11:46:57 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IjH-0007Q9-B5
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:36:43 +0000
Received: by mail-pf1-x444.google.com with SMTP id c81so1852674pfc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QAkAWOSid7lK0+CYFipQ6VxUVVXehQyD0WFI7UyGT+o=;
 b=CWNDmywD9pwBoSyGrr+As4k3fmuk2k2e1Cj+YhyHwoayQ98EB8aWbyk0qtrgFFX8ab
 aVj+ZGKObm0d/C5Z/A/Nz6OT7wBkXe6cOp05PWhqrZRKRBN5Ow4TuLZwJFmEgbTUdKkw
 yrGwA36TGEbFabFc0dbcBZFc47loi7MIMCQuX0/g4yx5KBjLkkRImE7PriTYyeHftjxH
 pIApOewCjuzGA3UkACN5KdDuwCYA23Me5BXxuQajWqAcsrrh7Jt3xFu3gdl8A8T+9p+u
 iA2pL7GWbXmPwfouuSEsj9u73oy0HpXWKLf6BdUCwdTvUKpZVS5mWn8s8ANB8N6HuJGt
 6WHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QAkAWOSid7lK0+CYFipQ6VxUVVXehQyD0WFI7UyGT+o=;
 b=lWfyCC1KkvXqjP6ccoI6eNBiicIyBdJi83kK+qMAZRRlc4+PHJAaagjZq2yAnZCn64
 MII9F1ap1CSIbvvK/v93vwsHhFTnPPLKhq7GLJnpgTH5Bh175wSYkXyvoJTzAYq/DbjL
 uw60JkllBxcp/xyNidZDNI6MJ6X3lPGbF04KmghiSJunqhTDOkHPYhTT00EoJi1ytf8V
 AaXLSHcoXsJKCrnqWaOvs02/m5HkEv233u+PvhoDcfKq529Wb7/16o1kWxh7GFojlL/c
 kaeA19w2OoGx3/OCkoHJUJshxc9dyKdPNf+F7AcPYlSxv8xNsjFDwBiO7qFS4Gy8KTTf
 wxOw==
X-Gm-Message-State: APjAAAUsj2bvU21VOn/99ZrTT3Syk3OwMYHPNPkMCr/w01fUcMd/Olqk
 Wfmx+0Wza5QdNLQzCbFK3EimBQ==
X-Google-Smtp-Source: APXvYqxhkPjHWExRmZMPUP0tnH5EGbzi8KyI5gBhWNuqMx4+CCW2XNMMvwuLCXKwS3roiihkOldCPg==
X-Received: by 2002:a65:4509:: with SMTP id n9mr7834393pgq.133.1567078598673; 
 Thu, 29 Aug 2019 04:36:38 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id p90sm6514025pjp.7.2019.08.29.04.36.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:36:38 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 40/44] arm/arm64: smccc: Make function
 identifiers an unsigned quantity
Date: Thu, 29 Aug 2019 17:04:25 +0530
Message-Id: <9bafd5233bd85eb31c7780a5d1149943da897e23.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043639_697509_4ED01810 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marc Zyngier <marc.zyngier@arm.com>

commit ded4c39e93f3b72968fdb79baba27f3b83dad34c upstream.

Function identifiers are a 32bit, unsigned quantity. But we never
tell so to the compiler, resulting in the following:

 4ac:   b26187e0        mov     x0, #0xffffffff80000001

We thus rely on the firmware narrowing it for us, which is not
always a reasonable expectation.

Cc: stable@vger.kernel.org
Reported-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>
Tested-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 include/linux/arm-smccc.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 1f02e4045a9e..4c45fd75db5d 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -16,6 +16,7 @@
 
 #include <linux/linkage.h>
 #include <linux/types.h>
+#include <uapi/linux/const.h>
 
 /*
  * This file provides common defines for ARM SMC Calling Convention as
@@ -23,8 +24,8 @@
  * http://infocenter.arm.com/help/topic/com.arm.doc.den0028a/index.html
  */
 
-#define ARM_SMCCC_STD_CALL		0
-#define ARM_SMCCC_FAST_CALL		1
+#define ARM_SMCCC_STD_CALL	        _AC(0,U)
+#define ARM_SMCCC_FAST_CALL	        _AC(1,U)
 #define ARM_SMCCC_TYPE_SHIFT		31
 
 #define ARM_SMCCC_SMC_32		0
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
