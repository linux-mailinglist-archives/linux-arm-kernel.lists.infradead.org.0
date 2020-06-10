Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F13BD1F59AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 19:04:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IH8avGCF6cwFC8QQj92T5sdnpBk9CBYPqNmxjXC88Vo=; b=dzwI+oGu9vf5HqWgHE7jZYwyIE
	6bMqp67ZK9oT+lZX1iJW/+Xg2C1IefOOFs3pCGTWGfCTV4GYs9Q1w5Kj+xSjyjnqjUJb6DUqx2nay
	3dsemBoiaR5jSfL5A5U731cyzLoLxAA38kSkvzEmTVqIcU1976edofMk8Ban9DwFzPoBtibsPXtG/
	Mfzz/WvrkAM/2jxGQP/n/Ip8TFAL6QKxnAux+WenFPJL8vEacdO8YyjnSaVzao2/HGAGO8hZgmznO
	novhLYL/BVP+tWVsUQAbCMePJoEpit1V5Tx2XwXNbkqR8KtpYuxpvAQLVoleBOszMj32cA0+4v0Fc
	xZBhJjJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj490-0005VT-QU; Wed, 10 Jun 2020 17:04:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj48r-0005UW-Eg
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 17:03:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EDDA11FB;
 Wed, 10 Jun 2020 10:03:56 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 560773F6CF;
 Wed, 10 Jun 2020 10:03:56 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] docs/arm64: Fix typo'd #define in sve.rst
Date: Wed, 10 Jun 2020 18:03:09 +0100
Message-Id: <1591808590-20210-2-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1591808590-20210-1-git-send-email-Dave.Martin@arm.com>
References: <1591808590-20210-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_100357_533892_ABBDD43C 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

sve.rst describes a flag PR_SVE_SET_VL_INHERIT for the
PR_SVE_SET_VL prctl, but there is no flag of this name.  The flag
is shared between the _GET and _SET calls, so the _SET prefix was
dropped, giving the name PR_SVE_VL_INHERIT in the headers.

Fix it.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 Documentation/arm64/sve.rst | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/arm64/sve.rst b/Documentation/arm64/sve.rst
index 5689c74..bfd55f4 100644
--- a/Documentation/arm64/sve.rst
+++ b/Documentation/arm64/sve.rst
@@ -186,7 +186,7 @@ prctl(PR_SVE_SET_VL, unsigned long arg)
 
     flags:
 
-	PR_SVE_SET_VL_INHERIT
+	PR_SVE_VL_INHERIT
 
 	    Inherit the current vector length across execve().  Otherwise, the
 	    vector length is reset to the system default at execve().  (See
@@ -247,7 +247,7 @@ prctl(PR_SVE_GET_VL)
 
     The following flag may be OR-ed into the result:
 
-	PR_SVE_SET_VL_INHERIT
+	PR_SVE_VL_INHERIT
 
 	    Vector length will be inherited across execve().
 
@@ -393,7 +393,7 @@ The regset data starts with struct user_sve_header, containing:
 * At every execve() call, the new vector length of the new process is set to
   the system default vector length, unless
 
-    * PR_SVE_SET_VL_INHERIT (or equivalently SVE_PT_VL_INHERIT) is set for the
+    * PR_SVE_VL_INHERIT (or equivalently SVE_PT_VL_INHERIT) is set for the
       calling thread, or
 
     * a deferred vector length change is pending, established via the
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
