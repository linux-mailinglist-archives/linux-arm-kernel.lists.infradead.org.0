Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC57410CBC1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:33:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/UGDjFNvuCUVe9ZXBE6laUrlQNcM3Cn5D9VZOdIabgc=; b=h8HLWiHNHWVJyw
	Zhf0SWuZJjUl6xZYtbyyCBc6V7/UPaycIQer1O7SZzabDX7ISYNLcUJhfYEg6nS7neN6YqOY1nVic
	/6572AvCSV1ens0AcVhADcO0GzeCoq12Rac8UuODdELl71ml1mCrnx1sw0wAbwtyZXlygMOYw2aXm
	K4TPe9r924LYPpRHLLQQbCE3HcGWqtZC0OFqZGGZDbO1Ew6Jh4dCzVmUf8Vy6kvsoFXg0nwHxdBUG
	CUatdeXxiNXWhvn6dcRUK5BIg6HSS4wfo3DBtCgAjW9b1up9+xpSGGglnNVwI+1qek9aGmAfSNi38
	6hLpkAR/tJTdt0p9LHbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLnG-0006hh-Gm; Thu, 28 Nov 2019 15:33:22 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLn1-0006hW-Ue
 for linux-arm-kernel@bombadil.infradead.org; Thu, 28 Nov 2019 15:33:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3Bun68+vGX0cpO8gva8KbJU3Sj9L3G/suxA//a5o0RU=; b=UgwOq3QYNBnymrva4R9z+QciIF
 p49qfmlniKwulfNya8UGknU2/fMo5fuwbi65OFQ5bkCSHJg6tofLSrFbAEi4KT3/0JItVAiIpXF5M
 jirhf/CThIPl3bBpZuM+05sGrFLiGPcBVnRzs+i28nt2ORC23tI0//tZuy/Vb2ZG9dTq5+hwrmwr1
 GvD1bcG4ELYT1e+/RJTT6hnLUdLZ4h3LsLbwKfYV0vi48WRAzcfijRn4TTCjFGvVAKhEvznqoccfP
 RIWOX7oi/uRa/2C51bzRJr7ejIpm8UdHHkpyJ7cHxBYkgGPRLf3ftMcAUPiResKmnn4NeFtFM6bJM
 ZCNrpLDw==;
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLEz-0002uo-5S
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:57:57 +0000
Received: by mail-lj1-x244.google.com with SMTP id t5so28870735ljk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3Bun68+vGX0cpO8gva8KbJU3Sj9L3G/suxA//a5o0RU=;
 b=BiUszVfH4xD7TeJbkxiZNgcYZYOIlp+5P2RR1S2/Rw4kQ+d9IE9N4RrFlOWACnk7Ws
 VF2RmylZqWUGDJz4rHvV+iwDq4ISPLeUCaV7NiLCQBFZALMu33LIJqYp/YDL+Jp5UhJA
 wSTZVT532Z+h6FFEsGS5Q1g2A5XNjVwix2Dc4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3Bun68+vGX0cpO8gva8KbJU3Sj9L3G/suxA//a5o0RU=;
 b=HOR02zP1nzUepuBydHBCo+D5zqKSbPiMV3r7fEF9vyJ8jPDxf6TgZ+hK1jqSD65ceV
 31PJoU6cbYywvQ9H0gnAvzNIXulmcurH0Jw8rnfsawlOtYP5hN95rbjMUjAMVG7Gn5yO
 OOJkqMbyqvRH+2uMkLdzKuxSIkUTv2URjUkf+aRQOfLCkzahFd1BJFHMAaiFapKikKvz
 VSvQCVhwnHSqCefC0LDrlhrpb+QiVMTV7tSMWswjVrjUyK6vlP6HFkdVsuIFQnSY0Ho+
 W5x1yh59Ne/Ktl3solAhV+F58G3GwwkAwCHHiQJjuIG/WwUzixLMtqM0av58CtHqj4OZ
 Qqqw==
X-Gm-Message-State: APjAAAWmmoFyM5tW1mOto1Mm+Fj0+215OkpWWgRhW4BtUfTbTwpLrv6Y
 QkLoryPzofg/+7uXtarqJXsDEzxzzotmjvrD
X-Google-Smtp-Source: APXvYqwaGl/+nUJyEvEWFx2+e9Z1DYPyhWNpmKm+QNrRw4gHEm8FZ1KH1eJwfl5J9bgJnXga5KzIdQ==
X-Received: by 2002:a2e:8855:: with SMTP id z21mr36010930ljj.212.1574953075288; 
 Thu, 28 Nov 2019 06:57:55 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:54 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 38/49] soc: fsl: qe: drop broken lazy call of
 cpm_muram_init()
Date: Thu, 28 Nov 2019 15:55:43 +0100
Message-Id: <20191128145554.1297-39-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Reviewed-by: Timur Tabi <timur@kernel.org>
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
