Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA3B379F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 18:45:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FMtrqa2oUJBvQyI8IgcaOwluDAHX2iYyrAALYwJMObA=; b=nFb
	ipfQL9OfmECvDaR4FMzJjxrnSwM3Ikyn5TCPYSgymZOcw5mn4NU7TzRX5uNR4qLoVHs8WX7wXmywj
	d4QR7zLU2oBj441/vDmyJxKvLXkRa35qrdvEdw+Ua0bmGLwcWWITKuEsNlteRcp+iMOaYBztGOoim
	f/Vh4EF1PLSoXUASIoOa0jlg/EY9Fl/YsJPhQbvJbNEoEKuTjfuZUFxKY4vJg/BUq+aRQ5hMzIljW
	vWZGxpqytz2/kPEIEGWDMixSDsuTZmCKD/E+DxonjJf/ZumJcEj0lMI7AsU+YaXPXcLXwJI5fq867
	tfay+FxdEYK17aDZIDnBYU8Srbw3NcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYvVo-0007f2-4x; Thu, 06 Jun 2019 16:45:12 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYvVg-00074v-0m
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 16:45:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 067F0374;
 Thu,  6 Jun 2019 09:45:03 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 768393F690;
 Thu,  6 Jun 2019 09:45:01 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] arm64/sve: Fix mutating register endianness on big-endian
Date: Thu,  6 Jun 2019 17:44:53 +0100
Message-Id: <1559839495-22315-1-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_094504_093631_187E2D32 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Peter Maydell <peter.maydell@linaro.org>, gdb@sourceware.org,
 Will Deacon <will.deacon@arm.com>, Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Julien Grall <julien.grall@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

By inspection while debugging something else, I noticed that the byte
order of FPSIMD V-register stores and SVE Z-register stores is not the
same when running on big-endian.

This is not properly taken into account when moving between the FPSIMD
and SVE register views inside the kernel, resulting in the bytes of a
V-register getting spontaneously reversed in some situations, from
userspace's point of view.  The signal frame and ptrace interface are
also affected.  The KVM ABI forbids mixing the two views and so should
not be affected.

See patch 2 for details.

Patch 1 does some trivial preparatory refactoring.

gdb may or may not be affected by this, depending on how it uses the
NT_PRFPREG and NT_ARM_SVE regsets.  I'll leave it to the developers to
assess that.

Dave Martin (2):
  arm64/sve: Factor out FPSIMD to SVE state conversion
  arm64/sve: Fix missing SVE/FPSIMD endianness conversions

 Documentation/arm64/sve.txt              | 16 +++++++++++
 arch/arm64/include/uapi/asm/kvm.h        |  7 +++++
 arch/arm64/include/uapi/asm/ptrace.h     |  4 +++
 arch/arm64/include/uapi/asm/sigcontext.h | 14 +++++++++
 arch/arm64/kernel/fpsimd.c               | 49 ++++++++++++++++++++++++--------
 5 files changed, 78 insertions(+), 12 deletions(-)

-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
