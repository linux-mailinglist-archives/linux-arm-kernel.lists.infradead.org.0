Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DA512EB17
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 22:14:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CTpOwIzh8YaPb3Is+TMEV7Fz9Aycxr/2aBkZ4SXCZoY=; b=h1rMFDrCnEgQKE
	NPkcu5PoLOoPbNzlb/NkfD1yf1sjOHa4GvnUndQDfllHYAQXr56BZcyoK0gcGoM+y8YoNEMkh+qPM
	p6qePwo8mzjk1Cr6sx7M2GAUgPRCBhe6AiF8Gd0qpbBWy78vXN8P8VZBU3OK0xONKVUd/L3ctBTE4
	LJ+X1ZrURnthQK42AuS2pTU8y2l5vskFa0erFbiaAaL0obf25qi+F1IKGvwu2k5vZLTQ2Sjuc0Lta
	+0bTbCvzngb3ZOcoK5uuzZpnmvac3F5OzsejfnAPxNVOrxtLXiEW3fj/Fu2RU/FwPzWsQblHNtQeO
	j57sy5G+BIzLj5AAn0zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in7nZ-0004Jb-2y; Thu, 02 Jan 2020 21:14:29 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in7nA-00049r-EW
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 21:14:07 +0000
Received: by mail-qt1-x842.google.com with SMTP id t3so35538994qtr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 13:14:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=sLfto7pDtwtBpFy7vHWfBkT+4MM0vP3E4VHWVzt8Ru4=;
 b=VXzjqIBLu3/HymaztMnJa4bgYGRIKjuKvwh/j9RPNIJWjpGXOEr1VmGNPSBxUDjp51
 jCJlFgiNVRUfJZn6U40n9Z0YUEOc48bycD7pBbYa3hWgMnBJFiDGV2Zt4MkJ7YLqEtwM
 wGod6fo6QvA9UzKjlu2OU1A8lBDFiz0GoHozfSABoVdIzYWL89usU6RoBoA7YQDG+qny
 vXj8qD2XmnZ493Dr1R7rUb8bOQttoaqcAZD1nEYLr40Axq9CupzdqJcr6CALslZgu0W+
 UGFrW3BmiMeOFLTiiQx1pNqrm7K+5BxUfVnvg1KFLiEbEZnx/1ujngCGiaofoUXqOJKY
 8k5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=sLfto7pDtwtBpFy7vHWfBkT+4MM0vP3E4VHWVzt8Ru4=;
 b=PwBB6siBmjxR5I9ESc3waooVpkJeWyI4GdFbGyWOdeMS+Kdr2j4/O+eVJLqEGXPfOL
 /AwZ0BSouBXtOQp7ElQH7fB7ZyyAJdhPwu+AemdjSzidS0dNS/dfTExQuygFrpCZyCON
 VtTXmruxOGoBnyYLaDYAiPfA3Cl2Q0wIiIYbc5/ivTrnQsAoNqxCiIvfkUhopkaKuOd8
 MHnwyJTohuQrIjo6E9IBmVTIq86K3BMTTogud1sAo9eRNpYGDRIh+vxPZVLjwqsnzNK5
 TF0Rq4Wp/K1jeKLPE8Rrv6Cq7b1JBY0Wcq1VpNn75FWkobLVJ7gMntpu2RaHPebCIU0L
 c+qw==
X-Gm-Message-State: APjAAAWG5U+pSiz8/gtUbD36Z619SyV/1ac5lmLzb1H9hQyZ2NLhVfx4
 DulYj6GWInK1JAfd3hfDHwMdbg==
X-Google-Smtp-Source: APXvYqxfIYiffLt+0sAKnDiS1/f+cfl6AxYc1/2VA/kOzDQqWA8cYvIwfRewT5+nHZ3IdtFcW1T0QA==
X-Received: by 2002:ac8:5159:: with SMTP id h25mr62711218qtn.249.1577999642118; 
 Thu, 02 Jan 2020 13:14:02 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id f97sm17384185qtb.18.2020.01.02.13.14.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jan 2020 13:14:01 -0800 (PST)
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
Subject: [PATCH v5 1/6] arm/arm64/xen: hypercall.h add includes guards
Date: Thu,  2 Jan 2020 16:13:52 -0500
Message-Id: <20200102211357.8042-2-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200102211357.8042-1-pasha.tatashin@soleen.com>
References: <20200102211357.8042-1-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_131404_494696_6BE22923 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The arm and arm64 versions of hypercall.h are missing the include
guards. This is needed because C inlines for privcmd_call are going to
be added to the files.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Reviewed-by: Julien Grall <julien@xen.org>
---
 arch/arm/include/asm/xen/hypercall.h   | 4 ++++
 arch/arm64/include/asm/xen/hypercall.h | 4 ++++
 include/xen/arm/hypercall.h            | 6 +++---
 3 files changed, 11 insertions(+), 3 deletions(-)

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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
