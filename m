Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1116B1E500C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 23:18:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=X1S/2govLujsTFaWNXEm3Ck14iQomTq61mmrQp4C1FU=; b=uHRb64eSlV7nqGkypiDbpJktqu
	rpkUxmk1WnwlndH1rIGK+5t9CyVz6joK54/U98vfvre1vw95mNpXv7uq6dy8lt+/r8mLXUPPS/AOJ
	tEO6cW/+TEe0hSUv4lkPvd4LNI7a2tpvvQhgU+57QbXxqe7Jd/QcGG6AYXiQD9VQKH4qiscZYw9RV
	X2LDROHJKt6JvtOl+7fWO2IMsAlktNRKkB4pXhNsbbbfKhJNfCaLhuIXHhhK5dmOIGtt/OlHUozsU
	ly2H7dJ+JpQin43oDRIwYZ5Q78kmJaeojPmxbypIF5beU5/C8+9KRU9Gmft+nyuy0ZEzo0eNu1yP0
	HzTKMVAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je3Ri-0001MC-2k; Wed, 27 May 2020 21:18:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je3RT-0001KZ-Ji
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 21:18:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2F0A031B;
 Wed, 27 May 2020 14:18:26 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8B2303F52E;
 Wed, 27 May 2020 14:18:25 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH v2 1/6] prctl.2: ffix use literal hyphens when referencing
 kernel docs
Date: Wed, 27 May 2020 22:17:33 +0100
Message-Id: <1590614258-24728-2-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
References: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_141827_690019_E2EF2A6E 
X-CRM114-Status: GOOD (  11.29  )
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is one case of a cross-reference to a kernel documentation
filename that uses unescaped hyphens.

To avoid misrendering, escape these as \- similarly to other
instances.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 man2/prctl.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/prctl.2 b/man2/prctl.2
index 968a75a..dc99218 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -1261,7 +1261,7 @@ This parameter may enforce a read-only policy which will result in the
 call failing with the error
 .BR ENXIO .
 For further details, see the kernel source file
-.IR Documentation/admin-guide/kernel-parameters.txt .
+.IR Documentation/admin\-guide/kernel\-parameters.txt .
 .\"
 .\" prctl PR_TASK_PERF_EVENTS_DISABLE
 .TP
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
