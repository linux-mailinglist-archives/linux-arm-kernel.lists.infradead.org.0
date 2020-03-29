Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5575196BD2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 10:06:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WcGaEl87K042/MtrdICWqUpP1FLYrfym7DVuAA7QYHA=; b=i2AGMpBJEYBFvHPWylhdc+wFSR
	WbylygaxVSvWNRb/YhZ7RYYqzwfH0Na3t37SjgYWtfecJ8IOX25ZUme4ig/FtMhLsYWP+WKjQbOPj
	/WFb/KB2pSSZhvjWGQLFJWHmp3JEJdTDxXl+k2Mne8SH/g1pIa13J9l39jDZ5gQWfkdAHWsge010l
	IHDY8ksc9qBWvD6bL/HC0UgjGWRdKG9y/YCmVHJDvHEzVep8EoTBeZM9tamPf4BP8ltEkzGkqXYP5
	8vd8uiWfSWlvbiuh+lvAq6xBowpCrBgdaj4FUqXt6bxWSL/KCMq6r35gTVpQWKX91b/Qa4IVB6yLI
	08YsndGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jISxe-0002UE-85; Sun, 29 Mar 2020 08:06:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jISxF-0002O4-7d
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 08:06:02 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 96A2120732;
 Sun, 29 Mar 2020 08:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585469161;
 bh=GbZAaOXgR3jz+8nkwefkR612DbLVdMAnKZhYHRnkl8s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=zk/uI30qXFimglH5Ti+VIiM5pUoCKU5NADoPlxz396SSOsDLncaK3L1SSgO/yGKMN
 G38KT4Fr3VvufkJb8o5kNls+WlZSHVkPn5kPqrUOIpQrM/iUaiiC7VXMIzGkN1GMvJ
 YVZaBGhQgRdISXjwx2V6SlgFyJcp9mna5T1F0Wj4=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org, Ingo Molnar <mingo@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 1/2] efi/libstub/arm64: avoid image_base value from
 efi_loaded_image
Date: Sun, 29 Mar 2020 10:05:43 +0200
Message-Id: <20200329080544.25715-2-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200329080544.25715-1-ardb@kernel.org>
References: <20200329080544.25715-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_010601_291462_0AA73D2D 
X-CRM114-Status: GOOD (  12.62  )
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

Commit 9f9223778ef3 ("efi/libstub/arm: Make efi_entry() an ordinary
PE/COFF entrypoint") did some code refactoring to get rid of the
EFI entry point assembler code, and in the process, it got rid of the
assignment of image_addr to the value of _text. Instead, it switched
to using the image_base field of the efi_loaded_image struct provided
by UEFI, which should contain the same value.

However, Michael reports that this is not the case: older GRUB builds
corrupt this value in some way, and since we can easily switch back to
referring to _text to discover this value, let's simply do that.

While at it, fix another issue in commit 9f9223778ef3, which may result
in the unassigned image_addr to be misidentified as the preferred load
offset of the kernel, which is unlikely but will cause a boot crash if
it does occur.

Finally, let's add a warning if the _text vs. image_base discrepancy is
detected, so we can tell more easily how widespread this issue actually
is.

Reported-by: Michael Kelley <mikelley@microsoft.com>
Tested-by: Michael Kelley <mikelley@microsoft.com>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/firmware/efi/libstub/arm64-stub.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/efi/libstub/arm64-stub.c b/drivers/firmware/efi/libstub/arm64-stub.c
index 9254cd8ab2d3..db0c1a9c1699 100644
--- a/drivers/firmware/efi/libstub/arm64-stub.c
+++ b/drivers/firmware/efi/libstub/arm64-stub.c
@@ -116,6 +116,7 @@ efi_status_t handle_kernel_image(unsigned long *image_addr,
 		 * Mustang), we can still place the kernel at the address
 		 * 'dram_base + TEXT_OFFSET'.
 		 */
+		*image_addr = (unsigned long)_text;
 		if (*image_addr == preferred_offset)
 			return EFI_SUCCESS;
 
@@ -140,7 +141,11 @@ efi_status_t handle_kernel_image(unsigned long *image_addr,
 		}
 		*image_addr = *reserve_addr + TEXT_OFFSET;
 	}
-	memcpy((void *)*image_addr, image->image_base, kernel_size);
+
+	if (image->image_base != _text)
+		pr_efi_err("FIRMWARE BUG: efi_loaded_image_t::image_base has bogus value\n");
+
+	memcpy((void *)*image_addr, _text, kernel_size);
 
 	return EFI_SUCCESS;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
