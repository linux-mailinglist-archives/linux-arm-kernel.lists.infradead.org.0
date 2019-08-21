Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EE7982F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 20:33:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=79kx5OL9zHWFUjvlwUWitiJGgu/X/0W00K3jqCWLGfU=; b=fQY58hmSbn8Nkl
	hUpxeeRx/bOWIe+tQKRUPb9kkB+n9nhfnb7n5zJZu3W2F3e5jtIhhfF0PIEji+LBW3pLIs+pGLf/y
	domE3oDvkYnQCaM2RoBve0livw7JXvpKc7OcC9UPnFg0MM7QaviR/9+q5/4ulgTos3qiAhli/zMeT
	oefL4YBHU5u07BqL6P6IMeaggr5xISIhcgnZMOGnPB/KVS2IuL9HtbJD9bMj3a0hRewTdJqrKMlg6
	mVjE4uQ7SmL8hqCaDoXy57C2CqhY9HFushRC0kP75/ViCpNkeSXedAMCu65X7Cs0Yve69zKp+SCId
	D6rDdgUcw7rANv16ly+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0VPp-0004kY-7K; Wed, 21 Aug 2019 18:33:01 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0VOz-0003xb-HM
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 18:32:12 +0000
Received: by mail-qk1-x743.google.com with SMTP id s145so2714854qke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 11:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3VISVZWuGNTiVd6JKqfbutJFN34lrqN05fvYPH9Kreg=;
 b=HHJukI5cKFcu78i/O1Yn8iw05mYEjKQotNnDCY7uW/VDROaso248Cz4QQVCEUqJcRv
 EBzDUyZOfUDX0OqfFfNYvmLzaOIniVyftuF2AgycrkM0czlodTpOiI5hsWSB3EmJ2IOF
 Sdf0QIF5vjVVnt5v/fb4faCNkExE0O0J9E/u7OrVqBv3KwAkDQY25mF4NF6uZGiJmJaq
 V5rSY+0126UdxSnVxgCpzdNP9IOeLPAdBIaRSaDqEYxUJRdmoxnf7zCcQdaMR1gPUppS
 eit1DPkEzoQPfq6qmFm0NeeZa9yVUmAjXHBjiWUl8i01GTKsv8qd8JE2lN5bdfa1Jkf4
 TRIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3VISVZWuGNTiVd6JKqfbutJFN34lrqN05fvYPH9Kreg=;
 b=Fv2gpPy/0MRqSeIieSkTD4mtqxX43ebJRBOnt1ehYdGslHlCqQLZoO/gDNIZWegZLN
 swCbQimfbUAyrCk5fNxibYsk4NvVesW8nO6KdlFqmlCnyIH3ALPmoKumk2iJhDPk+LFu
 ZlWRDGkzejaKrXAhxSaXd1fRJZAIEiCAnf97NUorfW+/+B/W5S/kJBEqVm7x4GsIHTTJ
 o/ABl8YfSXTQo4glu0iQZrDXLU9tSwHVT6DupZMUc6wRY0SQOcCuiauAZ1tqG05vqg5n
 ejyv8KDLL0QuU/jbVd/vnKOfzk1v+tTxoA+AqYdY6qoVWz/MOHtRbnklysmshvqKZzdi
 1npw==
X-Gm-Message-State: APjAAAXXiGAOAce45T1p3YmjBTf7BpJpl+GmZTmbe22f2jnmsjGE7koO
 VrtfG5JSBCNxEPXtgbyd3/3NbQ==
X-Google-Smtp-Source: APXvYqxQXpDqPyZwJQWEPUkusjd/UilDz4Mpzt+wUtcrvVVsDPsRqQ1Np6P1GcXQU3ssA/+pWMdUqw==
X-Received: by 2002:a37:a9c6:: with SMTP id
 s189mr32305161qke.191.1566412326277; 
 Wed, 21 Aug 2019 11:32:06 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q13sm10443332qkm.120.2019.08.21.11.32.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 11:32:05 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v3 00/17] arm64: MMU enabled kexec relocation
Date: Wed, 21 Aug 2019 14:31:47 -0400
Message-Id: <20190821183204.23576-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_113209_580190_F762A540 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changelog:
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

Pavel Tatashin (17):
  kexec: quiet down kexec reboot
  arm64, hibernate: use get_safe_page directly
  arm64, hibernate: remove gotos in create_safe_exec_page
  arm64, hibernate: rename dst to page in create_safe_exec_page
  arm64, hibernate: check pgd table allocation
  arm64, hibernate: add trans_pgd public functions
  arm64, hibernate: move page handling function to new trans_pgd.c
  arm64, trans_pgd: make trans_pgd_map_page generic
  arm64, trans_pgd: add trans_pgd_create_empty
  arm64, trans_pgd: adjust trans_pgd_create_copy interface
  arm64, trans_pgd: add PUD_SECT_RDONLY
  arm64, trans_pgd: complete generalization of trans_pgds
  kexec: add machine_kexec_post_load()
  arm64, kexec: move relocation function setup and clean up
  arm64, kexec: add expandable argument to relocation function
  arm64, kexec: configure trans_pgd page table for kexec
  arm64, kexec: enable MMU during kexec relocation

 arch/arm64/Kconfig                     |   4 +
 arch/arm64/include/asm/kexec.h         |  51 ++++-
 arch/arm64/include/asm/pgtable-hwdef.h |   1 +
 arch/arm64/include/asm/trans_pgd.h     |  63 ++++++
 arch/arm64/kernel/asm-offsets.c        |  14 ++
 arch/arm64/kernel/cpu-reset.S          |   4 +-
 arch/arm64/kernel/cpu-reset.h          |   8 +-
 arch/arm64/kernel/hibernate.c          | 261 ++++++------------------
 arch/arm64/kernel/machine_kexec.c      | 199 ++++++++++++++----
 arch/arm64/kernel/relocate_kernel.S    | 196 +++++++++---------
 arch/arm64/mm/Makefile                 |   1 +
 arch/arm64/mm/trans_pgd.c              | 270 +++++++++++++++++++++++++
 kernel/kexec.c                         |   4 +
 kernel/kexec_core.c                    |   8 +-
 kernel/kexec_file.c                    |   4 +
 kernel/kexec_internal.h                |   2 +
 16 files changed, 750 insertions(+), 340 deletions(-)
 create mode 100644 arch/arm64/include/asm/trans_pgd.h
 create mode 100644 arch/arm64/mm/trans_pgd.c

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
