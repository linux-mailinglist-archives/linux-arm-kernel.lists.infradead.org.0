Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C546664B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:32:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kAYGcEbJwZSsi1c47p9ogTsoHe9UtnbPikGQM/4dTxY=; b=hfMAF4sp8NR89O
	2Bn/bHGm+SYogGS4xT5L/3LiYOR1WrN/HUavC01Lh3C+4d9C/UYhDYRlt5Zsv7orvyx7VEF0rAf3O
	peTgIccylU5mwNK3UC9kwut6y5e2nw+lcqG7qNyDALCNbLgMeICLHLuWDYp506N2uxZI0j4ES7Fmf
	5kT0ejvBSVChLV52C8xzo9+sX6huGJxoRdVvQsvQBwvbijOfxqE+rnIQWEvkUEMVtCmWY9VA7+ALy
	RL7glNi76O5zITWdt6Dl2bT84k45P4VMMfE55sYYYqwLa4hhiUYKMNMWP/VNdtCjILNj3hEiHOpWm
	dPQSp0vx4tk2/GwEeE1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloAC-0003UL-E8; Fri, 12 Jul 2019 05:32:08 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo7T-0000Tf-8o
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:29:21 +0000
Received: by mail-pf1-x444.google.com with SMTP id g2so3803432pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gNlfncScxDREAT7VjTEXAFzdaeKYbTqQ4JYCBMZ7gaA=;
 b=cKXVVMIE78QmcDsJ8R1sTpeboiLZLLwZ56moXlqZPVbf8aD8vMMu4Pvrm2aCvGwZUe
 /q51yWLi8ZVUyVOJ+XpmDnfQMDM0AlfnbywjiCvIB8wYmBsxXtXVZiSU4BC7t9OVilng
 DG/7xeCbeqrNVTU6/lMYNfpfYsOAMgVe6IN/V03s1mYMoXp5axz+HSBQ0IKiyltXMSFr
 wRoTudkSz8nW8zy40AXY6gIncpiXe57jVQfwyA15sxy9Dh5Oy0kVl+sjVutCkc/aoLA5
 8lD5nJwig2b9lUBOJtdhwXQbno+v6eTUCAbdE1ByEBqwET4r6XcsfkpaytrzUd0dbnYx
 uTmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gNlfncScxDREAT7VjTEXAFzdaeKYbTqQ4JYCBMZ7gaA=;
 b=qgnQTEjejLFfQPYpsEfItFlUIdjFpuk0km1AkRPA1oD+JoPEcw7dCGvIAxEGWmRG9q
 5lv5vaSc+1xDwQHQKNrfJFapUd3iRV0yYQ5V6S29OkjeoGyZ69hzjYx63ztwSUbxZis7
 /SP9fPw8dSI7/G3yCUSm+sCLBbUSQXl+4WucNoTLCBYl/LzSKzoi2CynnVZ55s12YYWQ
 VcazTGxvlzrCEKJ9XgJKgR0k+inYG4ZLBOEvYbc7vj6+oE7P2dKWxlv/+cgN0RJGW+HQ
 fDKGVUiM9wtZ6CBAzdLsNCZtutsyUiYWJ9KILtk4sfhY1F89InGO8rALVHO4ACq00Je8
 GtuA==
X-Gm-Message-State: APjAAAVeiVNBIpUp0QUq6E7AxCrQkS99wHDRacqxK2v6ovL3ZIwU/QdA
 xCq2mcGnKTYBZmIG1tSsYSv28HNj51U=
X-Google-Smtp-Source: APXvYqzOs7AoxIeTNlLbUFu/r10BOMxy5Hb11XJhBZ3loQ0w6O6qKzqvd0UQkPq53twoAlpesJxRqQ==
X-Received: by 2002:a17:90a:cb12:: with SMTP id
 z18mr9007071pjt.82.1562909358269; 
 Thu, 11 Jul 2019 22:29:18 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id o14sm13901475pfh.153.2019.07.11.22.29.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:29:17 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 07/43] arm64: uaccess: Prevent speculative use of the
 current addr_limit
Date: Fri, 12 Jul 2019 10:57:55 +0530
Message-Id: <ff66d290deda6313f175c9462a29054c58e8414a.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_222919_361929_EB42E972 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
