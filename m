Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBBE55398
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 17:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=t/UFyftz0Cn5gSMSiphMn5D6DGWp9G92bsdccIpgIk0=; b=PYE
	Xqwc+30JeSfblBGxlmAzYgUQ2pyETyMOthQteWK/rnwdeHN4klkPTmF+Pi2OD3AyNjivijEj8CR0q
	ZQa9tCPREfyvxicCqdO2qAUcc+KwohRgN/hrbq2gztSStJSeC6chlJRoiNEFosiA0VykVtPU7Of9z
	TR1VV+QDd8jlQa+WWRbDsBebr0AAFzeciDJaqV+Xgj0K6ko1FbuvKUG34YLFfsYlEX1n/+w1Xk+e6
	Geu17ZmrC/FkBII0XZXwubsE0We0MkoKfpJAiegpD1Ml7rQ8BVobyMJEAhwXw8kTJHciUrOMwEOZ1
	pDzP2riQJntdeOuBNoUQYQZEt+ZudwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfnYU-0003th-TL; Tue, 25 Jun 2019 15:40:22 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfnYL-0003tB-6Z
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 15:40:14 +0000
Received: by mail-qt1-x842.google.com with SMTP id i34so18880795qta.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 08:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=/GT9MsG1TyHSdsEpmqRvp/vyYzkZxx700YAJ9O8G9Bk=;
 b=IvwiAqjObqII9z16m20ALMCJs1RMD3YHSs/npBIsND+Ai/bbnXoLd/xjcAo0Qajhip
 P6psJsoGMWHrF8XRaLAcQLPp0ZDqZCiMQTEHy5RerfNQDaBSrmNBUTTELNRSzk2AVDEs
 i5r/O01C/S1RONR/pmLFN6oNbQH4IxYcfyVh5+muXpmLpJXmGYEhk46T7pP37kd5LT1z
 /7UOj05ekEtf3w5UBm+sjSPDKzG+CjrvTITYRa4ptXekxneFLeg3vliRuQXRbu7ImkBf
 IUqgwsijRV87nWoaJc7JaF/3JWlFBhFc/cEe4139HRZowQM0FKeQlveZ61RMZ4IblhoO
 Wzlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=/GT9MsG1TyHSdsEpmqRvp/vyYzkZxx700YAJ9O8G9Bk=;
 b=svugUv03ucV0euBZeQk9xQjHvvSyUmweAblCUZf4ENJQ5q/VrsunqfzRwUGhB03/nd
 jESqHfsDjJ8MxjLup9yCy/6ceJhyhRZiaXFM4gPsdHPuzS7yN0S9NMJdZ5BMxQgWM012
 5zSqctxnwPh7//1odw3EKz00QTsFPtZucqtt9ITVXFfDJXCLrsE/8KlUfIzUFzxGHqhQ
 fXi4kWirgn8tvxWvhlpJJdgaVZCpzP+JCiERUACB0gEp/1KIRkKghcajUTPKctFaFRRb
 zI2vlLQyVebLwquUI3NUGJKM3Wss2pD9MMCMNXeqVA0fIJ2njFN/Aea67DmM/h3DuLFG
 Zm0g==
X-Gm-Message-State: APjAAAWdyXkW6DZK+F3WcnuWtP4T/InPOjhw2tM2n9OdzF0HkXJiTVsz
 EuGbA0cOo5sy+08PgmuC5fI=
X-Google-Smtp-Source: APXvYqxeS2DFrzRbZZSLnIw8FxDMRxqvnfyo3554BmRpF16OZN4mudzj0VJaI6eDxbIVrdF1Gl5cAw==
X-Received: by 2002:a0c:9230:: with SMTP id a45mr62437401qva.188.1561477212065; 
 Tue, 25 Jun 2019 08:40:12 -0700 (PDT)
Received: from fabio-Latitude-E5450.am.freescale.net ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id y3sm8294297qtj.46.2019.06.25.08.40.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 08:40:11 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] ARM: dts: imx7ulp: Fix usb-phy unit address format 
Date: Tue, 25 Jun 2019 12:40:00 -0300
Message-Id: <20190625154000.6113-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_084013_264848_4817B650 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: peter.chen@nxp.com, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following warning is seen when building with W=1:

arch/arm/boot/dts/imx7ulp.dtsi:189.31-195.5: Warning (simple_bus_reg): /bus@40000000/usb-phy@0x40350000: simple-bus unit address format error, expected "40350000"

Fix it as suggested by removing the extra "0x" notation.

Fixes: 5b7bd456318a ("ARM: dts: imx7ulp: add imx7ulp USBOTG1 support")
Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/imx7ulp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx7ulp.dtsi b/arch/arm/boot/dts/imx7ulp.dtsi
index 992747a57442..56907bb4b329 100644
--- a/arch/arm/boot/dts/imx7ulp.dtsi
+++ b/arch/arm/boot/dts/imx7ulp.dtsi
@@ -186,7 +186,7 @@
 			reg = <0x40330200 0x200>;
 		};
 
-		usbphy1: usb-phy@0x40350000 {
+		usbphy1: usb-phy@40350000 {
 			compatible = "fsl,imx7ulp-usbphy", "fsl,imx6ul-usbphy";
 			reg = <0x40350000 0x1000>;
 			interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
