Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDF9100450
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:36:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kwKwdILpvPZQg2psae4SvdIWVASqq3wSij3V8VZwm7g=; b=mX9pjXNijAixCn
	qffXOePzeneGdLtar7qVmP+3TwG81oaosS7aRcxG8Ls6+IcOdmvH6KAkpbRcbyC1Z0MyFHdsmzCMu
	kuL+uSMcrbh3/18PEbKU2XxP43/bXVw48oAEiHfcGnQrfwK9jgEtSI1vsrOS1iZq7mxJiSYbRuCtx
	EQOjLRtPZ3UFjNVKRiFK4Zb7pO4pAUeaIU+2dPf3v7oGL2WVQeqnOuX91z7Gnwt1CSJspkmfSTUbc
	HaWa4J8641wkvzu0cmoZw1Qly+Yi4zDGLkytmpkD1jkg0HgFoxxRIjiNVpNoMmZrzztB9XZUoxY3c
	3656a6/jhXfyvEz/j5gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfKh-0006cn-Sk; Mon, 18 Nov 2019 11:36:39 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf8r-0001aH-05
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:24:28 +0000
Received: by mail-wm1-x342.google.com with SMTP id l17so16928416wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:24:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=u67M6iMnQRPeWGbUjU6/8zjKJ8MPzlxCYb6wzRlTUzI=;
 b=ZyUJ5WMnth3SU48aYvS4fzK8hUXIaPpYljpdKoErKfrhzAmKvOTIG8Lv0aPWgk2RxT
 ZP67+R3KRm5OJwrOYPHHE3tk4Y//im0p1QB5M0gz5HuEGSCuTRoUZobX2Y3BeyIr8Osj
 7vaYJIjKqRt2NVkR9YYnzVUZAb3xO9OfGiUJw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=u67M6iMnQRPeWGbUjU6/8zjKJ8MPzlxCYb6wzRlTUzI=;
 b=EelBPfPuy7LHUMHdxwaTko8CIDp2mfpcAma3pbUnKf9x0jiW7+0pP/+g6zl3oHO+L2
 R8Up4nVt+gCwbdswQgbvNZkhejV2izesEyDttoi2mWeELKJpyfzlDocptudzw6dHYo1b
 Tk5lAPvg6DEX2z7oTNwkX8T1T89iQghouW1xtZQ5H5QXw/hA6qsJ29BNlCeJ+iqhxvp3
 cBXdHO0nYyagQyI/j9K3c+K/0qanCxz2l4DlodlYjRETyKnThUv16T1IyJn4XS0vo5xd
 +ifEpiHMpfTmOiuO9zZqUD4pmtbhau4GbMTx7VKUO7oTrgPrnNODg1OZzNNjEuUqMYPm
 J/zw==
X-Gm-Message-State: APjAAAX04kDkapjxcU8TzTVRyP06kiff1IROaKLQIsaR/kY79i+wiVVY
 ML1lj3fk6YeUVXqNQMJPzEgZNQ==
X-Google-Smtp-Source: APXvYqyvwQK7ZNvJAAcJjBPFCHxzOq/iR38P0uIeZFJ2nKarTxjyW1A/whUUJQYA2dtQxAXwNIZrhQ==
X-Received: by 2002:a1c:3cc4:: with SMTP id j187mr29379317wma.95.1574076261570; 
 Mon, 18 Nov 2019 03:24:21 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.24.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:24:21 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 38/48] soc: fsl: qe: drop broken lazy call of
 cpm_muram_init()
Date: Mon, 18 Nov 2019 12:23:14 +0100
Message-Id: <20191118112324.22725-39-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032425_608144_C92D2BF7 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [5.186.115.54 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cpm_muram_alloc_common() tries to support a kind of lazy
initialization - if the muram_pool has not been created yet, it calls
cpm_muram_init(). Now, cpm_muram_alloc_common() is always called under

	spin_lock_irqsave(&cpm_muram_lock, flags);

and cpm_muram_init() does gen_pool_create() (which implies a
GFP_KERNEL allocation) and ioremap(), not to mention the fun that
ensues from cpm_muram_init() doing

	spin_lock_init(&cpm_muram_lock);

In other words, this has never worked, so nobody can have been relying
on it.

cpm_muram_init() is called from a subsys_initcall (either from
cpm_init() in arch/powerpc/sysdev/cpm_common.c or, via qe_reset(),
from qe_init() in drivers/soc/fsl/qe/qe.c).

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_common.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_common.c b/drivers/soc/fsl/qe/qe_common.c
index 48c77bb92846..dcb267567d76 100644
--- a/drivers/soc/fsl/qe/qe_common.c
+++ b/drivers/soc/fsl/qe/qe_common.c
@@ -119,9 +119,6 @@ static s32 cpm_muram_alloc_common(unsigned long size,
 	struct muram_block *entry;
 	s32 start;
 
-	if (!muram_pool && cpm_muram_init())
-		goto out2;
-
 	start = gen_pool_alloc_algo(muram_pool, size, algo, data);
 	if (!start)
 		goto out2;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
