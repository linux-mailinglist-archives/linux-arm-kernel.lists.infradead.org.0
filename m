Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A74F1169054
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 17:26:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SdpYMbue7nSNQ2rptlbcns1G8a9s4Lzi4OvHBkrGF3o=; b=VBTtpWwbxsuZ3+2MgA4oQgK8C2
	atuByHQML3NbAN6CgALai07fznat64UXfH+dp/xocClTIGdgz+S1FBEAAPfIjNTDRsR6aODnwnymO
	G7nQMAx6lx6953BhMZ5ZZrdxkLPKgecueAyImT3nbY+KiUik0LaoLpJtnLhHKpnPiHTwrKPMPHP7R
	VGS/8i3BJL8GP3wm0z8mCf8rw+JFZjrTZxeIdDaPpy1JRr1ZzPppF+Sj+Gi3Nzx/E0DAHH9do6Gz8
	y7WDaY+L/DNCYOA4gbxiODXXYy07xn3cF42dB6NtOMjegRxXYkZPtF3o6aBz+urkKQYqqje6Af4jg
	11DSBbtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5XbV-0001R0-20; Sat, 22 Feb 2020 16:26:09 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Xag-0000k9-PL
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 16:25:20 +0000
Received: by mail-pf1-x442.google.com with SMTP id b185so2947125pfb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Feb 2020 08:25:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QZ0XPHrkGczK68VTqBdi2gga5qCDB/xbspdRfUcWe3Y=;
 b=JKfgDHPAPplpi8yLoQ8LrU7FuYC9H2z0fll1FQAjYKjGMPvnAfFGzgdvzd1dv7nKHB
 qqTnBKegtVbF51wnpByFo6AesU6BZu6o8rqRedDZLOan/KiLvEOqnU+P5BOBNYVaE0h0
 KJnwe/gQX5wvwIK53GfBCUJsE0DtaDLmAJ/ywAYNTAwMHfZXFTnUFtkfeZlT3+LCK/R8
 fRGsx8iFnxhuJU9Z/YbQV+PpT6hnsZVZ9BRjT/2WpCsCkORzG3l5taWKnxL5bkWBtrTm
 6poQqzAdbu3cpi9SZ+IXeRex5Enravo9BgL36LxQFLIr1sQpc/I+hsiwinLvmh4Jbm8t
 RONg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QZ0XPHrkGczK68VTqBdi2gga5qCDB/xbspdRfUcWe3Y=;
 b=eBgOk+iNe4ZFhymJdNkvQBQytKF4UHEbmR2RAfAuePkXAC1OhDi+/GP31q6nrok2Dd
 ZGSDQD5Tzzhlp+/kaTQHmY8OYhGZ/+S+1zYRH9NqTuVddDopDn2YxN688m56WE14PIvh
 WM3dOPBC3SUHEwFJEITyTAOoCT6fH6+A4uBP1/QISS5RX3j89jp2CXuX9wSl/0awPprT
 QfqrBHivACUh5xxEVXz/M1dcMmV06OZ5tA3+3DRs7ga2sNJGD5st6dsvpgemNpeLD+yd
 AOeQavHdmgV0QhgDZUJTtsKemiT4NkE4U+Lyb09TaIvm1By8ORBu1htuwj5/Z3zhI+RY
 gnLw==
X-Gm-Message-State: APjAAAWaAF2Tvr+RiW9iMZPvytMdziyIboDlCnQJDl56uXqKkEgtsuLV
 8fcGo84yrwY2vvU5HCH3F4i/
X-Google-Smtp-Source: APXvYqwCNJokm7CWkuaJXTaW+Sp3pmLJBq34ZkBB8dcrtjSvqVAQjQaPEdtOdsgpQnUPlTarUqq3TA==
X-Received: by 2002:aa7:8bcd:: with SMTP id s13mr44039192pfd.234.1582388717854; 
 Sat, 22 Feb 2020 08:25:17 -0800 (PST)
Received: from localhost.localdomain ([2409:4072:801:b38c:89e8:305c:23c4:b77f])
 by smtp.gmail.com with ESMTPSA id q17sm6851296pfg.123.2020.02.22.08.25.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Feb 2020 08:25:17 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: matthias.bgg@gmail.com,
	robh+dt@kernel.org
Subject: [PATCH 3/4] arm64: dts: mediatek: Enable I2C support for 96Boards X20
 Development board
Date: Sat, 22 Feb 2020 21:54:43 +0530
Message-Id: <20200222162444.11590-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200222162444.11590-1-manivannan.sadhasivam@linaro.org>
References: <20200222162444.11590-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_082518_942002_FB326C03 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 adamboardman@gmail.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are 7 I2C ports used on this board. Hence, enable all of them.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../boot/dts/mediatek/mt6797-x20-dev.dts      | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt6797-x20-dev.dts b/arch/arm64/boot/dts/mediatek/mt6797-x20-dev.dts
index 13939d55b85b..eff9e8dbd076 100644
--- a/arch/arm64/boot/dts/mediatek/mt6797-x20-dev.dts
+++ b/arch/arm64/boot/dts/mediatek/mt6797-x20-dev.dts
@@ -28,6 +28,55 @@
 	};
 };
 
+/* HDMI */
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c1_pins_a>;
+	status = "okay";
+};
+
+/* HS - I2C2 */
+&i2c2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c2_pins_a>;
+	status = "okay";
+};
+
+/* HS - I2C3 */
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c3_pins_a>;
+	status = "okay";
+};
+
+/* LS - I2C0 */
+&i2c4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c4_pins_a>;
+	status = "okay";
+};
+
+/* LS - I2C1 */
+&i2c5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c5_pins_a>;
+	status = "okay";
+};
+
+/* POWER_VPROC */
+&i2c6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c6_pins_a>;
+	status = "okay";
+};
+
+/* FAN53555 */
+&i2c7 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c7_pins_a>;
+	status = "okay";
+};
+
 &uart1 {
 	status = "okay";
 	pinctrl-names = "default";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
