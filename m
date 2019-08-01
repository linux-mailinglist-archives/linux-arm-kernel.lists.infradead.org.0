Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D09F7DEC2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 17:25:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M/wufIPHq+bC4Xux4ZkfqIFHDeTbqVPx3QfXh1849Tg=; b=RrsyeHugW2rBDJ
	qdzCYVMO8izf/DFarmsxWwL8nn2uhj4f/XJUyTm+tkcpIX4AsDNLbeXq402UXms7uI3l6dHnDYN/h
	jQC08drPXt6p7npItSjkhEiWy7vGbgucNy/qPtpoeLALHcEyqBtklcbSUpmKXADwRXUSm8/rblYuI
	n1wV7bUQuiUl98V0BfO3nwmN1DPm/2tRMeNN52TNldZhJOf716tRwD6q7TpT2+jgFBB9P0dnrMJeK
	Uihj1yEA4kZUolGz7MZ/YyxXDgPqWQRTxddRCUhGGGC008/HMb6zMtHRLfCO1/40dZoS5avVuCkpU
	j2ZdwPfmLYOdkMBptJMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htCwx-0001S5-32; Thu, 01 Aug 2019 15:25:03 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htCwd-0001NF-BT
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 15:24:47 +0000
Received: by mail-qk1-x741.google.com with SMTP id t8so52324830qkt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 08:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Tv/fOnD6YC9u+5WmWm5gwywTsIsmHeTM0Q1GSWNKYUk=;
 b=atLlsRo/HsLlYJHkAHesgcO9qfPaQjZk+gYOvxKZpX5zmCTxt7zu8tiCRhoteNN7dd
 6HAmzBsFnGGSMNK2C1/2c095tMDLJ4ZXLXLn7i+ZEgdYwpo1qYHK/Q1xRHZwxOfakJw6
 /7ct9TY6fVLVY5D3c86/4ePweUPMk5TKNh2ZI97gVVKUkfE3dvmvGGH5WFhqRYhDDdNj
 MN0U1s86suOZc/o8BsUsL3OJ8/tYd9JgVijBxGQUq2ZZTq5MshwLKDUEHOPwOnM0CjpD
 UlAySrOA8+Uey1c7x2oPbu2GeSyZevsm2xsSMvkzV3E2NKwjBTx9zLYFJGZQjyw6+Y/3
 BOhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Tv/fOnD6YC9u+5WmWm5gwywTsIsmHeTM0Q1GSWNKYUk=;
 b=IGsBXYvEs795F95gxA/WwxsAa3mvg4jqmf8FV+q1bvcUslDQAbE9CAyBFlfL/WCpju
 u/xZ3pebzwR/91fVaHctBBmoBVmooJu7ZscPH1sXOuVA/fszK+13rVu+JvY+sZwcYuKB
 Vu81PXv7fc1Kxbq62CUV6LmZexJa+ahyYJxZlNpWm+x9Lum333Onq/qck5h2dCgzOxrI
 dHiU5+y0IvL39zLuu2gpUTKoQQdWCVvHGSCxoleyOHsw0GzL3arxiDgGREg5Rxiaq8JS
 lzH51DPNKsgH6FRjKN/FvwuVyL9d0AfHjjZgxG9Q22OVFRZKvkHvo0SANzSD4j1E4Fj8
 fAMg==
X-Gm-Message-State: APjAAAW/zGaXXfH9NTXb/5cY++H6vMt0VxwWCAahmfrJMy/QZN1xEWLq
 Y/miVXzy089jHXzS/KTB3/0=
X-Google-Smtp-Source: APXvYqzZD3a7tT1okA0boG+U3Hsp3SOLhKzDGE1jT3CDvSGW9wPow4/sMDwhXS8im+A6DBmuvHqQWA==
X-Received: by 2002:a37:4dc6:: with SMTP id a189mr84646858qkb.41.1564673081928; 
 Thu, 01 Aug 2019 08:24:41 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o5sm30899952qkf.10.2019.08.01.08.24.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 08:24:41 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org
Subject: [PATCH v1 0/8] arm64: MMU enabled kexec relocation
Date: Thu,  1 Aug 2019 11:24:31 -0400
Message-Id: <20190801152439.11363-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_082443_556753_C495695B 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Previous approaches and discussions
-----------------------------------
https://lore.kernel.org/lkml/20190709182014.16052-1-pasha.tatashin@soleen.com
reserve space for kexec to avoid relocation, involves changes to generic code
to optimize a problem that exists on arm64 only:

https://lore.kernel.org/lkml/20190716165641.6990-1-pasha.tatashin@soleen.com
The first attempt to enable MMU, some bugs that prevented performance
improvement. The page tables unnecessary configured idmap for the whole
physical space.

https://lore.kernel.org/lkml/20190731153857.4045-1-pasha.tatashin@soleen.com
No linear copy, bug with EL2 reboots.

Pavel Tatashin (8):
  kexec: quiet down kexec reboot
  arm64, mm: transitional tables
  arm64: hibernate: switch to transtional page tables.
  kexec: add machine_kexec_post_load()
  arm64, kexec: move relocation function setup and clean up
  arm64, kexec: add expandable argument to relocation function
  arm64, kexec: configure transitional page table for kexec
  arm64, kexec: enable MMU during kexec relocation

 arch/arm64/Kconfig                     |   4 +
 arch/arm64/include/asm/kexec.h         |  51 ++++-
 arch/arm64/include/asm/pgtable-hwdef.h |   1 +
 arch/arm64/include/asm/trans_table.h   |  68 ++++++
 arch/arm64/kernel/asm-offsets.c        |  14 ++
 arch/arm64/kernel/cpu-reset.S          |   4 +-
 arch/arm64/kernel/cpu-reset.h          |   8 +-
 arch/arm64/kernel/hibernate.c          | 261 ++++++-----------------
 arch/arm64/kernel/machine_kexec.c      | 199 ++++++++++++++----
 arch/arm64/kernel/relocate_kernel.S    | 196 +++++++++---------
 arch/arm64/mm/Makefile                 |   1 +
 arch/arm64/mm/trans_table.c            | 273 +++++++++++++++++++++++++
 kernel/kexec.c                         |   4 +
 kernel/kexec_core.c                    |   8 +-
 kernel/kexec_file.c                    |   4 +
 kernel/kexec_internal.h                |   2 +
 16 files changed, 758 insertions(+), 340 deletions(-)
 create mode 100644 arch/arm64/include/asm/trans_table.h
 create mode 100644 arch/arm64/mm/trans_table.c

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
