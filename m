Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7B01EDB1E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 04:21:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Yxr2QCfWmbTL3n6vS5Eanxd/acFGVNUDKoFMNnYXl/Q=; b=Xcw+pE4xwKePcP
	yicnjR9vxfTlTbTmEiO78xRiSaNME54HrAha/f7CCClKeIF2ouMpVZR1iAHkaHtBvwjG/r7osvX0r
	gl/Ar5HYdLVhiFVW2udL0+orlZT7rOc9I2dNST2S29cb+maDxJVapgy4LbAprHo+kyeSnJNw6+HWV
	4tSfXaFQyPh58tuyZdZPVtoGuXDxhrw9V3xuUHTXwAAd2pGU9Mc46DxM+CkIPnKW+6m8VMyMTNRfa
	LSAiy2dowyqmjfVeQdNbRDM/mTC+2x8+0++6wF8SrwRVBVOUFbCVGOvJhno3Z9TAiHqAZmn4JjpvY
	baIZWHmTGByQ+sv+Y/WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgfV5-0002BM-GS; Thu, 04 Jun 2020 02:20:59 +0000
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgfUy-0002As-Mp
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 02:20:54 +0000
Received: from oscar.flets-west.jp (softbank126090202047.bbtec.net
 [126.90.202.47]) (authenticated)
 by conuserg-09.nifty.com with ESMTP id 0542KXGT019289;
 Thu, 4 Jun 2020 11:20:33 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 0542KXGT019289
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1591237233;
 bh=j5z5U8gxv5Bq9EeLtwXOFVCIgYpxEiWeySsn4UELVC0=;
 h=From:To:Cc:Subject:Date:From;
 b=l3hc3eMTKCTGcLsqrYFNALD8sumV26FfVYsxlenVWAIi++aYmRLSdkFTBSn2sZTU8
 c4UlrFpODwUKLWfzhGZeGbV7zqcm/dYozKtCix5eaK1jxadWC9bvMUkcxhyIfI83Q7
 Hr1ppF1CuDETSqcYc/UsK4PDszvtoOI2UacRuJFXPffIdYNvEEM+6EMsHPW69fs+da
 A7GwZvKXz7gD7+HKTT7TKbqbsNFXpSBBrt5228MENzNr/Sxi5CakeC7cN59zw+zRLM
 bys0wJxdTHjlhIy5UIJx/2iuxPmNAzktVZJVfXkG3rI4s+/LUjzbmyy4yC4wpcFwGP
 1mtcRFPtkAzug==
X-Nifty-SrcIP: [126.90.202.47]
From: Masahiro Yamada <masahiroy@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>, linux-efi@vger.kernel.org
Subject: [PATCH v2 1/2] efi/libstub/arm64: link stub lib.a conditionally
Date: Thu,  4 Jun 2020 11:20:30 +0900
Message-Id: <20200604022031.164207-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_192053_083792_661F2091 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.76 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit 799c43415442 ("kbuild: thin archives make default for
all archs"), core-y is passed to the linker with --whole-archive.
Hence, the whole of stub library is linked to vmlinux.

Use libs-y so that lib.a is passed after --no-whole-archive for
conditional linking.

The unused drivers/firmware/efi/libstub/relocate.o will be dropped
for ARCH=arm64.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

This patch touches under arch/arm64/, but
this is more related to efi.
I am sending this to Ard.

 arch/arm64/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 650e1185c190..48a6afa774fc 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -145,7 +145,7 @@ export	TEXT_OFFSET
 
 core-y		+= arch/arm64/
 libs-y		:= arch/arm64/lib/ $(libs-y)
-core-$(CONFIG_EFI_STUB) += $(objtree)/drivers/firmware/efi/libstub/lib.a
+libs-$(CONFIG_EFI_STUB) += $(objtree)/drivers/firmware/efi/libstub/lib.a
 
 # Default target when executing plain make
 boot		:= arch/arm64/boot
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
