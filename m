Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 302751A0897
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 09:47:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hnxPqQMXX0ajB9PasOESUn7NJwDdX+8lNZJS9CSi2RM=; b=Sdt
	rb2Kh+jGZ12cN5tKaUeoFCz9PUXgms5ZocizhEcNTP5MwJiV2rYmyzS15+wwOleDAaPbsGm2zJR06
	DTR1Zk0q5GwthDJym3f+4u+AIMrysFCIigSBoUhaEIIP04MCSjdNtIy2+0KGTY721nEquON8FPXn9
	gghMxX4367BGHALHvhUozLzlw9RCeHUI8CnNfisSXIKjzevN/tGrYv1NFUnlG6cmIcq1pQ2vj4Va5
	B5G6PFFf9dBAU1H0c/siR2L9M+c5dBdcGxTj3ba2b6No05FeG3LtgQFhq1cjIDJFWpeae7FWQJUPn
	C1OazwJ6C5M4TJAqPHVFHwvcDiIAtgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLiwu-0008Gc-BS; Tue, 07 Apr 2020 07:47:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLiwf-0008EI-Bc
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 07:46:54 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BAACC20678;
 Tue,  7 Apr 2020 07:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586245612;
 bh=b6MMuSzU9C8yghMsnZmVTJSUYorM53yV1HhAe2+fMno=;
 h=From:To:Cc:Subject:Date:From;
 b=09V22Yc6d/TTcIR0zPQ5nzdyNX1EPGrtgFtaVo20INMSqoIw899n/0lBYvnw7kN37
 wCl+Po4jWkbyDCWkIqCy+4sBDGZ8iL/vssSK8Q8MJJU2dz50pUjYSUkfDFgJU+cnev
 rCgDTcn1JHP1uUTIR7JrNGVN65M9X28dJe1idLt0=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: decompressor: deal with ADR going out of range in
 efi_enter_kernel()
Date: Tue,  7 Apr 2020 09:46:23 +0200
Message-Id: <20200407074623.29378-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_004653_418506_880751D2 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux@armlinux.org.uk, arnd@arndb.de, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 0698fac4ac2a ("efi/arm: Clean EFI stub exit code from cache instead
of avoiding it") introduced a PC-relative reference to 'call_cache_fn' into
efi_enter_kernel(), which lives way at the end of head.S. In some cases,
the ARM version of the ADR instruction does not have sufficient range,
resulting in a build error:

  arch/arm/boot/compressed/head.S:1453: Error: invalid constant (fffffffffffffbe4) after fixup

ARM defines an alternative with a wider range, called ADRL, but this does
not exist for Thumb-2. At the same time, the ADR instruction in Thumb-2
has a wider range, and so it does not suffer from the same issue.

So let's switch to ADRL for ARM builds, and keep the ADR for Thumb-2 builds.

Reported-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/boot/compressed/head.S | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index cabdd8f4a248..e8e1c866e413 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -1450,7 +1450,8 @@ ENTRY(efi_enter_kernel)
 		@ running beyond the PoU, and so calling cache_off below from
 		@ inside the PE/COFF loader allocated region is unsafe unless
 		@ we explicitly clean it to the PoC.
-		adr	r0, call_cache_fn		@ region of code we will
+ ARM(		adrl	r0, call_cache_fn	)
+ THUMB(		adr	r0, call_cache_fn	)	@ region of code we will
 		adr	r1, 0f				@ run with MMU off
 		bl	cache_clean_flush
 		bl	cache_off
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
