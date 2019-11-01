Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA69EC341
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 13:53:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q78veoRvz7PJkRuYK/Oq0p1qJpoeX9zq+XCHdpyrU84=; b=kRps6XQ/YOyiqK
	L9otIZJXvgSI6cYY+pSqTeX+FIx/qPf/AmQE+xd/x12j8cO8hOfdekRNAtKpUTaHEYjFkm6U/aLW/
	DtE5niqacGUF7pWEYPvnxZopOzGJ7y41Dm5ONEPiiP8cIjAbIkVIVo8IJSZzai41FabTjppdWQdp/
	DjH8k5SRiuTxVXXPojKDOZ2/p0u3yvmNHHVlwNRQvxUhaGOzi8nR5VhK70uKHJ2+38iZ8Bqwh2zMm
	4vduLB5xVo6AcvdSX5/MIL5EPN/Tlb2WqcXviVp3EJjALjfCXXZjjcE+UUnlHAbRknFU4RZREW91H
	mczTfii2+yVzbBoCFXvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQWQQ-0002if-9d; Fri, 01 Nov 2019 12:53:10 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQWGY-0008Tr-1k
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 12:43:00 +0000
Received: by mail-lf1-x142.google.com with SMTP id y127so7144549lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 05:42:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BB15j+OZLSCqmbjpw6Rixs0w7wUAu62j+M3Q47LEWSI=;
 b=Q7l5B4ZzSFqdTZCb4tJtnGHQpMhdr2CvGmwTVybZhIGX2c4ktEn1SU46jLKTynP5c6
 xws5ATktOjO0yGARdh9e3ppAPSG4uIhGXWJLJb9bFFD7aZJ2kIdOQ/z6ktB1D335VRc0
 X76ZLrmMFUG8IjfB808JNyn/6kr5P9fM6Yovc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BB15j+OZLSCqmbjpw6Rixs0w7wUAu62j+M3Q47LEWSI=;
 b=kkAdtNEHv69aPx5LbPzykY0a4yYNfqFNZqyq83fTZFM2KodVRRsMO9i7XXzB2T0cFN
 Qp1xGa8fnageDS0/4crCzsxUa7TLwk8zIpTt0OsijRDIX5Bdf20k5G3lslaePOIeyrgd
 0zWcBWWIJzvO+0RyayYOHUaqD/DkIMfKMUuVRWo2pap37HvOqLgMBb+bzhr8xWocuQuX
 zCWbZ8pdVb+cz1eaq1nFZBmCi2pQ49H/mvbJe2WPypzKlUw0ANVe2tZHrwv401vYdN3H
 IBtD8VgTT1eZUkrCFzzDndpzMZGdkLtg2A6pUMtOmpgsFQE9rYMkLEuNiBKpeXx4tCbW
 f7LQ==
X-Gm-Message-State: APjAAAUEPr0VP9wW1jscJ/mlnCCd8nkh1u+6dbu6dJj4Pof1AElotjkp
 fmOD1gzWuKaB0WdUo1qTwJaGsw==
X-Google-Smtp-Source: APXvYqxCElUjbfpW6EePME6G+/EpoG3cuPhRw39POP0u7K0TVGS1unxGXbHxq4fCys0zyQmGeY2RWg==
X-Received: by 2002:a19:10:: with SMTP id 16mr7317366lfa.100.1572612176600;
 Fri, 01 Nov 2019 05:42:56 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id o26sm2458540lfi.57.2019.11.01.05.42.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 05:42:56 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v3 34/36] net: ethernet: freescale: make UCC_GETH explicitly
 depend on PPC32
Date: Fri,  1 Nov 2019 13:42:08 +0100
Message-Id: <20191101124210.14510-35-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191101124210.14510-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_054258_117474_CCE146DB 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: netdev@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, QUICC_ENGINE depends on PPC32, so this in itself does not
change anything. In order to allow removing the PPC32 dependency from
QUICC_ENGINE and avoid allmodconfig build failures, add this explicit
dependency.

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
