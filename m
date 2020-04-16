Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 660291AC8A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 17:12:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jH1iS2P17FD9KcgiX6PjVDJ5qBiPwmk4UpfbOKZaa0Q=; b=CJ9KsgQLJl+Q2d
	C3n2mN/Vge5gP6qmI7Uf9CkE8Y05FaP5WoL0bxBOyfH3DpCVPEihdQg6uRLyP2T3gckI/AxIoEMBE
	FFI9oOhuqXOs4hLDaqAIFWpYxBKixeP4j7G1OYvvRdg7yPxWlww3mxQcED0bmfQfD49u1/Yn+PqJP
	oYpntYWDdaNtkrBNxy6qg+1xW13nK8vI18h0S8vFM0hcqx1zH5Q2jGGF1sPH2J1ABP06zbI00eYI0
	iNOAhKNE3xvtm3ICuOTm1SXOLtBN3WXfJo0CaF+pNJ1YYLhdp4YSIQJrYZJTwnW3jjAe8bzp/lvcV
	7WD2pyzlwJoIH6ih8XKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP6C1-0003cR-34; Thu, 16 Apr 2020 15:12:41 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP6Bq-0003as-CO
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 15:12:31 +0000
Received: by mail-qk1-f195.google.com with SMTP id s63so17453283qke.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 08:12:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z50ZsQ8IUFKM+b5Biw9UtKMzIva0+uiY3DIJESbMIYI=;
 b=TfIAMjlzvH9Fs9Xk2gyg75+LN1I7GaIlJtwgi/LqaFziqkVFsUKbl2CSkzavGI1qZa
 u82f1h2x8vBpy4vlhy72/8XU5Uu+a57SBO3X7zS1Wfzj34DrhKYDhNqiNPASiApmClut
 Pv5H0tFFMwJebS7ElgUoinEIu6zMOVHQ16W2amY7E6XqfAGpyxV0Jy1yEgX8MxQwyiWJ
 YjcsaP5UThzcUvqZEm33OXsOit1r+Y1ze1FatfgYKwTVkX9ZNiiBMQ4wGuos7z4MOH1w
 0TgRGmShwgWgwvvo/D55w1WOd7ZADp1WgO0r0W+sL0Z61EyxGNMnh4hBmUS7VCYE01LV
 PVHA==
X-Gm-Message-State: AGi0Pub7ITk2/HkwU/TEWW6U+fLcvUbauLa2re0GodE/GcJwSKo88X1h
 ViyCr7JY59KIdwsEQgScUpk=
X-Google-Smtp-Source: APiQypL6nC7+eoW1r8jlGp0Pbr9X6TqFhXKgLwxJWfl9Gn6UCRZwndkSTjZyZCGBOb2DmniWXBxoFQ==
X-Received: by 2002:a37:7242:: with SMTP id n63mr30880327qkc.111.1587049949214; 
 Thu, 16 Apr 2020 08:12:29 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
 by smtp.gmail.com with ESMTPSA id c207sm15252197qkb.7.2020.04.16.08.12.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 08:12:28 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Arvind Sankar <nivedita@alum.mit.edu>
Subject: [PATCH v2 0/3] efi: Remove __efistub_global annotation
Date: Thu, 16 Apr 2020 11:12:24 -0400
Message-Id: <20200416151227.3360778-1-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.25.3
In-Reply-To: <20200415221520.2692512-1-nivedita@alum.mit.edu>
References: <20200415221520.2692512-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_081230_420929_9D34E540 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [niveditas98[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [niveditas98[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Thomas Gleixner <tglx@linutronix.de>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
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

Changes from v1:
- drop patch 2 and squash patches 3 and 5 for x86
- fix R_X86 -> R_386
- only check native relocation size (32-bit for R386 and 64-bit for
  RX86_64)

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

Arvind Sankar (3):
  efi/arm: Remove __efistub_global annotation
  efi/x86: Remove __efistub_global and add relocation check
  efi: Kill __efistub_global

 arch/arm/boot/compressed/vmlinux.lds.S        |  2 +-
 arch/x86/boot/compressed/vmlinux.lds.S        |  1 +
 drivers/firmware/efi/libstub/Makefile         | 31 +++++++++++++------
 drivers/firmware/efi/libstub/arm-stub.c       |  4 +--
 .../firmware/efi/libstub/efi-stub-helper.c    | 15 +++++----
 drivers/firmware/efi/libstub/efistub.h        |  6 ----
 drivers/firmware/efi/libstub/gop.c            |  2 +-
 drivers/firmware/efi/libstub/x86-stub.c       |  2 +-
 8 files changed, 34 insertions(+), 29 deletions(-)

-- 
2.25.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
