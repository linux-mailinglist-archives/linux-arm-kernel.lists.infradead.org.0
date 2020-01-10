Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB1E137005
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 15:51:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dYa5mVJacHPh1h7oAoDsRxYUenmroayPoeuYzixRhBw=; b=MBShEWZ80kNOmg
	64oJd2nLUuY4YuAvA/GOXWlBix99g0YVzHqASitpkxfJXdAwGItsP9Ae+ZCya+BTpfgFeI7fchDrU
	WD7g40cl+zcJsPULpP6S81CKl4dZfuJRwvtwzVPXMMMBm2HZIGc7UaW8a257Yq/lgy5AMhB+l63jQ
	/vix3RRTcRajx2XBVZ2KxYJryFIOj90i5mz81uUyUhbeboSDC2GozjOgyICGT9EgeGYe0mJhisKPF
	Wict9McaLCi2SVQ/pzUrJsoQjo2HBK/ga9Mwe3/Wxs3md+zxoLwPWHsBRf12R3ysNHXGs5LZPkvmn
	41FA+beuNvQjBlShI68g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipvdW-0002vk-7i; Fri, 10 Jan 2020 14:51:42 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipvd9-0002lF-Ii
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 14:51:21 +0000
Received: by mail-qt1-x842.google.com with SMTP id k40so2094312qtk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 06:51:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dP+yKJgC1PvcZ6U9Dq2dx4CeTIqnBT2BpMb+Wm9xBlI=;
 b=XvXJIL509aqMK2SYSrcuBHs3ubP49aSVcCcSnaLIVODThTeP9V7pW0nppWBOxcYAFa
 bjB4oOI3tAwc/h00HrwKTxD9G0UO1Lph0w6EKUqapEElolCyhF4Hf6oZ9FjVSetVEUdm
 O3JiR6QqZ8scDs44UW6b1b7U9cb13OfMwy/gFmwtV9CEegOsqB6RKUc0a72mfBUhejf4
 UigXKGLEtJigBM89KHaZovH43iToYo0COVkWVSQ9RFLznGLPm90tlcoKptpf0ur0fUlL
 DkJf8j4lx18+xVYkPyPNcnU2D3iwCSIoMQdS8fnzDRxhmmNsOI967yfdLiXyWadXNgUa
 KCGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dP+yKJgC1PvcZ6U9Dq2dx4CeTIqnBT2BpMb+Wm9xBlI=;
 b=EnwGO/0AFtWq+EtTbOMTgqVHIh6Tt7HF645VZ8LWa6DPm/OaB6ui7q6JiiAJhTmIC1
 rdPotOp0GAuKgMp1aD9+mAmuwwce4Gbbo/QdBxN/bf14tKf0Cqcx3pf+RGEk+14kqfVi
 GRQH+tnHRcP9vAi7/OqG/Nc1tYSJmEtDEsne60WXZq3VG9PqX2/NDuZeJAXkmdv6Uoeh
 cOyPbiJL1IhetoYVksm2gbFhmd+m+I3yTfnWE49MJLpGFERVrBplgHgNy9Yx2ulLPkUv
 gA9FIcD2upFY3gIeTe0Lw0EVZz5302iu3Wj4uBUMadZ79q0HMwtCK/xwsvjazCPTOg2R
 BBpg==
X-Gm-Message-State: APjAAAVrUxI7GQoMQBdY846GKY21UeAn+VQujLWkE/VsbohjDyJmg0As
 DEw4oSohCTmdItvpuVCYCv8Y8w==
X-Google-Smtp-Source: APXvYqx9tJ3xrVEVF5uE1eywbilOUQ3Qf7BtHeKw64SIwazRSBjH4hEsmA1DxrDcg6Xwsp77x30DnQ==
X-Received: by 2002:aed:3ee5:: with SMTP id o34mr2772503qtf.164.1578667877943; 
 Fri, 10 Jan 2020 06:51:17 -0800 (PST)
Received: from ovpn-123-250.rdu2.redhat.com
 (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id z4sm1093288qta.73.2020.01.10.06.51.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 Jan 2020 06:51:17 -0800 (PST)
From: Qian Cai <cai@lca.pw>
To: akpm@linux-foundation.org
Subject: [PATCH -next] arm64/mm/dump: fix a compilation error
Date: Fri, 10 Jan 2020 09:51:12 -0500
Message-Id: <20200110145112.7959-1-cai@lca.pw>
X-Mailer: git-send-email 2.21.0 (Apple Git-122.2)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_065119_642180_FE3B5726 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: sfr@canb.auug.org.au, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 steven.price@arm.com, linux-mm@kvack.org, Qian Cai <cai@lca.pw>,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The linux-next commit "x86: mm: avoid allocating struct mm_struct on the
stack" [1] introduced a compilation error with "arm64: mm: convert
mm/dump.c to use walk_page_range()" [2]. Fixed it by using the new API.

arch/arm64/mm/dump.c:326:38: error: too few arguments to function call,
expected 3, have 2
        ptdump_walk_pgd(&st.ptdump, info->mm);
        ~~~~~~~~~~~~~~~                     ^
./include/linux/ptdump.h:20:1: note: 'ptdump_walk_pgd' declared here
void ptdump_walk_pgd(struct ptdump_state *st, struct mm_struct *mm,
pgd_t *pgd);
^
arch/arm64/mm/dump.c:364:38: error: too few arguments to function call,
expected 3, have 2
        ptdump_walk_pgd(&st.ptdump, &init_mm);
        ~~~~~~~~~~~~~~~                     ^
./include/linux/ptdump.h:20:1: note: 'ptdump_walk_pgd' declared here
void ptdump_walk_pgd(struct ptdump_state *st, struct mm_struct *mm,
pgd_t *pgd);
^
2 errors generated.

[1] http://lkml.kernel.org/r/20200108145710.34314-1-steven.price@arm.com
[2] http://lkml.kernel.org/r/20191218162402.45610-22-steven.price@arm.com

Signed-off-by: Qian Cai <cai@lca.pw>
---
 arch/arm64/mm/dump.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
index ef4b3ca1e058..860c00ec8bd3 100644
--- a/arch/arm64/mm/dump.c
+++ b/arch/arm64/mm/dump.c
@@ -323,7 +323,7 @@ void ptdump_walk(struct seq_file *s, struct ptdump_info *info)
 		}
 	};
 
-	ptdump_walk_pgd(&st.ptdump, info->mm);
+	ptdump_walk_pgd(&st.ptdump, info->mm, NULL);
 }
 
 static void ptdump_initialize(void)
@@ -361,7 +361,7 @@ void ptdump_check_wx(void)
 		}
 	};
 
-	ptdump_walk_pgd(&st.ptdump, &init_mm);
+	ptdump_walk_pgd(&st.ptdump, &init_mm, NULL);
 
 	if (st.wx_pages || st.uxn_pages)
 		pr_warn("Checked W+X mappings: FAILED, %lu W+X pages found, %lu non-UXN pages found\n",
-- 
2.21.0 (Apple Git-122.2)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
