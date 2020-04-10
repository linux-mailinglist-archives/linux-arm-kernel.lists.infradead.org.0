Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D969D1A4415
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 10:59:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XGHCsSGfUmAadwHMnPUqrHQfWYjprpPR2xldhWhQuZw=; b=pgM+qkIKENF2Ne
	gWUmnRo7q6gt4oIWZUiH2J68ldTUnmHZMQo/BzvmuRveuBUPaJxs/5HKbs8aKEy6C76lq0A+WaYJs
	SpGYH34N0PQkWYIRMM02J8GGReiZMw5I6CmvyX7+kG3pvqwWm1B/qqxL4ZS0a6GGVwt1UtJcSDjMi
	gSyLvDOrM7mC52yMuluvs5Yo3gCnR+uuJPU4ZGi26BvqDNfS7IIGF+grXTJx9E9gDQSbCaOWSsFVk
	Moqic4N/3Q52MXMiCvAO5BlLcQ2bvpfD01CML1sorPDi7G7v8aWp+GgGi7dKLGPQwAOwC+2iQT+OF
	miTTD/Pdn9TQIESfe5Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMpV9-00089k-Ur; Fri, 10 Apr 2020 08:59:04 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMpUz-000893-7J
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 08:58:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586509129;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=G3f0EPaOuYHkB6GokgNnOnOoW30L4EgkhXCQaRsBz9g=;
 b=TtZerNM4eoF5JS0rjQ4gdPB6kN+IUARms8ty5Z9ET4yo0Sdic4Mykrx2aiUWM4+iz4z0/5
 ifeCytWAyM5+CfaPyOAjXptz+dSqwGPmWqp36sCNFEL1w2d9p5c2R3nXIeQWmCP4yuw5BA
 LUB5Dfkp1KeccdKpI7oJxcgU9Sw9jVE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-93-StyM4M6KPfyBp5fqS3K5uw-1; Fri, 10 Apr 2020 04:58:45 -0400
X-MC-Unique: StyM4M6KPfyBp5fqS3K5uw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 111B218C35A1;
 Fri, 10 Apr 2020 08:58:44 +0000 (UTC)
Received: from 192-168-1-115.tpgi.com.com (vpn2-54-29.bne.redhat.com
 [10.64.54.29])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 69B65BEA67;
 Fri, 10 Apr 2020 08:58:35 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [PATCH RFCv1 0/7] Support Async Page Fault
Date: Fri, 10 Apr 2020 18:58:13 +1000
Message-Id: <20200410085820.758686-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_015853_346808_646342F3 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, drjones@redhat.com, suzuki.poulose@arm.com,
 maz@kernel.org, sudeep.holla@arm.com, eric.auger@redhat.com,
 james.morse@arm.com, shan.gavin@gmail.com, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are two stages of page faults and the stage one page fault is
handled by guest itself. The guest is trapped to host when the page
fault is caused by stage 2 page table, for example missing. The guest
is suspended until the requested page is populated. To populate the
requested page can be costly and might be related to IO activities
if the page was swapped out previously. In this case, the guest has
to suspend for a few of milliseconds at least, regardless of the
overall system load.

The series adds support to asychornous page fault to improve above
situation. If it's costly to populate the requested page, a signal
(PAGE_NOT_PRESENT) is sent to guest so that the faulting process can
be rescheduled if it can be. Otherwise, it is put into power-saving
mode. Another signal (PAGE_READY) is sent to guest once the requested
page is populated so that the faulting process can be waken up either
from either waiting state or power-saving state.

In order to fulfil the control flow and convey signals between host
and guest. A IMPDEF system register (SYS_ASYNC_PF_EL1) is introduced.
The register accepts control block's physical address, plus requested
features. Also, the signal is sent using data abort with the specific
IMPDEF Data Fault Status Code (DFSC). The specific signal is stored
in the control block by host, to be consumed by guest.

Todo
====
* CONFIG_KVM_ASYNC_PF_SYNC is disabled for now because the exception
  injection can't work in nested mode. It might be something to be
  improved in future.
* KVM_ASYNC_PF_SEND_ALWAYS is disabled even with CONFIG_PREEMPTION
  because it's simply not working reliably.
* Tracepoints, which should something to be done in short term.
* kvm-unit-test cases.
* More testing and debugging are needed. Sometimes, the guest can be
  stuck and the root cause needs to be figured out.

PATCH[01] renames kvm_vcpu_get_hsr() to kvm_vcpu_get_esr() since the
          aarch32 host isn't supported.
PATCH[02] allows various helper functions to access ESR value from
          somewhere other than vCPU struct.
PATCH[03] replaces @hsr with @esr as aarch32 host isn't supported.
PATCH[04] exports kvm_handle_user_mem_abort(), which is used by the
          subsequent patch.
PATCH[05] introduces API to inject data abort with IMPDEF DFSC
PATCH[06] supports asynchronous page fault for host
PATCH[07] supports asynchronous page fault for guest

Testing
=======

Start a VM and its QEMU process is put into the specific memory cgroup.
The cgroup's memory limitation is less that the total amount of memory
assigned to the VM. For example, the VM is assigned with 4GB memory, but
the cgroup's limitaton is 2GB. A program is run after VM boots up, to
allocate (and access) all free memory. No system hang is found.

Gavin Shan (7):
  kvm/arm64: Rename kvm_vcpu_get_hsr() to kvm_vcpu_get_esr()
  kvm/arm64: Detach ESR operator from vCPU struct
  kvm/arm64: Replace hsr with esr
  kvm/arm64: Export kvm_handle_user_mem_abort() with prefault mode
  kvm/arm64: Allow inject data abort with specified DFSC
  kvm/arm64: Support async page fault
  arm64: Support async page fault

 arch/arm64/Kconfig                       |  11 +
 arch/arm64/include/asm/exception.h       |   5 +
 arch/arm64/include/asm/kvm_emulate.h     |  87 +++----
 arch/arm64/include/asm/kvm_host.h        |  46 ++++
 arch/arm64/include/asm/kvm_para.h        |  55 +++++
 arch/arm64/include/asm/sysreg.h          |   3 +
 arch/arm64/include/uapi/asm/Kbuild       |   3 -
 arch/arm64/include/uapi/asm/kvm_para.h   |  22 ++
 arch/arm64/kernel/smp.c                  |  47 ++++
 arch/arm64/kvm/Kconfig                   |   1 +
 arch/arm64/kvm/Makefile                  |   2 +
 arch/arm64/kvm/handle_exit.c             |  48 ++--
 arch/arm64/kvm/hyp/switch.c              |  33 +--
 arch/arm64/kvm/hyp/vgic-v2-cpuif-proxy.c |   7 +-
 arch/arm64/kvm/inject_fault.c            |  38 ++-
 arch/arm64/kvm/sys_regs.c                |  91 +++++--
 arch/arm64/mm/fault.c                    | 239 ++++++++++++++++++-
 virt/kvm/arm/aarch32.c                   |  27 ++-
 virt/kvm/arm/arm.c                       |  36 ++-
 virt/kvm/arm/async_pf.c                  | 290 +++++++++++++++++++++++
 virt/kvm/arm/hyp/aarch32.c               |   4 +-
 virt/kvm/arm/hyp/vgic-v3-sr.c            |   7 +-
 virt/kvm/arm/mmio.c                      |  27 ++-
 virt/kvm/arm/mmu.c                       |  69 ++++--
 24 files changed, 1040 insertions(+), 158 deletions(-)
 create mode 100644 arch/arm64/include/asm/kvm_para.h
 delete mode 100644 arch/arm64/include/uapi/asm/Kbuild
 create mode 100644 arch/arm64/include/uapi/asm/kvm_para.h
 create mode 100644 virt/kvm/arm/async_pf.c

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
