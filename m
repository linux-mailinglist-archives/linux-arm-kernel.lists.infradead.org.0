Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B76519695F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 21:58:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=D/0k8h8OzHH0ecc4fdBWtqX9wuOEj7mj8wW29HTwDMk=; b=nUd
	KSqSaoCgd1yETjICH9XtIBK50vm6aFtKwt+4/RGnRnOW+B84Q8B8ajQeGh1w1FxkJR78Jl/F0lUdx
	vngT4iOQTxY41eUY2Jb2jXbMVx/FkNoLrz0p+AJt5N05/NNp2zOAeAldke5WCJvQ+l3/3E4Ywo2rH
	pAOzcprN2V2SdkBk1kSYForpRLTpR/XbHJ9HRE5twSMdk+JMZ2CSUwWICezYq5HNdN+aMpLDXMoMX
	x3eBbC3uzwG7nWj7TTp0JtKs2Sobsg9VWpe3fFPbHN9ci1BzwZL6OMgChGgC98G09S3GqchSBNLci
	DpnDjLDoDe/P9ga9s0hJ+rBG64BkBXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIIX9-0002C8-Uu; Sat, 28 Mar 2020 20:58:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIIX2-0002BU-HW
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 20:58:18 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 471B320714;
 Sat, 28 Mar 2020 20:58:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585429095;
 bh=Wu4f1OnYj/QRZ0sdavFX0f/+cR088OEXn5AlxBMtMz8=;
 h=From:To:Cc:Subject:Date:From;
 b=dh4KGrgzdL5yTx1XuHjUoCMQJFxrBr+KcCzkDPyt1vPlYL3M29TnFZ96Q5Sg/wVH5
 LzPspshFNInQYvUsLZXjDVL5VQtZf+nVMMjd75m/vlL4xmSoo/C6xLwqbzHAUmGg1u
 dl14tB6hykH/VhACWO/nxOm9f3endQrrFQCFRXYo=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] efi/libstub/arm64: avoid image_base value from
 efi_loaded_image
Date: Sat, 28 Mar 2020 21:58:09 +0100
Message-Id: <20200328205809.23825-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_135816_602998_A40C4C8B 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Boqun.Feng@microsoft.com, leif@nuviainc.com, linux-efi@vger.kernel.org,
 Ard Biesheuvel <ardb@kernel.org>, mikelley@microsoft.com
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
