Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65377829ED
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 05:08:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rD2S0UKHkikMbnCs6w8V6pke7kNH0mFuP3iXkm1fDHI=; b=ai11/Q5vL591lB
	b+ugbclhgRJaYN+YUwaZZtfHRrKtB59zjzZ0+XR/O3OKz+hLs9HRySeV1IHWiFSNm9Bdov2MDIySE
	tLJQkA50X/b07Lva8cwqFrSwf59ny+O6R4jLNzDF5SXLLwvuCMDLD1EdevTF9qGRGnJ+ZVtBYpTyq
	xpOV/46n5O8B06hCmSlQIRXg19aytQUrVU4RQF1+b5qpuzugiT/DMzaovIbJTBcj0a4bjrzLThsj8
	MYUpurz/PT7Jgs0u6uSErPO7egNqcneUXHOWoClTDL3yLoqcCQmbyadHrE++PdWgrbhEqxy4fLvBr
	XXr1aJNNvKqfpmMCl1nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hupq3-0004UD-Uh; Tue, 06 Aug 2019 03:08:39 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huppb-000461-ML
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 03:08:12 +0000
Received: by mail-ua1-x941.google.com with SMTP id a97so33047924uaa.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 20:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Bs0lmDNxa1aAKQKN0MVTNnd8nYHoFzSTA2dziDK99ZE=;
 b=uvjciLg/2rMNF9ijkXRPobQpKgmfo/ydHMGgu4GxJKxFzJBwyrpN+RChv7QwZtutE8
 m5utMFeOfsgoMxA4fQI4Fnr/Cl3KkzU3WWz5UOFWPtZ+UkUM3yib9prf5EOBprUE5Y8M
 ixjEoe47akhAGY8Smy6lnzseKdVIyykZS4daWDvbtGw8f8sR8Vl6jJLwFq3EgRA0Is0d
 g0Qp0u8cY2uoPlS+Nd22AG3WdJKVq9JZEfWDYnMpo9y2RquGYd8/Db16dc+7QOr2v0Ec
 JcU/CWRn38fT7dHWq3K24h/KCRHLKwbQtmMCNwAe6fj5TKgEJz8cI7/elvVnMwLRugqX
 KosQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Bs0lmDNxa1aAKQKN0MVTNnd8nYHoFzSTA2dziDK99ZE=;
 b=R75ghRaTVjMm+BZxMJTmNPz5WWrB4sxCbdvKgr1e6a8bbwnHa0OF8RtmGR1gaKe3/V
 U9fIcp4VswBtt24C5zsVnnY9pKlUQiPeqwjbYP+kXdpJ12fbs6XTmRc1vDO2WqKoIAtW
 i7SCvzbRr/1wi8Rbm6Z0UkevqU2nSl6ftgT1MKrtghp8UeTAlnt6QJz+ox7JNZ3Y2B1a
 ynNPQuXgnBDC4oqi24Sd2tejen7r01+sSNHpqm/s/nitOzTEJd7ODW2rgXrZxTxnr2Cz
 WD1f2i13Ci8PlcWTiO7JDYZAeV46IfsirSVLlqAYw4euFAKRXXZt8ewrzjbe5yiZaafz
 ycfQ==
X-Gm-Message-State: APjAAAV495y/Csnc0VYwioJU+2qQl17J/sD9QH4h9QnwC8mRj5KRt9af
 +mZ+5TDynHM/Vj6rtc0mG0A=
X-Google-Smtp-Source: APXvYqz1jj9chZIr0Yf4E395LCJUYFXV1bMRm3+VXYW8Siypet9RS1vk/lBrCB7r6RHni4579BUOnA==
X-Received: by 2002:ab0:a1:: with SMTP id 30mr779825uaj.29.1565060890557;
 Mon, 05 Aug 2019 20:08:10 -0700 (PDT)
Received: from asus-S451LA.lan ([190.22.46.249])
 by smtp.gmail.com with ESMTPSA id v190sm22683156vkd.37.2019.08.05.20.08.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 20:08:10 -0700 (PDT)
From: Luis Araneda <luaraneda@gmail.com>
To: linux@armlinux.org.uk,
	michal.simek@xilinx.com
Subject: [PATCH 2/2] ARM: zynq: Use memcpy_toio instead of memcpy on smp
 bring-up
Date: Mon,  5 Aug 2019 23:07:18 -0400
Message-Id: <20190806030718.29048-3-luaraneda@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190806030718.29048-1-luaraneda@gmail.com>
References: <20190806030718.29048-1-luaraneda@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_200811_748013_A7255B86 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luaraneda[at]gmail.com)
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
Cc: Luis Araneda <luaraneda@gmail.com>, linux-arm-kernel@lists.infradead.org,
 stable@vger.kernel.org, linux-kernel@vger.kernel.org
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
 arch/arm/mach-zynq/platsmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-zynq/platsmp.c b/arch/arm/mach-zynq/platsmp.c
index 38728badabd4..a10085be9073 100644
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
