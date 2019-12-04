Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B44D511380F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 00:21:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UJQBlJIGaJwp+e057WIKR6diRL0Cm5XeH0ekMc2fbBo=; b=AGS1AVCAt75Uhn
	qrAAbG7Ern/sPt6EiIr9qHIcfciJSkkzZALLk6wopnR5bmdrIFGw8JiBimSwHW8ZzejpGSQJm4lX7
	En8DOoH+h0MIMA+jDz7G8hp6bpqCmML67AHsor/+bmqfDY/ei3GgGMEyU1JLdqGC29ZjGjaQNaaFj
	YRqCdgxjTryXGIIYvjTqQTBhRNv6R1FvWx+um01KxxESJxJ4uVaw2ry5nmgQ7gl90xtj2MCVSvH+4
	/LKnqWyuXOlp9AhFpOBp5AHXdw9p3y78ztP1kD6LPzETu8Q8TTLwNH8z8M/xHKZVKXC2YQVVXO3W0
	8G/+JGkkfshhvXMpkzgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icdxL-00058y-2B; Wed, 04 Dec 2019 23:21:15 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icdxA-00057m-7d
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 23:21:05 +0000
Received: by mail-qv1-xf44.google.com with SMTP id z3so593630qvn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 15:21:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=eby1Z/q7U+7Sxm/O/Jl7zP2rKdfik8y03EjcrV9rvuY=;
 b=NkJEU/yt/blJhAPAwm0//b+ZWq1n7s4JlJ6JP+qdBGuTQCQuHFZ8PMWe00iEhl9sXR
 D5h+fsIE0OGIVs9vXL4gpNLeOVHliEVsqZGstR3wOREMlUTyHMBjBqiiJN9XSmUHGnl9
 E029DgxCUKX3rVs0qGMWaVjtplCdTxiZQYRP12zEURRSXHIzCN4n9ZW6ehybuzzr5UNJ
 Zl0SICIsfPNpjp6MCNV3XJOhgzPiqFDsK+MaqCJejfrOaTmcJDz3S6PSEcE5G1+/Jk4t
 F2m0xoYu1kjAU9N6m6iUSEwzBQ39xf3hLWime1T3P66/AhdOKcdyJZrg+K7Z5WCheUkf
 kIJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eby1Z/q7U+7Sxm/O/Jl7zP2rKdfik8y03EjcrV9rvuY=;
 b=uc3aVfH58Um1AMBaFtOV8kq2USfxtaQECmFKjDA3qqhfsdaCnCLv1JiLRAHsgKI/Pl
 Ec7b3BLdj9oJMiTIRLfFoI8qp15QR6/Vb7FzOUg1wuYlhl0iVu/jOG5adeAiseAfUdLK
 hEbtsGUVU2L4SFTI61tHxKzKmbghw4zrGkdc32+H2hpG5BPRoQIkRpoyKh/Ck/PWP/bB
 70fh6Tx4czGtoRK/LRk9HGKA7FUZg7pEWZDQBN+lBF/nr7vo4zY/9mctajzBtugTo+YG
 /ST7IipVVhiQHGSU4o5A79aQWvEfUNdKcsk+dAOQiLOugik8zqajstCYDd6UKoB0m0VF
 GDpg==
X-Gm-Message-State: APjAAAV+la2tCybytgB1EBhMJUpnKtalgarFwhdM1KTEmMAKRsTjjE6l
 QXGvcwCM5CWrhoakg48oWyq6Xg==
X-Google-Smtp-Source: APXvYqwCGhoOs0wEUWkqNpwRHUAKwjbY4ROZeLY1H9ddt2HeC0y/qK9F5ZFbRQ+FLH5XluAaaaKK8A==
X-Received: by 2002:a0c:ef91:: with SMTP id w17mr5033755qvr.202.1575501663211; 
 Wed, 04 Dec 2019 15:21:03 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id t38sm4667864qta.78.2019.12.04.15.21.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 15:21:02 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 linux-kernel@vger.kernel.org, catalin.marinas@arm.com, will@kernel.org,
 steve.capper@arm.com, linux-arm-kernel@lists.infradead.org, maz@kernel.org,
 james.morse@arm.com, vladimir.murzin@arm.com, mark.rutland@arm.com,
 tglx@linutronix.de, gregkh@linuxfoundation.org, allison@lohutok.net,
 info@metux.net, alexios.zavras@intel.com, sstabellini@kernel.org,
 boris.ostrovsky@oracle.com, jgross@suse.com, stefan@agner.ch,
 yamada.masahiro@socionext.com, xen-devel@lists.xenproject.org,
 linux@armlinux.org.uk, andrew.cooper3@citrix.com, julien@xen.org
Subject: [PATCH v4 1/6] arm/arm64/xen: hypercall.h add includes guards
Date: Wed,  4 Dec 2019 18:20:53 -0500
Message-Id: <20191204232058.2500117-2-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204232058.2500117-1-pasha.tatashin@soleen.com>
References: <20191204232058.2500117-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_152104_282456_47BB536D 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The arm and arm64 versions of hypercall.h are missing the include
guards. This is needed because C inlines for privcmd_call are going to
be added to the files.

Also fix a comment.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm/include/asm/assembler.h       | 2 +-
 arch/arm/include/asm/xen/hypercall.h   | 4 ++++
 arch/arm64/include/asm/xen/hypercall.h | 4 ++++
 include/xen/arm/hypercall.h            | 6 +++---
 4 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/arch/arm/include/asm/assembler.h b/arch/arm/include/asm/assembler.h
index 99929122dad7..8e9262a0f016 100644
--- a/arch/arm/include/asm/assembler.h
+++ b/arch/arm/include/asm/assembler.h
@@ -480,7 +480,7 @@ THUMB(	orr	\reg , \reg , #PSR_T_BIT	)
 	.macro	uaccess_disable, tmp, isb=1
 #ifdef CONFIG_CPU_SW_DOMAIN_PAN
 	/*
-	 * Whenever we re-enter userspace, the domains should always be
+	 * Whenever we re-enter kernel, the domains should always be
 	 * set appropriately.
 	 */
 	mov	\tmp, #DACR_UACCESS_DISABLE
diff --git a/arch/arm/include/asm/xen/hypercall.h b/arch/arm/include/asm/xen/hypercall.h
index 3522cbaed316..c6882bba5284 100644
--- a/arch/arm/include/asm/xen/hypercall.h
+++ b/arch/arm/include/asm/xen/hypercall.h
@@ -1 +1,5 @@
+#ifndef _ASM_ARM_XEN_HYPERCALL_H
+#define _ASM_ARM_XEN_HYPERCALL_H
 #include <xen/arm/hypercall.h>
+
+#endif /* _ASM_ARM_XEN_HYPERCALL_H */
diff --git a/arch/arm64/include/asm/xen/hypercall.h b/arch/arm64/include/asm/xen/hypercall.h
index 3522cbaed316..c3198f9ccd2e 100644
--- a/arch/arm64/include/asm/xen/hypercall.h
+++ b/arch/arm64/include/asm/xen/hypercall.h
@@ -1 +1,5 @@
+#ifndef _ASM_ARM64_XEN_HYPERCALL_H
+#define _ASM_ARM64_XEN_HYPERCALL_H
 #include <xen/arm/hypercall.h>
+
+#endif /* _ASM_ARM64_XEN_HYPERCALL_H */
diff --git a/include/xen/arm/hypercall.h b/include/xen/arm/hypercall.h
index b40485e54d80..babcc08af965 100644
--- a/include/xen/arm/hypercall.h
+++ b/include/xen/arm/hypercall.h
@@ -30,8 +30,8 @@
  * IN THE SOFTWARE.
  */
 
-#ifndef _ASM_ARM_XEN_HYPERCALL_H
-#define _ASM_ARM_XEN_HYPERCALL_H
+#ifndef _ARM_XEN_HYPERCALL_H
+#define _ARM_XEN_HYPERCALL_H
 
 #include <linux/bug.h>
 
@@ -88,4 +88,4 @@ MULTI_mmu_update(struct multicall_entry *mcl, struct mmu_update *req,
 	BUG();
 }
 
-#endif /* _ASM_ARM_XEN_HYPERCALL_H */
+#endif /* _ARM_XEN_HYPERCALL_H */
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
