Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4734410045D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:38:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TY9zwqy2VohxEzXlr0xxjBlwjX5o5PGj9h+z3BRKkY8=; b=A0/J0oiDmra134
	ApLIteIg5PVbs0n6CuIbBQgnNj20VbC3xEciPZP8YsWaiYwQ8F3fo8HMaexyJw9CuRhfPQD2vMGjL
	AlLhGaYINDV/XRvRLybPgvPSrjJXU52qE4r45xXteQ3641qDt86VcFGfBMYHN71qOua2PNe27uOBx
	xG90q9hd+JNR4UohP4VoPK4sBEurPoocVC7aMCACmATeCAas+fka2d8ZxW6or1udUef9o6DVUKWhc
	59pz91y7zXQVxEKpD0w91t5vsfEpHjgtlP/J+7UzBwmjz6YTASkXg0Qn8Oq69P+UO3/sv0BTOIMMq
	LAtTK+UuSfaYqj9A0smA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfMe-00006O-KH; Mon, 18 Nov 2019 11:38:40 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf90-0001i4-Eq
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:24:36 +0000
Received: by mail-wm1-x344.google.com with SMTP id u18so16989030wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:24:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iA65MKMzLkvpbCJtw1dgfKRTfY/LMh1lX20RtWmEnL4=;
 b=KjmkIq+xQGH3odHbzh8WQ29uNzIeULjrmnEIUn6rJk6d3kPG3Yrdormidcf9MOozuP
 jJjPm4aVw6O7o5m4NM6A/QynyvvjsztfxnHyuBalLbiFxT2tEkouhimouboIfT9wG8Rx
 D3uUNCrpcumEIR0nRoTJWxEdlKOyT4vTPdS3Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iA65MKMzLkvpbCJtw1dgfKRTfY/LMh1lX20RtWmEnL4=;
 b=Rg0oc1ZNI+4jSTE+CVVXqmISVI4ENiYrA6WtO7YzzfDz5omEfyDB7JqxJCd4p1A6Xt
 tzj/Mf31kqdoziU7JR02VW8hOtGdorBEfps26Nd29MYGP8NDdhMdEB+dbhX7PmCQw3Ym
 db3ngyM8CJNPPcSgqjfUDemgqeh/ZOkM5e8wtDdcf0h2wfmQEAoOiHJMMNDmXBvihPXC
 WBL+AN6ews+7zl9OpstdQAeKmPzL843svYq9lZubYWWuBYFyP44g+FBZEEZzwpsTQaFV
 yGfOGJESnEthEftdR/jebT0pNtetAhGytMRIGkbREPDJvpfhXqjhHmh1Xti6id3BDqma
 SXRA==
X-Gm-Message-State: APjAAAV8nQQk1dHTnXEYKSF4ASvxf54ce2kUNABkIptyOYPTtkYECsas
 I6kivE5Pon0y/ZjhtTgdJCFJJwdtYQQ/hw==
X-Google-Smtp-Source: APXvYqymuTf1eyZnezM6aM+hof+hm0Vr9Bfgz8sSkP7x97G19etwlRYffVBDTcw2EHmGvdaGH++2sg==
X-Received: by 2002:a1c:2e0f:: with SMTP id u15mr28930458wmu.47.1574076273195; 
 Mon, 18 Nov 2019 03:24:33 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.24.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:24:32 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 47/48] net: ethernet: freescale: make UCC_GETH explicitly
 depend on PPC32
Date: Mon, 18 Nov 2019 12:23:23 +0100
Message-Id: <20191118112324.22725-48-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032434_567606_AA1AAEB0 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: Timur Tabi <timur@kernel.org>, netdev@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, QUICC_ENGINE depends on PPC32, so this in itself does not
change anything. In order to allow removing the PPC32 dependency from
QUICC_ENGINE and avoid allmodconfig build failures, add this explicit
dependency.

Also, the QE Ethernet has never been integrated on any non-PowerPC SoC
and most likely will not be in the future.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/net/ethernet/freescale/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/freescale/Kconfig b/drivers/net/ethernet/freescale/Kconfig
index 6a7e8993119f..2bd7ace0a953 100644
--- a/drivers/net/ethernet/freescale/Kconfig
+++ b/drivers/net/ethernet/freescale/Kconfig
@@ -74,7 +74,7 @@ config FSL_XGMAC_MDIO
 
 config UCC_GETH
 	tristate "Freescale QE Gigabit Ethernet"
-	depends on QUICC_ENGINE
+	depends on QUICC_ENGINE && PPC32
 	select FSL_PQ_MDIO
 	select PHYLIB
 	---help---
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
