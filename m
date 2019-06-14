Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C27452E6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:26:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SN6CbOE6sJwLsMZWWfqvuVy/FQqu158LBIK0N6r25TE=; b=ahZpy3N/ZYX0Jg
	RsLw3V67Rvw1z8rfi/5p6beG7b/aGG0oaCxdH1YNVQjlf/TDMqwXKTKNhTgVx1dF7Igjglr10wb7U
	3Sz9cez+Ze97auIT1GPKiqqkPEmYfOwGuyNoM30Y2kYRzC7UVwC4/8fe2jl5UKz9ftsiXqj0zR6ot
	J/LcQypEk+yHF0E7hcVdVy/XncYIysFC9DCdmpRVf8+jalefWa6YCdrU3TUHlV4tOUIcon+b7bzyh
	oY7KBSQeIB8Atk3357LiVJ1CUXVw+JoZzv/AOWMP9/T5LAyVOP6jBVwNSC+xfaltDypCFnB9w+gck
	YWLVAAoTL3ReDusZnmgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcrH-000712-8K; Fri, 14 Jun 2019 03:26:31 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcet-0001GB-FO
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:13:46 +0000
Received: by mail-pl1-x643.google.com with SMTP id a93so375274pla.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:13:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QAkAWOSid7lK0+CYFipQ6VxUVVXehQyD0WFI7UyGT+o=;
 b=dmFfqE3RSIU4Ho6hkmSADd23EX+tld4u3806oEUalpRrZVS1cmqp5pzecti/qkD7MZ
 9Q3F2qViabRLb87OzNLEHUqavrai4vT1AePqeLFjnkK9PoK0AfUNYJH2+KI7xJBPS6r7
 pCpMcHoGyhyHHrUyjEX+zzBhOGuN+rle9DTQ5CMxtawV8Ggri+/OhRLNOYiPgc1txdxD
 283Mtizasgg7BvjljAVyKErkf04q+T1Mg7+g9U5s1atYL96TtGRaJL5dYuqOaa3CE2St
 bygSaCJMOu8636e0BsJZ7m6fYlBUCXIEHTfkTcduBKpFjhZM03cCN79RPuIq2AqaekHK
 M8BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QAkAWOSid7lK0+CYFipQ6VxUVVXehQyD0WFI7UyGT+o=;
 b=MlkZPzlyM+mO9IfMme/5V2n2K+Cf0eCD6CQ94w6RA1C3fP/zo8E4jn6h8aZEeWBgvG
 pkwS8GFybpCv2aYsJEQUu2aC6U4oR2mOZMngqJBg8YlEusSEJFNEnDK+adzU3HhOFEXC
 h0ZH4WuuOnYhEOUbZJ1BjvlSvJ+ATIDYg+MWkSFQxl7tUB0x5F3nN8IQV4i/La6rCIOf
 E1L8vhPPklKvHXWF7PVQeQgburOy8WtFSrrALkwv0i97Xe7xhHDqbe8s0oCNPidCNCWi
 dn5Hj5MDxiR207rCnn5tmX9N6Dub5NDn6gdeub8RMbNbjwB8T3pl630IJNOygndQV/AN
 FraA==
X-Gm-Message-State: APjAAAWYPrSIgMewYkVbe9BKEAoDlT7+LaBxzvv+GWLbp8TBxy5NGhPv
 rfuqZruHrf+vzlmxQbnCsDEdiq90BcE=
X-Google-Smtp-Source: APXvYqyAyZ6ezMbTYaeyEBCrulKG7P31Vp4EkUjjkKOUpO/xEIqEm4KkSwVqRI5sN5z41GtbmWE4AA==
X-Received: by 2002:a17:902:7c04:: with SMTP id
 x4mr31949468pll.70.1560482021795; 
 Thu, 13 Jun 2019 20:13:41 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id w187sm1079648pfb.4.2019.06.13.20.13.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:13:41 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 41/45] arm/arm64: smccc: Make function identifiers an
 unsigned quantity
Date: Fri, 14 Jun 2019 08:38:24 +0530
Message-Id: <5aeb3eee8907e3b49c19614c5c104f8a598faa95.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201343_558848_6D09CC6F 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
