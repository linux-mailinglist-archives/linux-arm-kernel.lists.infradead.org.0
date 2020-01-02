Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7EDF12E949
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 18:24:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eiIVDy0RsOpOGl3LKr4zPrfa9rweQUbjoBK807bD42k=; b=OI1+z/Qihze4Li
	rlXBO+cDILl4Q36q2n0u5GBHk2ZbVYjvix3mmaXNDm3VX/18oBJsGFXhvtAvlLBOEiZnzGESWbB9V
	J8q4hYeGwyTSi5lkUXM78NyZmejpIBu6STzUx0mxUrJHln3bvidA1PTLXUtAdWvP5mFI0mpQcMQdl
	5QOpTp4KV0uynASf/xxOALRm/Jw8atALtVOSBsgxcdvwPkXNU6LTm+W4Ok0j7/xPSAZsMiJh8XBCV
	WZcamrdBUk7AzYBSCKzxO6uTQl3bV3B6cDISbcfZbcnx601noacHr/sDe7JcLhw+D9MWqNaJG5ky+
	HQ/eoHHWa7n4No2haX8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in4Cy-0007f1-VK; Thu, 02 Jan 2020 17:24:28 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in4Cp-0007Zz-Cp
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 17:24:20 +0000
Received: by mail-wm1-x343.google.com with SMTP id c127so5356832wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 09:24:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=U9wjKYaQcIlsbYXPy/YsIaQFJ4xpalfLis5wZruxKtw=;
 b=P3gsS/ZAFO4rR24+Almp/rb4kOrZetEaJ7F3U+iU/txuqOLkvrKTmX3vXQOyetQ2sN
 ytCC6zluK1xDIIaQ4NaCeZLVVjXngHX47ubcjDBzEyAU0VHX48lBXTHyVpBXfrcCQPhT
 wYcuc34lFvhjidePvkcjZ1eErTyb+hZI9Wv6/r0OefF0+LQ8JNEZsk6ZG1WY7l98WMfD
 aULsc0wZ375rCRHWpvTS0w724g597YIeyaO1i02bo+n7KBUj4FG8GpIeV10hXByouG6G
 OWPrOdrk+PAzkXQwaFIBpCZMMkbkW0IS1S/ArHY+lcK5T4nUaUFrWJF28YzmhzqWjnr5
 VUmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=U9wjKYaQcIlsbYXPy/YsIaQFJ4xpalfLis5wZruxKtw=;
 b=TvAUGGYGR6vmNZMcJSXiDZ+Nv2t8LkHOqasXhebG6SG6TxcBLrGiruN86WWPJRlEKN
 KIQVf3MG1Xsy8RrmoQC5AJqqINcXF+ACH2uQAzfjjtdTA+udAixUjZn6/qBEkhRgpgM9
 gg7JmlIG1H9BAJDBfqmwAeJX9Ay3Of1vQ5c6TpCvdIIUyuVbtWb67ouz0hT9Hjmn07WW
 EeItmMdDdwFZKvHhtgWakPpgL/v778d2hf9GMLHNbsUmvEFr6SX94Lh4mD3flYTKWfKA
 VEHRtlvx3quPaPM7I4ZogsC/s7nHK8LvtJI900TDS3zI57pZAxIB2XVfGtnOLjc9j9XQ
 orcA==
X-Gm-Message-State: APjAAAWl/oUkuky2Y9+y86Nq3imfeztCLYQHFchKVBHQ4DxaptmcAZuW
 pl4vtyBIk6Imp/npUW3ZU/VntBrNqYu6/a3O
X-Google-Smtp-Source: APXvYqxMmMOtyKlgTiqfTvjBJc9+1aotTufCtLN2iSJ+lkIsQeXmdCm7NZR/v45FI2J6XlEBoj6ZDQ==
X-Received: by 2002:a1c:4907:: with SMTP id w7mr14872299wma.106.1577985857314; 
 Thu, 02 Jan 2020 09:24:17 -0800 (PST)
Received: from amanieu-laptop.home ([2a01:cb19:8051:6200:3fe7:84:7f3:e713])
 by smtp.gmail.com with ESMTPSA id z21sm9480328wml.5.2020.01.02.09.24.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jan 2020 09:24:16 -0800 (PST)
From: Amanieu d'Antras <amanieu@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/7] arm64: Move __ARCH_WANT_SYS_CLONE3 definition to uapi
 headers
Date: Thu,  2 Jan 2020 18:24:07 +0100
Message-Id: <20200102172413.654385-2-amanieu@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200102172413.654385-1-amanieu@gmail.com>
References: <20200102172413.654385-1-amanieu@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_092419_462793_682318A8 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (amanieu[at]gmail.com)
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
Cc: linux-arm-kernel@lists.infradead.org, Amanieu d'Antras <amanieu@gmail.com>,
 stable@vger.kernel.org, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Previously this was only defined in the internal headers which
resulted in __NR_clone3 not being defined in the user headers.

Signed-off-by: Amanieu d'Antras <amanieu@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: <stable@vger.kernel.org> # 5.3.x
---
 arch/arm64/include/asm/unistd.h      | 1 -
 arch/arm64/include/uapi/asm/unistd.h | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/unistd.h b/arch/arm64/include/asm/unistd.h
index 2629a68b8724..5af82587909e 100644
--- a/arch/arm64/include/asm/unistd.h
+++ b/arch/arm64/include/asm/unistd.h
@@ -42,7 +42,6 @@
 #endif
 
 #define __ARCH_WANT_SYS_CLONE
-#define __ARCH_WANT_SYS_CLONE3
 
 #ifndef __COMPAT_SYSCALL_NR
 #include <uapi/asm/unistd.h>
diff --git a/arch/arm64/include/uapi/asm/unistd.h b/arch/arm64/include/uapi/asm/unistd.h
index 4703d218663a..f83a70e07df8 100644
--- a/arch/arm64/include/uapi/asm/unistd.h
+++ b/arch/arm64/include/uapi/asm/unistd.h
@@ -19,5 +19,6 @@
 #define __ARCH_WANT_NEW_STAT
 #define __ARCH_WANT_SET_GET_RLIMIT
 #define __ARCH_WANT_TIME32_SYSCALLS
+#define __ARCH_WANT_SYS_CLONE3
 
 #include <asm-generic/unistd.h>
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
