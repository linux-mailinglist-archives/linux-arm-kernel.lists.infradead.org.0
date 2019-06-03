Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F4133BD8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 01:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kChFUzW6dHFqheDOOQksvRGOrU6Ipuf2lvsmiZChY2M=; b=PKv1sYrmPCwHRo+Z1NSlsug8l7
	KRjSuK1oFLwjQ1aqrrCWHjiUceAjWQl07Zh2/PmD7qMsph8Pnq7oV6Yp07eXNDexr9R1iLo/V6dQ6
	NUw2Co5awcXoh0X/6u0AUnyOwsilS49Ha4poLfO47PVzySzrl7BvlXzpbDJJObJw64hgHGQ33E9PI
	v0p0LHFU4GU7fy+XffdUkjewYWdNtvWCgZjxKyK/4HZ+274SSUAXFlAwL27gDuCzRG4Ym6y0Vtp2d
	iHXncLWiNnKyHzOI0CNZQIDZ+CP0dscOPFs+zDAGz+vbyZ7eAcyQ14UBLhmwBFtorJpm7NdlGPu7m
	fSZ+wxRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXwFX-0007VB-3C; Mon, 03 Jun 2019 23:20:19 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXwFE-0006Xv-9p
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 23:20:01 +0000
Received: by mail-pl1-x642.google.com with SMTP id g69so7554194plb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 16:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DA76H/bozL9s89efCzw79MTHBgMNQxOdRNDrML9aLgk=;
 b=tEC8Zapld27PhCE3RE8dwRauNzqNr/N9F3L8uJ53XsogbkSPMl0RMKixu5PsOmV5e7
 jJU5tIV0lx3C+7+aoTS4zLeRAd/bCTjhRu9/j6PsKK4zGhpcptpWAqzzlLeq3p2ToixR
 dxbPy8JLcxVBVBCsykThjni9BkyERzR/chQ7xyqNldB7jmfbjxa+QKQSWkIsP4RVyqhq
 qvMBBOiZcyCVjzoJmTVQEmjEmEEIDZaZrwsmQjAoHEvdA6+djjW8bXqtyrQgWlmbTAr3
 BEiWyas3DcSwvwJCEfl9BEfkWiOXshgWmiYRQZ+2v1LWcai55aubJQ7J+d5AriF4m/1i
 2Ihw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DA76H/bozL9s89efCzw79MTHBgMNQxOdRNDrML9aLgk=;
 b=TGq0tLmWUoJCkypZ3ZjOMHceZM6/7vAo05FTow11ZYBS+hCCn/pGTvBFOznE3pZjS0
 syhl1pLQWIqKoApIwGlUv8AlDp/i9jObMPumLwjT4mqHwe3sJlVS7F08VxLqj7XUlOh3
 xoq8/HhPGomwLJ26SHi7p2bj9A0cFzaY8TK2l1nOm9TeVVmRWZ02TUTPCdvKcPju7e+g
 8dDISUb8pvALiMSkiiPAHNtm+97bk0XRin/bCMgRNg3SiGaTxHVj1y4dqUFQt94PINSQ
 MDK0t6TrE42lV++Qo4rYRDFw0Ni02mXkFzOEqWneDfA7+HbyAvbd6bUv84TBOM0KXyqa
 KSuQ==
X-Gm-Message-State: APjAAAVNUpT4qWwqrScZ45cjvC0htKpVGVKQBEZZK1Ls850nNwe0azrU
 GXgRYas556FqAN+RMJlnzDMxABoU
X-Google-Smtp-Source: APXvYqwbjVTuVfxT29zpnh9h9ExmfjecYSOEcey70DwBVxstu9XpO1WQ17koX3hD8voBlBJUsfPBXQ==
X-Received: by 2002:a17:902:165:: with SMTP id
 92mr4875038plb.197.1559603999263; 
 Mon, 03 Jun 2019 16:19:59 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a64sm12666564pgc.53.2019.06.03.16.19.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 16:19:58 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/2] arm64: smp: Moved cpu_logical_map[] to smp.h
Date: Mon,  3 Jun 2019 16:18:29 -0700
Message-Id: <20190603231830.24129-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190603231830.24129-1-f.fainelli@gmail.com>
References: <20190603231830.24129-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_162000_342993_E1CD08C5 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>, rmk+kernel@armlinux.org.uk
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

asm/smp.h is included by linux/smp.h and some drivers, in particular
irqchip drivers can access cpu_logical_map[] in order to perform SMP
affinity tasks. Make arm64 consistent with other architectures here.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm64/include/asm/smp.h      | 6 ++++++
 arch/arm64/include/asm/smp_plat.h | 5 -----
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/include/asm/smp.h b/arch/arm64/include/asm/smp.h
index 18553f399e08..eae2d6c01262 100644
--- a/arch/arm64/include/asm/smp.h
+++ b/arch/arm64/include/asm/smp.h
@@ -53,6 +53,12 @@ DECLARE_PER_CPU_READ_MOSTLY(int, cpu_number);
  */
 #define raw_smp_processor_id() (*raw_cpu_ptr(&cpu_number))
 
+/*
+ * Logical CPU mapping.
+ */
+extern u64 __cpu_logical_map[NR_CPUS];
+#define cpu_logical_map(cpu)    __cpu_logical_map[cpu]
+
 struct seq_file;
 
 /*
diff --git a/arch/arm64/include/asm/smp_plat.h b/arch/arm64/include/asm/smp_plat.h
index af58dcdefb21..7a495403a18a 100644
--- a/arch/arm64/include/asm/smp_plat.h
+++ b/arch/arm64/include/asm/smp_plat.h
@@ -36,11 +36,6 @@ static inline u32 mpidr_hash_size(void)
 	return 1 << mpidr_hash.bits;
 }
 
-/*
- * Logical CPU mapping.
- */
-extern u64 __cpu_logical_map[NR_CPUS];
-#define cpu_logical_map(cpu)    __cpu_logical_map[cpu]
 /*
  * Retrieve logical cpu index corresponding to a given MPIDR.Aff*
  *  - mpidr: MPIDR.Aff* bits to be used for the look-up
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
