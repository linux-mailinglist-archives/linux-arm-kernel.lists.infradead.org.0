Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5881212E798
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 15:56:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ab+35YEulVqlBn7YE5VPMlgMLf+WIe0JPgj5rG4OZ9E=; b=NtT1S5pydZlb6W
	jExVsAhZ7+Hp4zpcrtJ0KtJmvZlv0iK09q6J6QymcFadyIDtpVQYjMbXYKPUObVy1NUxvdFXJJRzj
	Lm2bgr8N/6CEO1iy9EvU5IcR5XY6RV1SzM8HWoV45moleSzykB6ZaeoEeQp9uFwqTnPwWal8bHjSL
	9mALsKDMWIoitad93g/uSpzona49vl4FWp8sNboJ75vYbJouxIVapMxO23hTGbt59TE1esGoph+hn
	yJOeSUhtz6FLpnBIXSd284FDdJrMbYgV8r2YqTGwfmmSZr7462coarrch4je1qCBNw3uBg7NDz0ac
	JmDb8crlqeWvbuHmq1Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in1u7-0003Cl-AO; Thu, 02 Jan 2020 14:56:51 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in1tz-0003Bm-UL
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 14:56:45 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MD9jV-1iw8he44g5-0095hC; Thu, 02 Jan 2020 15:56:36 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Subject: [PATCH v3 01/22] compat: ARM64: always include asm-generic/compat.h
Date: Thu,  2 Jan 2020 15:55:19 +0100
Message-Id: <20200102145552.1853992-2-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20200102145552.1853992-1-arnd@arndb.de>
References: <20200102145552.1853992-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:pr65T4i4ui5sl6aC4/5W8ioQHxGj1wu7GIvRZlZ8gpRo78AYq44
 cTImIvZTqlh2VCXLOa9jmynpkvETB6vlBls9J0U8coLl8xzrhJlZ+D3JvBCSnnmpAs27CVB
 mE48d68xq4PKsEwnNPlDYFMRBTBLJN7XdP/RMNsrRuWGfk2eEZMjO8Eq6Gzwbr8dWDgt77D
 OvfzOaKUXSLJInQPDBPTA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:p32MzLkRC7s=:Kgp26Bnq7sxJGSCTcjlzhh
 /wMW7eDh3Qu9/ZQ58XNLyUlvH5S9fJOvSyKT/8UvYXhuW92wCj7ggT5BVBzVOHdTq9FjuAXCE
 1HC8lwfXFUNLhDULu7FyVD4bwEQG56ssAwOq8bEPWBIbIXUlPzcfWqjcZHs1KUvitMsMJ4wEh
 SmAvPfxpwKSNnAYorv+884U+R1IHDJgI5z/d/xfUqbb+8e2FvZcv11QhstK4HUt6TJF+7yibf
 d0WtBnyy3uqy8QtX2dU4nHOr27JpPOYmXmF/vqYPqi9pLVbsrUrKNdTIW9PouWw9Ph+C23/xv
 69KiLOByQtmB79mk+d7mjo36fRE8DrguSa9QbO6wvZ+5cMiBYlblh1NFSPTOBWM0xsYcuwn8C
 0nKEf6X6Pg4TuOJu+eejTorzLGNqXXBlgiYc2+fGw4hQUp/BcdDly3F4T33+5iNiPlNeC1Vil
 tNnkRIK5Fxln+mdkNQJU3w4E1mHeaWKq17vUC8qV/b4HgtdIvNAo63eI9UjVUS2VLw54UlEAL
 CpRhfAwEau2vNqXyXesLtyzCKBGXZDhst6T14RDdjq2LPZC3w5d3CTwutGCQklNb1DGZoKrxc
 CAC2UTwBJ7dHBRfJceFTwDUekb+xTnZu1loUs/boghikwqfhKpilW6B88ZH0YjXVuyuqzruAQ
 QXQiFeuDLjoTBfAnL2qJBeqq5xmTGx4LL8HUjkim2DlwYqkV/hm5VZgFvzLRxyz3HQ1iVDNb6
 n3wI5YqhddSrXYm/E0tJmx6gExd7Mvucg9iD7b/3fxZwNemtwpFhurufR5iW4VPWVvdXFkKJJ
 9OIR3cuAtGAlspgdhizLoaeSERk4+1Jh8RPoM8ihV/bMSmJeawuHxZIaqTEEEMGuzqLZ4MGe/
 UBr5wHWCiye5ccxLXdmQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_065644_273543_745CEB6E 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to use compat_* type defininitions in device drivers
outside of CONFIG_COMPAT, move the inclusion of asm-generic/compat.h
ahead of the #ifdef.

All other architectures already do this.

Acked-by: Will Deacon <will@kernel.org>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm64/include/asm/compat.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/compat.h b/arch/arm64/include/asm/compat.h
index b0d53a265f1d..7b4172ce497c 100644
--- a/arch/arm64/include/asm/compat.h
+++ b/arch/arm64/include/asm/compat.h
@@ -4,6 +4,9 @@
  */
 #ifndef __ASM_COMPAT_H
 #define __ASM_COMPAT_H
+
+#include <asm-generic/compat.h>
+
 #ifdef CONFIG_COMPAT
 
 /*
@@ -13,8 +16,6 @@
 #include <linux/sched.h>
 #include <linux/sched/task_stack.h>
 
-#include <asm-generic/compat.h>
-
 #define COMPAT_USER_HZ		100
 #ifdef __AARCH64EB__
 #define COMPAT_UTS_MACHINE	"armv8b\0\0"
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
