Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CA5AE794
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 12:04:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jzCLjSUMUhMvrmLA9OJBXDOjmweBmD7Z7NljOX9RJdg=; b=kWy
	OLnqakD3SA0Ev8py/Ym084iHuDwqf2JOrEtzHzUGl7XDe1Kqeb8II9nbXkwzpaMQrKU5CYIpoFtLu
	HcVAQC24jl8TKhE07EWYw7VWLgDxcWoVOCeCpJiWoyrRtYp8VVGQHrSsH8LO1lPXxtez0aRuDYAgs
	lH7PvhIx8xpRWK+VIOX30m21XYc1yu1TTagWEiF5W3o3RxoYMiLzGDKNovuHO9KOWLoHYKPBDP47a
	YHl70Y6/TQVNdYi0Kdp1uB4Ji+YhQ2wJcndjHzG5cLp6gVJcgKYEc4o6w9zKFnFE2EC7rmMbEVH+7
	R+Lpfb8w3n3XzXJo0QpgfEDp1mtPKEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7d0q-0000HZ-RP; Tue, 10 Sep 2019 10:04:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7d0f-0000H3-5p
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 10:04:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F288F28;
 Tue, 10 Sep 2019 03:04:24 -0700 (PDT)
Received: from e121566-lin.cambridge.arm.com (e121566-lin.cambridge.arm.com
 [10.1.196.217])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C9D8F3F71F;
 Tue, 10 Sep 2019 03:04:23 -0700 (PDT)
From: Alexandru Elisei <alexandru.elisei@arm.com>
To: linux-doc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] docs: arm: Fix RAM offset requirement for loading a raw image
Date: Tue, 10 Sep 2019 11:03:53 +0100
Message-Id: <1568109833-11780-1-git-send-email-alexandru.elisei@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_030429_261640_D368DDA4 
X-CRM114-Status: UNSURE (   8.98  )
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
Cc: ian.campbell@citrix.com, corbet@lwn.net, catalin.marinas@arm.com,
 linux@armlinux.org.uk, mchehab@kernel.org, will@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 83d26d1113d8 ("ARM: 7824/1: update advice on kernel, initramfs and
FDT load address.") changed the offset requirement for loading a raw kernel
image into RAM from 32KiB (0x8000) to TEXT_OFFSET - PAGE_OFFSET, which
results in a negative value. Change the offset to be TEXT_OFFSET, which has
an arch dependent value between 0x8000 and 0x308000.

Signed-off-by: Alexandru Elisei <alexandru.elisei@arm.com>
---
 Documentation/arm/booting.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/arm/booting.rst b/Documentation/arm/booting.rst
index 4babb6c6ae1e..0507e7e3357e 100644
--- a/Documentation/arm/booting.rst
+++ b/Documentation/arm/booting.rst
@@ -178,8 +178,8 @@ prior to decompression, which will make the boot process slightly
 faster.
 
 When booting a raw (non-zImage) kernel the constraints are tighter.
-In this case the kernel must be loaded at an offset into system equal
-to TEXT_OFFSET - PAGE_OFFSET.
+In this case the kernel must be loaded at an offset into system RAM
+equal to TEXT_OFFSET.
 
 In any case, the following conditions must be met:
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
