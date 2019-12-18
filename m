Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B07123B71
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 01:19:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=s4YSaCQFOwLrVjH8W2Ll+/zLxkm4Ofn0hfpUAYeSEVg=; b=pFo
	9Z9qs4GwWjKrOgk7TrlxnkdJLRCzGO6l/osebEdIPBjOZ/+Vy7YzXtPDEnRSa+eiJssFgzbX7ic/W
	05VXztegupAjON6/kRXFDOC7a6M4636sUxUGB/dqxQQv+aglJdElr6oBiaLPeYqHfuFnVUPbkIszt
	8vvYTpSUDtqNGPmU+VZIwJJroD8uDIXwz25OunBh62FkyYADGWJ09nEgVJY4vOcbMbgiAYovmVuCN
	U8Fa2fhdNQL4VQAT3qrzlC2CL48A8ssTgpVfanEehuWLpeBMXt2uopRbum1C4rM6xhc61qogx+iQc
	0qF51U2FkLFyz3gzLYgkQ4CNcQ9FJYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihN3a-0005oq-KL; Wed, 18 Dec 2019 00:19:14 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihN3P-0005oB-HJ
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 00:19:04 +0000
Received: by mail-pl1-x642.google.com with SMTP id d15so146075pll.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 16:19:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=oCKoHe1lxe0PuESdkrD15D9EeMySLR5I9RS5subxYv0=;
 b=OegfkyV7Z/WtDb+kzEq9Eg6X6wokHNhhjYvhBDnSMS2oW/lTMraChWNqKy+XbjcIIY
 2MfUEgry3rg6wb+bxA+6yoLR4OrGRhso5ZNYnT0lxtpapggxOTQz8KvUWxwKpYORe89i
 Jgt3l36325rdKDMHTTa0ALUkIi1bMVszC0+Ts0a4HAE98jJ4RCmJcKNOXdvDo436tpvl
 g9vVGNdoQCXeNgxwNCNZzu8xIgSt32rFWKtjcqKL4Hd/iYRsRi5a4fLrxjrK5LYWs11q
 9qCa4vihhgMh80xY1DQY9w2T5tN88/Y1+w2lQuvATVGqc9VumhJ2JRawYCIOqd+yK64I
 +SaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=oCKoHe1lxe0PuESdkrD15D9EeMySLR5I9RS5subxYv0=;
 b=kMwXeHDIhuDl0WQNJuPIXwEZUXHbF+AbXhcaxO9nZ47aeJUQ4sPZCrnQdB+3aI5qLy
 WwbnVyrJ9t6xvr8VFr4fv3n73icDTC3ilmK+qnmDTI+EcMp4N4Lz3JgvpdRNIc4Wc3mj
 znOiMspiNf6HpIjt4T34J6LXz83JYNeyNQ4mvbDB4S2oA6QNkFlSET9onwxDmybtV2Xf
 Ftko4+ZExPSrtnjOp87su26Ky+LATEYS8dfuHPu9sDL9ENQybl4f0/Ri5KrkP/XBG4mT
 iflZWAGwgVKiG0aNjcNNghRjK1q8RHbJ5i/QJdnResaZnyYxD+X0eXrbNHpr4S6mzEIH
 UItQ==
X-Gm-Message-State: APjAAAV+uXNmIFJLSq7pn6h3ZlinrbVSmTmmvljyPCpwR7Y77WMHXbcR
 eFcIQxYBctBq7/tu7MK4KyTYAg==
X-Google-Smtp-Source: APXvYqxB1waYmvRr3KkK8PGRDfUSYKoGNfyfaAZskT8PdRB1quQidke6t4GMeDoXYUzsHkF1aXKe1g==
X-Received: by 2002:a17:90a:e98d:: with SMTP id
 v13mr11895pjy.107.1576628342864; 
 Tue, 17 Dec 2019 16:19:02 -0800 (PST)
Received: from rip.lixom.net (99-152-116-91.lightspeed.sntcca.sbcglobal.net.
 [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id k190sm152197pga.73.2019.12.17.16.19.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Dec 2019 16:19:01 -0800 (PST)
From: Olof Johansson <olof@lixom.net>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH] ARM: mm: mark free_memmap as __init
Date: Tue, 17 Dec 2019 16:18:49 -0800
Message-Id: <20191218001849.41415-1-olof@lixom.net>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_161903_716281_595ED765 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Olof Johansson <olof@lixom.net>, patches@armlinux.co.uk,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As of commit ac7c3e4ff401 ("compiler: enable CONFIG_OPTIMIZE_INLINING
forcibly"), free_memmap() might not always be inlined, and thus is
triggering a section warning:

WARNING: vmlinux.o(.text.unlikely+0x904): Section mismatch in reference from the function free_memmap() to the function .meminit.text:memblock_free()

Mark it as __init, since the faller (free_unused_memmap) already is.

Fixes: ac7c3e4ff401 ("compiler: enable CONFIG_OPTIMIZE_INLINING forcibly")
Signed-off-by: Olof Johansson <olof@lixom.net>
---
KernelVersion: v5.5-rc2

 arch/arm/mm/init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mm/init.c b/arch/arm/mm/init.c
index 3ef204137e732..054be44d1cdb4 100644
--- a/arch/arm/mm/init.c
+++ b/arch/arm/mm/init.c
@@ -324,7 +324,7 @@ static inline void poison_init_mem(void *s, size_t count)
 		*p++ = 0xe7fddef0;
 }
 
-static inline void
+static inline void __init
 free_memmap(unsigned long start_pfn, unsigned long end_pfn)
 {
 	struct page *start_pg, *end_pg;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
