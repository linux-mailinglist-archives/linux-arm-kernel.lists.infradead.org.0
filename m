Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4504312D7AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 10:56:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vsEq6+kYkT2OddLWmU8PUeZ++WqGbr3fElTFtRUPCeg=; b=L+i5Twszbu+lt9
	J3nfKkiuOh5diyZvACPl9zbRosK+tjJBVaa1QfcjoAJval7JZvJFYbCk2JHVLECTk7RzuKA01g3Jo
	aFJg4PnkZzOx0yPCrj5SbrYxVXvTjPqHtZ0n1TanP7R2iyMHoEoDyfbPJ8gdGuVWTEOe9j/TLbLKn
	jY/1+8JkhE+swNSrbxClPQJCOMc5Qaoc8/wXa4fyIgLvShdwsDU2Ny5+J3wKcmf7u7xeIFxeND1um
	IJOSdQtoNkT1y25hr9n37Tdg8U+UpURQKDs+Hhm9rtkw0heCnOq5k4HhNlAdT6kuZAm6s8XICjN/b
	Ag4QmejESHi2ryK9Jv5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imEFv-0000uO-Bu; Tue, 31 Dec 2019 09:56:03 +0000
Received: from smtprelay0030.hostedemail.com ([216.40.44.30]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imEFn-0000tu-O7
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 09:55:57 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id DFBDC18224D7B;
 Tue, 31 Dec 2019 09:55:44 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::,
 RULES_HIT:41:355:379:800:960:968:973:988:989:1260:1277:1311:1313:1314:1345:1437:1515:1516:1518:1534:1539:1568:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:2904:3138:3139:3140:3141:3142:3865:3866:4419:5007:6691:10004:10400:10848:11026:11473:11658:11914:12296:12297:12555:12760:13069:13311:13357:13439:14181:14394:14659:14721:21080:21627:30054,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: cloth06_14f9fc3e6c940
X-Filterd-Recvd-Size: 1403
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf09.hostedemail.com (Postfix) with ESMTPA;
 Tue, 31 Dec 2019 09:55:44 +0000 (UTC)
Message-ID: <78317df96ccb67b462878e07b3f87348c9d898cc.camel@perches.com>
Subject: [PATCH] arm64: Kconfig: Remove CONFIG_ prefix from ARM64_PSEUDO_NMI
 section
From: Joe Perches <joe@perches.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Date: Tue, 31 Dec 2019 01:54:57 -0800
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_015555_845828_25477921 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.30 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.30 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Will Deacon <will@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove the CONFIG_ prefix from the select statement for ARM_GIC_V3.

Signed-off-by: Joe Perches <joe@perches.com>
---
 arch/arm64/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index b1b447..e9b1fc 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1544,7 +1544,7 @@ config ARM64_MODULE_PLTS
 
 config ARM64_PSEUDO_NMI
 	bool "Support for NMI-like interrupts"
-	select CONFIG_ARM_GIC_V3
+	select ARM_GIC_V3
 	help
 	  Adds support for mimicking Non-Maskable Interrupts through the use of
 	  GIC interrupt priority. This support requires version 3 or later of



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
