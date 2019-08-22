Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A7E99631
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 16:18:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=64Zfmt/nyZhuYp/LtSxRn2ssQDhuf9r5jni9MoRfFFI=; b=s8P78j5kKgZu5b
	S3RoOlUBF4ai8nPJ6PTJCMFs7spoSorpujWfh20NTgzlFt7/UXgIHuIIF1ycWTf3Wk6643HUrckdl
	wZsqQ4PfkUkIdRMD4FcUnc2PBOhd+Fkzyl+ECzySYP6hFuZtXr/SFF84VUqC294ORgF3whbPy5rVx
	z+HeOQo6wQvnmN+K5kBMhvXdYQKF0e6hG37gnpaMTIbYVUmny+BSRqXkTIBvs4rw4FWmLdbPh5ikZ
	6dbuMiO4jRjQSl3Jf7dInnzhdHntJTWo80x0Fzlh5w9XSJDlDnx0h5WA8ugGSfMk968FIZ13OAO90
	AyBzerDKxktZypTK1iIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0nuh-00074M-1l; Thu, 22 Aug 2019 14:18:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0nuV-00073p-GL
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 14:17:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 371E4337;
 Thu, 22 Aug 2019 07:17:53 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A0B723F706;
 Thu, 22 Aug 2019 07:17:52 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: Add tagged-address-abi.rst to index.rst
Date: Thu, 22 Aug 2019 15:17:43 +0100
Message-Id: <20190822141743.13876-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190821164730.47450-3-catalin.marinas@arm.com>
References: <20190821164730.47450-3-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_071755_583970_72382394 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: catalin.marinas@arm.com, will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Documentation/arm64/tagged-address-abi.rst introduces the
relaxation of the syscall ABI that allows userspace to pass
certain tagged pointers to kernel syscalls.

Add the document to index.rst for a correct generation of the
table of content.

Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 Documentation/arm64/index.rst | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/arm64/index.rst b/Documentation/arm64/index.rst
index 96b696ba4e6c..5c0c69dc58aa 100644
--- a/Documentation/arm64/index.rst
+++ b/Documentation/arm64/index.rst
@@ -16,6 +16,7 @@ ARM64 Architecture
     pointer-authentication
     silicon-errata
     sve
+    tagged-address-abi
     tagged-pointers
 
 .. only::  subproject and html
-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
