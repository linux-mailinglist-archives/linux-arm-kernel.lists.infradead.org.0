Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B069E1936BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 04:25:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BQu7LzUVFhZLHtS4SCORjqM3BYcabkHPTpZi2vWBxLo=; b=X/Cd/cRV8ysBIf
	z/HTwQXSNQIgYhW7nog8ofi8tljoeazIJO3H5AGw2s12VGMJv09BzbJcO0ancVFOa2kt3ChGf1C1f
	u3uTmKGzrE9vd+iLlm8+RTPB0tfoyS0mJ50/KIf09zk0Z6PyEUI3mvHWca1cnGH8xACBl814DfQYe
	YiD4/9vIpNX/exK0moQbRFmIEI5D5SIRp17AxuSLpI7HYD5gr5ITtbDwc6EjaEhVgFecTUndvqwrJ
	HTn9ocotxhPl8pyAyWW09JZtWo1EHAOdnK5cBk+Rm7VYBne21SLPMdi8hLP7BhHC1CN/CwcKj5kpn
	naBKXbZbkW3SHdsuOylA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHJ8b-0004Ul-V1; Thu, 26 Mar 2020 03:24:58 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHJ84-0004SH-3A
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 03:24:26 +0000
Received: by mail-qk1-x742.google.com with SMTP id l25so5097704qki.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 20:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id;
 bh=AKpcaV6bzzbFLn3o3db1WuJ15bS+tekZ+L4LWGp0jsE=;
 b=BwEQFmFSKMUCHgxyFldizxD3zxZVWOK/3JQO/ezmuc8SIDs5SyUMqcWXVaFpBy0aKa
 SYJOBWNAyddKLuqtt8+81fqCgDv8OJ72a/we20FEjBMyRG0j3rAf3gxzYMFMKB6KkMAk
 RBSBrJAizqPCgWFlLdZnWJMxiKfoz9b9XXySFAPWG7HmD/GLerASpnkHTzJ9yvssv2jt
 wFDrhI2kN3ConrizrvyGrxvjsgiw0jDLK/0T6EBTHHho/FIMjgNesp0mRi7B2elx/v6K
 D0ynMVlLKj49Z/2MrX0i+zhXfKqUWGJC+xEVB22Z/jYygAtioAFuR+J8YYovGpp8BHnH
 v/5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=AKpcaV6bzzbFLn3o3db1WuJ15bS+tekZ+L4LWGp0jsE=;
 b=psJnUZoUvSkk29OUm12z+h0PYs1oyMmbSpPq5RfwA2iw7qyE6xVLnkjZ68d9L1HACf
 ucZdHaSUwwVCCPpb1fbWYBIzPTHi2e89aV/+IO0xyFN0O0tGtdPeatBcVe23xPvCfiOA
 TW1ro9Krg77t3+iBWcFoSixaciBzOYkRI23OhPb4ZM+/+u3t4MHniJsHLZxpFgVpUnIO
 7Tk5DpOQXYlWXKOZZGv+1WoITwf3M3tziaD56Xx9bw/NpHo/SjVSWDEQ5jQDZ5EaunGW
 4sRLTuvrVaZI+yLPLy29ibn2nYqwk4QFsZkViehpMrYDzz4PKGepG7ErKh3RX7GSH9bP
 Oelg==
X-Gm-Message-State: ANhLgQ3Gfv2gG07Ey2iiTiIxwNhVUQcIBmwtJ4Lv9qmj+gGdz/s3UKm8
 J9+13eEvNgiXo4bBz5HyCt8xjg==
X-Google-Smtp-Source: ADFU+vudusdw7QLjXAaZtqJhk7QqLwkBnNSm7OAXsjHPq3UftbB1cdyBjp8cvXK3yzgA7LCNQ45h9g==
X-Received: by 2002:a37:678b:: with SMTP id b133mr6188744qkc.327.1585193062796; 
 Wed, 25 Mar 2020 20:24:22 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id u4sm620034qka.35.2020.03.25.20.24.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 20:24:22 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org, maz@kernel.org,
 james.morse@arm.com, vladimir.murzin@arm.com, matthias.bgg@gmail.com,
 bhsharma@redhat.com, linux-mm@kvack.org, mark.rutland@arm.com,
 steve.capper@arm.com, rfontana@redhat.com, tglx@linutronix.de,
 selindag@gmail.com
Subject: [PATCH v9 00/18] arm64: MMU enabled kexec relocation
Date: Wed, 25 Mar 2020 23:24:02 -0400
Message-Id: <20200326032420.27220-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_202424_209173_36FD64DD 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Changelog:
v9:	- 9 patches from previous series landed in upstream, so now series
	  is smaller
	- Added two patches from James Morse to address idmap issues for machines
	  with high physical addresses.
	- Addressed comments from Selin Dag about compiling issues. He also tested
	  my series and got similar performance results: ~60 ms instead of ~580 ms
	  with an initramfs size of ~120MB.
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

James Morse (2):
  arm64: mm: Always update TCR_EL1 from __cpu_set_tcr_t0sz()
  arm64: trans_pgd: hibernate: idmap the single page that holds the copy
    page routines

Pavel Tatashin (16):
  arm64: kexec: make dtb_mem always enabled
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

 arch/arm64/Kconfig                   |   4 +
 arch/arm64/include/asm/kexec.h       |  45 +++-
 arch/arm64/include/asm/mmu_context.h |   7 +-
 arch/arm64/include/asm/trans_pgd.h   |  38 ++++
 arch/arm64/kernel/asm-offsets.c      |  15 ++
 arch/arm64/kernel/cpu-reset.S        |  11 +-
 arch/arm64/kernel/cpu-reset.h        |  14 +-
 arch/arm64/kernel/hibernate.c        | 242 +++-------------------
 arch/arm64/kernel/machine_kexec.c    | 161 ++++++++++++---
 arch/arm64/kernel/relocate_kernel.S  | 246 +++++++++++++---------
 arch/arm64/mm/Makefile               |   1 +
 arch/arm64/mm/trans_pgd.c            | 293 +++++++++++++++++++++++++++
 12 files changed, 712 insertions(+), 365 deletions(-)
 create mode 100644 arch/arm64/include/asm/trans_pgd.h
 create mode 100644 arch/arm64/mm/trans_pgd.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
