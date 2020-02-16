Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C76CB160555
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 19:24:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=N+Lq62o3qJEh2LMD/olFN9cKJMOFauAsV0BQgv0WTAg=; b=th8
	cCp3tQ47Wpl/bZfFhJJo7cogalKoGi2ZF+XKKUPE5A19pyCquOA8hUkW6cLfJGzk/oqTh+/fGmCta
	f04LL3ijcEhMu32i/x2b0Mn1Pt9oz5Kst7NT8UvInxmP0uXZrkmpI2FWRll//Tz+LFj8fRVDb6TFN
	ZTfrg7/syyndtmbSWeIto6/z72ha1NKb/h5WF/QI63Z+wAZxKhaNRe3dv3guDGKyQ1UtXnNNEWAss
	/LnWqRQrWdBvU+KaejTX1KLFGt6tvseczgp5hRUldQOpaAlJz8IMRpeDr0SVWnhVGE5BW1pLlKQ7b
	LuGOuelleh9C25aj6kvT5kozAD0Pp3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Oaf-0006W8-IG; Sun, 16 Feb 2020 18:24:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Oa4-0006Gp-WA
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 18:23:50 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2722E206D6;
 Sun, 16 Feb 2020 18:23:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581877426;
 bh=Y0lM0H5P6IdWgTvgZ+96YnGiA1Mtavj5RNAg7nRDo34=;
 h=From:To:Cc:Subject:Date:From;
 b=SBasNHQLKJwTXUEuGcsnKD+CjiS6C6L/ai8u/F8JLdpGjO+ryNfzhRgaUFpMQF3IC
 6OIvu+Fnqx2LbZrG3/0D/1rXtJxtkDf4nlRmfUS3tinqUI7owxNeJYnhBnSigg6ztp
 S+7RJsIEy4iBImVCHid4ggFqd4+ULRkwhXp4jnq4=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH 00/18] efi: clean up contents of struct efi
Date: Sun, 16 Feb 2020 19:23:16 +0100
Message-Id: <20200216182334.8121-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_102349_071628_3F8A9AAE 
X-CRM114-Status: GOOD (  10.63  )
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

The generic r/w singleton object 'struct efi efi' is currently being used
as a dumping ground for memory addresses of firmware tables that only have
significance for a single architecture, or only at boot time [whereas
struct efi is an object with indefinite lifetime, and which is exported
to modules]

Since we're expecting a new arrival that does affect all architectures,
which will need to be added to struct efi as well, let's do a cleanup
pass, and move out all the per-arch pieces and other stuff that does not
need to live in a global r/w struct.

As a side effect, I ran into some other things that can be refactored
so that more code is shared between architectures, or made x86 specific
if it is something that should maybe not have existed in the first place,
and x86 is the only architecture where we cannot remove it for compatibility
reasons.

Finally, we get rid of the struct efi::systab member, which we only need
at runtime to get at the 'runtime' pointer, so let's store that instead.
This allows us to drop some ugly handling of the remapped systab address,
which we cannot discover as easily as the remapped 'runtime' pointer.

Cc: nivedita@alum.mit.edu
Cc: x86@kernel.org

Ard Biesheuvel (18):
  efi: drop handling of 'boot_info' configuration table
  efi/ia64: move HCDP and MPS table handling into IA64 arch code
  efi: move UGA and PROP table handling to x86 code
  efi: make rng_seed table handling local to efi.c
  efi: move mem_attr_table out of struct efi
  efi: make memreserve table handling local to efi.c
  efi: merge EFI system table revision and vendor checks
  efi/ia64: use existing helpers to locate ESI table
  efi/ia64: use local variable for EFI system table address
  efi/ia64: switch to efi_config_parse_tables()
  efi: make efi_config_init() x86 only
  efi: clean up config_parse_tables()
  efi/x86: remove runtime table address from kexec EFI setup data
  efi/x86: make fw_vendor, config_table and runtime sysfs nodes x86
    specific
  efi/x86: merge assignments of efi.runtime_version
  efi: add 'runtime' pointer to struct efi
  efi/arm: drop unnecessary references to efi.systab
  efi/x86: drop 'systab' member from struct efi

 arch/ia64/kernel/efi.c                  |  55 ++--
 arch/ia64/kernel/esi.c                  |  21 +-
 arch/x86/include/asm/efi.h              |   6 +-
 arch/x86/kernel/asm-offsets_32.c        |   5 +
 arch/x86/kernel/kexec-bzimage64.c       |   5 +-
 arch/x86/platform/efi/efi.c             | 262 ++++++++++----------
 arch/x86/platform/efi/efi_32.c          |  13 +-
 arch/x86/platform/efi/efi_64.c          |  14 +-
 arch/x86/platform/efi/efi_stub_32.S     |  21 +-
 arch/x86/platform/efi/quirks.c          |   2 +-
 drivers/firmware/efi/arm-init.c         |  68 ++---
 drivers/firmware/efi/arm-runtime.c      |  18 --
 drivers/firmware/efi/efi.c              | 237 ++++++++----------
 drivers/firmware/efi/memattr.c          |  13 +-
 drivers/firmware/efi/runtime-wrappers.c |   4 +-
 drivers/firmware/pcdp.c                 |   8 +-
 include/linux/efi.h                     |  76 +++---
 17 files changed, 379 insertions(+), 449 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
