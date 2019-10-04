Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C43E4CB3B8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 06:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IRgFHIYVuPOVV8LBlQwl2KohLNF7DuYEPabIkEvWP5M=; b=B9h
	PUZxRhWxOMlGDp4y3Xoy1A0yoScoSY9ZJSCHfBL7SnPbOJ1XuxV3ClgxMwqNX/dfuVGIoPxxb8I9U
	JBn/3NuzXZ1iESZBDnMJav6ChFcjisv7V8Xt+czr++IKYqRudwD2RQ/zLihhOk3Rq1y7mzSeBzeeL
	X5pHDC4jb0E10Lq7bqcB72huw7G5aK7n3Jz59WmbUOdgX3fdww4RJd70Eg5QOW+2GcxDkNVZU/Sg4
	Qm3EW9eph8/oLPJNgXutVR8n3y9ocYtPQ2OgtWPF1P7ufB59sWfcE1VwH4SLCtwQnP1A4mFRQn2o4
	QuHS0WFmdexlfRBBafFpkHMy3v30mMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGF8W-00089a-56; Fri, 04 Oct 2019 04:24:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGF8M-00088X-TD
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 04:24:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AB6CC15A1;
 Thu,  3 Oct 2019 21:23:57 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.5])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D5AF33F739;
 Thu,  3 Oct 2019 21:23:54 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64/mm: Poison initmem while freeing with
 free_reserved_area()
Date: Fri,  4 Oct 2019 09:53:58 +0530
Message-Id: <1570163038-32067-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_212402_985544_9CF5943F 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, Anshuman Khandual <anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Platform implementation for free_initmem() should poison the memory while
freeing it up. Hence pass across POISON_FREE_INITMEM while calling into
free_reserved_area(). The same is being followed in the generic fallback
for free_initmem() and some other platforms overriding it.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm64/mm/init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index 45c00a54909c..ea7d38011e83 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -571,7 +571,7 @@ void free_initmem(void)
 {
 	free_reserved_area(lm_alias(__init_begin),
 			   lm_alias(__init_end),
-			   0, "unused kernel");
+			   POISON_FREE_INITMEM, "unused kernel");
 	/*
 	 * Unmap the __init region but leave the VM area in place. This
 	 * prevents the region from being reused for kernel modules, which
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
