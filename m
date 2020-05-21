Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BF21DC533
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 04:30:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=JcTczfl3q68UJFlxherYSjyfeu1Zi5yxFxnAwL2j82c=; b=ntYIH1OZrFNq3K
	TjbAKV8ge484S9S7GoCD7RllYNxRxA5HYhO89inN7yS5+M3SV+QNvpHovf63MZb5+n6lQbYfxqt4t
	rHzOMox1ka6d4ulWGRLRUCnsL9dTOlJB7KX9altrgps0YFsJ2C1uqpQGz3qAIOqRQcEa2rXz14FKh
	VQqTqXtrtuUHyjjOExQeC1fyzHSbQWMrMpIcMVS+87YYNrqAg1HpxxyGkm28tP6SjJn2aEM/af2++
	CsmDgbC4BBRR98DTXe0UMCzR5sE4Mu1WMhp3RyqCGY9pzw03RwcK+u6+sRjDx+QY+21UR4iZIfsjJ
	uLfuDJvKdcOdrMO/SrMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbayV-0005FT-6o; Thu, 21 May 2020 02:30:25 +0000
Received: from mail-yb1-xb4a.google.com ([2607:f8b0:4864:20::b4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbayC-00045d-O1
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 02:30:06 +0000
Received: by mail-yb1-xb4a.google.com with SMTP id n7so3772673ybh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 19:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:subject:from:to:cc;
 bh=GmgtVtVgHNPES93BDzXnfSo44X+McssYchIj21dJws8=;
 b=h/2EFd4AC7sIFTrt1xLkWSxOu3mLfhQQi6p/mm7JYl0UbNIOfRRlgfSo/chRxTrXQm
 rCDXsYuVP2sDv0ytoFjANMsZq9O0wpW7ARAqVnVjyT7QwDUEoomcvcwvBJKsAAYz6vSt
 jbjv1ISVSlWmW514/AafL2CTuZEQ02KRhkolt5bw3QyNOjU0EFpaBD/jsUnSVcd/ZA1z
 vaihwwY5fGbWvFuEj+XqgPfORL0lYLTwqsY6W5ptfhWpOZggCciz9Jq3x6XIalNwiHLq
 ZiUFgyOXBfMl5Dk2GVY9OSMKw3rFW+XG7Qj7SbJvptXEtTuyVcOpG7JqyiLgm28K86oW
 1oDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version:subject
 :from:to:cc;
 bh=GmgtVtVgHNPES93BDzXnfSo44X+McssYchIj21dJws8=;
 b=V3VpZBv6yMLC4Yy8AeE6X2b+C3IPvT25HRGjSMbD2WECWZTYeCyapUluv7lEfUjb88
 1hgOeQDPuPqnld3VY3sLXBlkLeCVfpHvmUzNcufLZcABub2/PnVx1Jbu6VAZ66Ndq+pF
 gOBn/wRSs8juxNBD1AySYfHovhcUlN6SBRdKZwDJNSICJgklByw+4aGJfMWB0BV7ko+J
 fx1ZmC2rPw0YLL5rP9jEVBI/Q2VRprZYFpsdDM2EOFA2vz0nP9/YuLyh5ZqyH0bP6S1y
 LSwng89NOLHfpeu/uWcaDDmdnToytFCRBVzJRl4HP5zPb1e/VEZcYSS9rkk/iq677ZP1
 LqMA==
X-Gm-Message-State: AOAM532Bsu7DI5ClVVXpTowivUwryNkPB1oDO2MUVnnyIn8hjxVxky7I
 BQrWPzqRLhd+ODworRFubaD66K8=
X-Google-Smtp-Source: ABdhPJzxCJf3CVj584WP3MJVWM/YSQoxqYX5tlLcB2X4htRq9z7LQDbvHH+OFK5EIgRyJNXm10Zhpdc=
X-Received: by 2002:a25:9304:: with SMTP id f4mr11988662ybo.309.1590028201686; 
 Wed, 20 May 2020 19:30:01 -0700 (PDT)
Date: Wed, 20 May 2020 19:29:40 -0700
In-Reply-To: <CAMn1gO7VWBcbMvqNeyBdfpO71kfhrZbHwkOC0JeSX13_HUMmWA@mail.gmail.com>
Message-Id: <20200521022943.195898-1-pcc@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH v6 0/3] arm64: Expose FAR_EL1 tag bits in sigcontext
From: Peter Collingbourne <pcc@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Evgenii Stepanov <eugenis@google.com>, Kostya Serebryany <kcc@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, 
 Dave Martin <Dave.Martin@arm.com>, Will Deacon <will@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, 
 "Eric W. Biederman" <ebiederm@xmission.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_193004_794246_519D0879 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b4a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The kernel currently clears the tag bits (i.e. bits 56-63) in the fault
address exposed via siginfo.si_addr and sigcontext.fault_address. However,
the tag bits may be needed by tools in order to accurately diagnose
memory errors, such as HWASan [1] or future tools based on the Memory
Tagging Extension (MTE).

We should not stop clearing these bits in the existing fault address fields,
because there may be existing userspace applications that are expecting the tag
bits to be cleared. Instead, create a fault_addr_top_byte_context in sigcontext
(similar to the existing esr_context), and store the tag bits of FAR_EL1 there.

[1] http://clang.llvm.org/docs/HardwareAssistedAddressSanitizerDesign.html

Peter Collingbourne (3):
  signal: Allow architectures to store arch-specific data in
    kernel_siginfo
  arm64: Move fault address and fault code into kernel_siginfo
  arm64: Expose FAR_EL1 tag bits in sigcontext

 Documentation/arm64/tagged-pointers.rst  |  17 ++--
 arch/arm64/include/asm/exception.h       |   2 +-
 arch/arm64/include/asm/processor.h       |   2 -
 arch/arm64/include/asm/signal.h          |  19 ++++
 arch/arm64/include/asm/traps.h           |   8 +-
 arch/arm64/include/uapi/asm/sigcontext.h |  24 +++--
 arch/arm64/kernel/debug-monitors.c       |   4 +-
 arch/arm64/kernel/entry-common.c         |   2 -
 arch/arm64/kernel/probes/uprobes.c       |  18 ++--
 arch/arm64/kernel/ptrace.c               |   2 +-
 arch/arm64/kernel/signal.c               |  42 ++++++--
 arch/arm64/kernel/signal32.c             |  15 ++-
 arch/arm64/kernel/sys_compat.c           |   9 +-
 arch/arm64/kernel/traps.c                | 121 +++++++++++++++++++----
 arch/arm64/mm/fault.c                    | 111 ++++++---------------
 include/linux/signal.h                   |   2 -
 include/linux/signal_types.h             |   3 +
 kernel/signal.c                          |  17 +++-
 18 files changed, 259 insertions(+), 159 deletions(-)
 create mode 100644 arch/arm64/include/asm/signal.h

-- 
2.26.2.761.g0e0b3e54be-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
