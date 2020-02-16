Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEC6160581
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 19:28:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gSXKfxxfwof//R8HZa0G8n3TzlsV4iwp9Naids+RrTM=; b=gjTyEc+qgkuf6ahUwfTbuUJLK5
	A19weAr68WWbzMw2y6l/mVuUpz7rjxxZvLklz/llJ9UplYTPhL/xiyEuBDcN57z9WSbJGY8ZQJnu3
	YrKnXKW/uqg936XubZXF7DizAiPgTTCo9xS4qiAnzwKiLWtSzxmNB2QuQxjJRRQjEVNZyy0SA4h1v
	ou/kSV8SRFwOeCpy0ka0q0qiXuT1y3RPExfhn7FLT/9EcW7FYcrCg2tLPSVGjnzH7GjiWsewu3JEL
	b4soXdT39COoVgqPGX/H92XYcKFY5L6Dc/nmh/WNJpIAp6y0XU8diHBcLzPB2SzgdlQhRZA6D8Qvr
	dCVqaTGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3OeQ-0002s2-O6; Sun, 16 Feb 2020 18:28:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3OaS-0006aY-Vj
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 18:24:15 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 799F2208C4;
 Sun, 16 Feb 2020 18:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581877451;
 bh=OxGn9R5ntWFnT5wJ6BdqGbw1uixdFfwfbWefP91OvJs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JnsxNCD+1RLneTNgq/CogMRQxYifR6C7GyaugkwWdw/+gaqMhMpEPZKvjCCGbOX9c
 Pd7L6rWpuxTlucWjnFEMqJaJjSDjgtFRnve0YDty6fAdZpvuDc4qstmhQGQCtZ+M80
 oMMvPD93iiq+y9hPh6mlYvncMNJw4vYs20zRtSdM=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH 15/18] efi/x86: merge assignments of efi.runtime_version
Date: Sun, 16 Feb 2020 19:23:31 +0100
Message-Id: <20200216182334.8121-16-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200216182334.8121-1-ardb@kernel.org>
References: <20200216182334.8121-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_102413_392234_37A87D37 
X-CRM114-Status: GOOD (  11.47  )
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

efi.runtime_version is always set to the same value on both
existing code paths, so just set it earlier from a shared one.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/x86/platform/efi/efi.c | 19 ++-----------------
 1 file changed, 2 insertions(+), 17 deletions(-)

diff --git a/arch/x86/platform/efi/efi.c b/arch/x86/platform/efi/efi.c
index 54ada9f9612e..57651facb99d 100644
--- a/arch/x86/platform/efi/efi.c
+++ b/arch/x86/platform/efi/efi.c
@@ -423,6 +423,8 @@ static int __init efi_systab_init(u64 phys)
 		efi_systab.tables		= systab32->tables;
 	}
 
+	efi.runtime_version = hdr->revision;
+
 	efi_systab_report_header(hdr, efi_systab.fw_vendor);
 	early_memunmap(p, size);
 
@@ -873,15 +875,6 @@ static void __init kexec_enter_virtual_mode(void)
 	}
 
 	efi_sync_low_kernel_mappings();
-
-	/*
-	 * Now that EFI is in virtual mode, update the function
-	 * pointers in the runtime service table to the new virtual addresses.
-	 *
-	 * Call EFI services through wrapper functions.
-	 */
-	efi.runtime_version = efi_systab.hdr.revision;
-
 	efi_native_runtime_setup();
 #endif
 }
@@ -968,14 +961,6 @@ static void __init __efi_enter_virtual_mode(void)
 
 	efi_free_boot_services();
 
-	/*
-	 * Now that EFI is in virtual mode, update the function
-	 * pointers in the runtime service table to the new virtual addresses.
-	 *
-	 * Call EFI services through wrapper functions.
-	 */
-	efi.runtime_version = efi_systab.hdr.revision;
-
 	if (!efi_is_mixed())
 		efi_native_runtime_setup();
 	else
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
