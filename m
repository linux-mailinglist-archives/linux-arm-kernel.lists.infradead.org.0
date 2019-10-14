Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C13CD5AD1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 07:33:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Q79ZmCFg5hwdDb99SuUmOloN4L+pdnq9CJv/IjS/5GY=; b=QoAeixK8EiyCwQiqk4xzNeXlZH
	qf+0pr4MlvJtdokAs8q/KKjgYR4dX44vDl3iwJ6mFTwqHHhkLhmis1QmQodP6Mck6SN2LY1+QKEZ5
	4+zoWrx/qM7Tv4sHBwNicNyTqqQce69CWz1K/BhAivT5e9P2tPaGpF7OQCM/0EvdN6S7qA98SGyQv
	us76jiGmFaluJysjxrz7g+gHXzO70AK0PSakGHU9alkP8DY5lP/tlei7q+eoNPCuzKrJKnjNmQXsI
	n4k7UKanGIsO1Bah2Uq/+j2c45cvMauPaz8v05RrTvHXdZY+zPvDmGMCot4JC+M1Ui+EzrSTW7faZ
	MDZnOZIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJsyq-0005wz-LM; Mon, 14 Oct 2019 05:33:16 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJsxk-00050g-LT
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 05:32:11 +0000
Received: by mail-wm1-x342.google.com with SMTP id 3so15339013wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 13 Oct 2019 22:32:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZPt3z/LPUQkZF7XPmauch+PD9uKUNhmmb16ZUBya544=;
 b=NNRfug62qVkpYI5/OmgtlawaQdrdObsbLahRD4b1X+pEB4TI3PY+sWHTOXSyOHOirm
 Ce+H6/yjXGCfFtDG8W+U0RwGTH0O0IiPBEoiApb41LtzjOwhmtzx08jFXjIe68DoKmCZ
 9UdgBZxg/+LRD26L/G+jStWdo1BiiIo81MeQ5jbi7DjnH+5261kWY2Po2gKqatvHmYqV
 ERG7ggaNVspcKlrQbgdFFoZsiFoimeA5urMrQCEWdNENKrRaI2h6094spyqFLco8xDip
 NdVqD66DChwE+0vFHkAYgEXQdHywk55nQo9jO9CqejbyW6D0dN9No68dgAPHLKRtacPn
 HQhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZPt3z/LPUQkZF7XPmauch+PD9uKUNhmmb16ZUBya544=;
 b=OEkWVd18aFH+95qLZLOH6SNt/PjPalv8CUUl+/AoL79t9Kx72rrNzopShpRXVihrfI
 3g88uJyPVce6mQQwhgTSS7Mu6Eg+P2UIYSNM7voDVDXOjML5kT00DJeLb3pB9138jgdz
 xAinrp+/31gte0ZgD5wA93rQCBdZkr/jPnHX7iRel99J56ueLSBUfuq4SL1rqZlk98sX
 JEAALGueFmUpo+7qbfzFmqw3UwMFYJpGOBHul00DK7w/5oKC9GZm1In/eMOvhT4ibYXW
 cxYjvh+eVz0FYcZ90qQ6bTCZFtQxEd0Y2JEbjyH6kNbmZ3P7emTWnxyZ2cKZ5pFZAb4P
 arAQ==
X-Gm-Message-State: APjAAAWdFOtfvFtheu1vIYlUKGPvEfILdC+upaANy60D2GBKFpV4K4+r
 pEHldhpdiTEflw/ioqoSV+tgJg==
X-Google-Smtp-Source: APXvYqyjAenIih3BVCa7xP8YhcqlBP28JppFbg1KMQZ9deITlv3xYcilyH/KYDEuYgH3Y9jQjhqckg==
X-Received: by 2002:a7b:c006:: with SMTP id c6mr13743896wmb.45.1571031127404; 
 Sun, 13 Oct 2019 22:32:07 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id o18sm44238772wrw.90.2019.10.13.22.32.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 13 Oct 2019 22:32:06 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, khilman@baylibre.com,
 mark.rutland@arm.com, robh+dt@kernel.org,
 martin.blumenstingl@googlemail.com
Subject: [PATCH v2 4/4] ARM64: dts: amlogic: adds crypto hardware node
Date: Mon, 14 Oct 2019 05:31:44 +0000
Message-Id: <1571031104-6880-5-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571031104-6880-1-git-send-email-clabbe@baylibre.com>
References: <1571031104-6880-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_223208_717168_B5E357CE 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Corentin Labbe <clabbe@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the GXL crypto hardware node for all GXL SoCs.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index 49ff0a7d0210..ed33d8efaf62 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -36,6 +36,16 @@
 				phys = <&usb3_phy>, <&usb2_phy0>, <&usb2_phy1>;
 			};
 		};
+
+		crypto: crypto@c883e000 {
+			compatible = "amlogic,gxl-crypto";
+			reg = <0x0 0xc883e000 0x0 0x36>;
+			interrupts = <GIC_SPI 188 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;
+			clocks = <&clkc CLKID_BLKMV>;
+			clock-names = "blkmv";
+			status = "okay";
+		};
 	};
 };
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
