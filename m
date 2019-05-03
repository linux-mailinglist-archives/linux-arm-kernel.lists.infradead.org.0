Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1EC13290
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 18:54:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BVuYZemHFRsgmaAhR+Pyd0JhOJoS/BcD5Tn+Tbxjq8o=; b=DWpqrxSIsdUlql
	52GBO2Urv1GqMzRqMTD5OujsvJVWXcqMoQ5V5EBcbYID51o2DG4zHVrvP+scKn3SUHmUpQSjHL3+L
	7bIsNnSl2P4X8DJ7N7ROb1wEzh60BLi3Y3HJdVWFsExNqSWdPjf96JhqxTWG5wTKA/bNvUCr/aoMr
	nofAGP5FgHRIS9FqP/702286p3R/HvNpBFuwZR3z1IXPruCws5MCXX918VKyRRs/ntdBjA9H6Vx4r
	ZuU2pubg4QkhN2jXYTh2ICAsfxwbsIUZwg5PamYHgFhJqtIyauwMQhVZ5elqEqWDgfvvWCz5Y92vn
	bL52DZcqixAye9bcBb3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMbSJ-0000Gg-F0; Fri, 03 May 2019 16:54:39 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMbRY-0007q6-9g
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 16:53:55 +0000
Received: by mail-ed1-x544.google.com with SMTP id w37so6770504edw.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 09:53:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nexus-software-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4UUaSV6UsTJj0YzNYNTXseusGNlLAnywMu7z5yzgiuo=;
 b=Bkgs3wYfaIDcescO6hEhbESLxlHtIU1ZdUQ58EaYqQE61UZiG26j0XiHeps/v3dF2T
 mObHp7f4mDaZPFjkWURs3dEesPWFt/MnpxLIrbFA0EzoVbH0vCxvCyJM7PDxxYiIHC7S
 cGuwzBOmhGpj1FAoJGyLBpe/J7gPu4Wadd9JPWW9uSmGh1RqNqScZ37/bqYgXoYqMDZj
 X56LItkbA9QsRjTJR8GPBbgvCyzEkzntxAM6XTRyJjXuVMyut4PjarT1mYF2Ojh5rFMO
 p89UakNVE6Mp0YsGQJjljrEdbL1mHr249gHwxcRJx3Z0SB9//rQdqoAowwatm4jIyzff
 uwBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4UUaSV6UsTJj0YzNYNTXseusGNlLAnywMu7z5yzgiuo=;
 b=QhU7KtM+skuNzrbMIr+60lYxB/LzNKOK7NaA37ffTrUxmdwwwseTFsA/Qi0L2iR4rv
 gX2qhIJ8K6NugvCJRGviNttZ4UxpIaUT2CDai1voRAd6+ajN0jpKH37klGQs2bZ2qa/n
 wxwUuDPDBAjHPT9KQqSPPi5CtdqK1xU3SRyPG1UCs4YyVk7dWRDvkJh4eWt1/E9O+3It
 0agzWlTy7MtdG5UIbk3slB0OENgmcaAnHB6HwFJ4BZnB1D69VAVSn7RI+XRJTIV7Su2o
 jYn2txiGhc0lKaA6Fd4sG6zFqxSL8G5bK6XnaIKf5PBVT+y+ftNCkyI73JlNFu0z1SIb
 DjEQ==
X-Gm-Message-State: APjAAAU0q0UYM/HrvkvUZG1QVvvmdI1NZu+3Mjw0lOEyPG3FeZNXJKjl
 OlReO+K50++440zl+i2k/ViUUg==
X-Google-Smtp-Source: APXvYqzB6aUE96YeSt2xyCeOW5vMxyPSMXn7a6sdOIPzy8EsGCltFdnJTGy0RC9T/X5cvIEHR8I49A==
X-Received: by 2002:a17:906:29d3:: with SMTP id
 y19mr7282365eje.122.1556902431008; 
 Fri, 03 May 2019 09:53:51 -0700 (PDT)
Received: from event-horizon.net ([80.111.179.123])
 by smtp.gmail.com with ESMTPSA id j55sm707038ede.27.2019.05.03.09.53.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 09:53:50 -0700 (PDT)
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
To: gregkh@linuxfoundation.org, l.stach@pengutronix.de, peng.fan@nxp.com,
 shawnguo@kernel.org, srinivas.kandagatla@linaro.org,
 leonard.crestez@nxp.com
Subject: [PATCH v6 5/5] dt-bindings: imx-ocotp: Add i.MX8MM compatible
Date: Fri,  3 May 2019 17:53:42 +0100
Message-Id: <20190503165342.30139-6-pure.logic@nexus-software.ie>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190503165342.30139-1-pure.logic@nexus-software.ie>
References: <20190503165342.30139-1-pure.logic@nexus-software.ie>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_095352_583361_FA647F23 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, aisheng.dong@nxp.com, abel.vesa@nxp.com,
 anson.huang@nxp.com, Rob Herring <robh@kernel.org>, linux-imx@nxp.com,
 kernel@pengutronix.de, fabio.estevam@nxp.com,
 Bryan O'Donoghue <pure.logic@nexus-software.ie>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add compatible for i.MX8MM as per arch/arm64/boot/dts/freescale/imx8mm.dtsi

Signed-off-by: Bryan O'Donoghue <pure.logic@nexus-software.ie>
Cc: Rob Herring <robh@kernel.org>
Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 Documentation/devicetree/bindings/nvmem/imx-ocotp.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt b/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
index 68f7d6fdd140..96ffd06d2ca8 100644
--- a/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
+++ b/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
@@ -15,6 +15,7 @@ Required properties:
 	"fsl,imx6sll-ocotp" (i.MX6SLL),
 	"fsl,imx7ulp-ocotp" (i.MX7ULP),
 	"fsl,imx8mq-ocotp" (i.MX8MQ),
+	"fsl,imx8mm-ocotp" (i.MX8MM),
 	followed by "syscon".
 - #address-cells : Should be 1
 - #size-cells : Should be 1
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
