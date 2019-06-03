Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF29E33230
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 16:31:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p4miqSGyzhrAYvPsw0Wh2ohMsYw9spQ18Nwl/58yZhE=; b=hW3qyfo0cEwfsW
	miiY3toiLAqdhAXQbMvC3g40/RBn+YQ6tJ/cBFzTGyFnH+PY+WHGUBLXE/Ov7SPKydEiclX480l9L
	HWEXxGWwvpMtH2sgYrP3xtACIDPpt7AXaxPS53XBUJUQsV/qiiUo9eZYxPJqrLYyPPdkvYMOgAP2B
	kagXLT5y4kc4xoiil3pIq2pHZf+xNlSV46SFSyVsoWAsyBvthSsDbuoISW1ZH9ZwdfUASfZAAcxiu
	4YAfj4XF5R8gWN/mNIN0j4MxeujZe1GgXlfDXWae19uFCGbscnQn0uzJKIX8xr0dLxaPRzYvs9Pln
	w5LTluY8B2s6PJF0C2sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXo09-0007mf-Vb; Mon, 03 Jun 2019 14:31:53 +0000
Received: from relay1.mentorg.com ([192.94.38.131])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXo02-0007lV-Nx
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 14:31:48 +0000
Received: from svr-orw-mbx-01.mgc.mentorg.com ([147.34.90.201])
 by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 id 1hXnzq-0003wA-Ns from George_Davis@mentor.com ;
 Mon, 03 Jun 2019 07:31:34 -0700
Received: from localhost (147.34.91.1) by svr-orw-mbx-01.mgc.mentorg.com
 (147.34.90.201) with Microsoft SMTP Server (TLS) id 15.0.1320.4; Mon, 3 Jun
 2019 07:31:32 -0700
From: "George G. Davis" <george_davis@mentor.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>, Andy Whitcroft
 <apw@canonical.com>, Joe Perches <joe@perches.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 <linux-arm-kernel@lists.infradead.org>, Michal Marek
 <michal.lkml@markovi.net>, <linux-kbuild@vger.kernel.org>, Qian Cai
 <cai@lca.pw>, Andrew Morton <akpm@linux-foundation.org>, "George G. Davis"
 <george_davis@mentor.com>, Breno Leitao <leitao@debian.org>, Michael Ellerman
 <mpe@ellerman.id.au>, open list <linux-kernel@vger.kernel.org>
Subject: [PATCH v2] scripts/checkstack.pl: Fix arm64 wrong or unknown
 architecture
Date: Mon, 3 Jun 2019 10:30:39 -0400
Message-ID: <1559572240-18706-1-git-send-email-george_davis@mentor.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-ClientProxiedBy: svr-orw-mbx-02.mgc.mentorg.com (147.34.90.202) To
 svr-orw-mbx-01.mgc.mentorg.com (147.34.90.201)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_073146_782298_7F032CDE 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.94.38.131 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following error occurs for the `make ARCH=arm64 checkstack` case:

aarch64-linux-gnu-objdump -d vmlinux $(find . -name '*.ko') | \
perl ./scripts/checkstack.pl arm64
wrong or unknown architecture "arm64"

As suggested by Masahiro Yamada, fix the above error using regular
expressions in the same way it was fixed for the `ARCH=x86` case via
commit fda9f9903be6 ("scripts/checkstack.pl: automatically handle
32-bit and 64-bit mode for ARCH=x86").

Suggested-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Signed-off-by: George G. Davis <george_davis@mentor.com>
---
v1:
- https://patchwork.kernel.org/patch/10970393/
v2:
- Updates as Suggested-by: Masahiro Yamada
- Update commit subject due to moving the fix from Makefile to
  checkstack.pl
---
 scripts/checkstack.pl | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/checkstack.pl b/scripts/checkstack.pl
index 122aef5e4e14..371bd17a4983 100755
--- a/scripts/checkstack.pl
+++ b/scripts/checkstack.pl
@@ -46,7 +46,7 @@ my (@stack, $re, $dre, $x, $xs, $funcre);
 	$x	= "[0-9a-f]";	# hex character
 	$xs	= "[0-9a-f ]";	# hex character or space
 	$funcre = qr/^$x* <(.*)>:$/;
-	if ($arch eq 'aarch64') {
+	if ($arch =~ '^(aarch|arm)64$') {
 		#ffffffc0006325cc:       a9bb7bfd        stp     x29, x30, [sp, #-80]!
 		#a110:       d11643ff        sub     sp, sp, #0x590
 		$re = qr/^.*stp.*sp, \#-([0-9]{1,8})\]\!/o;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
