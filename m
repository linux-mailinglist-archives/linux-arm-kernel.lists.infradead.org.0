Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52AB510CB4C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:06:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kM5T8cgH+umIx9g4L4sfufXl0CQQSMbwpxJ+qYAVw8o=; b=qW03JDMI0qx58V
	u2B8Y/c2OtRZuMbexL0SsV+w/Zv6Bba4G4pD/DxIeZ4zg9Uzrfi2W5UubVY8BEmMNBFrUiCy7xrJw
	juUPbpwSC6MnGwOqKZ+ALe6TXM88q+xkrTfxWWOJzqlWJMQ6KTl++ftr4djNPKFwMIhT7dRT/CMg9
	g+BoSWb/bfyYddl9fwKN68jtDp+xkOvljkNYx3UBzvyhlvgP4+1fnzrbaW97DjQPRgbfYLs439pxJ
	UcbaUdw6TELrMa5eJR8vGhxMLEnS/7GfzFWDYFWL/o3n/UhT/nGL1OVLo92QXbjmecZ+z6c8OwrKF
	g9rIaPuzujpdHc28BK1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLMz-0000Vm-FI; Thu, 28 Nov 2019 15:06:13 +0000
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLF0-00013t-Nc
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:58:08 +0000
Received: by mail-lj1-f195.google.com with SMTP id e10so19659387ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=06uKXQqvrr0zZOJsLmQ0X59rlZ+fACJwVhesQKP6zWk=;
 b=JgiuAeArS47wsHZWM0BK/bezVFi7ZvWamm9FoPUC9tdZMXp4VCy5jWfx2t686hMUOy
 VybX+a/F0IKQZSS1QHbM5u49tyQhqGGkkQnWZHi/zYpbIT20YQl0gPFiNwUmHSxFIuiI
 9dTQWrvv9HWzBW01vfuUWbyvYrzaWvZFOcIyQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=06uKXQqvrr0zZOJsLmQ0X59rlZ+fACJwVhesQKP6zWk=;
 b=PvCCbZazW6m0mc07cJu6aI8oQhTxj5DaVc+NcTA0qM2kkvyL7ACfsdsM6dqSVk/FAm
 pHWuMdXlLfCAnWMDmZSpTmIgkeIRGUe/d+/EzDDLbYKwLH1PwOxzCvM/h8zcXBmeUU3j
 tPXiY4do0wAL6rDbF423eHW392jbnWY1YOBtcwwnLe+6KqixQgajbTeJEW5ICL4HErCI
 yuNckVFKqV3qzWjHpY5QV0d4z+3OaFICc0wokMGF7Z2jsgBGYiMyvDJGTGo8pCMCiWfo
 VCxEK1Dk10Sw2YrV1bzghg6WtQlo6mKp2lKOh/OsLs9NPM2p/RY3T1d1lQlp1eHpE+y6
 HBnQ==
X-Gm-Message-State: APjAAAU1kt1hNVTsdnGK7N49bPjzQ1Ux7FVeTwADzsKuOcBuS2O+eXxz
 Bq/zAD/zblgsW5lCyjSSHgGFww==
X-Google-Smtp-Source: APXvYqyK7wVR6d3zwjKZ2mFM/WM8Cw60uivy1/bMNQ6D4J5Uyd1DQ6s5FG/7hVfz49aG1uqyrcyxDw==
X-Received: by 2002:a2e:2a43:: with SMTP id q64mr35566264ljq.242.1574953076393; 
 Thu, 28 Nov 2019 06:57:56 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:56 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 39/49] soc: fsl: qe: refactor cpm_muram_alloc_common to
 prevent BUG on error path
Date: Thu, 28 Nov 2019 15:55:44 +0100
Message-Id: <20191128145554.1297-40-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_065758_879637_43FD266B 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If the kmalloc() fails, we try to undo the gen_pool allocation we've
just done. Unfortunately, start has already been modified to subtract
the GENPOOL_OFFSET bias, so we're freeing something that very likely
doesn't exist in the gen_pool, meaning we hit the

 kernel BUG at lib/genalloc.c:399!
 Internal error: Oops - BUG: 0 [#1] PREEMPT SMP ARM
 ...
 [<803fd0e8>] (gen_pool_free) from [<80426bc8>] (cpm_muram_alloc_common+0xb0/0xc8)
 [<80426bc8>] (cpm_muram_alloc_common) from [<80426c28>] (cpm_muram_alloc+0x48/0x80)
 [<80426c28>] (cpm_muram_alloc) from [<80428214>] (ucc_slow_init+0x110/0x4f0)
 [<80428214>] (ucc_slow_init) from [<8044a718>] (qe_uart_request_port+0x3c/0x1d8)

(this was tested by just injecting a random failure by adding
"|| (get_random_int()&7) == 0" to the "if (!entry)" condition).

Refactor the code so we do the kmalloc() first, meaning that's the
thing that needs undoing in case gen_pool_alloc_algo() then
fails. This allows a later cleanup to move the locking from the
callers into the _common function, keeping the kmalloc() out of the
critical region and then, hopefully (if all the muram_alloc callers
allow) change it to a GFP_KERNEL allocation.

Reviewed-by: Timur Tabi <timur@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_common.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_common.c b/drivers/soc/fsl/qe/qe_common.c
index dcb267567d76..a81a1a79f1ca 100644
--- a/drivers/soc/fsl/qe/qe_common.c
+++ b/drivers/soc/fsl/qe/qe_common.c
@@ -119,23 +119,21 @@ static s32 cpm_muram_alloc_common(unsigned long size,
 	struct muram_block *entry;
 	s32 start;
 
+	entry = kmalloc(sizeof(*entry), GFP_ATOMIC);
+	if (!entry)
+		return -ENOMEM;
 	start = gen_pool_alloc_algo(muram_pool, size, algo, data);
-	if (!start)
-		goto out2;
+	if (!start) {
+		kfree(entry);
+		return -ENOMEM;
+	}
 	start = start - GENPOOL_OFFSET;
 	memset_io(cpm_muram_addr(start), 0, size);
-	entry = kmalloc(sizeof(*entry), GFP_ATOMIC);
-	if (!entry)
-		goto out1;
 	entry->start = start;
 	entry->size = size;
 	list_add(&entry->head, &muram_block_list);
 
 	return start;
-out1:
-	gen_pool_free(muram_pool, start, size);
-out2:
-	return -ENOMEM;
 }
 
 /*
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
