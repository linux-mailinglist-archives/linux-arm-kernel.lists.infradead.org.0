Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 139C94350E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 12:00:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tmuoj0KCCcwxXvTbxOI8gOpOKL8HrK1ZDsJ5a5TMnSQ=; b=Tia+ooV512rtxL
	55z3tCXexQVpKHBB+fzce+Wa63no2jPFLhT8z2UFQBHmLFbNb9jzBAHpwpqckVly2KnCDq7HbXrtp
	XP92sWrSiHCKp3T+fa80o+94La64N7Thl1NDHw0rVJXEjLD3hX2nPoTzKBmaU/1mv5yOb70z95Vwi
	9Cdqit0ifpwWNB7F0+oT3E0pntg5q37/ZO2L166YxOHbeDDelV/MqDboCK6NdcA4SrVpO6tPit4WA
	v1HiGcUU9yAgOD9FLFNtxHPbGGx1+I6L1ShrOB7DEIbXo/W5tgt4FVOQyfRAjkt29c1t/3XOCAOTo
	GpfY9wCacmDmtJIjeeGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbMXL-0003E3-8u; Thu, 13 Jun 2019 10:00:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbMXA-0003DY-9m
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 10:00:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A462D367;
 Thu, 13 Jun 2019 03:00:37 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BC6D13F694;
 Thu, 13 Jun 2019 03:02:19 -0700 (PDT)
Date: Thu, 13 Jun 2019 11:00:34 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [PATCH v2 1/3] arm64/sve: Fix missing SVE/FPSIMD endianness
 conversions
Message-ID: <20190613100031.GU28398@e103592.cambridge.arm.com>
References: <1560355234-25516-1-git-send-email-Dave.Martin@arm.com>
 <1560355234-25516-2-git-send-email-Dave.Martin@arm.com>
 <771b0099-9217-4e55-b73a-b03434c61655@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <771b0099-9217-4e55-b73a-b03434c61655@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_030040_432590_A36EE82D 
X-CRM114-Status: GOOD (  22.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Peter Maydell <peter.maydell@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, gdb@sourceware.org,
 Will Deacon <will.deacon@arm.com>, Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Alan Hayward <alan.hayward@arm.com>,
 Alex =?iso-8859-1?Q?Benn=E9e?= <alex.bennee@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 06:46:04PM +0100, Julien Grall wrote:
> Hi Dave,
> 
> On 12/06/2019 17:00, Dave Martin wrote:
> >The in-memory representation of SVE and FPSIMD registers is
> >different: the FPSIMD V-registers are stored as single 128-bit
> >host-endian values, whereas SVE registers are stored in an
> >endianness-invariant byte order.
> >
> >This means that the two representations differ when running on a
> >big-endian host.  But we blindly copy data from one representation
> >to another when converting between the two, resulting in the
> >register contents being unintentionally byteswapped in certain
> >situations.  Currently this can be triggered by the first SVE
> >instruction after a syscall, for example (though the potential
> >trigger points may vary in future).
> >
> >So, fix the conversion functions fpsimd_to_sve(), sve_to_fpsimd()
> >and sve_sync_from_fpsimd_zeropad() to swab where appropriate.
> >
> >There is no common swahl128() or swab128() that we could use here.
> >Maybe it would be worth making this generic, but for now add a
> >simple local hack.
> >
> >Since the byte order differences are exposed in ABI, also clarify
> >the docuentation.
> 
> NIT: s/docuentation/documentation/
> 
> Although, it is probably too late to fix this one as Will already took the patch.
> 
> [...]
> 
> >diff --git a/Documentation/arm64/sve.txt b/Documentation/arm64/sve.txt
> >index 9940e92..6c0bed3 100644
> >--- a/Documentation/arm64/sve.txt
> >+++ b/Documentation/arm64/sve.txt
> >@@ -56,6 +56,18 @@ model features for SVE is included in Appendix A.
> >    is to connect to a target process first and then attempt a
> >    ptrace(PTRACE_GETREGSET, pid, NT_ARM_SVE, &iov).
> >+* Whenever SVE scalable register values (Zn, Pn, FFR) are exchanged in memory
> >+  between userspace and the kernel, the register value is encoded in memory in
> >+  an endianness-invariant layout, with bits [(8 * i + 7) : (8 * i)] encoded at
> >+  byte offset i in from the start of the memory representation.  This affects
> >+  for example the signal frame (struct sve_context) and ptrace interface
> >+  (struct user_sve_header) and associated data.
> >+
> >+  Beware that on big-endian systems this results in a different byte order than
> >+  for the FPSIMD V-registers, which are stored as single host-endian 128-bit
> >+  values, with bits [(127 - 8 * i) : (120 - 8 * i)] of the register encoded at
> >+  byte offset i.  (struct fpsimd_context, struct user_fpsimd_state).
> >+
> >  2.  Vector length terminology
> >  -----------------------------
> >@@ -124,6 +136,10 @@ the SVE instruction set architecture.
> >    size and layout.  Macros SVE_SIG_* are defined [1] to facilitate access to
> >    the members.
> >+* Each scalable register (Zn, Pn, FFR) is stored in an endianness-invariant
> >+  layout, with bits [(8 * i + 7) : (8 * i)] stored at byte offset i from the
> >+  start of the register's representation in memory.
> >+
> >  * If the SVE context is too big to fit in sigcontext.__reserved[], then extra
> >    space is allocated on the stack, an extra_context record is written in
> >    __reserved[] referencing this space.  sve_context is then written in the
> >diff --git a/arch/arm64/include/uapi/asm/kvm.h b/arch/arm64/include/uapi/asm/kvm.h
> >index 7b7ac0f..072ea1e 100644
> >--- a/arch/arm64/include/uapi/asm/kvm.h
> >+++ b/arch/arm64/include/uapi/asm/kvm.h
> >@@ -260,6 +260,13 @@ struct kvm_vcpu_events {
> >  	 KVM_REG_SIZE_U256 |						\
> >  	 ((i) & (KVM_ARM64_SVE_MAX_SLICES - 1)))
> >+/*
> >+ * Register values for KVM_REG_ARM64_SVE_ZREG(), KVM_REG_ARM64_SVE_PREG() and
> >+ * KVM_REG_ARM64_SVE_FFR() and represented in memory in an endianness-
> 
> NIT: s/and represented/are represented/ I think.
> 
> >+ * invariant layout which differs from the layout used for the FPSIMD
> >+ * V-registers on big-endian systems: see sigcontext.h for more explanaion.
> 
> NIT: s/explanaion/explanation/

Dang, the first of these two is quite confusing.

I might send a fix for that, but I guess it's not urgent.  Thanks for
spotting it.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
