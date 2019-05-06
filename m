Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AB21494A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 14:05:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9wmKasufbvzy0A26bGcEZk7eIrQiI/hkmuEkgz5eMzM=; b=YZZ
	p/4X+Cfqort40mUMOHBcplb0TgOZebradhcCWsSyWZ8X29Mo/D85VDQHkPkIdanA6NkP63rY7T2rL
	qGgD9M6anj3x2s7i+G8nM0NhPqkJAr22xVdCPt1M+zECyb7dSFAxShNCUpSiko8kdA4Jf3Kff09uH
	DJ4dONUAbcBgL35LQ3igIOXBbe9ewjOkM5xUXjkpYS2wfAVS3BloPmIwLoQRamiqmz9jx7xKHcHLy
	qChpSon5tk+p8vdaCTyBBPUTKi10Gb6AHBIfGgzUyxyzZbNiU4GrfMfdJ4dUeatSQUXiY99ObYpJ5
	5e3e127BCqHBN+DhIFxWpMKWCjULF6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNcND-0004US-Px; Mon, 06 May 2019 12:05:35 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNcN5-0004Su-L1
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 12:05:28 +0000
Received: by mail-pg1-x543.google.com with SMTP id h1so6373875pgs.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 05:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=HNEnwk6bTyI+OdxTHxmPibg++VUvhYqw1S30xXcVZwM=;
 b=f/5+htOyvjkdDYEDCOaeUK7pb2MKXpEDjDcB9ympoEJwxl8lLpuo+/Do9n529BCo7G
 fy3eB+/l9rwfBf35NTTLyd4TCsrhybdKdrUmOODARQue/Kl8V9U1fbSn2sLxnTzw7s3e
 rxvR+cKHuYXhsWa76q/R17RMzgAGDDZba8esw+/oste9ySRMomylMMQfpYM+Kb7ZMBWH
 HWPlkCsTmWxd7DTrh9JACEnS1o0WoP/ds6ehK3ObZBcW0Rd1oi++HcOT5Z10RlWrxV0b
 t/Y/JBqtVTOHxVRFjsKFuthtsgL1WcoBvbOg6muXU6Ikd7MmXAftmvnsbp5YbwZnBIcV
 KXlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=HNEnwk6bTyI+OdxTHxmPibg++VUvhYqw1S30xXcVZwM=;
 b=CBSM/uDrpnq41cOJQVTMYmgl4c0z6dzj5J6dwuMbugk6bhMKAFtDB7EQqKE/EClOAu
 rA0ZVf9K9bRF7KaMUT3VbEoaJ+Nru7iC1xXn1UIquU3fGd/UnjWdMvLM5sVbJylUthrQ
 CvlAvQDbF2ciR9RmG+1AwQsJc4EyURBEYoIKo9qPkTn3sqN9Y7Q3q58Hr7oO0uX71EIl
 gsyy8n9xj1G3Wi9mEmlq6TDEi6U9ogXI9TXiEna3WWeFBP2HGOdkdBP0QwYvAjh11wkQ
 vf7ZqIhHpN5uYcuCFEp8stLe56M6AmRPiFRCLiZDMW7uJPCKgqUILdoCYk3l+pzKZIe2
 Wgfg==
X-Gm-Message-State: APjAAAVc6Ksr1+w6HL1IWkrgIflXxWJlxYuLNobbcw0qrF0SP8sr9n6o
 ZdtngSiTMr4Xa15trU54m17f
X-Google-Smtp-Source: APXvYqwFs/Zc/eWEWDAECt5UzKf54ZygzFhrTr+07TNz+PDBlMsTsn8Aof9hCZQDwHTJxr0qMFJQeQ==
X-Received: by 2002:a63:9dc8:: with SMTP id i191mr30660274pgd.91.1557144325309; 
 Mon, 06 May 2019 05:05:25 -0700 (PDT)
Received: from localhost.localdomain
 ([2409:4072:611b:55a4:e119:3b84:2d86:5b07])
 by smtp.gmail.com with ESMTPSA id q17sm26482318pfi.185.2019.05.06.05.05.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 05:05:24 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: heiko@sntech.de
Subject: [PATCH 1/2] arm64: dts: rockchip: Enable SPI0 and SPI4 on Rock960
Date: Mon,  6 May 2019 17:34:57 +0530
Message-Id: <20190506120458.25842-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_050527_686482_254CDA5F 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

Enable SPI0 and SPI4 exposed on the Low and High speed expansion
connectors of Rock960.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
index 12285c51cceb..7498344d4a73 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
@@ -114,6 +114,18 @@
 	};
 };
 
+&spi0 {
+	/* On Low speed expansion */
+	label = "LS-SPI0";
+	status = "okay";
+};
+
+&spi4 {
+	/* On High speed expansion */
+	label = "HS-SPI1";
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
