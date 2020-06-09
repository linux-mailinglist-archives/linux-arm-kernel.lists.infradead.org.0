Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B978C1F3244
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 04:26:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C3FF7QseXnjEOEu1kllTullG6m8rEKGzVV1Tv0WM92U=; b=MQ8opsV/pclc9q
	w/TYPWZBe7QAv1fx9uQla0Jmy8gARWrFvLjtAXewib2luSMsVaXH7tA3/nObXTqv3Q/SdszJ5FxqF
	WCy50lqHWCEyDzIqJrtVAkC3V+/Spw2D8/y+1vWCP8s+8krCmDvhtlRuo/9FPtoiMq/VgMao/tyVA
	w8+b9wj5rz75gA8i2zyc3oihdu/TVZRLj6DZHeA1Xq8MkrnxBpCpyIYrdHZ9Eggv3EBZK+pjdRP7R
	jKmNRV/anB07JZWKjx2ANDKCAzqxghE0yJvUiu/BqLzi9FTiA+2VS7kIYm6fW/bW2/wvlHmzPjHWh
	RRNDQNowhbAxBtJTFAZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiTxe-0001dO-Vb; Tue, 09 Jun 2020 02:25:58 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiTxY-0001cF-0y
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 02:25:54 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id E3A7E8066C;
 Tue,  9 Jun 2020 14:25:36 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1591669536;
 bh=586lz6bmU2bKx27WMCmywupzvB0ytIUGBkce0NdqGvk=;
 h=From:To:Cc:Subject:Date;
 b=pAQ/XTymihiR6wXAERENzPXGZ+sNZEr9mxaoYqQigv/EnKcF6N98vqQROM0ZDvQMT
 vkmf8PsEaafxzuGjIenZ0S4cgwYWOkaI3058KuPAlYNY1v/DRYFrxakJoyiOZXDCEH
 00uU2YvX5nJZoqNs0lhbjul/urd3Q5LhJgXvDVNV5PP51TfKwTo2a6NuM3E76BrpCJ
 FHO4t4uMIvhSL7JGpUFL2Qe17+feElAWf4EZ9iJmLl+ueIvYl2FefAY1r2m+dFIZHn
 6XN9g5uOPDI4JR7Bg/+IYIhnBkVuJnXUmtcaG0CdIK26n+UZ61uumjcRfniqQUzi2c
 v91vwl3HK0T8g==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5edef31f0000>; Tue, 09 Jun 2020 14:25:35 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id EDF9513EDE4;
 Tue,  9 Jun 2020 14:25:35 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id A2C5B28006C; Tue,  9 Jun 2020 14:25:36 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: linux@armlinux.org.uk, arnd@arndb.de, akpm@linux-foundation.org,
 rppt@linux.ibm.com, mchehab+samsung@kernel.org
Subject: [PATCH] ARM: Kconfig: set default ZBOOT_ROM_TEXT/BSS value to 0x0
Date: Tue,  9 Jun 2020 14:25:17 +1200
Message-Id: <20200609022517.15137-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
KernelVersion: next
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_192552_454691_22292A6C 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ZBOOT_ROM_TEXT and ZBOOT_ROM_BSS are defined as 'hex' but had a default
of "0". Kconfig will helpfully expand a text entry of 0 to 0x0 but
because this is not the same as the default value it was treated as
being explicitly set when running 'make savedefconfig' so most arm
defconfigs have CONFIG_ZBOOT_ROM_TEXT=0x0 and CONFIG_ZBOOT_ROM_BSS=0x0.

Change the default to 0x0 which will mean next time the defconfigs are
re-generated the spurious config entries will be removed.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
I'm assuming there's some semi-automated regular process that syncs up the
defconfigs so I've not created a patch with the result of regenerating the
defconfigs.

 arch/arm/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index fb6c85c5d344..38c0cab598bf 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1750,7 +1750,7 @@ config DEPRECATED_PARAM_STRUCT
 # TEXT and BSS so we preserve their values in the config files.
 config ZBOOT_ROM_TEXT
 	hex "Compressed ROM boot loader base address"
-	default "0"
+	default 0x0
 	help
 	  The physical address at which the ROM-able zImage is to be
 	  placed in the target.  Platforms which normally make use of
@@ -1761,7 +1761,7 @@ config ZBOOT_ROM_TEXT
 
 config ZBOOT_ROM_BSS
 	hex "Compressed ROM boot loader BSS address"
-	default "0"
+	default 0x0
 	help
 	  The base address of an area of read/write memory in the target
 	  for the ROM-able zImage which must be available while the
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
