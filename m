Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE06106A4E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:33:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D6AHGLSgx9RQdV9t8No5WxDumeHX22F9yCEWeGV1zoA=; b=G3x0CHx7MGxJiH
	QFoPm7vmgILRYr6u8ZM6maflnQB/V04p6E90KddW3ICVPUI8iUjLY22fXFfbDTCL6YiMoOQz1m9UM
	C2iPGuRQGIBUqSmrAJhsnsnh1xsib6eSTsdZK90wwn453cfnVu958sOONKtqtWjZOIrZB7oDKfsPy
	LHmsYmd7XfzA3F/44IeUDvmwN8XsYYEbicT3KnrGNjHcqOhg5oZjADkyNUTD9GDY4CMbfqEEsJ/QK
	4P60MOw6/YneRAn2bTwDcqI7RlC4+lI5nrMF+8T/00RAU0cbSO0WN/7OESGco8dH81GAQZCHBd5Te
	i40qWk89h1Hr3y7G6hgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6GA-0000X7-Bx; Fri, 22 Nov 2019 10:33:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6Fy-0000WO-Hm
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 10:33:43 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C02720708;
 Fri, 22 Nov 2019 10:33:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574418821;
 bh=0K5Le4/yUVvQ+7LVnDH2eIxwNTpwnAm+e6EkDjNqOyY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FwZjmDhqYV+rgw2kcZLQWnPHu+66eFQ35Z27AbL3SsoGImpjiy2EXlxe6h5tlp/JP
 eIzSqJ+eKbNd6GhpWLOCtL4EBPE1u2Yb/a+fWbz8/J1WrRaEjj4bP81hh10cnBZ9Af
 4nK1P7o3QSq0uJcG78mjZfk8iSyN/8eEOuRfAdrE=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4.4 062/159] libfdt: Ensure INT_MAX is defined in libfdt_env.h
Date: Fri, 22 Nov 2019 11:27:33 +0100
Message-Id: <20191122100752.929251532@linuxfoundation.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191122100704.194776704@linuxfoundation.org>
References: <20191122100704.194776704@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_023342_610028_290651C2 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, Rob Herring <robh@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Russell King <linux@armlinux.org.uk>,
 stable@vger.kernel.org, Paul Mackerras <paulus@samba.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rob Herring <robh@kernel.org>

[ Upstream commit 53dd9dce6979bc54d64a3a09a2fb20187a025be7 ]

The next update of libfdt has a new dependency on INT_MAX. Update the
instances of libfdt_env.h in the kernel to either include the necessary
header with the definition or define it locally.

Cc: Russell King <linux@armlinux.org.uk>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linuxppc-dev@lists.ozlabs.org
Signed-off-by: Rob Herring <robh@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/compressed/libfdt_env.h | 2 ++
 arch/powerpc/boot/libfdt_env.h        | 2 ++
 include/linux/libfdt_env.h            | 1 +
 3 files changed, 5 insertions(+)

diff --git a/arch/arm/boot/compressed/libfdt_env.h b/arch/arm/boot/compressed/libfdt_env.h
index 17ae0f3efac8e..005bf4ff1b4cb 100644
--- a/arch/arm/boot/compressed/libfdt_env.h
+++ b/arch/arm/boot/compressed/libfdt_env.h
@@ -5,6 +5,8 @@
 #include <linux/string.h>
 #include <asm/byteorder.h>
 
+#define INT_MAX			((int)(~0U>>1))
+
 typedef __be16 fdt16_t;
 typedef __be32 fdt32_t;
 typedef __be64 fdt64_t;
diff --git a/arch/powerpc/boot/libfdt_env.h b/arch/powerpc/boot/libfdt_env.h
index 7e3789ea396b8..0b3db6322c793 100644
--- a/arch/powerpc/boot/libfdt_env.h
+++ b/arch/powerpc/boot/libfdt_env.h
@@ -4,6 +4,8 @@
 #include <types.h>
 #include <string.h>
 
+#define INT_MAX			((int)(~0U>>1))
+
 #include "of.h"
 
 typedef u32 uint32_t;
diff --git a/include/linux/libfdt_env.h b/include/linux/libfdt_env.h
index 2a663c6bb4285..8850e243c9406 100644
--- a/include/linux/libfdt_env.h
+++ b/include/linux/libfdt_env.h
@@ -1,6 +1,7 @@
 #ifndef _LIBFDT_ENV_H
 #define _LIBFDT_ENV_H
 
+#include <linux/kernel.h>	/* For INT_MAX */
 #include <linux/string.h>
 
 #include <asm/byteorder.h>
-- 
2.20.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
