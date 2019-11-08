Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 271D1F4CEE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:16:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q78veoRvz7PJkRuYK/Oq0p1qJpoeX9zq+XCHdpyrU84=; b=k+CxewK8J5O6W1
	5bxAGDGfQhVg9AUrF8eTBxik5H9tD64IlImon+YzD3807J09csn5i9Z5Af+UU0nIMzy9/vpuwxFT/
	p+JRmwh3YIQcTXkE5vQwiqcrW8ef/ORmNqhq0/6/+Str3yENTHP+Ndr/OrpwzkqyL12q/r/uOoWqF
	Z+sHdblJ/p3V4t/DDDzQuMibSGemFa5/vZLW2V9SalCJfJy1iuzF3AzCNz4Yyngf6RPtgItF7nSrb
	maWBxBw+JmsYJnGddorNAYXSJgmdGsxQlzvFUPwcekLlA2kZn3fc1nQBfArarVmd0vnMpYWvossz4
	BLNq3FbXU25W8RJ/2dmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT47K-000313-Na; Fri, 08 Nov 2019 13:15:58 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3uE-0004w7-Th
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:02:31 +0000
Received: by mail-lj1-x241.google.com with SMTP id t5so6158382ljk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:02:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BB15j+OZLSCqmbjpw6Rixs0w7wUAu62j+M3Q47LEWSI=;
 b=JPiH6ZKd2ZnUmbFTOFb+zecHncuK5W1rGbGHK2U2HNNwnIhWkIOIPn3+7Ay7T0tzM1
 5EAegX18KxWev95bX7gOYwgvjHEidVs2vmnDI0xounVD1lgao9hp6JuWyqGGmyzDgY1m
 DdQZLrXfOdpXw03FSH6fnD3E4Vvj1RGWqOAVA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BB15j+OZLSCqmbjpw6Rixs0w7wUAu62j+M3Q47LEWSI=;
 b=aOZU46o+mRCGXCgzkSpUkxNdMnzZExUlh5wQcYMopA6uOlHpO3dG8Ek86kR0ASmFB4
 kA+LZG4Fw7xQi+EuwcH2cvic8zw9uiicommvwcaczCxXQ9kzenhFU911nxSeME83mZO5
 hFuQZkmapvZvtsLlvhGb8rsLoZ+1Bl6vEcxMTzLlXV6tMcomyhBagcEZm2afmUiAIqqS
 okrK87nr97ElckhYoX6BNZycRHYiyJDtjHKn4EsovS748uOJ6idF4KQSaJbe0lD7/uIg
 YiVkZjlgKTrqMw45XAz21s/B1aB0LK5tQG1kXlMtJlWDeb0mgZU/wV3Y0l8JjsbiqpRg
 WkGw==
X-Gm-Message-State: APjAAAWHLM/IEO1+v44ODfnChbVk4IcXlnosDcfi+GDUAzKOptrHkaC8
 /LC8Vf5qnNADpA8oGtM6zHEzeA==
X-Google-Smtp-Source: APXvYqxJ5+E/xDqZwwVj1PKuG5R1Tse40MqtXo1j/SjaIDAjgO45IHqu0Kxn9Mf/lNqB6jnMlGV11g==
X-Received: by 2002:a2e:b5a2:: with SMTP id f2mr6613757ljn.108.1573218145233; 
 Fri, 08 Nov 2019 05:02:25 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.02.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:02:24 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 46/47] net: ethernet: freescale: make UCC_GETH explicitly
 depend on PPC32
Date: Fri,  8 Nov 2019 14:01:22 +0100
Message-Id: <20191108130123.6839-47-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050227_104409_FC9E848F 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
