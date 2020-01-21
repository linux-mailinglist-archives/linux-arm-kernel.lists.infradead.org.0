Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E8014410D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 16:55:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IrZxn1Mq9Ib4T0/AwAx6Jt8yqaJo3moSBHb8QvdLKHQ=; b=AVAWyf4qqWS1VF
	UpDQnBtTqj5ylpXka2TlgYuWj7MJC87J9k/I7eLjc7X/pTivMtV5++NivNlq7nOrTM3M0EMWV/0pq
	sPBQLe972ABzR3H3eHPyMJDz8/ktBghGMDCdRFpuKYcUzup3O3rterocGPdZUJ9/7pGPM/95YvFKE
	gCE+gi3GY8SQmW01kHb/zQKpRkFgeaw4rNEks+RajDgWp4GsWqzepfjT6oSPF1eFfhb2QdULlutHX
	qwX/4Sln7tOXvcyDAD1bJgvenjaIQnn1MfCG1zvBdbxl1AdpW5O2hosltEkWAb3aYSsIDHF0VCy6i
	9aoESoQx+i7SnfMeNQqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itvsA-0008MU-Uk; Tue, 21 Jan 2020 15:55:22 +0000
Received: from smtp1.de.adit-jv.com ([93.241.18.167])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itvrv-0007ay-Q2
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 15:55:14 +0000
Received: from localhost (smtp1.de.adit-jv.com [127.0.0.1])
 by smtp1.de.adit-jv.com (Postfix) with ESMTP id C93473C04C1;
 Tue, 21 Jan 2020 16:55:00 +0100 (CET)
Received: from smtp1.de.adit-jv.com ([127.0.0.1])
 by localhost (smtp1.de.adit-jv.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mElhgqLIX9qL; Tue, 21 Jan 2020 16:54:52 +0100 (CET)
Received: from HI2EXCH01.adit-jv.com (hi2exch01.adit-jv.com [10.72.92.24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp1.de.adit-jv.com (Postfix) with ESMTPS id B3FD33C00C5;
 Tue, 21 Jan 2020 16:54:52 +0100 (CET)
Received: from lxhi-065.adit-jv.com (10.72.93.66) by HI2EXCH01.adit-jv.com
 (10.72.92.24) with Microsoft SMTP Server (TLS) id 14.3.468.0; Tue, 21 Jan
 2020 16:54:52 +0100
From: Eugeniu Rosca <erosca@de.adit-jv.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH v2] arm64: kbuild: remove compressed images on 'make
 ARCH=arm64 (dist)clean'
Date: Tue, 21 Jan 2020 16:54:39 +0100
Message-ID: <20200121155439.1061-1-erosca@de.adit-jv.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Originating-IP: [10.72.93.66]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_075508_001242_31187B51 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Dirk Behme <dirk.behme@de.bosch.com>,
 Eugeniu Rosca <roscaeugeniu@gmail.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Eugeniu Rosca <erosca@de.adit-jv.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dirk Behme <dirk.behme@de.bosch.com>

Since v4.3-rc1 commit 0723c05fb75e44 ("arm64: enable more compressed
Image formats"), it is possible to build Image.{bz2,lz4,lzma,lzo}
AArch64 images. However, the commit missed adding support for removing
those images on 'make ARCH=arm64 (dist)clean'.

Fix this by adding them to the target list.
Make sure to match the order of the recipes in the makefile.

Cc: stable@vger.kernel.org # v4.3+
Fixes: 0723c05fb75e44 ("arm64: enable more compressed Image formats")
Signed-off-by: Dirk Behme <dirk.behme@de.bosch.com>
Signed-off-by: Eugeniu Rosca <erosca@de.adit-jv.com>
Reviewed-by: Masahiro Yamada <yamada.masahiro@socionext.com>

---
v2:
 - Added 'Fixes:', 'Cc: stable' and 'Reviewed-by' tags
---
 arch/arm64/boot/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/Makefile b/arch/arm64/boot/Makefile
index 1f012c506434..cd3414898d10 100644
--- a/arch/arm64/boot/Makefile
+++ b/arch/arm64/boot/Makefile
@@ -16,7 +16,7 @@
 
 OBJCOPYFLAGS_Image :=-O binary -R .note -R .note.gnu.build-id -R .comment -S
 
-targets := Image Image.gz
+targets := Image Image.bz2 Image.gz Image.lz4 Image.lzma Image.lzo
 
 $(obj)/Image: vmlinux FORCE
 	$(call if_changed,objcopy)
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
