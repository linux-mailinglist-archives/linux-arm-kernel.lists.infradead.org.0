Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CC9DFB80
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 04:13:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5jFklWjlHYFlppP1AAXWuDI3QUU5Xn6pkCo66GolzWM=; b=SnXIwCnoCCIxgZ
	7c9vrZnRPAfhd4+RPUn/YTC6L+6RbEZVdeIjnHY1nFstMfseFVCR8WvkcV+gknTCbfofk6VDsC+t/
	ddtG5O6aJY4C0Jiz/AXCb2fHMYMx/E73OuCE0kboj/vKzIAk7H0S7j0QjE9OBq/4a2SZqQm7Oq2Qu
	ecgZ6RE4dpQpV5PZSMZ617JpW5OzEEYO239F17Eb09izfNnBexMVhibfqEHO8l6FBk4LA6i8jm9Bj
	vRwU8/LtVBe0RSYXYjfZWQVMzRLrh8SIAz8LPGCQ0vDERUAHx8ypS4ccH3MgeHeZdH61LgJoydNyd
	TpfqJxTU2SLJsmN7SyDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMjg6-0003K0-ST; Tue, 22 Oct 2019 02:13:42 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMjU7-0006b4-EJ
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 02:01:21 +0000
Received: by mail-pf1-x443.google.com with SMTP id y22so9623085pfr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 19:01:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KAC+brufPKq2+tqUO4ba7q3MvH/zKX9O7o1GI9LqKE8=;
 b=cILaO31FAAs9ldOUNhALy73eGt5WWkIE9o2VjsMEfYt7dzLB4ihyWFym3QpAwmO2Ze
 zsl6NOTFDAR0gtRYekfxovAnC8gN2hUqYQq6niIfuntpGcxjdwB0kwpvppDpZCYg12Ke
 5q+Ty8HrEQ5SMOjJ9WlGQxSYdjA58iwczsgP38dnVxkrU1VbJlCgObRBXzLvunQkEHzJ
 9u44RlnxohYZFK0KVjl7wVfZdAASlPE+WCtVyyLrlTEkrDSCsptSVQIw48xHU1VIwWYW
 SsfnUMcrCV63ekXX8ueWZ8CmOgaDOEgVud6aPTJaG8OWSBsIFs6nMhQUNirZE6ogf8qh
 nkvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KAC+brufPKq2+tqUO4ba7q3MvH/zKX9O7o1GI9LqKE8=;
 b=WJQmUEp3WULyRKeEGvvlN0oxkyAdmh0ipqQLQsPZE/3F8hglEyv3CaisuJ30TsgiKa
 Goa3A0FoPbHe5tG4rS7aAMmQGHyMMxNxlHWZ3cvDR8GkSnd6lskOrfAhjyLuNLHX8kOj
 UlnU1XPBG3jH+EfNmeZTkvCazDJphJFuQaOQw6/+bGES9tHYRQ9xzO9OLcJYIY/p6byR
 uxGTgWNnnq5RwIIDCv60goVvfIhHq3gLelcWOjDsuMPRqzHnHBXiM3UpDxuW6vVZV2OQ
 K65cspU4xsw2XvKjOt+jW3+x3m4pCwe2OxbAgQg447MB8XJPv1I5bbaiIrPZhnHbsy91
 XL2w==
X-Gm-Message-State: APjAAAUZ2WbcpL3aQOKr3i7HNNy2XS7b8reT8ZQCWWSVOM6lmAlZ4+iV
 JJTBaOB+O0WEZ7ZaeaMRUD4WPNoG0EzTNQ==
X-Google-Smtp-Source: APXvYqx1ZlfcYPH4vjIukPctDoUIIavsaKtfhEpW96bMPV2+ehxJwKv1ccUQIk4e5TAceBZhYqO8Tw==
X-Received: by 2002:a63:4d0d:: with SMTP id a13mr942206pgb.451.1571709677893; 
 Mon, 21 Oct 2019 19:01:17 -0700 (PDT)
Received: from localhost.localdomain
 (99-152-116-91.lightspeed.sntcca.sbcglobal.net. [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id f17sm25462833pgd.8.2019.10.21.19.01.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Oct 2019 19:01:16 -0700 (PDT)
From: Olof Johansson <olof@lixom.net>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] soc: mmp: guard include of asm/cputype.h with CONFIG_ARM{, 64}
Date: Mon, 21 Oct 2019 18:56:58 -0700
Message-Id: <20191022015658.14624-1-olof@lixom.net>
X-Mailer: git-send-email 2.22.GIT
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_190119_593015_CF741723 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Olof Johansson <olof@lixom.net>, Lubomir Rintel <lkundrak@v3.sk>,
 soc@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since this driver is enabled for COMPILE_TEST, it avoids build error
on x86 allmodconfig:

In file included from /build/drivers/phy/marvell/phy-mmp3-usb.c:12:
/build/include/linux/soc/mmp/cputype.h:5:10: fatal error: asm/cputype.h: No such file or directory

Signed-off-by: Olof Johansson <olof@lixom.net>
---

Lubomir, I've applied this on top of your branches already. Posting
for awareness.

 include/linux/soc/mmp/cputype.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/soc/mmp/cputype.h b/include/linux/soc/mmp/cputype.h
index c3ec88983e94..221790761e8e 100644
--- a/include/linux/soc/mmp/cputype.h
+++ b/include/linux/soc/mmp/cputype.h
@@ -2,7 +2,9 @@
 #ifndef __ASM_MACH_CPUTYPE_H
 #define __ASM_MACH_CPUTYPE_H
 
+#if defined(CONFIG_ARM) || defined(CONFIG_ARM64)
 #include <asm/cputype.h>
+#endif
 
 /*
  *  CPU   Stepping   CPU_ID      CHIP_ID
-- 
2.22.GIT


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
