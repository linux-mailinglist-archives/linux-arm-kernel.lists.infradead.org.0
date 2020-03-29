Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F326196BD3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 10:06:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PYwGlOntfiP/l/xnr+Pl9mjGgSC/89puxcPWy0NiAZQ=; b=c4+Ho6+agDysv178TP3OmWHVKA
	vlGNZp+jLw1wW2F9ie+AngFbCKAlfiUHew/QxSB6vOWMvVsyoiGRgKHKB/lvLo0WO1u8HsCYPPf1C
	EqK36jVAF3y/MMn5yRYI9KgHly9LVgXOH00VQOhKN57GkvAtGag+cI19ROzlC5zR+Q6jnpf2RHxEf
	0rtoNP1KWgRwunAlmG3l7IMXldl3Ke8XRTjeZtiFZoHbKz77/uNI5mw8lvnjL0r1cDRp2GPK/2ITC
	lE5e6xEzHp6FWTTUv8Qz6JWrqIUAf1hGYYF54ENVxLXIZMbKcsHzYwa5RINM0Dj+6XQT/1G4wSMW7
	+dXU9TwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jISxq-0002jt-GB; Sun, 29 Mar 2020 08:06:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jISxG-0002OO-WF
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 08:06:04 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5FECF20781;
 Sun, 29 Mar 2020 08:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585469162;
 bh=X5cIBfHwpsTFUJFdIop7vTAf2qO10L+TXiiakFrcIl0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OKiSF8ptWTp9+s+Vp9JqSSPuQHeB4QIuiIYEceG2aPi6uMxXcT3C4imf+vsqRaGoE
 XjQAR//8EzT+Dezb7fkQ9aX9Hz9CrHZxDmfNVtwsT4Z8KamEBzV2MucB2JEBIbbE7A
 DK7E6g6ghMG7SH7QdmSEl/2rck0num4fh1p7tI2g=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org, Ingo Molnar <mingo@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 2/2] efi/libstub/arm: fix spurious message that an initrd was
 loaded
Date: Sun, 29 Mar 2020 10:05:44 +0200
Message-Id: <20200329080544.25715-3-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200329080544.25715-1-ardb@kernel.org>
References: <20200329080544.25715-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_010603_055324_D60A2FAB 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit ec93fc371f014a6f ("efi/libstub: Add support for loading the initrd
from a device path") added a diagnostic print to the ARM version of the
EFI stub that reports whether an initrd has been loaded that was passed
via the command line using initrd=. However, it failed to take into
account that, for historical reasons, the file loading routines return
EFI_SUCCESS when no file was found, and the only way to decide whether
a file was loaded is to inspect the 'size' argument that is passed by
reference. So let's inspect this returned size, to prevent the print
from being emitted even if no initrd was loaded at all.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/firmware/efi/libstub/arm-stub.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/efi/libstub/arm-stub.c b/drivers/firmware/efi/libstub/arm-stub.c
index 13559c7e6643..99a5cde7c2d8 100644
--- a/drivers/firmware/efi/libstub/arm-stub.c
+++ b/drivers/firmware/efi/libstub/arm-stub.c
@@ -277,7 +277,7 @@ efi_status_t efi_entry(efi_handle_t handle, efi_system_table_t *sys_table_arg)
 		} else if (status == EFI_NOT_FOUND) {
 			status = efi_load_initrd(image, &initrd_addr, &initrd_size,
 						 ULONG_MAX, max_addr);
-			if (status == EFI_SUCCESS)
+			if (status == EFI_SUCCESS && initrd_size > 0)
 				pr_efi("Loaded initrd from command line option\n");
 		}
 		if (status != EFI_SUCCESS)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
