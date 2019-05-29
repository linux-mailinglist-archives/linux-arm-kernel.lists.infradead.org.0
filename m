Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 129BF2D619
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 09:19:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0/vbz6dKez7RDO72/s6bHCE55ipR7tdAQFHVCrdpw8=; b=CMM0+KrIj5kaRH
	9v2xsBejaFWjeel/d23NNzV5G9WpMtnIW3PhCLtfw1q+4SJBDAtdazApJx9QgVCktx2CQsGB80LHQ
	KdnYRr90JnLET2QSZnkACahbOkfCjN4hIyZTR8FgsVWYJRPKn/7R5W7C3K/+KVF/h7nOL3YK2FmRB
	kzisIJwzgDv70FwDqA9YEbp737yb0R5Awz0/Qfl5dgv36XsCqbZjIxXQPTAUF5IUkKIbH3MntDJCW
	OxTyt+IoRtRE/B//budAY1omYWk/zrWkXykEm5RrZsSNBjMQwa7Gz17GYaqPEV/2mq8Y2uDaJvyRw
	myi2dpHJpUp/GL44/9Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVsrl-0002ht-Om; Wed, 29 May 2019 07:19:17 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVsrP-0002Se-5K
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 07:18:56 +0000
Received: by mail-pl1-x644.google.com with SMTP id a5so655976pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 00:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aawXyaVUndOA3gmbFU8MOhKxpP5JaLgvaRjLb9Tuem4=;
 b=AnB4rk7IBerNEQACRXU0wbgqUN6GQKnv1TOiQZum+VHMJfGOrrRvF97L7rD85gqj2v
 W5UHKRF05pwBNpATd+bS/Kn1XLhyqoSEOGB8V+rPI2/Rkgnr6eBF6Ram0h/4ZhUtUY4t
 6kKdMApz/Nh8LJ/QIB/TB1IAhvn2vbNASSudj/a99k7s1NCYGEeN3vy2/HSIi5ur0tv7
 q/+Nniui6A5wFc7ngMSBZbnXO7Wc7amyLQDb0EPABOh7r75uaBxyozpmg2ST/+uE1Tv5
 fcw7y+UvfTd78eQ5kuYo4ydO3ikP2ec7tkgCfxb9YjtOoOecFrm9kofPM4+Hb3pfiOig
 pQSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aawXyaVUndOA3gmbFU8MOhKxpP5JaLgvaRjLb9Tuem4=;
 b=ErmKwibJ7GtBV0ThCg6gp02wBS65f9IRYsg0AX+mAhgaYHlKr+EieAdFYNATE3/3/B
 Z+UkH/UiW4X3i13Gv/bJedRc2YxtT6XMjw/vjUpoPPP4WGUI4Rg9129Xandg25QTAGnw
 6PhGXafBYRYYsaEmMT4y7wlAwsfPTARghN9NFtMEkuORnd6Co/1U682FmqNOUGzJwr9R
 w5JreXIFBO+qxAwdXj3vwqnjqigfHdxN7aSsj1VtOle4eOaE4zv3ViVs7TSvSc8HEBfT
 Aqlk2TMplnLWVsCE8fpqv6gkCqdY9PLWynqQlJNQ71LjCBOlNKpJH+nCDR5Ezc2Ju3zD
 ymJw==
X-Gm-Message-State: APjAAAV+Tdz+TwHVpBYmOvbeBksS+p1FOq18RgAmSbLEDiztw/1UZJTG
 MXqfqKLhvvXoneTOz28NE0YV9GHHC9U=
X-Google-Smtp-Source: APXvYqy2YXmVQ9gCwMlsysZFTnip1mV+36qIwpdi6BdCr9jTimWUqP8ajah8NmxFN+wIrkNfzVNVcg==
X-Received: by 2002:a17:902:b495:: with SMTP id
 y21mr73769788plr.243.1559114333879; 
 Wed, 29 May 2019 00:18:53 -0700 (PDT)
Received: from localhost.lan (c-24-22-235-96.hsd1.wa.comcast.net.
 [24.22.235.96])
 by smtp.gmail.com with ESMTPSA id y16sm32038938pfo.133.2019.05.29.00.18.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 00:18:53 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] ARM: dts: imx6: rdu2: Disable WP for USDHC2 and USDHC3
Date: Wed, 29 May 2019 00:18:42 -0700
Message-Id: <20190529071843.24767-2-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190529071843.24767-1-andrew.smirnov@gmail.com>
References: <20190529071843.24767-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_001855_198308_BAAA2C5D 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Chris Healy <cphealy@gmail.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RDU2 production units come with resistor connecting WP pin to
correpsonding GPIO DNPed for both SD card slots. Drop any WP related
configuration and mark both slots with "disable-wp".

Reported-by: Chris Healy <cphealy@gmail.com>
Reviewed-by: Chris Healy <cphealy@gmail.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
index 07e21d1e5b4c..04d4d4d7e43c 100644
--- a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
@@ -658,7 +658,7 @@
 	pinctrl-0 = <&pinctrl_usdhc2>;
 	bus-width = <4>;
 	cd-gpios = <&gpio2 2 GPIO_ACTIVE_LOW>;
-	wp-gpios = <&gpio2 3 GPIO_ACTIVE_HIGH>;
+	disable-wp;
 	vmmc-supply = <&reg_3p3v_sd>;
 	vqmmc-supply = <&reg_3p3v>;
 	no-1-8-v;
@@ -671,7 +671,7 @@
 	pinctrl-0 = <&pinctrl_usdhc3>;
 	bus-width = <4>;
 	cd-gpios = <&gpio2 0 GPIO_ACTIVE_LOW>;
-	wp-gpios = <&gpio2 1 GPIO_ACTIVE_HIGH>;
+	disable-wp;
 	vmmc-supply = <&reg_3p3v_sd>;
 	vqmmc-supply = <&reg_3p3v>;
 	no-1-8-v;
@@ -1096,7 +1096,6 @@
 			MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x17059
 			MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x17059
 			MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x17059
-			MX6QDL_PAD_NANDF_D3__GPIO2_IO03		0x40010040
 			MX6QDL_PAD_NANDF_D2__GPIO2_IO02		0x40010040
 		>;
 	};
@@ -1109,7 +1108,6 @@
 			MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x17059
 			MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x17059
 			MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x17059
-			MX6QDL_PAD_NANDF_D1__GPIO2_IO01		0x40010040
 			MX6QDL_PAD_NANDF_D0__GPIO2_IO00		0x40010040
 
 		>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
