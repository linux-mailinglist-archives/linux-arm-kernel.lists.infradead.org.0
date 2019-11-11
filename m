Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED11F6F63
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 09:05:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zGgAHmTLGcsgdHIPx5E/NKnbm7kHmHIyCkzOFd+8EAA=; b=fgi
	zNrcVaKnsOPi059v1YR2Y9WUeIbKfdmkIrzBd7JIRlASAlrNZ6IIZ67+k1uXCcZuEVmp0BTr3i0bj
	E0NCeqt7g1SyZSJXHi1kuYxyzJNGcoTuIOvNgsWLoj2Ae4ITl382ILRT5GKoJvlrhFggVmuGumd6b
	CIobV371vYYuTJw0HsnEVtocc4fasrLgTDnw3nE93AxtfeMDypL8k3WFFMIKg9gxzD5pPMhbdHdqC
	ChMNvMVTkYLP6li4Z7Qkt509T0VRvjgrsvvkE9uJ5vKw6giOeWHPV8Ozs4/9qALUY+dp3AbDZcbdS
	VUh3yRUO5LSr0gXOyxFoc0rRSCmG89A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU4hH-0004ER-1v; Mon, 11 Nov 2019 08:05:15 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU4gy-0004DY-HS
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 08:04:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573459495;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=A9dYMCoBKwMezl1qACKOOLgxGxk0IE3Nin8lXmnvd8M=;
 b=P5eho0RSvcAfgYUEmO2kfqjfq4zGW2KPOXjhnnkKxy/QhOyZJvGEUVbKw8NhWwiUBYNfVw
 58lQwUsWo5oPSmH19/J7GoZAQmsm3swYRtv/FhtyLKvD4vARjUGmP5r8JPvA7hlC1xjr6H
 7v2jHhjzE2NS7Vw5j3IuqWEtgWs/UGM=
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com
 [209.85.215.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-57-vq7BtKS2OKacuguRUad4Vg-1; Mon, 11 Nov 2019 03:04:52 -0500
Received: by mail-pg1-f200.google.com with SMTP id k7so11381979pgq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 00:04:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=CQAhTC/o2YJhj0AZfjwdsGhelqoKVj50q9FveL4NL08=;
 b=dUiyNJtUt++3lmc7dT0bzYLX5RwqGHzdNGuV98Fvzl9HeMoj5k+oh66o0a/qDdus/r
 aGnvL8T8gYUkbw0y3EpIbcxMAXXLqReWI+SXUuYNnhqopgVExeJFlbz67DMOkTZU8aLx
 HYwv8kyHRVHYudOI3L7VPykf5ovtKFPdb4XPX6G0FHB/5qWK1jpImAREvJCj0gMinh4i
 cQt/bZ8QpRgZeJZ1+cmthMwE1R6ht02i4I1n4syHM/3IYZ6FBoNvRVrGM0MZLQEJgFC2
 cAGu9VJYxslhIJid3V5PAEsJ20Wu34ys/xPDFbN/xPXlCQMztAB9NW+7ZzwWighXfIdc
 PuWg==
X-Gm-Message-State: APjAAAU45fCorpWYHFns8NRyNtSvsf993YflfY/oZ7gpik0PFpRnIV5k
 91T8Kz/Q8gOgKcaJSeCrGuOc3BKS2h3mYgaqHm8jzGLDKAO6HCMN8XY+cizYF8S65W6ku2lQpz5
 GJ6mU1leEIMH0liFU3QsA3GT5ku+din95C5g=
X-Received: by 2002:a17:90a:cc18:: with SMTP id
 b24mr31115540pju.141.1573459491917; 
 Mon, 11 Nov 2019 00:04:51 -0800 (PST)
X-Google-Smtp-Source: APXvYqwYn3i3YBnhT+ZAxJ1SZwxD2hnT8z5SmG2cTnSfOAsjmdb/sBRMzhcOXON77fu4WCIQlrVPaQ==
X-Received: by 2002:a17:90a:cc18:: with SMTP id
 b24mr31115508pju.141.1573459491651; 
 Mon, 11 Nov 2019 00:04:51 -0800 (PST)
Received: from localhost ([122.177.0.15])
 by smtp.gmail.com with ESMTPSA id y1sm15008239pfq.138.2019.11.11.00.04.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 11 Nov 2019 00:04:50 -0800 (PST)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/3] arm64/crash_core: Export TCR_EL1.T1SZ in vmcoreinfo
Date: Mon, 11 Nov 2019 13:34:44 +0530
Message-Id: <1573459485-27219-1-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
X-MC-Unique: vq7BtKS2OKacuguRUad4Vg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_000456_651711_C513259F 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Steve Capper <steve.capper@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 bhsharma@redhat.com, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 kexec@lists.infradead.org, James Morse <james.morse@arm.com>,
 Dave Anderson <anderson@redhat.com>, bhupesh.linux@gmail.com,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

vabits_actual variable on arm64 indicates the actual VA space size,
and allows a single binary to support both 48-bit and 52-bit VA
spaces.

If the ARMv8.2-LVA optional feature is present, and we are running
with a 64KB page size; then it is possible to use 52-bits of address
space for both userspace and kernel addresses. However, any kernel
binary that supports 52-bit must also be able to fall back to 48-bit
at early boot time if the hardware feature is not present.

Since TCR_EL1.T1SZ indicates the size offset of the memory region
addressed by TTBR1_EL1 (and hence can be used for determining the
vabits_actual value) it makes more sense to export the same in
vmcoreinfo rather than vabits_actual variable, as the name of the
variable can change in future kernel versions, but the architectural
constructs like TCR_EL1.T1SZ can be used better to indicate intended
specific fields to user-space.

User-space utilities like makedumpfile and crash-utility, need to
read/write this value from/to vmcoreinfo for determining if a virtual
address lies in the linear map range.

The user-space computation for determining whether an address lies in
the linear map range is the same as we have in kernel-space:

  #define __is_lm_address(addr)	(!(((u64)addr) & BIT(vabits_actual - 1)))

Cc: James Morse <james.morse@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Steve Capper <steve.capper@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Anderson <anderson@redhat.com>
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: kexec@lists.infradead.org
Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 arch/arm64/include/asm/pgtable-hwdef.h | 1 +
 arch/arm64/kernel/crash_core.c         | 9 +++++++++
 2 files changed, 10 insertions(+)

diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
index d9fbd433cc17..d2e7aff5821e 100644
--- a/arch/arm64/include/asm/pgtable-hwdef.h
+++ b/arch/arm64/include/asm/pgtable-hwdef.h
@@ -215,6 +215,7 @@
 #define TCR_TxSZ(x)		(TCR_T0SZ(x) | TCR_T1SZ(x))
 #define TCR_TxSZ_WIDTH		6
 #define TCR_T0SZ_MASK		(((UL(1) << TCR_TxSZ_WIDTH) - 1) << TCR_T0SZ_OFFSET)
+#define TCR_T1SZ_MASK		(((UL(1) << TCR_TxSZ_WIDTH) - 1) << TCR_T1SZ_OFFSET)
 
 #define TCR_EPD0_SHIFT		7
 #define TCR_EPD0_MASK		(UL(1) << TCR_EPD0_SHIFT)
diff --git a/arch/arm64/kernel/crash_core.c b/arch/arm64/kernel/crash_core.c
index ca4c3e12d8c5..f78310ba65ea 100644
--- a/arch/arm64/kernel/crash_core.c
+++ b/arch/arm64/kernel/crash_core.c
@@ -7,6 +7,13 @@
 #include <linux/crash_core.h>
 #include <asm/memory.h>
 
+static inline u64 get_tcr_el1_t1sz(void);
+
+static inline u64 get_tcr_el1_t1sz(void)
+{
+	return (read_sysreg(tcr_el1) & TCR_T1SZ_MASK) >> TCR_T1SZ_OFFSET;
+}
+
 void arch_crash_save_vmcoreinfo(void)
 {
 	VMCOREINFO_NUMBER(VA_BITS);
@@ -15,5 +22,7 @@ void arch_crash_save_vmcoreinfo(void)
 						kimage_voffset);
 	vmcoreinfo_append_str("NUMBER(PHYS_OFFSET)=0x%llx\n",
 						PHYS_OFFSET);
+	vmcoreinfo_append_str("NUMBER(tcr_el1_t1sz)=0x%llx\n",
+						get_tcr_el1_t1sz());
 	vmcoreinfo_append_str("KERNELOFFSET=%lx\n", kaslr_offset());
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
