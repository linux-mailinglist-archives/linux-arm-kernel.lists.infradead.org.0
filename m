Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A01B45293
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:15:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kAYGcEbJwZSsi1c47p9ogTsoHe9UtnbPikGQM/4dTxY=; b=Egv51n1uV7Tp7l
	///udxpaBJPDhUlpAs0lmz8vHgzpcQZ+d1E81yrHJqN/h23g9LxH/R6GaWYGbRmCu0+Il1MPY7I+l
	m89BeBc/Eox7qctsnp4Asr5JKyc2yfdqJbdd8pfJFdC6sHAdK6ZuwcgCzqw4yXP/2i+/LUsqEUnjv
	RhlqbHayW0avP9eybnwgYoWGdRLfBaz2ngd+pyf9WyX45x96l69oPlJgQ1ux3tW4fRdvB7QJUhXTL
	1uj7/3suJsrDqEiyHLvD/7/bMO1NZQ6kAUU7aC+7WHHb8sbsqdYnVRM5HEuus4NtxQ/KZEIA6Ni15
	AvgrjFEadX8QqhRfw9HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcgb-00030R-2F; Fri, 14 Jun 2019 03:15:29 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcdV-0000DU-FP
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:12:19 +0000
Received: by mail-pg1-x542.google.com with SMTP id s27so685195pgl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gNlfncScxDREAT7VjTEXAFzdaeKYbTqQ4JYCBMZ7gaA=;
 b=wDBo+IsE5CxYBr/gG7jlwGTkzvTi/KgR2RgJSMhJe7bSxoaXzF0+TdDNJK6dLehXAQ
 KEE7UfEPuEEdzLtOeDJj3d79e7YtVNq/zUYfIVHlxutsUIdQWnMOok8xzhUVGO/wTU68
 ulCOJAXaMZaEp6vk5Lt1C67hIvkuulYIejzeRyCLcBuX3IVSZwH8JSIlylhk7jf5ZZAp
 ekJFzgWJkOPfXRXpgRLg5XEs6n3l8kd4NqIboYgsZw8aMww1p5p+juY2j8+fPoHS7L27
 QCdRJg5NSWYQy3xOzfV5YkvCjGSfOV9srWU2QmGPVppmd2e1TGCJfqCvS3ceOE1+BmUc
 vgBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gNlfncScxDREAT7VjTEXAFzdaeKYbTqQ4JYCBMZ7gaA=;
 b=MiO74adS13PSs7WlgHXGkXoJ9cj0NdCjc5/NgbAWNmvY8Nthz15Qgza6srw5GH1YgD
 2aZzeL+7lyiS+EuajOVxWoyA723wNr/cB5chkz4TAK9vsGcwtZi8dXCECV2CrLfnAgso
 LvEPeeGKEarOOeGTXns3KMayJwz3lBKdiU4A7BCleiuDonQgadsV88YDO6kb/yAcw68j
 qE977mZkKFujNGFDtEDUGRQwqIkL99fyzSdl/qIkIwT4W0Xnr8u+82++9rfLyhfIwFNT
 0OiB1+l2V2sToPtgHxhbWU32NFevZdlP4fgrTvb366GokR0IpRS9DQ/Pl+HHB6LgBFuc
 Ic6w==
X-Gm-Message-State: APjAAAW5F4rZqAc+H2Xlek2fX1G2obI48D+1g5wVfpSF3Zfkoq5RoBVb
 PEq5D3zSPA8vkYxKERSmdmviEvf7h9U=
X-Google-Smtp-Source: APXvYqxXLdh+hW79HVWpzsOUs22+BCA1RGWX6SL5TD48wRXqUskcIIBZrBw2ipSX0bh2MrBWtNwIEg==
X-Received: by 2002:a63:e60b:: with SMTP id g11mr13414619pgh.172.1560481935400; 
 Thu, 13 Jun 2019 20:12:15 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id g8sm1048468pfi.8.2019.06.13.20.12.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:12:14 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 08/45] arm64: uaccess: Prevent speculative use of the
 current addr_limit
Date: Fri, 14 Jun 2019 08:37:51 +0530
Message-Id: <d74517ad6c0ca7d077063c18cd1930aa6bcb503c.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201217_686596_8D81073E 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

commit c2f0ad4fc089cff81cef6a13d04b399980ecbfcc upstream.

A mispredicted conditional call to set_fs could result in the wrong
addr_limit being forwarded under speculation to a subsequent access_ok
check, potentially forming part of a spectre-v1 attack using uaccess
routines.

This patch prevents this forwarding from taking place, but putting heavy
barriers in set_fs after writing the addr_limit.

Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/uaccess.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
index 75363d723262..fc11c50af558 100644
--- a/arch/arm64/include/asm/uaccess.h
+++ b/arch/arm64/include/asm/uaccess.h
@@ -62,6 +62,13 @@ extern int fixup_exception(struct pt_regs *regs);
 static inline void set_fs(mm_segment_t fs)
 {
 	current_thread_info()->addr_limit = fs;
+
+	/*
+	 * Prevent a mispredicted conditional call to set_fs from forwarding
+	 * the wrong address limit to access_ok under speculation.
+	 */
+	dsb(nsh);
+	isb();
 }
 
 #define segment_eq(a, b)	((a) == (b))
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
