Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F81B16057B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 19:27:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6fqP+q+bCL1cK4dK7q24aNkWFmp8jn3N9w755Gci1Og=; b=KxAKxrp3Z76lKyO+dKunizGAHT
	eBYs4VN8jdsPPDy0IYvmAO/bedBEv8p/DGSCMORfBLLVWQ0WGqX1frBiDAUURz/Jng/Zf/vhZcs2+
	DLI/YXkXuLQcL24dDRqvw5Fl5MCOq0FIAAui2QAh8tpwXvBW4sF057Zc50eQhnkUQ2oGMmju0Ea/d
	Jv8PzWPwRJVaPwcydkI1ltLgFkKGW3AFhePLibGv8wCRvQipfRnjVpKWw8L4duUsGZkPOs7YDbX0+
	H2gISfqnmg6nXpxlOUqF0vx6GgEJY/kqV/PyBlv5v0MlBnGNQlGDzVFPxXAFp0wrDrRp5OHz6CqKA
	dZffP26g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3OdB-0001aG-5b; Sun, 16 Feb 2020 18:27:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3OaK-0006Tq-O6
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 18:24:09 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1234B2465D;
 Sun, 16 Feb 2020 18:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581877443;
 bh=M6CtQIWxWimc9CTNa99EsOazRYurLdEN+0lz9EbRkzY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HF+fSYYCHuFY90WdfozOQ/Gg+MLB1ebGPUlwlpGiC5OyQbuTT7J7qecISnVTyY8Fz
 w7Z1mlXr2uRiv6VsFCnhx8poDOo8eS3nvWJQA9Hw/NeTHiAOqiPapXEntfifvNZvo3
 hoes4JQxVBBy9jejNEh4C6g5Oiox3GkIeL9mvBl4=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH 10/18] efi/ia64: switch to efi_config_parse_tables()
Date: Sun, 16 Feb 2020 19:23:26 +0100
Message-Id: <20200216182334.8121-11-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200216182334.8121-1-ardb@kernel.org>
References: <20200216182334.8121-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_102405_046470_53F27FFD 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: nivedita@alum.mit.edu, x86@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

IA64 calls efi_config_parse_tables() via efi_config_init(), which
does an explicit memremap() of the tables, which is unnecessary
on IA64. So let's call efi_config_parse_tables() directly, passing
the __va() of the config table array.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/ia64/kernel/efi.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/ia64/kernel/efi.c b/arch/ia64/kernel/efi.c
index 81bc5031a115..3b5cf551489c 100644
--- a/arch/ia64/kernel/efi.c
+++ b/arch/ia64/kernel/efi.c
@@ -531,7 +531,10 @@ efi_init (void)
 
 	palo_phys      = EFI_INVALID_TABLE_ADDR;
 
-	if (efi_config_init(arch_tables) != 0)
+	if (efi_config_parse_tables(__va(efi_systab->tables),
+				    efi_systab->nr_tables,
+				    sizeof(efi_config_table_t),
+				    arch_tables) != 0)
 		return;
 
 	if (palo_phys != EFI_INVALID_TABLE_ADDR)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
