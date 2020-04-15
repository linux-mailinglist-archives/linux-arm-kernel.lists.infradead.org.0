Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B68D1AB3A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 00:15:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=empqmsGdIXwoSKgfblaYegxkzI3cgqE0abz7bXx/LrQ=; b=atFKSCiN4wENcA
	udObyDneaVRohsaiumQG78tZ0nuoQalI2BlvPIzsF2RMkom7onOi/Q90YXDeUhha5V4Z2l05Ltotv
	RblIR/IQQEv7jSH93GxThP5ErE3DXcq/8vuf9TtyiQAQfD7eS4DJUcEalwf3Ne0sfy2V0wwIOTQW0
	1OpQfj+x1DMAzyAaoxXyLKFHcOCXfshXv+drWXX206HXO1qi5SHpDsmu34QqvlWLLIA8Mhcke6piE
	L79SNO4yX+/wzUPiMtcFRrMNiYZ7fhTb39xQqgWmrWJzriIYYLJC2Hrj8o67pi3OnFWoocB+sheLj
	GEoPGPCEFKzDF0GVNxjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOqJh-0006g3-AM; Wed, 15 Apr 2020 22:15:33 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOqJX-0006eM-Af
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 22:15:24 +0000
Received: by mail-qk1-f194.google.com with SMTP id x66so19279958qkd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 15:15:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LncCRWwsHSyHm2+Q1R5MkVDJxDhecE7946LHPNlHWxE=;
 b=ePgIKB76jzaugVH8BOGpZW8VnCsLivNP0COTwNc//3UySDswFq6OBMbzyGCn0W9wFi
 /GPfH8pUSaBJ/sgbhIY8Ig3qAdcwr27WMsbNG6VZPRRniOC65WNrhQW6cekuHGoPcHor
 /T5NVtKDEGaLBCyp+5uY4bowshUPwNGOM+OW1q8rillB+q+n3g69Ts2he6ndRorDulKt
 1xQx3OTcIQsCXJh/Q1Ceew6PLNPTxa0hwe/uxuFvZDC/d/jMHXKV8MKJqygwr4HXd+OZ
 qzNPyal4Doi0ong4Voht07Fwele31ilLell8G4jWKeCJYOU3fkpJE0EKBKQ77WHRu+o0
 Y5sQ==
X-Gm-Message-State: AGi0PuZ2bzjU11HkCDWADcgNfLm0t21CphcbCGIsJDx/AQ4wEpvQM0jJ
 LaJGAYJAFPXWgUaD1xHOcp8=
X-Google-Smtp-Source: APiQypJsDv1bXLDEpxnZEb5zwIkObKu8f3Si7Aa/hJPgAYvnQd+75LxKQmr2QYWRZnG+xey3DQMsfw==
X-Received: by 2002:a05:620a:4f2:: with SMTP id
 b18mr28120143qkh.433.1586988921329; 
 Wed, 15 Apr 2020 15:15:21 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
 by smtp.gmail.com with ESMTPSA id i20sm13264340qkl.135.2020.04.15.15.15.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 15:15:20 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: [PATCH 0/5] efi: Remove __efistub_global annotation
Date: Wed, 15 Apr 2020 18:15:15 -0400
Message-Id: <20200415221520.2692512-1-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_151523_367037_8EAD9691 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [niveditas98[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [niveditas98[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-efi@vger.kernel.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series removes the need for annotating global data in the EFI
stub with __efistub_global for ARM32 and X86.

This is done by renaming the .data and .bss sections in the object files
linked into the EFI stub to .data.efistub and .bss.efistub respectively,
and including those sections into the compressed kernel's .data section
using its linker script.

The series is based on efi/next, rebased onto v5.7-rc1, plus two earlier
fixes for x86 EFI that are queued for v5.7.

Patches on top of v5.7-rc1:
In efi/next:

Ard Biesheuvel (2):
      efi: clean up config table description arrays
      efi: move arch_tables check to caller

Arvind Sankar (19):
      efi/gop: Remove redundant current_fb_base
      efi/gop: Move check for framebuffer before con_out
      efi/gop: Get mode information outside the loop
      efi/gop: Factor out locating the gop into a function
      efi/gop: Slightly re-arrange logic of find_gop
      efi/gop: Move variable declarations into loop block
      efi/gop: Use helper macros for populating lfb_base
      efi/gop: Use helper macros for find_bits
      efi/gop: Remove unreachable code from setup_pixel_info
      efi/gop: Add prototypes for query_mode and set_mode
      efi/gop: Allow specifying mode number on command line
      efi/gop: Allow specifying mode by <xres>x<yres>
      efi/gop: Allow specifying depth as well as resolution
      efi/gop: Allow automatically choosing the best mode

Additional:
Arvind Sankar (2):
      efi/x86: Move efi stub globals from .bss to .data
      efi/x86: Always relocate the kernel for EFI handover entry

Arvind Sankar (5):
  efi/arm: Remove __efistub_global annotation
  efi/libstub: Factor out relocation checking
  efi/x86: Remove __efistub_global annotation
  efi: Kill __efistub_global
  efi/x86: Check for bad relocations

 arch/arm/boot/compressed/vmlinux.lds.S        |  2 +-
 arch/x86/boot/compressed/vmlinux.lds.S        |  1 +
 drivers/firmware/efi/libstub/Makefile         | 43 +++++++++++++------
 drivers/firmware/efi/libstub/arm-stub.c       |  4 +-
 .../firmware/efi/libstub/efi-stub-helper.c    | 15 +++----
 drivers/firmware/efi/libstub/efistub.h        |  6 ---
 drivers/firmware/efi/libstub/gop.c            |  2 +-
 drivers/firmware/efi/libstub/x86-stub.c       |  2 +-
 8 files changed, 42 insertions(+), 33 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
