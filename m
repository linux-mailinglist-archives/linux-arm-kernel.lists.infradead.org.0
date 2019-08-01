Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B347D750
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:21:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SN6CbOE6sJwLsMZWWfqvuVy/FQqu158LBIK0N6r25TE=; b=QVRRZh410mB1KU
	dCLXRjHY026xWDb2iHaNTFvT3Wn5EY+FK7vhHXjNi+rI84MATRJ7nuLtsfOP08EV8N9hsbLOV87BS
	WRorXX8BHlTxve7acF7xQtiBKY20o75VmBoLr1yLn3d6fFL27kdNZ6Rof/ufcLYrWwbHSfgOYKEQD
	SO58XyBjgPzqlHacYb6Lw6rLg4rSiqFhPGQ9MqX/1JzdFE2ybv3TJ2qpY+joYSN8n02DeYnM6bxby
	c18veMS1eltovSS7aoiSkDvqk7rDxMOJttJ69GTtyfJgNgfeYqboG1VwKGynpGDQW+eyo0IqbQRtt
	ij/e0H1pNDp/Qj4Dxu5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6Ks-0003Gu-6a; Thu, 01 Aug 2019 08:21:18 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6JW-0000Sq-9h
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:19:56 +0000
Received: by mail-pg1-x541.google.com with SMTP id o13so33715570pgp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QAkAWOSid7lK0+CYFipQ6VxUVVXehQyD0WFI7UyGT+o=;
 b=VbI6KvBYoAleWdpoNuid44aSrwYNmD6XVjYIU7cCDTWY4VDquc62cFzYoqAjoNU4c6
 nZdCxO4QKpSqcfDfWapRYMgqaUzdTVFD6QEiTM4dIJb0ZM1ABvlyVKKWWtNPpds1G3lU
 4p92/NPa79XeTp/RqJA3evytYoQgQIeWoUDGGWbUFJL5yJfeteKwslbEPL6XJ81zlmu4
 mqBei4tEDuRtTA5ILbqgU4DBk8LIhWRf6SJUr11/UyQJ9nEkk3ZEB73W/A5g/oRFW5pC
 orshzn6ourcm7mrF/MHU430GQUWbheLftyEwlurTTVsAnK2IQGUQJyEuSSSvo2QsVTeB
 QOfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QAkAWOSid7lK0+CYFipQ6VxUVVXehQyD0WFI7UyGT+o=;
 b=WXi3x+OsJBEa2Lu4GjIe5w+6zVOC6Czfb5wKtcw+shH+uuYahCcyl85IwWcJ828Sw8
 6EBQZMNwX0K0HATLuvRxFH1PpDJK3vA7Q/UfrxmWrnElDK2ALgj22YG68PZ4+P8pN0lb
 IjEmKrGr7MeMEQ+x/2+W5qcHxkPaB37VnkYZPDRH2ntX9OL48WGa+fYYp4vtmMGUCLAF
 t/ABrYL2PGgysiA5hLqOXL1Epkmlmw3J3NoAWH0UUmAYnmVfZhVx+jCxReSbW/cARoeQ
 UmxaO88al1K3KCw0Y5lbD2F4PN6dQr7ex+iNscxlzdpt+dMKkjPb5DNp7uicFPGwSJLs
 ULEw==
X-Gm-Message-State: APjAAAVy1Z4V3bN9yslN5RnY9PIx61EDJVUc54KCUwGwzq+EbQ0Sde3w
 I10qT2t6A624d85NA52TEZ0Hrg==
X-Google-Smtp-Source: APXvYqyqiLsABmsuD8RnlguGwZ949r9n3nBGRbVHcg6v9Qt8z+FIGNp5TN9mJ/k6FWKJWLIPv1k4Ag==
X-Received: by 2002:a63:5162:: with SMTP id r34mr686278pgl.229.1564647593609; 
 Thu, 01 Aug 2019 01:19:53 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id u24sm10002220pgk.31.2019.08.01.01.19.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:19:53 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 07/47] arm/arm64: smccc: Make function
 identifiers an unsigned quantity
Date: Thu,  1 Aug 2019 13:45:51 +0530
Message-Id: <eda92cd880a3ec1f3a8aeadc44554c956a6ee007.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_011954_381169_01328B04 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, guohanjun@huawei.com,
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
