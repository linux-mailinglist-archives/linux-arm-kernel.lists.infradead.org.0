Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C879D17BA13
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 11:20:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=phDqs5gxy7TuK5CbpNJdLnjzKygajndYvIm9rbTUTnE=; b=Qm413Q1mrmJ1fB
	rO+KDCBPRFFhYBTHxzRcJaEHbrZyaWpH3B6V1AcPHQMqJ2lgoA2NtGhK5CR4wRyI/cmFkG11h8G0S
	7zFH+45eZg+TDMLUqTBrz8xJbyYcFV8EocahN84e6VBSJ6vFJaGXQxeg8ZB2VI+B/VMXQ5HbdMXEN
	IUEF86P0NXAfwmuuiPjSDo/ISqnhhAvxVj98JXXhxLC7nelmdCua4ZXbgkQgylhCwcHmjP8uOavlO
	aoCna6/ZZ9CTsOCP0ehu5LfpTZ4Fz2XxvBKcZJx5RoZKzKcJazJf/6N7Cqdaq0XMAXTvxIRg9Drh2
	n+/CrdkQNQwl/hQqAowQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAA5h-0000q7-AR; Fri, 06 Mar 2020 10:20:25 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAA5Z-0000ox-Cf
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 10:20:18 +0000
Received: by mail-yw1-xc41.google.com with SMTP id x184so1712537ywd.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 02:20:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JZtPV4lyilADfqy1eD7YIQ/XfyrDcGPt4PIlFlX/erI=;
 b=bQyzRFDo+Vb/MswGw+eHElqyqGb3zJ0MWFv0WK6p0ACeczEHSnMryHED7qFSgioL1u
 ZrXaPm0ePM6GoyFxEkW+IRFcu18hwLzdLW4X3oME9tiS72gbt9P5EBimS/62i8QBQjTY
 IyL0P29Zjat1c2UWDQcdCMS2LCdflmaEc+LzAdD3ATQOtCmX2lu1Hn+m1QS8uK5L+sJ9
 9Fks3eEusAer9qGOilctBHANj11MWxnB6W3eIXNjrf3So6IDXOeY+Rs992jHykbD8Pcs
 U5fajFIk5S/WaQre6PSWpN21cJSE0D2dkxfBZlZ8ax55G67e23jIkvFZIMgwx5WhkFuq
 gznQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JZtPV4lyilADfqy1eD7YIQ/XfyrDcGPt4PIlFlX/erI=;
 b=nk+vMr15vfK/DnRpSySJeeV39HIlAesB/W5uG1TffJdMdcUkSA25+ZvaPOME+5Uac8
 9UhEZAIkN5UPskQSS93RgUY04EzWvEAolIBLcw2UXPWnDfZop7iU5WcJeXi5hnribTnP
 I/xRI8OyMP6998QDJNBBHg/YK/ycG9PYB5GYPyO3Zf2rN79Oe0iWusUJnOvdsHCG2OXF
 EPZ/4qpqOKTVWKuDDz9pK9DCI/d3N/LQeMKWYmrjOmd6/NbK9/+KRkzVkIqCdQsN+MrL
 /DYWjWX71qna7udJN98xsCJmjiI0+MpVVSzeyLzj2Y4Br+EraBnCkZyUHA+gYMN0adiT
 huBQ==
X-Gm-Message-State: ANhLgQ3O7KjuS8AB0lZFHJuJx3GU0cIOAE3u5sl373RYfvWkDe3gBw90
 V016SGznYNPblqNUWRquXwDupu3Ue54=
X-Google-Smtp-Source: ADFU+vteD7dUx1U48uUDIL7XDGNdrDmdW0/Uf18cgj4qg//uICALRMG5MYEWvbGkTm+FC7YAoWjqEA==
X-Received: by 2002:a81:5e09:: with SMTP id s9mr3248359ywb.348.1583490014862; 
 Fri, 06 Mar 2020 02:20:14 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id p2sm13978658ywd.58.2020.03.06.02.20.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2020 02:20:14 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V3] arm64: dts: enable fspi in imx8mm dts
Date: Fri,  6 Mar 2020 04:19:57 -0600
Message-Id: <20200306101957.1229406-1-aford173@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_022017_432662_C6CA44B2 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, aford@beaconembedded.com,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Han Xu <han.xu@nxp.com>,
 Adam Ford <aford173@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pull in upstream patch from NXP repo to:
enable fspi in imx8mm DT file

Signed-off-by: Han Xu <han.xu@nxp.com>
Signed-off-by: Adam Ford <aford173@gmail.com>
---
V3: Move flexspi to order the unit address.
V2: Reorder s-o-b lines to give credit in proper order.

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 1e5e11592f7b..7e6c0722afa6 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -558,7 +558,8 @@ aips3: bus@30800000 {
 			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
-			ranges = <0x30800000 0x30800000 0x400000>;
+			ranges = <0x30800000 0x30800000 0x400000>,
+				 <0x8000000 0x8000000 0x10000000>;
 
 			ecspi1: spi@30820000 {
 				compatible = "fsl,imx8mm-ecspi", "fsl,imx51-ecspi";
@@ -760,6 +761,19 @@ usdhc3: mmc@30b60000 {
 				status = "disabled";
 			};
 
+			flexspi: spi@30bb0000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "nxp,imx8mm-fspi";
+				reg = <0x30bb0000 0x10000>, <0x8000000 0x10000000>;
+				reg-names = "fspi_base", "fspi_mmap";
+				interrupts = <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_QSPI_ROOT>,
+					 <&clk IMX8MM_CLK_QSPI_ROOT>;
+				clock-names = "fspi", "fspi_en";
+				status = "disabled";
+			};
+
 			sdma1: dma-controller@30bd0000 {
 				compatible = "fsl,imx8mm-sdma", "fsl,imx8mq-sdma";
 				reg = <0x30bd0000 0x10000>;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
