Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1561D1E09
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 20:53:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iJKuHMoN3GCL0Zvjzb1TKZPxpwTJY6BnRddVW09K1a4=; b=NLs
	Avm2BrVP1MCD5mU1N5zQnguSt08N4xZ7kRGMME80ff0huNUJAnTBEtbVX8uz9H5TmrRwlNL9vnQW5
	Lu9Tplq8i0jHNA5D/KB+GvPHmlqa//IUF2ildPFNK/wPC7eAnxkraf0yk8v3DXbzXupg4Hb9kFHlw
	yI/fXYBw8N5AaxErckB/MyWZmpsVyjLMtV9rXYh4B/lhx4j76rEL9SPJ363pQpjtExODpKJRtbNKp
	ytq3JYnvbTujwAU1Vz695TAoM1Vuedq6cUiZpLQzdMz+LTY5Fk7Jv/xs8xwjH6ZKs8QMLMBG/Fv7c
	Q/JGiuKbageerXmavX9bL2e4nqzDuJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYwV2-0003L9-Od; Wed, 13 May 2020 18:53:00 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYwUq-0003Ht-PX
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 18:52:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589395964;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type;
 bh=klz1aIlltTyMvpQo6wp2CnVfN50qcHTeSgtHjx0WeI8=;
 b=aMnRz9INnv+JdfcDSmXV2SQUFxAoeovMzFGrYgj7pNBOAEZWzpwrou6FzRX8B+Uku6f5x0
 b5Tx/Yh8HDNTewp78P7DkX+FQ455BwfrzMu5jhIcPpOsn4e+IxqDZprGtlNqyf1RPKlPH+
 wexqukKd1DwPcyAYD9hKSzos7xbcoBg=
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com
 [209.85.210.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-482-b_zMvViyMiO8vXwCQA_m7w-1; Wed, 13 May 2020 14:52:43 -0400
X-MC-Unique: b_zMvViyMiO8vXwCQA_m7w-1
Received: by mail-pf1-f199.google.com with SMTP id r28so464092pfl.23
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 11:52:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=klz1aIlltTyMvpQo6wp2CnVfN50qcHTeSgtHjx0WeI8=;
 b=sezzMbZ0LkIAQSnUgrDk2bZy+1bnmvPVGCIMG2zq5TWsiPOwTAqcAPYxcHGvSNdnJ/
 /FsTYps2ftTqTGXVyn+Lf9cygWOSD2O0XYfDDnghAdGjo3jf3NrC10DSvAU1OH4aB+/g
 9HQgvTpuZAnaG7o839sxq3ZViXZfytGM8f1nnqdgYN5W+cq2OtmCew1DJJBDWygu4Cfv
 QyGaMlkQFW9VrHQ7ErOjb1B83s7I3vfa6EJI6qDY1l+k3Vfh7mG3/np2ZnpD8qWqlgTV
 xJJeE6n6zQACp1zOxeNltmT93XZnVOPhlabka7uwIwuRFXgkE1qfC0xME5WIZG7yADwy
 rfBA==
X-Gm-Message-State: AGi0PublxC/kzcxUIfo8Qoc5WS/FGPqM1Psuiurr4fRFQ7txceddHMrB
 AsiYg1y92dvdyS/7szShTrRnrWpgayDlVHheERLSZnSx7h6cBRjOjBRxyZJVcyOcFO2obKnDryU
 t9cEnEl8g6fqgipQJBxAVUTfIFNm+UAaLwbg=
X-Received: by 2002:a17:90a:bc4a:: with SMTP id
 t10mr35609782pjv.104.1589395961816; 
 Wed, 13 May 2020 11:52:41 -0700 (PDT)
X-Google-Smtp-Source: APiQypIuLKmGrGFPHM791kHZAFCmnHIYlCo9XywvYUHAqAM5Bb2fZsRB2lyt+YcuSxBVSz35z/ovow==
X-Received: by 2002:a17:90a:bc4a:: with SMTP id
 t10mr35609740pjv.104.1589395961483; 
 Wed, 13 May 2020 11:52:41 -0700 (PDT)
Received: from localhost ([122.177.166.225])
 by smtp.gmail.com with ESMTPSA id m18sm16270331pjl.14.2020.05.13.11.52.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 13 May 2020 11:52:40 -0700 (PDT)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-arm-kernel@lists.infradead.org,
	x86@kernel.org
Subject: [PATCH v6 0/2] Append new variables to vmcoreinfo (TCR_EL1.T1SZ for
 arm64 and MAX_PHYSMEM_BITS for all archs)
Date: Thu, 14 May 2020 00:22:35 +0530
Message-Id: <1589395957-24628-1-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_115248_903476_A19499BA 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-doc@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, bhsharma@redhat.com,
 Paul Mackerras <paulus@samba.org>, Amit Kachhap <amit.kachhap@arm.com>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Michael Ellerman <mpe@ellerman.id.au>,
 Catalin Marinas <catalin.marinas@arm.com>,
 John Donnelly <john.p.donnelly@oracle.com>, scott.branden@broadcom.com,
 Boris Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 bhupesh.linux@gmail.com, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Steve Capper <steve.capper@arm.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Dave Anderson <anderson@redhat.com>, linuxppc-dev@lists.ozlabs.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Apologies for the delayed update. Its been quite some time since I
posted the last version (v5), but I have been really caught up in some
other critical issues.

Changes since v5:
----------------
- v5 can be viewed here:
  http://lists.infradead.org/pipermail/kexec/2019-November/024055.html
- Addressed review comments from James Morse and Boris.
- Added Tested-by received from John on v5 patchset.
- Rebased against arm64 (for-next/ptr-auth) branch which has Amit's
  patchset for ARMv8.3-A Pointer Authentication feature vmcoreinfo
  applied.

Changes since v4:
----------------
- v4 can be seen here:
  http://lists.infradead.org/pipermail/kexec/2019-November/023961.html
- Addressed comments from Dave and added patches for documenting
  new variables appended to vmcoreinfo documentation.
- Added testing report shared by Akashi for PATCH 2/5.

Changes since v3:
----------------
- v3 can be seen here:
  http://lists.infradead.org/pipermail/kexec/2019-March/022590.html
- Addressed comments from James and exported TCR_EL1.T1SZ in vmcoreinfo
  instead of PTRS_PER_PGD.
- Added a new patch (via [PATCH 3/3]), which fixes a simple typo in
  'Documentation/arm64/memory.rst'

Changes since v2:
----------------
- v2 can be seen here:
  http://lists.infradead.org/pipermail/kexec/2019-March/022531.html
- Protected 'MAX_PHYSMEM_BITS' vmcoreinfo variable under CONFIG_SPARSEMEM
  ifdef sections, as suggested by Kazu.
- Updated vmcoreinfo documentation to add description about
  'MAX_PHYSMEM_BITS' variable (via [PATCH 3/3]).

Changes since v1:
----------------
- v1 was sent out as a single patch which can be seen here:
  http://lists.infradead.org/pipermail/kexec/2019-February/022411.html

- v2 breaks the single patch into two independent patches:
  [PATCH 1/2] appends 'PTRS_PER_PGD' to vmcoreinfo for arm64 arch, whereas
  [PATCH 2/2] appends 'MAX_PHYSMEM_BITS' to vmcoreinfo in core kernel code (all archs)

This patchset primarily fixes the regression reported in user-space
utilities like 'makedumpfile' and 'crash-utility' on arm64 architecture
with the availability of 52-bit address space feature in underlying
kernel. These regressions have been reported both on CPUs which don't
support ARMv8.2 extensions (i.e. LVA, LPA) and are running newer kernels
and also on prototype platforms (like ARMv8 FVP simulator model) which
support ARMv8.2 extensions and are running newer kernels.

The reason for these regressions is that right now user-space tools
have no direct access to these values (since these are not exported
from the kernel) and hence need to rely on a best-guess method of
determining value of 'vabits_actual' and 'MAX_PHYSMEM_BITS' supported
by underlying kernel.

Exporting these values via vmcoreinfo will help user-land in such cases.
In addition, as per suggestion from makedumpfile maintainer (Kazu),
it makes more sense to append 'MAX_PHYSMEM_BITS' to
vmcoreinfo in the core code itself rather than in arm64 arch-specific
code, so that the user-space code for other archs can also benefit from
this addition to the vmcoreinfo and use it as a standard way of
determining 'SECTIONS_SHIFT' value in user-land.

Cc: Boris Petkov <bp@alien8.de>
Cc: Ingo Molnar <mingo@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: James Morse <james.morse@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Steve Capper <steve.capper@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Dave Anderson <anderson@redhat.com>
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
Cc: John Donnelly <john.p.donnelly@oracle.com>
Cc: scott.branden@broadcom.com
Cc: Amit Kachhap <amit.kachhap@arm.com>
Cc: x86@kernel.org
Cc: linuxppc-dev@lists.ozlabs.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-doc@vger.kernel.org
Cc: kexec@lists.infradead.org

Bhupesh Sharma (2):
  crash_core, vmcoreinfo: Append 'MAX_PHYSMEM_BITS' to vmcoreinfo
  arm64/crash_core: Export TCR_EL1.T1SZ in vmcoreinfo

 Documentation/admin-guide/kdump/vmcoreinfo.rst | 16 ++++++++++++++++
 arch/arm64/include/asm/pgtable-hwdef.h         |  1 +
 arch/arm64/kernel/crash_core.c                 | 10 ++++++++++
 kernel/crash_core.c                            |  1 +
 4 files changed, 28 insertions(+)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
