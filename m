Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B90A135AE7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:03:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=INnpdGIrEADywNPSabuXFyHpSfSKwp8fHxJ/1wwP6rc=; b=A7iF9DHvMS841e
	Hq2mtTeNWIhbu540Q+Yo817tsLr85Co6ue1wmLjHOYNiRfuSgR0lX9tn2Nm9wCMJikV8ipsI9yC9E
	4rf3wgJ+1kcqaO39cp/Crd4R/26V+0ugJUoWkmjTMvhRkrQh3yWfc63HxyI02R+B0+YTB15RP0g0H
	d8os7AEM1sBdKN7Snu5RYerIVWV583IK/GousUDzpzXNJqhNMsUdryAfD69l6Ds7r5VCEEbPPVdHe
	xx1pbfYWjDcrfTFkID8/I7JIhgo/Vv0Qllm9cjE8aWYgwl2M0kZlT/zhtDtFc5qcuK4BSxUTrDjBs
	d0PJOWeKY2kpOkpA5NsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYPX-00044b-3J; Thu, 09 Jan 2020 14:03:43 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYOY-0002X7-H2
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 14:02:44 +0000
Received: by mail-wm1-x342.google.com with SMTP id t14so2947676wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 06:02:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=i4WlGl2APfpv2lRrFN39WYIWl+QrT3wDSJtharCyfCg=;
 b=XOd9sP1TVktE8HKqQnu820uW9CLDKpXDc2oLvP44cMRM1nVI9dp/EfqStuDVL0IaOK
 2GUgfxZa7fXsM7IVB86GRA6c41WAZMuz110w9wE5mJyVcPgPp+LJjM5ljrczxbmqSqGF
 wLmAQsZvC1Cfihj7Sl8c8yBFck1sfS1QNIZgw3x5VWZtRGy1dLctuWBu0RcXMFmyHSE3
 8WrSmubYKBptazOrGeObwN71AAJURhXhKaf+13ZyoIfKI8/EdQENUhpU2gTej7A1gGDv
 wCEr5rPovhdtEomoiruOvOlacyPmscFE39UEnRJMsVv+HOb/AKi8jrk+fuKxaB7ITv/5
 i6PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=i4WlGl2APfpv2lRrFN39WYIWl+QrT3wDSJtharCyfCg=;
 b=miCiILaLxT6hmzuIC3Z+9VZ0P1xFdfg/69cb/j6F3WI3ipqNBeQBF7SOUDw/nobOzG
 DrBT8xO8+m6nq+fAp5dMkamS8VTT7H5fyGEA6/I8FD71MaUgcrJe9AZZrzRIPdUv7o/Z
 Wqg6KOGghDGzarfROwWuaFFeiNqyi+9Gv/C17AYFCUsiVpXCL1A166s4i1oFfK46lBHn
 JEEamOwYmFx0qOJLJ5Dz6870CuX0ePXnHchHgAz/3ce0BOSJbX9zHqfE4RaOjYoTujdS
 e8ZwQ7lA3gx3aJH8VOlo1JDg2pq0PtUW/U5TzVR1sX5qEYIpK4dFBLKyQE+7aVpPyALD
 iVOg==
X-Gm-Message-State: APjAAAXu9iYRd8lRCTAfcoq4yRiqVeFsGBWGINFJ6Dc6/sIEaWYFxTs+
 KxYpT7tt4HPQRnGDr16mYp0PK8BrXI8VPQ==
X-Google-Smtp-Source: APXvYqz3DqsI5MGZY3ATZ/jamxaASkH6cwXd4RR901fnZTW0429qYhylN5IHhyTmlow651Pues0jVQ==
X-Received: by 2002:a1c:1bc3:: with SMTP id b186mr5092722wmb.79.1578578545543; 
 Thu, 09 Jan 2020 06:02:25 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id x17sm7971846wrt.74.2020.01.09.06.02.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 06:02:24 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-arm-kernel@lists.infradead.org,
	git@xilinx.com
Subject: [PATCH 1/7] arm64: zynqmp: Enable iio-hwmon for ina226 on zcu100
Date: Thu,  9 Jan 2020 15:02:15 +0100
Message-Id: <3697b726f12df89d6fc222b64672f8fc3779ec3c.1578578535.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1578578535.git.michal.simek@xilinx.com>
References: <cover.1578578535.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_060242_720099_BACBEF25 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
 Rajan Vaja <rajan.vaja@xilinx.com>, Jan Kiszka <jan.kiszka@siemens.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ina226 hwmon driver is deprecated and it is recommended to use new iio
based driver. The patch is enabling iio-hwmon driver to export
functionality from IIO to hwmon interface to be able to use lm-sensors
package.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
index a109e82982ae..d60110ad8367 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
@@ -103,6 +103,11 @@ sdio_pwrseq: sdio-pwrseq {
 		reset-gpios = <&gpio 7 GPIO_ACTIVE_LOW>; /* WIFI_EN */
 		post-power-on-delay-ms = <10>;
 	};
+
+	ina226 {
+		compatible = "iio-hwmon";
+		io-channels = <&u35 0>, <&u35 1>, <&u35 2>, <&u35 3>;
+	};
 };
 
 &dcc {
@@ -191,8 +196,9 @@ i2csw_5: i2c@5 {
 			#size-cells = <0>;
 			reg = <5>;
 			/* PS_PMBUS */
-			ina226@40 { /* u35 */
+			u35: ina226@40 { /* u35 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x40>;
 				shunt-resistor = <10000>;
 				/* MIO31 is alert which should be routed to PMUFW */
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
