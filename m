Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5F82CF11
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 21:00:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uPg6zumvNVD6vlFX7BaCMR458QLs9cWnzXgiOUM/e3Y=; b=qvN
	ocyHE8/dvubR+jkuLiUrFQMjPedcQm35Kbm5L48VRq72p/dNNLmbXS0FdsCR4uzqehnFthu9BuPJw
	suYTlUX+WR4rlz5ZuR60RwyOSrlY4KkbewYF2BxIrKM42CDnnHyV1Okc6vc+20KdhI4kLE4jQBgO2
	dnk3B/HVgkG+Ob+KYLEODaVFLeilKaitzB56M9ftIHwWoa86QFBs8doXB9tIu7dS0OcEMVhBuxS1m
	Dz+PPsqwaKTIZ6HqBizvYFFkFXVgLPdAPu1MW84nqvcAocQfe2hvClpEnNM21RfOCeOBVuKNpdQuJ
	RU17+5BJt4ATxZe24rVaB/7U415lWww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVhL1-0004BM-Qr; Tue, 28 May 2019 19:00:43 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVhKt-0004AL-Od
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 19:00:36 +0000
Received: by mail-qk1-x744.google.com with SMTP id l128so11477204qke.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 12:00:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=71qzjB6JUZChy8R98fH4XGZW0/0DMf/YTha3yOcG9YQ=;
 b=ACHUl9bqnt3qcSiTg07hvsUlLGVHC875m3zbt8WRXZIpfWPSDve7bSLHF9xxnJeB6D
 QKRcJOz6wp76TW/WEv1I7OqH9v5lukW9oy3QsfCWfpDAJJKo1tfLu1whs1DkKPRMUhzT
 PqLp89a2JJZdNiZOvQaQ1PAycOTBzLZ9wFQXiIi/00gOFgVEukqYAKB00qz9sykB8lgc
 72NHyPPWLkVDW2ZrsD/P3BRvYdHTKJCbpI/NyOX3YHRUQEd00W+5DutNIGq730xZ6tE7
 aYvnI9UEiy1QqEmXQ39phZsgCKAeSXuf+749OcCelvkt2gDJijpYTnFwRFtESaggzemb
 qNyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=71qzjB6JUZChy8R98fH4XGZW0/0DMf/YTha3yOcG9YQ=;
 b=nlq9swoRZtt3gL07FEkp0ZADxaYPfONGmGu2OInGN0DgwbPg/QWGYvJqUNBuTsfIXQ
 QgmJVT4TaU9lo3ASi8SWet2+RSOeOj08guy70+g5spi5d/c+mzpUacMhIjeksnDMtd0W
 sI2/r6ju0yDVI8by+r7l1o/fOIW/ncMY60NsQ77NLN63xD2UacEWul0EBxyq+kCwJu33
 f92KObTrWCETuq7KRYaEeva42TXmEjVbCp9fL6vY9SWqy6wShwW7u4OujlkOXoRwJhtq
 8KeAMH5tThZ8Z/FoxLnFCJcLzKIMcWiGT/t+oK/xrQjjTLFuoSif530Dfvrvzwuh/aCc
 7IiA==
X-Gm-Message-State: APjAAAVVE6Na8PJCF+4qOHduIJsEDBY5Kab7b1obExI0PIO7rkOac64s
 DnVU6+ozMpQ6sofOGbUQoi5fa6Fc
X-Google-Smtp-Source: APXvYqxi91XeMCb+Cta9A8BtgZCKsuvJc1q7h436E3jYOs3HbtECpb1s9qkP9Zjw8vn+jmwwWycFyQ==
X-Received: by 2002:a05:6214:248:: with SMTP id
 k8mr1574112qvt.200.1559070034886; 
 Tue, 28 May 2019 12:00:34 -0700 (PDT)
Received: from fabio-Latitude-E5450.am.freescale.net ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id c16sm5388086qkb.15.2019.05.28.12.00.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 12:00:34 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH v2 1/3] arm64: dts: imx8mm: Pass a unit name for the 'soc' node
Date: Tue, 28 May 2019 16:00:21 -0300
Message-Id: <20190528190023.7176-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_120035_795426_AAC0DD3A 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 linux-imx@nxp.com, kernel@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 'soc' name needs a unit name to match its 'ranges' property.

Pass the unit name in order to fix the following dtc build warning
with W=1:

arch/arm64/boot/dts/freescale/imx8mm.dtsi:203.6-754.4: Warning (unit_address_vs_reg): /soc: node has a reg or ranges property, but no unit name

This also aligns with imx8mq.dtsi.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
Changes since v1:
- Fixed typo in "aligns with imx8mq.dtsi"

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 708d3c4c1389..d6803db32e40 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -200,7 +200,7 @@
 		arm,no-tick-in-suspend;
 	};
 
-	soc {
+	soc@0 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
