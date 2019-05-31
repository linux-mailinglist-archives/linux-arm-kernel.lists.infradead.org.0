Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BBE31145
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 17:27:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HY3pI594t/JVva0WprQp1Qh4L70hZzpTXYolsdulXaU=; b=ZQ8BjwRT2lYPVM
	Uu9mF50738cGIpBEKsBc28MBg0mv0wbXaqQWskpB1d078av6HXXNCq5Fvfbo9rcOKKsZBaDVGhGab
	U5eSPT6eL8yAt3egQGUc76sCiT5NmV+krGssUSNMmVvxGMlLioc3vqIgNNYtoN6DeSaoL4MUiZPzj
	Esd1pe89UfIg9AggRbXPaNaxy0a0cVHZFG/InG6VqaskkAvA8hdZpDvuJ48KepB99B4wSZw1ZA5DS
	N2r/LmXnsP8SkowcYgajQohWR6pxgQpkhfP9j7sX3WS0BWth8NC437iKApQynlCW4QLs4tpJG+7Ph
	jcFKDkWjOejG0RI/8PnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWjQu-0004Up-VF; Fri, 31 May 2019 15:27:04 +0000
Received: from relay1.mentorg.com ([192.94.38.131])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWjQn-0004UL-8k
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 15:26:58 +0000
Received: from svr-orw-mbx-01.mgc.mentorg.com ([147.34.90.201])
 by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 id 1hWjQl-0007CM-Nl from George_Davis@mentor.com ;
 Fri, 31 May 2019 08:26:55 -0700
Received: from localhost (147.34.91.1) by svr-orw-mbx-01.mgc.mentorg.com
 (147.34.90.201) with Microsoft SMTP Server (TLS) id 15.0.1320.4; Fri, 31 May
 2019 08:26:53 -0700
From: "George G. Davis" <george_davis@mentor.com>
To: Andy Whitcroft <apw@canonical.com>, Joe Perches <joe@perches.com>, Catalin
 Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 <linux-arm-kernel@lists.infradead.org>, Masahiro Yamada
 <yamada.masahiro@socionext.com>, Michal Marek <michal.lkml@markovi.net>,
 <linux-kbuild@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Subject: [RFC][PATCH] Makefile: Fix checkstack.pl arm64 wrong or unknown
 architecture
Date: Fri, 31 May 2019 11:26:11 -0400
Message-ID: <1559316388-19565-1-git-send-email-george_davis@mentor.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-ClientProxiedBy: SVR-ORW-MBX-05.mgc.mentorg.com (147.34.90.205) To
 svr-orw-mbx-01.mgc.mentorg.com (147.34.90.201)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_082657_318644_69A908E8 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.94.38.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "George G. Davis" <george_davis@mentor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following error occurs for the `make ARCH=arm64 checkstack` case:

aarch64-linux-gnu-objdump -d vmlinux $(find . -name '*.ko') | \
perl ./scripts/checkstack.pl arm64
wrong or unknown architecture "arm64"

Fix the above error by setting `CHECKSTACK_ARCH := aarch64` for the
ARCH=arm64 case.

Signed-off-by: George G. Davis <george_davis@mentor.com>
---
 Makefile | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 11358153d8f2..3e615e8553c0 100644
--- a/Makefile
+++ b/Makefile
@@ -1695,7 +1695,11 @@ PHONY += checkstack kernelrelease kernelversion image_name
 ifeq ($(ARCH), um)
 CHECKSTACK_ARCH := $(SUBARCH)
 else
-CHECKSTACK_ARCH := $(ARCH)
+	ifeq ($(ARCH), arm64)
+		CHECKSTACK_ARCH := aarch64
+	else
+		CHECKSTACK_ARCH := $(ARCH)
+	endif
 endif
 checkstack:
 	$(OBJDUMP) -d vmlinux $$(find . -name '*.ko') | \
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
