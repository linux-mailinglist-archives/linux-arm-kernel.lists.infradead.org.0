Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 813B6102EDD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 23:10:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l9EIoFF907uF4dBlx5g5ODJ8/H7hJetxZ27RJh3i/Qs=; b=TxfrR6n7Tx+yms
	G8VmsG2HRvMdH/adF3q5ZcuwyzdKmv2c/VfGG0KGb0QAKB9CcEJ026SDPC7dFHNUycL3Sng93YMd0
	Wu1i5SVOvm2x+VbXzb6KWaBzDSfJLd2CuBkR5CxqEKBi/9VQOSBixhhZPx+/z6I4+AC9w+rSmKedP
	Ndy5fAgpIh0KhbnYn1EbyGazuBsOP4X8zZqglDElY1kxqHvK4xYGigfwiHW7YD+Ozy9W5MPDbdNkC
	ukm2EzV7oCbgTSEaPsA+vW3Yu3g5Gg5A09QXAp+xuhy5VLZ2E2yNgAVgK7QBclNXHrETAwkqkCuaV
	sE8lsmhmVD38YxT5y40g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXBhT-0001hS-Nd; Tue, 19 Nov 2019 22:10:19 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXBhM-0001gp-85
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 22:10:13 +0000
Received: by mail-pl1-x641.google.com with SMTP id h13so12703151plr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 14:10:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UdU3qNEOLTbKbi9NxQzz9fevQsI9LjR5PnwQlEv7eyI=;
 b=JC0rFtKe1fs+H4jK9vpJa8T4wkcPAoNeFQje6LwEljmB0Ip91xucB4LCJD73qMBQpY
 aRg/hmIOhHhB/cSbLUark8KKc4JM4qu8V1VD4hPSRMYIkSNodswm+sjCEMdvDHPXB/x8
 /QlKXdOiJb0VX+jTovyIFkbmJh5VVgE0PFrMPy50AnaFMJpkqokCi3Ul6Ml5bNSI1Teh
 6eWfmI9+BJ+YclDHqskvMQt+HbqsAgi9G7JfT41ERl+OeqkQFlWDqpc5IthrFak/pomV
 aUXM8fq6ns6boTLDKjYkkzvolTGiKRtmjvx/iXAn0V5dPPIj1sC6/LnNcXOu2ZQEBcMn
 yxow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UdU3qNEOLTbKbi9NxQzz9fevQsI9LjR5PnwQlEv7eyI=;
 b=P3oLpaUxOd4nQT5Bo0jqpdWHQTqCU91X92a11hsa9s1pYz2m7DF0WF0iaAjaUauk8Z
 uOqer6kmp7VW/DWDEM10grhzEzv7Nyj9x6+X2mbTaOC6iYj0LW166SPO3ycIWxRum1Zs
 HINy61Bwxlw/fWCtx2D9opT/kMLPkyK93EOi0MIarPXeU0b47E6ePht5Trox5snUijrU
 C+D95GLjD/O+emOEc7vYAGZ0UR2ji1shJfyCE6SINwEP6XOvsfda8o1d0MloNw9AVMQv
 M0jGeqYfAVe7HQY3uZN/50+QwG95b5Z4KHPlZME8Xul2XZUX9MkkAw1IhanSmeVQ4jYm
 naMA==
X-Gm-Message-State: APjAAAVx+KgPvyv7NfHW16zvxFGotHevLHrTIqKTO4xGFVsccP4QFKtv
 /ljGM+R6W24+fo+tmuw9dMMAWA==
X-Google-Smtp-Source: APXvYqzDYm4LzzWHaecTPAkUjtYvVUyNLSKCG2kbysLH0N+N3sIaEjPrCi6Qcaj4sSH/Jcopk6KLVQ==
X-Received: by 2002:a17:902:4a:: with SMTP id
 68mr21435548pla.158.1574201410571; 
 Tue, 19 Nov 2019 14:10:10 -0800 (PST)
Received: from xakep.corp.microsoft.com (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id 193sm29270908pfv.18.2019.11.19.14.10.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 14:10:09 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 linux-kernel@vger.kernel.org, catalin.marinas@arm.com, will@kernel.org,
 steve.capper@arm.com, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 mark.rutland@arm.com, tglx@linutronix.de, gregkh@linuxfoundation.org,
 allison@lohutok.net, info@metux.net, alexios.zavras@intel.com
Subject: [PATCH] arm64: kernel: memory corruptions due non-disabled PAN
Date: Tue, 19 Nov 2019 17:10:06 -0500
Message-Id: <20191119221006.1021520-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_141012_359807_DEEBD726 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Userland access functions (__arch_clear_user, __arch_copy_from_user,
__arch_copy_in_user, __arch_copy_to_user), enable and disable PAN
for the duration of copy. However, when copy fails for some reason,
i.e. access violation the code is transferred to fixedup section,
where we do not disable PAN.

The bug is a security violation as the access to userland is still
open when it should be disabled, but it also causes memory corruptions
when software emulated PAN is used: CONFIG_ARM64_SW_TTBR0_PAN=y.

I was able to reproduce memory corruption problem on Broadcom's SoC
ARMv8-A like this:

Enable software perf-events with PERF_SAMPLE_CALLCHAIN so userland's
stack is accessed and copied.

The test program performed the following on every CPU and forking many
processes:

	unsigned long *map = mmap(NULL, PAGE_SIZE, PROT_READ|PROT_WRITE,
				  MAP_SHARED | MAP_ANONYMOUS, -1, 0);
	map[0] = getpid();
	sched_yield();
	if (map[0] != getpid()) {
		fprintf(stderr, "Corruption detected!");
	}
	munmap(map, PAGE_SIZE);

From time to time I was getting map[0] to contain pid for a different
process.

Fixes: 338d4f49d6f7114 ("arm64: kernel: Add support for Privileged...")

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/lib/clear_user.S     | 1 +
 arch/arm64/lib/copy_from_user.S | 1 +
 arch/arm64/lib/copy_in_user.S   | 1 +
 arch/arm64/lib/copy_to_user.S   | 1 +
 4 files changed, 4 insertions(+)

diff --git a/arch/arm64/lib/clear_user.S b/arch/arm64/lib/clear_user.S
index 10415572e82f..322b55664cca 100644
--- a/arch/arm64/lib/clear_user.S
+++ b/arch/arm64/lib/clear_user.S
@@ -48,5 +48,6 @@ EXPORT_SYMBOL(__arch_clear_user)
 	.section .fixup,"ax"
 	.align	2
 9:	mov	x0, x2			// return the original size
+	uaccess_disable_not_uao x2, x3
 	ret
 	.previous
diff --git a/arch/arm64/lib/copy_from_user.S b/arch/arm64/lib/copy_from_user.S
index 680e74409ff9..8472dc7798b3 100644
--- a/arch/arm64/lib/copy_from_user.S
+++ b/arch/arm64/lib/copy_from_user.S
@@ -66,5 +66,6 @@ EXPORT_SYMBOL(__arch_copy_from_user)
 	.section .fixup,"ax"
 	.align	2
 9998:	sub	x0, end, dst			// bytes not copied
+	uaccess_disable_not_uao x3, x4
 	ret
 	.previous
diff --git a/arch/arm64/lib/copy_in_user.S b/arch/arm64/lib/copy_in_user.S
index 0bedae3f3792..8e0355c1e318 100644
--- a/arch/arm64/lib/copy_in_user.S
+++ b/arch/arm64/lib/copy_in_user.S
@@ -68,5 +68,6 @@ EXPORT_SYMBOL(__arch_copy_in_user)
 	.section .fixup,"ax"
 	.align	2
 9998:	sub	x0, end, dst			// bytes not copied
+	uaccess_disable_not_uao x3, x4
 	ret
 	.previous
diff --git a/arch/arm64/lib/copy_to_user.S b/arch/arm64/lib/copy_to_user.S
index 2d88c736e8f2..6085214654dc 100644
--- a/arch/arm64/lib/copy_to_user.S
+++ b/arch/arm64/lib/copy_to_user.S
@@ -65,5 +65,6 @@ EXPORT_SYMBOL(__arch_copy_to_user)
 	.section .fixup,"ax"
 	.align	2
 9998:	sub	x0, end, dst			// bytes not copied
+	uaccess_disable_not_uao x3, x4
 	ret
 	.previous
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
