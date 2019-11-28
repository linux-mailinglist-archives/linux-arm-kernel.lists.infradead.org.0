Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E6510CF35
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 21:26:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rQUeEhnxe/fnikXZQt1i7+hvd8Og3QYtZI9n8u2JF1A=; b=ap9
	I/08CfQTHeCbuesGwfjdrsU2fSAFfD/ze3SyeiHsA/pWJEGTorse/5YaQ7frFsQqxg7TtLQDxgPkM
	ykCUzb+bbtssGy/TTZ0lB2E/UxUdhHfK+63+cWo4RfspolGLZht64c0N7STTe5B+IU7JH6zAdfXPC
	WY6Ef3jxE+vJJt2ftxPO9ZoP7Rso8HtjhG0pH6MeoCwb3nrntlIyIjvUf21mXxaG8DW8E+Le0y5v9
	QPJ+ZWzq6g/IoEA9qBlVyu2x/IHvPVCj+VI1ocLbJYayrf6lInJHNYYfC/G6Q1+O1BXNH9+17IsCB
	WIzHs8mpw2O4UYra+Uf4uMq09f+CEfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaQMP-0007Dm-MI; Thu, 28 Nov 2019 20:25:57 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaQM1-0007CG-Q5
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 20:25:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574972732;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=wgbAkKrJxLS1NEOR+82/qBcYhhrIFUtkNwc9k9kwPFE=;
 b=NH9o+PeIGKzZokpvd+R3AsXhTkePCmIcylpQPtfxBq4rHibMzRf15DxUapMY9EHxrZHxt+
 Dpu6DK5CK0DSfPSxrz3GgpF/l9ghmb8qzDbdG35y0sjqOFmcUXQT3RR7hV+ZeYN6CIGgtp
 8wgdAa4pVS8HmQPZdqIC4DKTG8yx/44=
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com
 [209.85.216.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-340-Xjx99h5eNY-sjSqwq05kJg-1; Thu, 28 Nov 2019 15:25:31 -0500
Received: by mail-pj1-f70.google.com with SMTP id o4so13414169pjp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 12:25:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=iJyjrUFfcmHAhH3JG4K3fZfDXNCj7aMMhMdC/cxhP5Q=;
 b=KX+zeSYNr2ujgiJijc4E7Wxnvzrce8Ftt4+ejPPw9nROM04BrzWBeeCNGHAECbO4mc
 8HQsj4Xi5FkxX5evVSpeLjFr/ha+GsuioEkJH0savqSN46gbFhxZyv/6QLTDKk+E78Hj
 z0StGMG5LdPovRID7ilWBnYh35J3ldJzPEER+UA+xCIQYR/fPPxaxERW9ZbHptk08DaR
 jIxmnTayYUO/KtXFfSlJMuZ85HlmJEXfjg/IMEkde0EfiVsXoH7PevFyGp+epHLzOU73
 BHDvABWPRhIxMmsbOLYEDCN0bQoJm3scwLtObtzKXTHOO0IFA92GCQ2sLEIIBllRjNe/
 yYug==
X-Gm-Message-State: APjAAAUigpmZSZUiUDI0t9Ej7Nb67NDUByP4SnRZMukOS1g9aPLxGuQp
 QVBoqCp/xpdxLKVwsMmQZWpoakchvulIykodDRqfnJjr/zSdlBn1oS866Ug81r3yQfBVDqrOdUO
 Fn1uZChHj0jtNkQsz5mYgA3Oq3bkNKwwYYJo=
X-Received: by 2002:a62:e708:: with SMTP id s8mr55037353pfh.80.1574972730288; 
 Thu, 28 Nov 2019 12:25:30 -0800 (PST)
X-Google-Smtp-Source: APXvYqy8inKnmjJQ3jsyvDZArqOTWo5QGvdHM+KGH3wVsC6Qega0Cnv/bnbln+swwqa3RoTSLPhAdw==
X-Received: by 2002:a62:e708:: with SMTP id s8mr55037330pfh.80.1574972730046; 
 Thu, 28 Nov 2019 12:25:30 -0800 (PST)
Received: from localhost ([122.177.85.74])
 by smtp.gmail.com with ESMTPSA id v14sm21402742pfe.94.2019.11.28.12.25.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 28 Nov 2019 12:25:29 -0800 (PST)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v5 2/5] arm64/crash_core: Export TCR_EL1.T1SZ in vmcoreinfo
Date: Fri, 29 Nov 2019 01:55:13 +0530
Message-Id: <1574972716-25858-1-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
X-MC-Unique: Xjx99h5eNY-sjSqwq05kJg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_122533_918927_80ACBBD1 
X-CRM114-Status: GOOD (  17.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-doc@vger.kernel.org,
 Will Deacon <will@kernel.org>, bhsharma@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 James Morse <james.morse@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Anderson <anderson@redhat.com>, bhupesh.linux@gmail.com,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Steve Capper <steve.capper@arm.com>
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

I have sent out user-space patches for makedumpfile and crash-utility
to add features for obtaining vabits_actual value from TCR_EL1.T1SZ (see
[0] and [1]).

Akashi reported that he was able to use this patchset and the user-space
changes to get user-space working fine with the 52-bit kernel VA
changes (see [2]).

[0]. http://lists.infradead.org/pipermail/kexec/2019-November/023966.html
[1]. http://lists.infradead.org/pipermail/kexec/2019-November/024006.html
[2]. http://lists.infradead.org/pipermail/kexec/2019-November/023992.html

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
