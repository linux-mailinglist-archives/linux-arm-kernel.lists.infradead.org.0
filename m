Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C981FD2CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 18:51:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LT+06NqFM+G/cOEPa/3kK01fM/ePwVoa9tFn5axnbSk=; b=u8xqrLVb7w3e7+
	JkXXpJn2B3H2xxskeaN3A2DsBDFZg0Zk7tSg1CNpYx0+XWKoKV9t72M6px0gOxllvwiQ+WTepMHEU
	RpiJYkSxVACZrMsKvw8anXI+AnyHbZ+RupPdKja/iY6Kr+6A5O9qrUdqhaK1fAhMskJ3tCXf07NE/
	sftV/kR6tmczvv5i6xYP/5ZBr8JRtNxFWM9uKGJxW28ZIsJCMm0gyRJinMxD76pn2+hEZwk6bKXOi
	8tDsIA6IyAdY9JC1OU0g2v/aGP2h4suAI3bjf7J1mFSfEERd5ZbNZdcngmEDEpHGbDgpWPu8SlJKd
	DfoIgVX3EomMWfpmbGVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlbHg-00029E-PB; Wed, 17 Jun 2020 16:51:32 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlbEk-0005wM-DK; Wed, 17 Jun 2020 16:48:31 +0000
Received: by mail-ed1-x543.google.com with SMTP id o26so2554802edq.0;
 Wed, 17 Jun 2020 09:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lJKpt55I3R2NHkjVsgV/EWx4EQxkw9Y42GuSmQWOQXU=;
 b=SuWRHNm7e/2dXvHjlXZn0QaZypCtAgtrifRw8rwQWgE54p1v4gdCeAV3HzELa0cOUT
 NqjqJwR3GcIFqOIr2vEictKG/pCzUYfAVnataPnFzQnh0ANBCrrVnIgslT7RTyKQTOnj
 vrKhJMHVZ7e5JPjeKsIYjLzTAX+uwIIHZEWzddzbwc73CnPVdeJl1N1jviZrlvBK35wr
 0zJiSrVrU+oCgIc2G/yRZlev6qcHLFYXZW+GjCscUYokGMAa/FPB7nmlIcEPARgObtKx
 SEvrzBB78PyZnVxKU7Jfa+USiKOlpvcb6xBrrlACe2DakKHp2yzaOIbQRmITI+tD+4M+
 FIrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lJKpt55I3R2NHkjVsgV/EWx4EQxkw9Y42GuSmQWOQXU=;
 b=Z8m068W/8qvVSf8r1j1DZNR3jMtQYETaT5IBd8gJD8OuJRUL9T6xzO2CP88WOC8txq
 26PRtc3P4hJdqYkD4BzpQBgkPgDDfdZ9sN+M2k2xEhPcSQan+qPfFzi5MXe3nEJaZejn
 YBgsKACREwqOgvmDInGLdR5OXmegXTYTgKQl+cT6qaPGwLQHTM+I3Ye4GVxMZGRkAPmJ
 u2ANWWvgIjR61csT1ezmtd06SBZxK5Huu6J426OKhzn8L0IgF0Mt38pmaksIBQvjoyl8
 kwtbyIjo0XGarnBtGNuzeYx6kNxHdXtFgyXgx/mF+8fiLvuRkrK6uZ+YTyk9maNt/lCU
 cflQ==
X-Gm-Message-State: AOAM531gmcPpnkyj0zFXHhSofxbJOfuUry8Svi1817aZHmnSwy64RFop
 zNRPBG65TKk31GwdXbvrg2s=
X-Google-Smtp-Source: ABdhPJzeRmr0uDJj/7U2GJ2r5I6AA3DS92T7LUZ/ga5mx5c0Ixaylw/uHtMWYjNSa4bQd2zTQrkEfA==
X-Received: by 2002:a05:6402:307c:: with SMTP id
 bs28mr77851edb.3.1592412508568; 
 Wed, 17 Jun 2020 09:48:28 -0700 (PDT)
Received: from localhost.localdomain ([188.24.129.96])
 by smtp.gmail.com with ESMTPSA id v3sm127124edj.89.2020.06.17.09.48.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 09:48:27 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 10/11] arm: dts: owl-s500: Add Reset Controller support
Date: Wed, 17 Jun 2020 19:48:10 +0300
Message-Id: <0722104f0a281ef8b628de384b6e6e52b75ae6b9.1592407030.git.cristian.ciocaltea@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1592407030.git.cristian.ciocaltea@gmail.com>
References: <cover.1592407030.git.cristian.ciocaltea@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_094830_612658_3E458F61 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cristian.ciocaltea[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add reset controller property and bindings header for the
Actions Semi S500 SoC DTS.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
---
 arch/arm/boot/dts/owl-s500.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/owl-s500.dtsi b/arch/arm/boot/dts/owl-s500.dtsi
index 0f4fc5487dad..0b7ba2926f0e 100644
--- a/arch/arm/boot/dts/owl-s500.dtsi
+++ b/arch/arm/boot/dts/owl-s500.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/clock/actions,s500-cmu.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/power/owl-s500-powergate.h>
+#include <dt-bindings/reset/actions,s500-reset.h>
 
 / {
 	compatible = "actions,s500";
@@ -188,6 +189,7 @@ cmu: clock-controller@b0160000 {
 			reg = <0xb0160000 0x8000>;
 			clocks = <&hosc>, <&losc>;
 			#clock-cells = <1>;
+			#reset-cells = <1>;
 		};
 
 		timer: timer@b0168000 {
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
