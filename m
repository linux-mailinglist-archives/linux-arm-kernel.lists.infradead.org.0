Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 898D51545B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 15:05:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3qP21g6brqhHvUdnqlhba74nB3h9OlBJdfy4KcrAWek=; b=sk7
	Ma1omWLEqdp6YAHXiNKwLInwvaNiZKMjhEFASNCXhUt38Pkm6ulf5+YwpHF5U+kC+F+pQZ+xaI6Bd
	pYxRvsXAqzo5qwdU004oZNcbUnX09qQEyniN9CFmwhTWrshjDSApkRsDVTxUYPf++WtLFL21mqwMi
	r+bhknC5VMgoYldYe0APh+ZbIZ3mjTHZ1xKQdMmNWx9nOYAyircbwwds6TBFJRyGR0N8wEIeZYXGr
	FojT/VvDdGxZ+oq07y1A/sFPuONYBpikZwRO7d4mgArjCxbOFLRHPAhoghhuFTCIqdnFXqrEO7Jk6
	u6f8J9x35yCcrDiqWYClYUgr65rkjoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izhmK-0003UI-0j; Thu, 06 Feb 2020 14:05:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izhm4-0003TT-Ey
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 14:04:58 +0000
Received: from e123331-lin.cambridge.arm.com (fw-tnat-cam2.arm.com
 [217.140.106.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F124621775;
 Thu,  6 Feb 2020 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580997895;
 bh=1k9zgUyZTU16+bXR7Utty5v5GrnUMG0hLZQ+X8uSY8Y=;
 h=From:To:Cc:Subject:Date:From;
 b=pbb1jolDpUgcKiuohwjrcr6bfOirRy3U7Y7AzZ6aCdIJiT1GjWUM23U9/cv7JW+9G
 4DsC9LYFOlBktgCYUcC28rgFYIeCnjM+JZWEiXH/a8wT0ru+TPHeE715LkQ8ZOqt3x
 teYp+ATKE8cwsO6H+UWr0lWK9YSj6AQv5lIH62Q0=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH 0/2] arch-agnostic initrd loading method for EFI systems
Date: Thu,  6 Feb 2020 14:03:50 +0000
Message-Id: <20200206140352.6300-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_060456_540515_63449408 
X-CRM114-Status: GOOD (  18.36  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: agraf@csgraf.de, xypron.glpk@gmx.de, daniel.kiper@oracle.com,
 ilias.apalodimas@linaro.org, mjg59@google.com, pjones@redhat.com,
 leif@nuviainc.com, lersek@redhat.com, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series introduces an arch agnostic way of loading the initrd into
memory from the EFI stub. This addresses a number of shortcomings that
affect the current implementations that exist across architectures:

- The initrd=<file> command line option can only load files that reside
  on the same file system that the kernel itself was loaded from, which
  requires the bootloader or firmware to expose that file system via the
  appropriate EFI protocol, which is not always feasible. From the kernel
  side, this protocol is problematic since it is incompatible with mixed
  mode on x86 (this is due to the fact that some of its methods have
  prototypes that are difficult to marshall)

- The approach that is ordinarily taken by GRUB is to load the initrd into
  memory, and pass it to the kernel proper via the bootparams structure or
  via the device tree. This requires the boot loader to have an understanding
  of those structures, which are not always set in stone, and of the policies
  around where the initrd may be loaded into memory. In the ARM case, it
  requires GRUB to modify the hardware description provided by the firmware,
  given that the initrd base and offset in memory are passed via the same
  data structure. It also creates a time window where the initrd data sits
  in memory, and can potentially be corrupted before the kernel is booted.

Considering that we will soon have new users of these interfaces (EFI for
kvmtool on ARM, RISC-V in u-boot, etc), it makes sense to add a generic
interface now, before having another wave of bespoke arch specific code
coming in.

Another aspect to take into account is that support for UEFI secure boot
and measured boot is being taken into the upstream, and being able to
rely on the PE entry point for booting any architecture makes the GRUB
vs shim story much cleaner, as we should be able to rely on LoadImage
and StartImage on all architectures, while retaining the ability to
load initrds from anywhere.

Note that these patches depend on a fair amount of cleanup work that I
am targetting for v5.7. Branch can be found at:
https://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git/log/?h=efistub-unification2

An implementation for ArmVirtQemu (OVMF for ARM aka AAVMF) can be found
at https://github.com/ardbiesheuvel/edk2/commits/linux-efi-generic.
The change is for ARM only, but the exact same code could be used on x86.

Cc: lersek@redhat.com
Cc: leif@nuviainc.com
Cc: pjones@redhat.com
Cc: mjg59@google.com
Cc: agraf@csgraf.de
Cc: ilias.apalodimas@linaro.org
Cc: xypron.glpk@gmx.de 
Cc: daniel.kiper@oracle.com

Ard Biesheuvel (2):
  efi/libstub: add support for loading the initrd from a device path
  efi/libstub: take noinitrd cmdline argument into account for devpath
    initrd

 drivers/firmware/efi/libstub/arm-stub.c       | 21 ++++--
 .../firmware/efi/libstub/efi-stub-helper.c    | 74 +++++++++++++++++++
 drivers/firmware/efi/libstub/efistub.h        | 13 ++++
 drivers/firmware/efi/libstub/x86-stub.c       | 51 ++++++++++---
 include/linux/efi.h                           |  1 +
 5 files changed, 146 insertions(+), 14 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
