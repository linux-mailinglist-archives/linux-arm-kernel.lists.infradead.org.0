Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F3A15C0D8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 16:00:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jjvHbalPEP+/FmN7y2IbFLj+MrdXekgA+zVs5J1IZmA=; b=qrZ
	78XjlsSNTG9tbhGKmiCHI0s21KNzmqwhQohsj1FHanNrl9NcZ+g8XqzQSiV9QSPuAshPJzQ1//Mc4
	MdthBXHzZozbKiii/Tli7AelKZY2mJ+zfa5VDelvelCRBoKIzrkJc8EutsJAiw2ZCIm9dxeDivrjI
	TNAKP7y2D3eRsv7INQ+5pJmwU5087Gwwz5UQxfC7CULXiihjQkoTgGTLI//C6VcFU2Qz2ABuDFSx/
	WkU6WERy3eB97Enm9CPPShfcUQFhpOQZ9HO+FXg4d9TtUT9Irm+OyBG1bWLrLNljB9QWj3kOr2JlT
	VvuAR4MfKTi2Qawnn1by3ZvzwzsTJww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2FyA-0001Rk-AS; Thu, 13 Feb 2020 14:59:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Fxz-0001RP-G8
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 14:59:49 +0000
Received: from cam-smtp0.cambridge.arm.com (fw-tnat.cambridge.arm.com
 [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ABDEC2073C;
 Thu, 13 Feb 2020 14:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581605987;
 bh=IcRJ/Me61ijvLgGOJorb0nKbfCHKp/zbCYR37MOjuqU=;
 h=From:To:Cc:Subject:Date:From;
 b=cwyKTe5ElfhRicIxsWWdd3rJIwNxT5Q2BQKGNP/kEAiN9Q0g4YVxLgET7ASqQlHZW
 HWxUYhEkajGnkyBTrNI+2dW4ArD3clinB/6oFDigb16OTOkyMKZfjAo27eVqnTJoGN
 BSVB0NprK70wIW1epV89Pq5jz1WG2/5pkoMAIo6M=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [RFC PATCH 0/3] efi/x86: add support for generic EFI mixed mode boot
Date: Thu, 13 Feb 2020 15:59:25 +0100
Message-Id: <20200213145928.7047-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_065947_576752_0FE40B41 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mingo@kernel.org, agraf@csgraf.de, daniel.kiper@oracle.com,
 mjg59@google.com, mbrown@fensystems.co.uk, hdegoede@redhat.com,
 nivedita@alum.mit.edu, pjones@redhat.com, leif@nuviainc.com, lersek@redhat.com,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series is another part of my effort to reduce the level of knowledge
on the part of the bootloader or firmware of internal per-architecture
details regarding where/how the kernel is loaded and where its initrd and
other context data are passed.

The x86 architecture has a so-called 'EFI handover protocol', which defines
how the bootparams struct should be populated, and how it should be
interpreted to figure out where to load the kernel, and at which offset in
the binary the entrypoint is located. This scheme allows the initrd to be
loaded beforehand, and allows 32-bit firmware to invoke a 64-bit kernel
via a special entrypoint that manages the state transitions between the
two execution modes.

Due to this, x86 loaders currently do not rely on LoadImage and StartImage,
and therefore, are forced to re-implement things like image authentication
for secure boot and taking the measurements for measured boot in their open
coded clones of these routines.

My previous series on this topic [0] implements a generic way to load the
initrd from any source supported by the loader without relying on something
like device trees or bootparams structures, and so native boot should not
need the EFI handover protocol anymore after those change are merged.

What remains is mixed mode boot, which also needs the EFI handover protocol
regardless of whether an initrd is loaded or not. So let's get rid of that
requirement, and take advantage of the fact that EDK2 based firmware does
support LoadImage() for X64 binaries on IA32 firmware, which means we can
rely on the secure boot and measured boot checks being performed by the
firmware. The only thing we need to put on top is a way to discover the
non-native entrypoint into the binary in a way that does not rely on x86
specific headers and data structures.

So let's introduce a new .compat header in the PE/COFF metadata of the
bzImage, and populate it with a <machine type, entrypoint> tuple, allowing
a generic EFI loader to decide whether the entrypoint supports its native
machine type, and invoke it as an ordinary EFI application entrypoint.
Since we will not be passing a bootparams structure, we need to discover
the base of the image (which contains the setup header) via the loaded
image protocol before we can enter the kernel in 32-bit mode at startup_32()

A loader implementation for OVMF can be found at [1]. Note that this loader
code is fully generic, and could be used without modifications if other
architectures ever emerge that support kernels that can be invoked from a
non-native (but cross-type supported) loader.

[0] https://lore.kernel.org/linux-arm-kernel/20200206140352.6300-1-ardb@kernel.org/
[1] https://github.com/ardbiesheuvel/edk2/commits/linux-efi-generic

Cc: lersek@redhat.com
Cc: leif@nuviainc.com
Cc: pjones@redhat.com
Cc: mjg59@google.com
Cc: agraf@csgraf.de
Cc: daniel.kiper@oracle.com
Cc: hdegoede@redhat.com
Cc: nivedita@alum.mit.edu
Cc: mbrown@fensystems.co.uk
Cc: mingo@kernel.org

Ard Biesheuvel (3):
  efi/x86: drop redundant .bss section
  efi/x86: add true mixed mode entry point into .compat section
  efi/x86: implement mixed mode boot without the handover protocol

 arch/x86/boot/Makefile             |  2 +-
 arch/x86/boot/compressed/head_64.S | 61 +++++++++++++++++-
 arch/x86/boot/header.S             | 23 ++++---
 arch/x86/boot/tools/build.c        | 67 +++++++++++++-------
 4 files changed, 115 insertions(+), 38 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
