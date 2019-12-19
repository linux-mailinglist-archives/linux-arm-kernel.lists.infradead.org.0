Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5CE12681E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 18:30:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yl1eVk+1/BjR9rq3rL7OiykPB4HRfa8ixNvy8FbDzPM=; b=SD/wIr8fGETM8k
	KkjvM8sJf0lwgGRIsu9xivY10cXRIiQIKPBcWGc50tTCIZWIugLzBrFxJ2aWZ5pCW0rVW65AUVx88
	XGw0ditOeLJW2xZZUlftBF+Tr4E4JxvNMiwFJJNCrhJyERiwwPfX3GpnOjvkel8XEdZ6qX7hrIBKS
	CUeJZXX9oWVIs8QWp4BJ2o3+4Hszh/1QISakn0lP4BomzE+JbP71Y52K0TWGe4+QT4f9uNjzrwq1z
	1rMsnHndxyrRSbr+VFhCrI24IvXtD6NlPLAYlry6QdTA6mdeuoCow1G7wWwn3Luk8S3dSUXsj3XaU
	BWRBTetHBqI+eCrnCxJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihzcq-0005wj-8Z; Thu, 19 Dec 2019 17:30:12 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihzbL-0004lI-5H
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 17:28:40 +0000
Received: by mail-pf1-x442.google.com with SMTP id p14so3641472pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 09:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5JoZyySS78BiNU1aODtc8vpSYvJMQn2ITDVR9fgmYmY=;
 b=WaaqDZqK//XLc6TXiRxt1Qqke4VgaCivw/JuTOr5sVzH2UIKthSS2zBh4NZCnAFUpG
 kMec0K2/0GBElO2NfKNj8V/XJXihE4NGyoYF/Y805KrJ2Wh+yXcYZR3UMrris97TFeei
 ktmy934BelNmAqIw8L9aTu8U7ukdKpCqsFBQmezt8YT+hm/ykwUQqFuJWM3AZI3mfLhR
 KVvmVz1/jhLUWxtdzGorniiACkGqgkj89ev9294DUYfMGvxMDtEDbTiZNTE29YKZSmbB
 yMSMpYyKyvpLC4IOUpnEOyXdB/KlKqKabiKaKjtNTgaLpFcrdVntBSuqLtdz6ojbVl9D
 5Tnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5JoZyySS78BiNU1aODtc8vpSYvJMQn2ITDVR9fgmYmY=;
 b=Yjasv/ia9brOT7LFkV9VarNx5S0Rte9laZ8w/iz1LbFub8G4OF2ycZRzGI9d+pKTSw
 C3GeDwJTFNgy3D6FqESOpUcvEuf5cno0XN3TbtniUZ51YK+0aVBDuSyN9h7dX4x4U/Pv
 CoOrVkMxYP5XaWbYxxSZPjmU0RJDkVFIbQlK18mRQpgP4EYCwqCDGPL56DToRQ1sHQcB
 Y5a4yYaotURxoTjq6jaZVkGUmIsH0vVD7CRIrtA63TWkNQDeByyYS263TQQMU5NG52GS
 ugChF/5e/t5B2vAFM6AyJb226JSyUxw0gc5kYSpx/3yV1P/5AlZaSpXxqFEmh22qfkm8
 v/GQ==
X-Gm-Message-State: APjAAAXDvXX1tG55VXV/wgLOA2dH+ZusygB9Yg4bAJ4asgYgnGxlpZww
 npf1xBo8N4PNjWnYjc2Ejgk=
X-Google-Smtp-Source: APXvYqztENyahsDISGwV/gwDlv84foPdppuLiWeUuJmuF3CZO4dD6xdLyJPlIgJCUz5oG+jKbC+yMA==
X-Received: by 2002:aa7:870c:: with SMTP id b12mr11025712pfo.82.1576776518627; 
 Thu, 19 Dec 2019 09:28:38 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id v143sm536209pfc.71.2019.12.19.09.28.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 09:28:38 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Yangtao Li <tiny.windzz@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megous@megous.com>,
 linux-kernel@vger.kernel.org
Subject: [PATCH v8 5/7] arm64: dts: allwinner: h5: Add thermal sensor and
 thermal zones
Date: Thu, 19 Dec 2019 09:28:21 -0800
Message-Id: <20191219172823.1652600-6-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219172823.1652600-1-anarsoul@gmail.com>
References: <20191219172823.1652600-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_092839_206234_19E4754B 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

There are two sensors, one for CPU, one for GPU.

Signed-off-by: Ondrej Jirman <megous@megous.com>
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi | 26 ++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
index e92c4de5bf3b..f9df95b2d542 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
@@ -176,6 +176,32 @@ mali: gpu@1e80000 {
 			assigned-clocks = <&ccu CLK_GPU>;
 			assigned-clock-rates = <384000000>;
 		};
+
+		ths: thermal-sensor@1c25000 {
+			compatible = "allwinner,sun50i-h5-ths";
+			reg = <0x01c25000 0x400>;
+			interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
+			resets = <&ccu RST_BUS_THS>;
+			clocks = <&ccu CLK_BUS_THS>, <&ccu CLK_THS>;
+			clock-names = "bus", "mod";
+			nvmem-cells = <&ths_calibration>;
+			nvmem-cell-names = "calibration";
+			#thermal-sensor-cells = <1>;
+		};
+	};
+
+	thermal-zones {
+		cpu_thermal: cpu-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&ths 0>;
+		};
+
+		gpu_thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&ths 1>;
+		};
 	};
 };
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
