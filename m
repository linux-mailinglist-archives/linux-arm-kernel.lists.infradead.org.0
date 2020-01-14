Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3BD13AD79
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 16:20:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DAQw/NPmE1xI4U8pAm2+e8H70pnIFJ7Fu+U5/wUfQoo=; b=SJq74wD/qVdZ/M
	laekEw3DaABMZTXBUePUfty8JWFT7myv8BdD2hI8OiMKYUKNg4a3SXIDQ2ScmmIT5/edzkuZcwRJO
	GXWqu+IDqwlXDHbe20KhLBl9ykN0rYitBfYDy9/xi6A0RZOglY4KbLErKQEOfUbXOP1fvI2cPaDXS
	ttp5TC8TcZFlOKYgLq7+cv7uruxO8UKOzYrNTpQhXtyitIPpQo+oM5l2Vx5070w4KSAE72fQ7niW8
	oCMampSkraSkcOX6f2p3NksM0PZyS8kTUK4iE/RcVUJxg0xj4JB4aScmYhQPQtksuGUXTBJ1fBMwu
	EqT+B/f97pALQHIiEEUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irNzp-0004VY-25; Tue, 14 Jan 2020 15:20:45 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irNyd-00029g-Po
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 15:19:36 +0000
Received: by mail-pf1-x441.google.com with SMTP id i23so6735726pfo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 07:19:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2K6rRI7pCn9t5RYAWusq+FmSFOJ0/oBKMxxQl0gpYQY=;
 b=GyBOpb18t5KUIO1lKiMJ+TY48O4y0uaee+qso1Wsun2HKScGCc2Cj0zq3voSwbeufW
 edkQTmZ3t5V9bNfanTGFKzp4yOSewQoLShea7EPxSrXe9AHa6vXseo7coz33toBgeIUF
 MLJXqv6BKVeFn8GXxHtrYdxGB25Xyo/+PD9WuTlEEcuJNejNB2bQVfO88lX+c+j1rPY+
 Mc3XWfDAbX7G7/L/qTdtedPY5vpF1MnaaiTpYJvvy1XOUF4k2C1bPC5Op3a/+vtXM7t5
 5cf1rKRYXShhbHWuEAoBhFYIvRH2PHv/jSLjyEGf/X5mfTsopEB+a4tU93WeycZuyqBd
 5BLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2K6rRI7pCn9t5RYAWusq+FmSFOJ0/oBKMxxQl0gpYQY=;
 b=KiJJ8q9Iy+71LNAYYgvibl8iIsau/NCEE7d7tKt7woXSlJceflaY/PKkXL1j5FujV/
 zCYh43Ttz6ii4dUk+OA2GP438ZkJ5CVkQM/ywIs+65dk5o5qqkWc3+yctqMUiHQCEPHx
 gkJh7oJ4+8zXGmlBbp3N4bSCIg018KraFeOYirh1WgVnAb+q0jf/K42ZDYg/NeHrGm83
 TsW3J82vAN5NxJtRlU62GQXK+R1BVBubvRfafwG0ti2jsCC6wypGh9sgm8lW/gPNIOno
 R788+FO0exoFeYel2czmDwL17y5Mj0VaY3sDEuOxBfkH3KkG9ZMIfYMn3R52CLZA1mYY
 vqZA==
X-Gm-Message-State: APjAAAVZ0c3T0Mv/EogLjMR2U6ujYOU6Yn8GgSKNU16SL4f65GLrWs33
 77a5F/ixzeg3QiA+nUG6vfod+g2e
X-Google-Smtp-Source: APXvYqwP7gCn/MA7btxDogcApJqTsBrFCttsL+REBZoBUwJzmmo+HFp2fLQRj0phrrY0C9TTdnCAZA==
X-Received: by 2002:a62:e908:: with SMTP id j8mr25632066pfh.55.1579015171060; 
 Tue, 14 Jan 2020 07:19:31 -0800 (PST)
Received: from localhost.localdomain (c-67-165-113-11.hsd1.wa.comcast.net.
 [67.165.113.11])
 by smtp.gmail.com with ESMTPSA id 207sm18834425pfu.88.2020.01.14.07.19.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 07:19:30 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/5] ARM: dts: vf610-zii-dev: Add voltage monitor DT node
Date: Tue, 14 Jan 2020 07:19:05 -0800
Message-Id: <20200114151906.25491-5-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200114151906.25491-1-andrew.smirnov@gmail.com>
References: <20200114151906.25491-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_071931_846311_9FE25D20 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, linux-kernel@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a DT node for various voltage supply rails connected to SoC's ADC
for voltage monitoring purposes.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/vf610-zii-dev.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/vf610-zii-dev.dtsi b/arch/arm/boot/dts/vf610-zii-dev.dtsi
index a1b4ccee2a10..95d0060fb56c 100644
--- a/arch/arm/boot/dts/vf610-zii-dev.dtsi
+++ b/arch/arm/boot/dts/vf610-zii-dev.dtsi
@@ -84,6 +84,14 @@
 		regulator-boot-on;
 		gpio = <&gpio0 6 0>;
 	};
+
+	supply-voltage-monitor {
+		compatible = "iio-hwmon";
+		io-channels = <&adc0 8>, /* VCC_1V5 */
+			      <&adc0 9>, /* VCC_1V8 */
+			      <&adc1 8>, /* VCC_1V0 */
+			      <&adc1 9>; /* VCC_1V2 */
+	};
 };
 
 &adc0 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
