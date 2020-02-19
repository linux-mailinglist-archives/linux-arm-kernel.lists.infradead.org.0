Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86ACB164500
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 14:07:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=T59aDj3+udn/eVWZ8GH9G0uTQrXUZhnKp0nSgFg/Xfk=; b=Za4
	PiqfNkfaAOrwlu8lK6RRiU6HN4TrKrQP9BNBTJo1IfvvK0tAJVjtONVgbLNrB/PnpQJZOnFun3bet
	h5NJnZKctVKbZv07sFLloDCI7xjxXJ4C3RLkyc4YzYEGsq1gu9RNm2R835I+h+pOMTpxxHKP5HaSi
	bLf0n+sbDLWrV2S5gipZ6PoQKHsW2N7hhJwCtC32E2B4c6qklxnWgF8Q1INIfvqFdQjb4l8nMgZFT
	VZ56m/qk7as8Z8qtVaPBgRJdX9quiU9SqZhc6uW8zEPjoS+E1nve9UgD9Zfb988LZgal+w2yxxuzZ
	PUpdl+KW3q0Vu2Y+o5/bUtE4um7bLkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4P4i-0004Tc-NR; Wed, 19 Feb 2020 13:07:36 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4P4Z-0004Su-Vc
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 13:07:29 +0000
Received: by mail-qk1-x743.google.com with SMTP id v2so27669qkj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 05:07:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=PabLGRO4gtHIKAvyz/i4oQ+vBUX+ltFuzda0LE5oI6g=;
 b=SkhxfEVSJmhxe1fdVi8ER6WeeV7vjipcK3dskvd7/ge7fv2VBLT9dpHwQn2CKwh7Mz
 c5YnXob1LqcSH1Gw0Zb/L1rjlPP+YX6L+ZwxpkCh0SB5zy83/hfsQKSJCquvs3x5MPyT
 o9mbrTnp1E/d4dwym6R1HRyBPEh9sdeAHK2wSQ3pBNcAKs5P610Ze4GOxaCWqsiETVSi
 SWO3tV9qsM11fQ++P8g95h2MQFFg+tYOND7WzpWF30qdKp5F4Gx45IW6D/cOYKk1DEaC
 4VlY36AWqCnzVTWfAgdt04UUxUZ7ueeJJpKsqqMUjrpyte8OAL7lVztc3ISDuS1c4XSa
 /LxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=PabLGRO4gtHIKAvyz/i4oQ+vBUX+ltFuzda0LE5oI6g=;
 b=AZV0Idr8W6zn1hDMHLakZRRH2RTMMUYGXDz7HZNo5dPbtQQoOFYm5uzWeObRM9LJeX
 ugLkXrv3/zjgY8Dc3aaRqjALaIZaZ4KBL20yWl5KkghJ4asd7ahpAG3Mx9FA/TGUhpVE
 jJ3jNPqYHwpD5GBMc5QSsPVevtwZ1p8G1DMzJtC/cCbZmeObDN/rrhsx5v36PJ71mpWU
 2txt8bT/Z4D1QEn6GCVTjQKWed7Zf0MsRMQAuL3In4PruEORTMYTX6KHZan5u02JFkxD
 GsPEA8Cv+eJOpsZDKQRnn/iX25K1ZvzUj7aWPuQ97IjVlricd+to7mLTmI+dHjuwPvST
 JPbw==
X-Gm-Message-State: APjAAAV+w0DMb9j/GtHclfLG9ZKHntE0DtS7a5YSXX70hh4NrTRo0qim
 ZPk0dPkQ8Mg+G0wNXxvA9o4=
X-Google-Smtp-Source: APXvYqywJDZe8LF2meKSezy1aCmXrpw4XTER5aewJBPqxp014w+Ih7AjBGFN537lsk+Yw6tZf/GuHQ==
X-Received: by 2002:a37:4894:: with SMTP id
 v142mr22367713qka.220.1582117646135; 
 Wed, 19 Feb 2020 05:07:26 -0800 (PST)
Received: from fabio-Latitude-E5450.nxp.com ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id u12sm938903qke.67.2020.02.19.05.07.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 05:07:25 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] ARM: dts: imx6sx-softing-vining-2000: Enable PCI support
Date: Wed, 19 Feb 2020 10:07:12 -0300
Message-Id: <20200219130712.28108-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_050728_045495_F8F710DC 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: marex@denx.de, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add PCI support.

Since this board has an active high PCI reset line, pass the
'reset-gpio-active-high' property.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
Hi,

I don't have access to this board. I noticed it while
working on imx6sx PCI support in U-Boot.

Marek, maybe you could help reviewing/testing it.

Thanks

 arch/arm/boot/dts/imx6sx-softing-vining-2000.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/imx6sx-softing-vining-2000.dts b/arch/arm/boot/dts/imx6sx-softing-vining-2000.dts
index 28563f21024e..a82d50837028 100644
--- a/arch/arm/boot/dts/imx6sx-softing-vining-2000.dts
+++ b/arch/arm/boot/dts/imx6sx-softing-vining-2000.dts
@@ -352,6 +352,12 @@
 		>;
 	};
 
+	pinctrl_pcie: pciegrp {
+		fsl,pins = <
+			MX6SX_PAD_NAND_DATA02__GPIO4_IO_6	0x10b0
+		>;
+	};
+
 	pinctrl_pwm1: pwm1grp-1 {
 		fsl,pins = <
 			/* blue LED */
@@ -490,6 +496,14 @@
 	};
 };
 
+&pcie {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pcie>;
+	reset-gpio = <&gpio4 6 GPIO_ACTIVE_HIGH>;
+	reset-gpio-active-high;
+	status = "okay";
+};
+
 &pwm1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pwm1>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
