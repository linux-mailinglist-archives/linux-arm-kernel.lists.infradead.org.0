Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B28212BA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 06:06:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=02ZKBreRAEMUV9iTceJASmHw5l7654J6/4500/Npn0Y=; b=a0X
	IVsI2+y7WMs94j0/Rg46ENN6L6WqoCQeNJ6xId2LEblaDqrq0UOYh7oG2oO/VxLmFO3AN2/olZxLf
	Rhat0R/SPXKHjdht4CRPfqFMfQtJSAMQu183VfQIFRCiW2xCplY/2JwHtgZ3hw2CJvo6gekmtBX04
	MjJYalJRKPu7yxVhOGTePZuLMwj6b5PA4DLuQZebgOANLL8WwG2doj+Q0RcIqd0nTTVdoyJHXWXLP
	h3eHcPEVymu7LlMtw1c+Uqov3ed/2Aze3fwHnKmT7n66eZdnoJ1dA9e8X3u+99P0VN4mTcnKdeWA2
	sBUWfJX8l6KXlvisqaz7tCq1KcfaTCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRU8t-0005Lq-3j; Fri, 17 May 2019 04:06:47 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRU8m-0005LB-Je
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 04:06:41 +0000
Received: by mail-pg1-x541.google.com with SMTP id c13so2632852pgt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 21:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=YUNM61SbavGzuv3ZLziasFZlDP0wZTIm2rUlcIBaEc4=;
 b=yIDpDUlKX448aC7IJW7/WLegcIQtNfcka6iCLmWv+QC8U8/MdB2bGFG1VyVS4kpSpw
 /BO6E+als7fmAJI30vpohsn/1kZAGU+w8hBEM8/jPi5X6BWJckMO70rGA3WR0/ysroC7
 +Bqe/diruvyW7cYtdcSbqqvjegR3HmFUmeZFKadkyKGTUoOV/xU7JeqKRPkOLKtLavDV
 5aZumrHxYHdRzO67Oxw1vY9zTqo6oT3XnyuBePyIawE6U4y0cIBf9hJGqEM3AM+Byhcw
 k5ZiNGp9FBVlgawHroO+EHAMFT6unmCgJUCQM0P2TTZUsJvBcsVZ2N/auobicxfEMTaV
 GvXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=YUNM61SbavGzuv3ZLziasFZlDP0wZTIm2rUlcIBaEc4=;
 b=IzsnQND49vjO1tmci7tTKDEL/PZwIX6iPORQ5ipyoL35bwV8OveLcM666BneB+hXo4
 HIhM1AzgalufVgFp5COr2pgJg06TSpw98oLGzXfxOf6wHyCh/zBqKPEubKc0YP6ISUhC
 uMvN0RsUteat3DmP7nBUoUbESev+Tx6e+MDD+sk77RXsSBMROWoYndas1eHyG9GckXdH
 DZ6TVb11RG1XkBDR5f5A8eS+WgD48g5TZpryGaerCF4Cn/OuQCeEkXZZL9DrYqx1dSv1
 cTOdsSfGwsVAHHVIOcchDCuAcuDIRA52MZMUwbzvpnTH4+pdcDOHFTCbq+CA4Ga826g+
 qpTg==
X-Gm-Message-State: APjAAAWNJiDF5VcZp3rpE0utNLHdFC/QzYZ0+onJp60CXQqtXvri3gEx
 i4UEiialNh9MoV24bp0nLSbt
X-Google-Smtp-Source: APXvYqz7kfN3pi13qegdwYdYgGYpAj2q8K5JcWDOsEo7Y6jybA2FcawPknW8Ht4RsODvS+LMWZrI0Q==
X-Received: by 2002:a62:bd0e:: with SMTP id a14mr38891835pff.44.1558065999551; 
 Thu, 16 May 2019 21:06:39 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:6390:5018:b478:7b0e:49e:16a3])
 by smtp.gmail.com with ESMTPSA id d3sm8628927pfn.113.2019.05.16.21.06.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 21:06:39 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: heiko@sntech.de
Subject: [PATCH v2 1/2] arm64: dts: rockchip: Enable SPI0 and SPI4 on Rock960
Date: Fri, 17 May 2019 09:36:24 +0530
Message-Id: <20190517040625.14607-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_210640_654005_3F61B54C 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: tom@vamrs.com, linux-kernel@vger.kernel.org, dev@vamrs.com,
 linux-rockchip@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable SPI0 and SPI4 exposed on the Low and High speed expansion
connectors of Rock960.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---

Changes in v2:

* Dropped the label property since it is not part of SPI binding

 arch/arm64/boot/dts/rockchip/rk3399-rock960.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
index 12285c51cceb..c624b4e73129 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
@@ -114,6 +114,16 @@
 	};
 };
 
+&spi0 {
+	/* On Low speed expansion (LS-SPI0) */
+	status = "okay";
+};
+
+&spi4 {
+	/* On High speed expansion (HS-SPI1) */
+	status = "okay";
+};
+
 &usbdrd_dwc3_0 {
 	dr_mode = "otg";
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
