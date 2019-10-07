Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 784E1CEECD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 00:06:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FtB/iNcu/aonubLApHe3cLAhtDrB739N+3V1O8neaio=; b=VYY1hJAzaXYR6P//hfAfc3Duds
	pVloHjBww9iYPvhNTjUuTQwT0M9yAk5r3tCV10zpDnXzmdd18mHQMT+U1e8sKHTIgyblfeov+HPxm
	hbyo5GqbIqMj7twzmZwJeFVMfPGaUdqqqoQfD6TPLxHnGa4cGOl/YrHCYcJeUNbC83Srl4B+ERS/V
	zI3u+kK1zuGPwHAhuD72K3rmYP6M4AeMEXtyHkEPG2rVZws+JCXcUCoJ7jeOAZ6w2pLtX2PjtkNS+
	CquiXGO1os3VCT4PJ/tY4LYEZtjXu4Erz8eMjlpU7g8J7Jk0hMXWWX7/brBDpT5QA//2w9+EKkYw5
	oNbWe8tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHb95-0007WA-RW; Mon, 07 Oct 2019 22:06:23 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHb8p-0007Nf-PV
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 22:06:09 +0000
Received: by mail-io1-xd43.google.com with SMTP id c6so32086990ioo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 15:06:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xderkNAd5iCp8HxtFYkNSskrWASJhHRHCkZ3LCYjMzg=;
 b=uAl/TZp7ZkdqN0kHsH6si4mz/kt6foUvrxpy/Hs1hwwYeDdgEuTY2/NX8gN7Z6xarw
 1hIqz1zlPv0f61x76A9KuZPX3ND6xtw+uJwpD9J2GmtwH5MMTXf4rikuKip1Zd6oOfeU
 KCFrY8uiRgAbhFxe9eH46tdvsh+yGE2QR037uytPar3/FjgdxxWuGmruBJFa1/lZ4DFi
 VUFpwudGnJyx287MeZ6YFJ0Kx8R/nsFFuL3x6PkufOhzgMZ05iJ6t+Qwcw1jThz4NCEc
 yijnv5TXxYEgWHpjcY+hnLWFuQe4uUe7e8JNlUeN53aU33oXKOKy+TjaqQIC7E3sUfl1
 smEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xderkNAd5iCp8HxtFYkNSskrWASJhHRHCkZ3LCYjMzg=;
 b=lRCpc3UiptdMLiBAv4iziqjTk8AP2d0k2g0Rb2kuhBi/CsRUtYEp87bf05YiFoJRa1
 HYiCRyiHHJI4R4aTw5jRXzrw5VLtoaJ5Q4r88X2QmILDjIigWadxcGtoMwveRTceWzMS
 ikl7Vlm6I3lWHkWHgPGVwXP61Mvd9/CKavmMYbXOBUSXt6K5DJ64cEPhKeGFmn59/G1r
 HXslOX1EEH0ljrAzCsibXa2VpswVACdtVDg+hj2l6xf7Twaf0+tmULaWWy7c2oOu7JxB
 AHGK0Tu8AZiQKHPfMrWdm+yvABtl4eXhGnvP/fyhUFz2ddN7vMAHMgswjnAHrSuAtzRP
 ay6Q==
X-Gm-Message-State: APjAAAVHQwHZkKmtWM5hfQO3ubauAPISr7eWJ5h3+B3pOtEQHfR9TgvF
 IvxBLR3WSMEzHGGDkyt1Dro=
X-Google-Smtp-Source: APXvYqyjBEBE28A9G2yZBMzh9WFCpy/KQsZ4WTfLgjutm/b0s70ky7JLyIM5zHztc9JPwoU/XJytDQ==
X-Received: by 2002:a5e:c747:: with SMTP id g7mr269134iop.70.1570485966577;
 Mon, 07 Oct 2019 15:06:06 -0700 (PDT)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id m14sm6479874ild.3.2019.10.07.15.06.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 15:06:05 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 2/2] ARM: dts: omap3: Add cpu trips and cooling map for
 omap34/36 families
Date: Mon,  7 Oct 2019 17:05:40 -0500
Message-Id: <20191007220540.30690-2-aford173@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191007220540.30690-1-aford173@gmail.com>
References: <20191007220540.30690-1-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_150607_823759_061B5E5A 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Tony Lindgren <tony@atomide.com>, hns@goldelico.com,
 Russell King <linux@armlinux.org.uk>, adam.ford@logicpd.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Adam Ford <aford173@gmail.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The OMAP3530, OMAP3630, and DM3730 all show thresholds of 90C and 105C
depending on commercial or industrial temperature ratings.

This patch expands the thermal information to include the limits of 90
and 105C for alert and critical.  It sets the coolings-cells for the
34xx and 36xx CPU's which both point to omap3-cpu-thermal.dtsi.

For boards who never use industrial temperatures, these can be
changed on their respective device trees with something like:

&cpu_alert0 {
	temperature = <85000>; /* millicelsius */
};

&cpu_crit {
	temperature = <90000>; /* millicelsius */
};

Signed-off-by: Adam Ford <aford173@gmail.com>
Tested-by: H. Nikolaus Schaller <hns@goldelico.com> # on GTA04A5 with dm3730cbp100

diff --git a/arch/arm/boot/dts/omap3-cpu-thermal.dtsi b/arch/arm/boot/dts/omap3-cpu-thermal.dtsi
index 235ecfd61e2d..dfbd0cb0b00b 100644
--- a/arch/arm/boot/dts/omap3-cpu-thermal.dtsi
+++ b/arch/arm/boot/dts/omap3-cpu-thermal.dtsi
@@ -17,4 +17,25 @@ cpu_thermal: cpu_thermal {
 
 			/* sensor       ID */
 	thermal-sensors = <&bandgap     0>;
+
+	cpu_trips: trips {
+		cpu_alert0: cpu_alert {
+			temperature = <90000>; /* millicelsius */
+			hysteresis = <2000>; /* millicelsius */
+			type = "passive";
+		};
+		cpu_crit: cpu_crit {
+			temperature = <105000>; /* millicelsius */
+			hysteresis = <2000>; /* millicelsius */
+			type = "critical";
+		};
+	};
+
+	cpu_cooling_maps: cooling-maps {
+		map0 {
+			trip = <&cpu_alert0>;
+			cooling-device =
+				<&cpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+		};
+	};
 };
diff --git a/arch/arm/boot/dts/omap34xx.dtsi b/arch/arm/boot/dts/omap34xx.dtsi
index 7b09cbee8bb8..99a7161bebb2 100644
--- a/arch/arm/boot/dts/omap34xx.dtsi
+++ b/arch/arm/boot/dts/omap34xx.dtsi
@@ -26,6 +26,7 @@
 				600000  1350000
 			>;
 			clock-latency = <300000>; /* From legacy driver */
+			#cooling-cells = <2>;
 		};
 	};
 
diff --git a/arch/arm/boot/dts/omap36xx.dtsi b/arch/arm/boot/dts/omap36xx.dtsi
index 1e552f08f120..8096b6ef0ae1 100644
--- a/arch/arm/boot/dts/omap36xx.dtsi
+++ b/arch/arm/boot/dts/omap36xx.dtsi
@@ -28,6 +28,7 @@
 				800000  1325000
 			>;
 			clock-latency = <300000>; /* From legacy driver */
+			#cooling-cells = <2>;
 		};
 	};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
