Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC99135D9B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:06:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3YPFJeBw9FyRktMafsBRPmwFtgJmUX/l4e0+NPfg3o=; b=AITCu1aXu+wQkN
	3YPvYgHU9/eYB97H4rvyeDgpkHWwV9ge1KhMnyswk1X0mW8+foSCaUJodaPmt9zvhCnPGNMh2Wzlt
	gpiM/HR5Ud6NHk38peejj8DDMYctrs8YfYDIowusuJDvK9b6IIV3Ry1CtSlpOFA8/6x8m4w1n0Mq+
	qqhC5M5F2PZyWYfIuu+BamJOqNHaNa3Mm2cb3O2IVWZNwVL1Y0+nyKJVkkeCHsb9+die5WpvpOWub
	GY7HobB5/xJfC7XKMdvo9v45oMZp/Jgw5lYsXVFS7x5B8pCHYT6OTh27BOCQ0hL45R94gB4uypJhx
	An74pOho7Q5Hjb4hXgZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaKc-00085r-Nj; Thu, 09 Jan 2020 16:06:46 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaIP-00053o-Nn
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:04:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585868;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3LYqgzhBPGm06NyErpqYh7YUMX1S4FFE51j/nLN5Etk=;
 b=eiKgAzHwopkdLjoneXMJYye4PjBvbmV2rwpr6hE3Ux/GpQ6q771JqdgkitC0y76iB+OkIQ
 1UNQKXQpVyzoSLS7s1RZRTm+GdZqrlRny6ZdLquc1raFx5Suaj6DkYXzjdxx0t31plix5f
 zg0rbhzzzoB7uVjbV9cgxQx8mYt+jiw=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-204-uxxWnmz2ObKoRlQnCKS6XA-1; Thu, 09 Jan 2020 11:04:27 -0500
Received: by mail-wr1-f69.google.com with SMTP id u18so3041765wrn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:04:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bWQrA7VCFyRmkR4P5YmsvhynTE3rA5d5XHSqEPaJkPo=;
 b=Gj8eGxLRW2SMxbsJL0xBzLNea352HDqXOAoyds+K6Zd/pOKTLkHwsN0/ARF36/NKPd
 XwBj4LAKG/UDpPg/6UF0MbiDLKL1AO6MUQyOtQGLuEX8zAQkC6thVNc7pOfuwoLOVnmB
 +LB2ippLxD457jIvcfGGTNBdnfIF7KonFq/fH5AqrlaYm/VeFPW85Qa+9Sn+0mb0uX2e
 QY6xhnq5tG78BY4l/UUhlkZt4vyePAElmDH/C0B8EgXkKjQYpkiPwuykscJ6iHZKNnd/
 sIKZNzO2MUX3W7aNcsGGqcP9Lh+rqhAY9gq3O4GEJ8kdMGm/ACTEP571MTggbPilb/DF
 L0aA==
X-Gm-Message-State: APjAAAVRtzrOSYIzWThdEBK0h8cmyq5RYdI81UEAqVuOYgMQln5x7SH2
 y4UhtJL7bFUd5ePH7hyo1Fp5rNUPXVhVUjZ62eMcMJcJxaiuyfNNWzvA2N4j86ehQLuq4/svd7g
 fOSkhLu12dOwCt1W6t/2n+ahMR2QiiCkeTc0=
X-Received: by 2002:adf:8b4f:: with SMTP id v15mr11990368wra.231.1578585866198; 
 Thu, 09 Jan 2020 08:04:26 -0800 (PST)
X-Google-Smtp-Source: APXvYqyRBNHddmXJHExrgBfiG3rOVNGpjzR688ErWpsppuCbMLL/G6HOJYCSxBlJEZgOnpRtPnxIbA==
X-Received: by 2002:adf:8b4f:: with SMTP id v15mr11990334wra.231.1578585865969; 
 Thu, 09 Jan 2020 08:04:25 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id b17sm8615898wrp.49.2020.01.09.08.04.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:04:25 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 10/57] objtool: Split generic and arch specific CFI
 definitions
Date: Thu,  9 Jan 2020 16:02:13 +0000
Message-Id: <20200109160300.26150-11-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: uxxWnmz2ObKoRlQnCKS6XA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080429_852917_E81B9D61 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Julien Thierry <jthierry@redhat.com>, peterz@infradead.org,
 catalin.marinas@arm.com, raphael.gault@arm.com, jpoimboe@redhat.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some CFI definitions used by generic objtool code have no reason to vary
from one architecture to another. Move those definition to generic code
and keep a separate per arch header to provide architecture specific CFI
definitions.

Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch/x86/include/cfi_regs.h  | 25 ++++++++++++++++++++++
 tools/objtool/{arch/x86/include => }/cfi.h | 21 ++----------------
 2 files changed, 27 insertions(+), 19 deletions(-)
 create mode 100644 tools/objtool/arch/x86/include/cfi_regs.h
 rename tools/objtool/{arch/x86/include => }/cfi.h (54%)

diff --git a/tools/objtool/arch/x86/include/cfi_regs.h b/tools/objtool/arch/x86/include/cfi_regs.h
new file mode 100644
index 000000000000..79bc517efba8
--- /dev/null
+++ b/tools/objtool/arch/x86/include/cfi_regs.h
@@ -0,0 +1,25 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef _OBJTOOL_CFI_REGS_H
+#define _OBJTOOL_CFI_REGS_H
+
+#define CFI_AX			0
+#define CFI_DX			1
+#define CFI_CX			2
+#define CFI_BX			3
+#define CFI_SI			4
+#define CFI_DI			5
+#define CFI_BP			6
+#define CFI_SP			7
+#define CFI_R8			8
+#define CFI_R9			9
+#define CFI_R10			10
+#define CFI_R11			11
+#define CFI_R12			12
+#define CFI_R13			13
+#define CFI_R14			14
+#define CFI_R15			15
+#define CFI_RA			16
+#define CFI_NUM_REGS		17
+
+#endif /* _OBJTOOL_CFI_REGS_H */
diff --git a/tools/objtool/arch/x86/include/cfi.h b/tools/objtool/cfi.h
similarity index 54%
rename from tools/objtool/arch/x86/include/cfi.h
rename to tools/objtool/cfi.h
index 4427bf8ed686..1a3e7b807994 100644
--- a/tools/objtool/arch/x86/include/cfi.h
+++ b/tools/objtool/cfi.h
@@ -6,30 +6,13 @@
 #ifndef _OBJTOOL_CFI_H
 #define _OBJTOOL_CFI_H
 
+#include "cfi_regs.h"
+
 #define CFI_UNDEFINED		-1
 #define CFI_CFA			-2
 #define CFI_SP_INDIRECT		-3
 #define CFI_BP_INDIRECT		-4
 
-#define CFI_AX			0
-#define CFI_DX			1
-#define CFI_CX			2
-#define CFI_BX			3
-#define CFI_SI			4
-#define CFI_DI			5
-#define CFI_BP			6
-#define CFI_SP			7
-#define CFI_R8			8
-#define CFI_R9			9
-#define CFI_R10			10
-#define CFI_R11			11
-#define CFI_R12			12
-#define CFI_R13			13
-#define CFI_R14			14
-#define CFI_R15			15
-#define CFI_RA			16
-#define CFI_NUM_REGS		17
-
 struct cfi_reg {
 	int base;
 	int offset;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
