Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC651494D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 14:05:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=maI/oJFOPvdjaJVQthDr/Iq4gFmMBE7UMCWQjW1wM2s=; b=PagQkg1+DbB4cadEDniEaOdeRd
	wLcootCKACY47mOj5NU9tddMRmy9dyMSGQjmb3PVwx8d6ftqOys+MDmPLakDUvJDRWMyVU58VFZ7k
	b1uIAT8YgMSk4f69hrTLy8ZXMB5PmYbEPu5duPQOkN28v5VaP4mHGNXjDulbMLv9ZBme+l63JDRs3
	qDa8ZY6+Fq7Re6e//VQ5pqZk4P3kk/axV6kHiHqTxuNuo2uta9KsV4zvb3B2i+h41q+3nEHOugO4Y
	rwHlErmCV4J15Zu0f4ooIkwc45Yq7RMO33neRYGoD/mmqnY5mH234mvtCmgdw60kn83RsqmUctXWj
	95Ai/C8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNcNO-0004dR-1O; Mon, 06 May 2019 12:05:46 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNcN8-0004Tq-SS
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 12:05:33 +0000
Received: by mail-pl1-x644.google.com with SMTP id e92so6280276plb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 05:05:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OlDYrQagoRRgIUanTTiaH0xI7ydpH4Phsvkhb6Hldvk=;
 b=QZmNCGD8utu44MaRa3SN0Q0GcNmFA99KuHhZxTOd2VZMnVKc59yjcdQ/pRtA57LPED
 tnD9fTyyuHB439p746gDr0wxz8EYTiLTZyxVPqEqRVXl0aJttq/xKBHLPNGsJI94+UTw
 oRNDEWKsskTZyOpdFjppaLtL/JmS/Suj2k7T9nGi1PBfbDv3eKtg7vQ9JLDXK8qwmFxn
 tlC5BvDMHGqYwksGbUV9PT6PFNgD3ag1yScw2DFJHR+QLPcEgaj/9/PZ9r3gugaKhoi6
 j7jgIZJPDbotWYsn3ZwlWCyxp2A96hsPxfVvqg0zGFR0QFOTc77kRJb/TL5X7ASQDUl+
 eRpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OlDYrQagoRRgIUanTTiaH0xI7ydpH4Phsvkhb6Hldvk=;
 b=pne26YDhbVPzXFRFVvGBOYdAb3J5UtiCBvd4S64/7gGx5sQLyTj2s4TJQEFrCEXELI
 LLNHriurUB6rMB67b3nZBt3K19WuoPCcBZiTCPNvWcBnSwQFhfRLI8Vu+7SpunaMPaKy
 wzN/dimPm8dJ0uYpn9CF2QLTZ0j6yksAIGc7hY0OZ98JHItXrLAog4s2p/xc1db5nTjw
 1YU4i2+7aUvcrsLjC/88/C+t26HYZed8uvI/VvDW+pH6+oTkFcSsLZfv2TtQOHwahAIs
 cNfrYoAQSyhumXSebHk+tTrzMOu7+n8IFQKhtJE21yW10RFto2nsMlZyFTGS5p6mzD3V
 sN2A==
X-Gm-Message-State: APjAAAVdKz7RBuWziMt9g79AihyFqNzZGxgrWVzF3We4KobTPqwW4nd8
 Wg5stmMqx5eygYKkOFWbSiJx
X-Google-Smtp-Source: APXvYqxAN92qtTThzTYGnaJj3GjkLg+pVGzJHyzT5l3HLI6BdbkS+ocPCrKkEwXf1Pjbn44N2iNjcg==
X-Received: by 2002:a17:902:183:: with SMTP id
 b3mr31792924plb.267.1557144330073; 
 Mon, 06 May 2019 05:05:30 -0700 (PDT)
Received: from localhost.localdomain
 ([2409:4072:611b:55a4:e119:3b84:2d86:5b07])
 by smtp.gmail.com with ESMTPSA id q17sm26482318pfi.185.2019.05.06.05.05.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 05:05:29 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: heiko@sntech.de
Subject: [PATCH 2/2] arm64: dts: rockchip: Enable SPI1 on Ficus
Date: Mon,  6 May 2019 17:34:58 +0530
Message-Id: <20190506120458.25842-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190506120458.25842-1-manivannan.sadhasivam@linaro.org>
References: <20190506120458.25842-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_050531_170662_B587EF48 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Enable SPI1 exposed on both Low and High speed expansion connectors
of Ficus. SPI1 has 3 different chip selects wired as below:

CS0 - Serial Flash (unpopulated)
CS1 - Low Speed expansion
CS2 - High Speed expansion

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-ficus.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
index 027d428917b8..9baa378fc770 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
@@ -146,6 +146,12 @@
 	};
 };
 
+&spi1 {
+	/* On both Low speed and High speed expansion */
+	cs-gpios = <0>, <&gpio4 6 0>, <&gpio4 7 0>;
+	status = "okay";
+};
+
 &usbdrd_dwc3_0 {
 	dr_mode = "host";
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
