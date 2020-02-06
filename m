Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D64154606
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 15:24:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qJW6DO4cnK6dY3o6dVLqUZntImPrcYqtveDIhrPhvQo=; b=fpGCCFNRf8iJ2Q
	3dH/FFeavhzzBIMEzKoM9QEFDEzAU0OUdZOAaiunv0o4OuTc3rqlA0m3gFhOlYHAejb/iPhMooANK
	GGhVEYB9+F57o4WwH9FWhj6WJnpD7ytTTJczhSYq/Rj0gFXdnPqUhczPv3R+9+8nn7MIi2EC1UWjt
	jXTS3lhw2R4dJPvx48wBjpgVfbJlUJdpdDCSfPviymlZoEJUSR8S2AeJzXqsVyYforB94rIsZUYG3
	N9624PQbWGbDCRNZ1qKDDeJujkNBzZQnFuGUXZziEn35+TawB41isqfn/X2y2BZ0CUUqGcYOaqViE
	3UXaMqkTnVgHwyf1UhEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izi5C-0003Dl-Uk; Thu, 06 Feb 2020 14:24:42 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izi53-0003CN-4h
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 14:24:34 +0000
Received: by mail-pg1-x542.google.com with SMTP id 6so2850581pgk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 06:24:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2k1+BmAg/PACALQSiYk+3lsPVNBiCnjdKk4ZEAWEMAo=;
 b=D/EBBAtUCOsUg+i5bc2KUgV/GljhCwwCEpfUQIBNM6QpF/qcvleiiWUPzWuhRHg8vI
 mDk35foTgP7jqdshD7/iiIlVKlV2x7GldZeLGYzETC2/QlYsZUOna04O9EwJaZrng0M9
 hC2lth/uBHlK0Kg47gN2csh+tnTUb3bYoIJm2kriip+fzAyCn2vigf4DFqe9hV1sRi9e
 Od17WHXkwoXftisbxh/kTJRQLidKXb/tewXkYnYDAdzzPLBJFMOKDFNkWbPuIE0LlILx
 dbnOF4b2+CIsfQhgW8mhX1W+t4KNDy9nv+BTOkn953zm+roBm1fpl17o2yF+riu8Yl1c
 oyJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2k1+BmAg/PACALQSiYk+3lsPVNBiCnjdKk4ZEAWEMAo=;
 b=qDVVssQeUgjCaAWfS/wnfVbRf7GX1JKNnl2g1deSD8Jt4AIYabPVj7LBI5sggH0tCC
 cUWgrshYYr4qqDk/Lug3yDuCnT25W5+fMVdaiQP3slp5AUtWSNWcW4gBET6NDMbNe894
 9ebwKHEXbl9KLMpOaUiXllAOLMGYiD/dHMxwHSbTQEaIRZwDMyOIkV2k4UIMiqeB5MAB
 VBO0Wa2ZeMdBg0eJ8qa2qonzpAVVLLUB9alskttqhDCUpaQQuiuys9Of8uG+s35CMFKh
 4xEGmwySlIzvyz90MLysBj9YEjWH34XCV74qLM58oZkTvw4MalR80STbXX+ajmYglgCK
 8Pew==
X-Gm-Message-State: APjAAAVrTx9tWa6CFWWH0aCQU3pVTGZW2G1wFxmyUNGN+A78juHS5RxP
 b5nrVh1jxAjkVE4kKDNuKYE=
X-Google-Smtp-Source: APXvYqy6t80R5aju+KrOh4xsVYVlB/QZyNhzW81TIqyD1gUzeCv+aNGJ92Oc695aN7ezOXOQMcC/BA==
X-Received: by 2002:a63:ba19:: with SMTP id k25mr4089647pgf.333.1580999072575; 
 Thu, 06 Feb 2020 06:24:32 -0800 (PST)
Received: from localhost (104.128.80.227.16clouds.com. [104.128.80.227])
 by smtp.gmail.com with ESMTPSA id q12sm3595749pfh.158.2020.02.06.06.24.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 Feb 2020 06:24:31 -0800 (PST)
From: Dejin Zheng <zhengdejin5@gmail.com>
To: peppe.cavallaro@st.com, alexandre.torgue@st.com, joabreu@synopsys.com,
 davem@davemloft.net, mcoquelin.stm32@gmail.com, netdev@vger.kernel.org
Subject: [PATCH 1/2] net: stmmac: use readl_poll_timeout() function in
 init_systime()
Date: Thu,  6 Feb 2020 22:24:03 +0800
Message-Id: <20200206142404.24980-2-zhengdejin5@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200206142404.24980-1-zhengdejin5@gmail.com>
References: <20200206142404.24980-1-zhengdejin5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_062433_188639_FC213912 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhengdejin5[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zhengdejin5[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Dejin Zheng <zhengdejin5@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The init_systime() function use an open coded of readl_poll_timeout().
Replace the open coded handling with the proper function.

Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>
---
 .../net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c  | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c
index 020159622559..2a24e2a7db3b 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c
@@ -10,6 +10,7 @@
 *******************************************************************************/
 
 #include <linux/io.h>
+#include <linux/iopoll.h>
 #include <linux/delay.h>
 #include "common.h"
 #include "stmmac_ptp.h"
@@ -53,8 +54,8 @@ static void config_sub_second_increment(void __iomem *ioaddr,
 
 static int init_systime(void __iomem *ioaddr, u32 sec, u32 nsec)
 {
-	int limit;
 	u32 value;
+	int err;
 
 	writel(sec, ioaddr + PTP_STSUR);
 	writel(nsec, ioaddr + PTP_STNSUR);
@@ -64,13 +65,10 @@ static int init_systime(void __iomem *ioaddr, u32 sec, u32 nsec)
 	writel(value, ioaddr + PTP_TCR);
 
 	/* wait for present system time initialize to complete */
-	limit = 10;
-	while (limit--) {
-		if (!(readl(ioaddr + PTP_TCR) & PTP_TCR_TSINIT))
-			break;
-		mdelay(10);
-	}
-	if (limit < 0)
+	err = readl_poll_timeout(ioaddr + PTP_TCR, value,
+				 !(value & PTP_TCR_TSINIT),
+				 10000, 100000);
+	if (err)
 		return -EBUSY;
 
 	return 0;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
