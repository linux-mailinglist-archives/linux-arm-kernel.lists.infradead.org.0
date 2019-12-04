Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 427EF112F46
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 17:01:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rZsUN+6s8ciLyyEHuW3qX8okLn6ZZYh9/ls5A2iAexk=; b=e1a4lenYYOjA3W
	yY2WtRqZO6SOcSsdJv/Lg8K25yCLsJ8J/Py75Lp+jms8C7Rak3/G05cwXHdNxvlnpwij0J7Yf/1w8
	gQQf5IoJyAqtcgjV9Z4XgbkWWxeQ5a5JYrL4/lQRMwrTTshAC79nH8FE4NonLJPowdw/b57UDW3Qy
	vxJeQAdpKIVeW7LbSGGJYwJFi+DvMMbM0bwmCQ8gnakqFzjqjAyvZAe0Yy5MGf38zX1REd+nH0EVK
	7lMFWZgb0jmi+YasiNS3oKIltr8XqrwfkLpzSN37z+BofdYUs5R8XOKR+CRY9IFoYbzSo5Ls+snYV
	3Ydke4abMVP1Vlx6VITQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icX5U-00013O-Ea; Wed, 04 Dec 2019 16:01:12 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX45-0007Fy-5R
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 15:59:49 +0000
Received: by mail-qv1-xf41.google.com with SMTP id o18so39936qvf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 07:59:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=B4XIlwcPKUsoqosCadFXztpXMTvT+T/4U+sjmBi4tLg=;
 b=c4j+Ztgm/EvqQLOxtKNqB50ES4jyTK9ImbsYQeM27McLxxmjLsWHkq2CDJ61QvcZGt
 TSIg2UFfd540i8b/2Z2Hwi6KewsIrl8M+ZMjkmmz0AH3RyNkWXu/TBra3btjM+RowpF2
 lnR5e8wiMu1dyuZ6luT/JMhyCrfigRtUhQOx9We3Lf9xM24sNtzXqGMSL097Sx7gEsLg
 KwvdkQsiGyhqYhHzQ9FyvKhSizAN4GC5hkTN39uyLIFnQV3bocA8Anl0lwk/n+BOmXay
 AECzz0n+kpA3/KWiJo6E1bQT0t0hx8B3Afv+IG07qqEdkwhCJu8TrTDPpCW+68QH0zsW
 TyXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=B4XIlwcPKUsoqosCadFXztpXMTvT+T/4U+sjmBi4tLg=;
 b=nzdQhuHfDgWIIF9A1LpC6oZAAC6uJxfSGkbCnUgwfQDfGUgkaD+HK2rMbt1e7oQazv
 mzbt1/KlMJ1aIA7jmnLPsR6/p3CYtq38CmMj12zQHTQ69Mlizu1O0F3QSSSnH54DO8Z1
 YN7I//tapp3MWbG+0EnR9MDdrhN/BlgiBimRe1Pa01xg2eklzloQBrllKQD8sWRCj02J
 Sdzbq5XyWRkhPihvGdjnx0OYu94Pr3CLpgeTxM8jpfd3s0l/TZwIuLpyF9kLWo7Qbf/O
 t02vdymieAo/fIgqvuV8BvCrWPhQKKcf0wyjx2D3d19xGzDwvGsC2k0LuQ+UGYrrP8S8
 DQ3w==
X-Gm-Message-State: APjAAAUBukTaUYxSSXh2Le6hIG2C/XFam/zunMFqzKWXR5YJIimke5Su
 bwct4yaOEcUV5CfaKy+SPA7LJw==
X-Google-Smtp-Source: APXvYqy9Sv7OweVlEwUACniS9sI2NTJhlhLVmJJdo8rkykaqd/Z79m3Kw4c7KPnxKcrd/ZJF72LzCg==
X-Received: by 2002:a0c:a9cc:: with SMTP id c12mr3320318qvb.222.1575475180740; 
 Wed, 04 Dec 2019 07:59:40 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id w21sm4177585qth.17.2019.12.04.07.59.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 07:59:40 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v8 00/25] arm64: MMU enabled kexec relocation
Date: Wed,  4 Dec 2019 10:59:13 -0500
Message-Id: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_075945_222745_B696C5F1 
X-CRM114-Status: GOOD (  20.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Many changes compared to version 6, so I decided to send it out now.
James Morse raised an important issue to which I do not have a solution
yet. But would like to discuss it.

---
https://lore.kernel.org/lkml/45a2f0b8-5bac-8b5d-d595-f92e9acb27ad@arm.com
> +	/* Map relocation function va == pa */
> +	rc = trans_pgd_map_page(&info, trans_ttbr0,  __va(kern_reloc),
> +				kern_reloc, PAGE_KERNEL_EXEC);
> +	if (rc)
> +		return rc;
James wrote:
You can't do this with the page table helpers. We support platforms
with no memory in range of TTBR0's VA space. See dd006da21646f

You will need some idmapped memory to turn the MMU off on a system
that booted at EL1. This will need to be in a set of page tables
that the helpers can't easily touch - so it should only be a single
page. (like the arch code's existing idmap - although that may
have been overwritten).

(I have a machine where this is a problem, if I get the time I will
have a stab at making hibernate's safe page idmaped).
---

As I understand, there are platforms where TTBR0 cannot include all
physical memory for idmap. However, kexec must have at least one page
idmapped (kimage->control_code_page) to be able to relocate kernel
while MMU is enabled:

I am still trying to fully understand the problem:
CONFIG_ARM64_VA_BITS must be smaller than 48 and physical memory must
start at a high address for this problem to occur.

Why can't we simply decrease T0SZ to cover all physical memory?

Changelog:
v8:
	- Synced with mainline to keep series up-to-date
v7:
	-- Addressed comments from James Morse
	- arm64: hibernate: pass the allocated pgdp to ttbr0
	  Removed "Fixes" tag, and added Added Reviewed-by: James Morse
	- arm64: hibernate: check pgd table allocation
	  Sent out as a standalone patch so it can be sent to stable
	  Series applies on mainline + this patch
	- arm64: hibernate: add trans_pgd public functions
	  Remove second allocation of tmp_pg_dir in swsusp_arch_resume
	  Added Reviewed-by: James Morse <james.morse@arm.com>
	- arm64: kexec: move relocation function setup and clean up
	  Fixed typo in commit log
	  Changed kern_reloc to phys_addr_t types.
	  Added explanation why kern_reloc is needed.
	  Split into four patches:
	  arm64: kexec: make dtb_mem always enabled
	  arm64: kexec: remove unnecessary debug prints
	  arm64: kexec: call kexec_image_info only once
	  arm64: kexec: move relocation function setup
	- arm64: kexec: add expandable argument to relocation function
	  Changed types of new arguments from unsigned long to phys_addr_t.
	  Changed offset prefix to KEXEC_*
	  Split into four patches:
	  arm64: kexec: cpu_soft_restart change argument types
	  arm64: kexec: arm64_relocate_new_kernel clean-ups
	  arm64: kexec: arm64_relocate_new_kernel don't use x0 as temp
	  arm64: kexec: add expandable argument to relocation function
	- arm64: kexec: configure trans_pgd page table for kexec
	  Added invalid entries into EL2 vector table
	  Removed KEXEC_EL2_VECTOR_TABLE_SIZE and KEXEC_EL2_VECTOR_TABLE_OFFSET
	  Copy relocation functions and table into separate pages
	  Changed types in kern_reloc_arg.
	  Split into three patches:
	  arm64: kexec: offset for relocation function
	  arm64: kexec: kexec EL2 vectors
	  arm64: kexec: configure trans_pgd page table for kexec
	- arm64: kexec: enable MMU during kexec relocation
	  Split into two patches:
	  arm64: kexec: enable MMU during kexec relocation
	  arm64: kexec: remove head from relocation argument
v6:
	- Sync with mainline tip
	- Added Acked's from Dave Young
v5:
	- Addressed comments from Matthias Brugger: added review-by's, improved
	  comments, and made cleanups to swsusp_arch_resume() in addition to
	  create_safe_exec_page().
	- Synced with mainline tip.
v4:
	- Addressed comments from James Morse.
	- Split "check pgd table allocation" into two patches, and moved to
	  the beginning of series  for simpler backport of the fixes.
	  Added "Fixes:" tags to commit logs.
	- Changed "arm64, hibernate:" to "arm64: hibernate:"
	- Added Reviewed-by's
	- Moved "add PUD_SECT_RDONLY" earlier in series to be with other
	  clean-ups
	- Added "Derived from:" to arch/arm64/mm/trans_pgd.c
	- Removed "flags" from trans_info
	- Changed .trans_alloc_page assumption to return zeroed page.
	- Simplify changes to trans_pgd_map_page(), by keeping the old
	  code.
	- Simplify changes to trans_pgd_create_copy, by keeping the old
	  code.
	- Removed: "add trans_pgd_create_empty"
	- replace init_mm with NULL, and keep using non "__" version of
	  populate functions.
v3:
	- Split changes to create_safe_exec_page() into several patches for
	  easier review as request by Mark Rutland. This is why this series
	  has 3 more patches.
	- Renamed trans_table to tans_pgd as agreed with Mark. The header
	  comment in trans_pgd.c explains that trans stands for
	  transitional page tables. Meaning they are used in transition
	  between two kernels.
v2:
	- Fixed hibernate bug reported by James Morse
	- Addressed comments from James Morse:
	  * More incremental changes to trans_table
	  * Removed TRANS_FORCEMAP
	  * Added kexec reboot data for image with 380M in size.

Enable MMU during kexec relocation in order to improve reboot performance.

If kexec functionality is used for a fast system update, with a minimal
downtime, the relocation of kernel + initramfs takes a significant portion
of reboot.

The reason for slow relocation is because it is done without MMU, and thus
not benefiting from D-Cache.

Performance data
----------------
For this experiment, the size of kernel plus initramfs is small, only 25M.
If initramfs was larger, than the improvements would be greater, as time
spent in relocation is proportional to the size of relocation.

Previously:
kernel shutdown	0.022131328s
relocation	0.440510736s
kernel startup	0.294706768s

Relocation was taking: 58.2% of reboot time

Now:
kernel shutdown	0.032066576s
relocation	0.022158152s
kernel startup	0.296055880s

Now: Relocation takes 6.3% of reboot time

Total reboot is x2.16 times faster.

With bigger userland (fitImage 380M), the reboot time is improved by 3.57s,
and is reduced from 3.9s down to 0.33s

Previous approaches and discussions
-----------------------------------
https://lore.kernel.org/lkml/20191016200034.1342308-1-pasha.tatashin@soleen.com
version 7 of this series

https://lore.kernel.org/lkml/20191004185234.31471-1-pasha.tatashin@soleen.com
version 6 of this series

https://lore.kernel.org/lkml/20190923203427.294286-1-pasha.tatashin@soleen.com
version 5 of this series

https://lore.kernel.org/lkml/20190909181221.309510-1-pasha.tatashin@soleen.com
version 4 of this series

https://lore.kernel.org/lkml/20190821183204.23576-1-pasha.tatashin@soleen.com
version 3 of this series

https://lore.kernel.org/lkml/20190817024629.26611-1-pasha.tatashin@soleen.com
version 2 of this series

https://lore.kernel.org/lkml/20190801152439.11363-1-pasha.tatashin@soleen.com
version 1 of this series

https://lore.kernel.org/lkml/20190709182014.16052-1-pasha.tatashin@soleen.com
reserve space for kexec to avoid relocation, involves changes to generic code
to optimize a problem that exists on arm64 only:

https://lore.kernel.org/lkml/20190716165641.6990-1-pasha.tatashin@soleen.com
The first attempt to enable MMU, some bugs that prevented performance
improvement. The page tables unnecessary configured idmap for the whole
physical space.

https://lore.kernel.org/lkml/20190731153857.4045-1-pasha.tatashin@soleen.com
No linear copy, bug with EL2 reboots.

Pavel Tatashin (25):
  kexec: quiet down kexec reboot
  kexec: add machine_kexec_post_load()
  arm64: kexec: remove unnecessary debug prints
  arm64: kexec: make dtb_mem always enabled
  arm64: hibernate: pass the allocated pgdp to ttbr0
  arm64: hibernate: use get_safe_page directly
  arm64: hibernate: remove gotos as they are not needed
  arm64: hibernate: rename dst to page in create_safe_exec_page
  arm64: hibernate: add PUD_SECT_RDONLY
  arm64: hibernate: add trans_pgd public functions
  arm64: hibernate: move page handling function to new trans_pgd.c
  arm64: trans_pgd: make trans_pgd_map_page generic
  arm64: trans_pgd: pass allocator trans_pgd_create_copy
  arm64: trans_pgd: pass NULL instead of init_mm to *_populate functions
  arm64: kexec: move relocation function setup
  arm64: kexec: call kexec_image_info only once
  arm64: kexec: cpu_soft_restart change argument types
  arm64: kexec: arm64_relocate_new_kernel clean-ups
  arm64: kexec: arm64_relocate_new_kernel don't use x0 as temp
  arm64: kexec: add expandable argument to relocation function
  arm64: kexec: offset for relocation function
  arm64: kexec: kexec EL2 vectors
  arm64: kexec: configure trans_pgd page table for kexec
  arm64: kexec: enable MMU during kexec relocation
  arm64: kexec: remove head from relocation argument

 arch/arm64/Kconfig                     |   4 +
 arch/arm64/include/asm/kexec.h         |  47 ++++-
 arch/arm64/include/asm/pgtable-hwdef.h |   1 +
 arch/arm64/include/asm/trans_pgd.h     |  34 ++++
 arch/arm64/kernel/asm-offsets.c        |  14 ++
 arch/arm64/kernel/cpu-reset.S          |   8 +-
 arch/arm64/kernel/cpu-reset.h          |  14 +-
 arch/arm64/kernel/hibernate.c          | 255 ++++---------------------
 arch/arm64/kernel/machine_kexec.c      | 186 ++++++++++++++----
 arch/arm64/kernel/relocate_kernel.S    | 233 ++++++++++++----------
 arch/arm64/mm/Makefile                 |   1 +
 arch/arm64/mm/trans_pgd.c              | 244 +++++++++++++++++++++++
 kernel/kexec.c                         |   4 +
 kernel/kexec_core.c                    |   8 +-
 kernel/kexec_file.c                    |   4 +
 kernel/kexec_internal.h                |   2 +
 16 files changed, 690 insertions(+), 369 deletions(-)
 create mode 100644 arch/arm64/include/asm/trans_pgd.h
 create mode 100644 arch/arm64/mm/trans_pgd.c

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
