Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 972178EFAD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 17:45:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W6QQIalUewqO+m7YOyM54WFsSU9jtJ+d3ZcBicODJog=; b=BphiQhY/E9CzPP
	yYeHL4zLEFXHtUVC02HERhvj98esYqxdBJduYWumAj7+IV2n/T+4jl8mEUoXWf2jnSEyYHf9YwRVr
	/FzVSiMgUWWWiNpiMGRFWkW5Be5PXenfH/26oVGS+ahhM9QB6QqH+6n2iVjEnhH05AeGUb6BI0XEy
	VzT7CGPAaOKU7IH6nPZ1XMy9FArDur9mBKFNEamL1nVkKQFx2bIi9Ruw7N8kKXwLKY/8aaWEu8Kj2
	np870x4yAxNSNjrVgkeuuQY0ttcrAtmfR6qm0EmKIgI7pMT+ei4dwtP8HJg3SqxJbrR6FVgGfg8uZ
	kqVpQMQLPXt3Epwl9K9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyHw1-0002vz-QK; Thu, 15 Aug 2019 15:45:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyHvA-0002Hg-8H
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 15:44:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B08A21570;
 Thu, 15 Aug 2019 08:44:11 -0700 (PDT)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 032D33F706;
 Thu, 15 Aug 2019 08:44:09 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-mm@kvack.org
Subject: [PATCH v8 2/5] arm64: Tighten the PR_{SET,
 GET}_TAGGED_ADDR_CTRL prctl() unused arguments
Date: Thu, 15 Aug 2019 16:44:00 +0100
Message-Id: <20190815154403.16473-3-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.23.0.rc0
In-Reply-To: <20190815154403.16473-1-catalin.marinas@arm.com>
References: <20190815154403.16473-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_084412_331212_0F714B3B 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Will Deacon <will.deacon@arm.com>,
 Dave Hansen <dave.hansen@intel.com>, Andrew Morton <akpm@linux-foundation.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Dave P Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Require that arg{3,4,5} of the PR_{SET,GET}_TAGGED_ADDR_CTRL prctl and
arg2 of the PR_GET_TAGGED_ADDR_CTRL prctl() are zero rather than ignored
for future extensions.

Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---
 kernel/sys.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/kernel/sys.c b/kernel/sys.c
index c6c4d5358bd3..ec48396b4943 100644
--- a/kernel/sys.c
+++ b/kernel/sys.c
@@ -2499,9 +2499,13 @@ SYSCALL_DEFINE5(prctl, int, option, unsigned long, arg2, unsigned long, arg3,
 		error = PAC_RESET_KEYS(me, arg2);
 		break;
 	case PR_SET_TAGGED_ADDR_CTRL:
+		if (arg3 || arg4 || arg5)
+			return -EINVAL;
 		error = SET_TAGGED_ADDR_CTRL(arg2);
 		break;
 	case PR_GET_TAGGED_ADDR_CTRL:
+		if (arg2 || arg3 || arg4 || arg5)
+			return -EINVAL;
 		error = GET_TAGGED_ADDR_CTRL();
 		break;
 	default:

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
