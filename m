Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D57E17A015
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 06:44:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1mDXbEwBa0xcTZcVUrbJUVnH2UAqCfqbxLFddf+LToA=; b=k15coMx/42qy1L
	pGZgj7jvvQsWO3XsxbXOQRvF2t7p8R3/QWOe/VXuclE3syuBQmgxx0+hH2JBVrADFPoQmRT8XUwep
	K/01j8C8CAYCgLVSQSqMpYV/TKg0DqZj9ugyW+Il5m/KHPhN3yknOevN5rkQM9HrQo0LlQ+G6Ec+Z
	ycLjYnej9eF+mbSlrsUPeYCqhEl2bWuDV1IzVTBQeZnQPjenstPONYxc6PBFqTE7Msg+umQ3ahCoz
	5nwH9nDOe4X6MFS9xpOq/SgSvuYaurs3fWF/laXUOE6PGNejdlFmDZ6Qg+HRDw5Q48jv+JAj/zsTc
	wlsaG0gETefY93dluuQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsJzx-0001A8-3F; Tue, 30 Jul 2019 04:44:29 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsJzn-00019n-PZ
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 04:44:21 +0000
Received: by mail-vk1-xa41.google.com with SMTP id w186so4116573vkd.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 21:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=d6rjIgo3Vi+suTjkC1h224KoPvKAJrv1+GATOVWvv+c=;
 b=b9qU2szS1N5oiCMNf2LCtIshtSE43S8VHtG1ncGc0M5oww14K731lyVUtLVpBmQKWE
 hzbAPThCAFOy0EWBlWYsxB8rNpS0UPOhot+SYXXr5yqT1tCbtjcCuYOjBcePHbC9rdQS
 G4XhGJ5oZaiuPcfNZQTuzyCoyVv3V0MMQHZyJAow31HnMCT+5DyNh+AktECRT8pGoXSW
 EI8PYmO1Jsz2dlefa61JtUdVZhmbVBdXeC5EhFeXu6PeyH2ZWWKWtjQXvIPRPju9Qgxk
 w/5klbqYApugKd6ZRbqLq14j0az9UW5FL3b7zzQEuE25wLjKSW+7zuMGu2M9HEPz3PAv
 QBoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=d6rjIgo3Vi+suTjkC1h224KoPvKAJrv1+GATOVWvv+c=;
 b=INsADkKz+y0h+VJeeBfHT0dPhORiWz5XLfYnh8TCIN/MtvgGMKo4b5TOKMzFIWp6VB
 5fg3EYQiSGlaqhrQPhbxjq+DIx9hTNSqCN3mTiFyPSl8+YhcSq8S+EUZFBH3JYCYxsEd
 bkevdPE5NqQGV9COG7cLLooC4hDwX5jT0wcA72ivMlOggm51seRtwAUrNdbcKxhkWJ/6
 5CLv59gilQDenS1uPouTKBy9QdEEKuCb2o9s3EEwxBXcskpGMWpJIDMPPynX8MRVlBKx
 pl9I1wJRzoAOgQ4u3ZIS93Qwl8Miu7MD0l1Mvz2ZScgvlrAyL01kdEwQGgLIM9uIX1tz
 Bw4A==
X-Gm-Message-State: APjAAAX1+HRpl/jiCkey14mkfq9ka6bHsxNbz51whOYZZbRXQQh/xfIZ
 lR5BSU8KGUpEcdGCXgIJCws=
X-Google-Smtp-Source: APXvYqw7o5XOlRVC1x5vjuCDZSNhKzcBq5UM33yBZVByZLEjGcAj/apcYqtE+eWCzuD/LcmWXaauYA==
X-Received: by 2002:a1f:2b07:: with SMTP id r7mr44503723vkr.65.1564461857826; 
 Mon, 29 Jul 2019 21:44:17 -0700 (PDT)
Received: from asus-S451LA.lan ([190.22.43.156])
 by smtp.gmail.com with ESMTPSA id f14sm15103387vsk.10.2019.07.29.21.44.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 21:44:17 -0700 (PDT)
From: Luis Araneda <luaraneda@gmail.com>
To: linux@armlinux.org.uk,
	michal.simek@xilinx.com
Subject: [RFC PATCH] ARM: zynq: Use memcpy_toio instead of memcpy on smp
 bring-up
Date: Tue, 30 Jul 2019 00:43:26 -0400
Message-Id: <20190730044326.1805-1-luaraneda@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_214419_857228_4C3D7706 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luaraneda[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Luis Araneda <luaraneda@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes a kernel panic (read overflow) on memcpy when
FORTIFY_SOURCE is enabled.

The computed size of memcpy args are:
- p_size (dst): 4294967295 = (size_t) -1
- q_size (src): 1
- size (len): 8

Additionally, the memory is marked as __iomem, so one of
the memcpy_* functions should be used for read/write

Signed-off-by: Luis Araneda <luaraneda@gmail.com>
---

For anyone trying to reproduce / debug this, it panics
before the console has any output.
I used JTAG to find the panic, but I had to comment-out
the call to "zynq_slcr_cpu_stop" as it stops the JTAG
interface and the connection is dropped, at least with OpenOCD.

I run-tested this on a Digilent Zybo Z7 board
---
 arch/arm/mach-zynq/platsmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-zynq/platsmp.c b/arch/arm/mach-zynq/platsmp.c
index a7cfe07156f4..407abade7336 100644
--- a/arch/arm/mach-zynq/platsmp.c
+++ b/arch/arm/mach-zynq/platsmp.c
@@ -57,7 +57,7 @@ int zynq_cpun_start(u32 address, int cpu)
 			* 0x4: Jump by mov instruction
 			* 0x8: Jumping address
 			*/
-			memcpy((__force void *)zero, &zynq_secondary_trampoline,
+			memcpy_toio(zero, &zynq_secondary_trampoline,
 							trampoline_size);
 			writel(address, zero + trampoline_size);
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
