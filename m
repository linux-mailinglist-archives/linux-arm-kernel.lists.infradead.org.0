Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E4CB5679
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 21:52:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z+Tfa/6hqku9v27Q04v6jSh0/wMPjOzGZHRLfojPN+8=; b=iH3ZGhWDxsz4TC
	YvyBOoU0aqlvZic+qerez1Tv8hnZeN61Y00OvBj0cxmsVx6d+ksCU6Fw7wnrU6jtJdit8ev47akB0
	4MBQCjNzsGcmYvRAH2Vv+I9LpqYqqnKZVNVW+DAjhmtZmjMosn1ylaXHFTmrJ/3j5XVXGXjL01MrY
	llipPiq4gZWXCUqv+MWK8j4va9Vvsobbi06CMVVE+qDnL+7cz4VXIoYGfA3et19HbF21ItcsnBtHE
	M32/ivkcDPzDlOPn3u9Iiti5xJE7y+e8ZZeDKBzSYzHvp8EA1uIuD7T6mHwPPCWWb013TDbztdtAz
	49m+8W7PAoy/USVv/sjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAJWq-0005OQ-RE; Tue, 17 Sep 2019 19:52:48 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAJWa-0005Nj-MW
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 19:52:34 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 542A0301E11C;
 Tue, 17 Sep 2019 19:52:31 +0000 (UTC)
Received: from builder (ovpn-120-110.rdu2.redhat.com [10.10.120.110])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 317DD608A5;
 Tue, 17 Sep 2019 19:52:31 +0000 (UTC)
Received: from builder.jcline.org.com (localhost [IPv6:::1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by builder (Postfix) with ESMTPS id 4B2A9FA9663;
 Tue, 17 Sep 2019 19:52:30 +0000 (UTC)
From: Jeremy Cline <jcline@redhat.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: Fix reference to docs for ARM64_TAGGED_ADDR_ABI
Date: Tue, 17 Sep 2019 19:52:27 +0000
Message-Id: <20190917195227.9061-1-jcline@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Tue, 17 Sep 2019 19:52:31 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_125232_757045_BEE5F873 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jeremy Cline <jcline@redhat.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The referenced file does not exist, but tagged-address-abi.rst does.

Signed-off-by: Jeremy Cline <jcline@redhat.com>
---
 arch/arm64/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 6ae6ad8a4db0..8960310b4f64 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1135,7 +1135,7 @@ config ARM64_TAGGED_ADDR_ABI
 	  When this option is enabled, user applications can opt in to a
 	  relaxed ABI via prctl() allowing tagged addresses to be passed
 	  to system calls as pointer arguments. For details, see
-	  Documentation/arm64/tagged-address-abi.txt.
+	  Documentation/arm64/tagged-address-abi.rst.
 
 menuconfig COMPAT
 	bool "Kernel support for 32-bit EL0"
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
