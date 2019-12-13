Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E1111EB3B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 20:51:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=otRdNsRakn5doiMd2Ddee9GsQzHshIQ6LldHCfLDGqI=; b=V+z
	TZeQ2Fm1kEAFYI/xn1hxIjZ7GEcHnlQ6QTSFZnvQQKC/hJvzh1d7+u1WzJku82N+qzD3zglm7poGi
	MQTcGqJpWXGIYvaZQTnXKYyujpC9RTyzyYR4W0n53AS+1OX8h8L6DWAonR58K9Mmd9d4vw4Cm/CBe
	oZzc8vW3won0z56JC6/Zn+FIpxG0Yfg2FGmem0B/63t00WzijnhgxGrvDGesP7CXbnUQgGO9s3wx5
	2F8ENN6QYSWMFP5DOkCoV35xYfJ3zJHjFCOzyia5gznJdgkrke7kjHzRHN0TLMPJd66qZDayLjh9y
	FMZqjvYgHa00Hf/rgJxzx4a6SBYH1FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifqyV-0001wv-ED; Fri, 13 Dec 2019 19:51:43 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifqyL-0001v3-PD
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 19:51:35 +0000
Received: by mail-pg1-x542.google.com with SMTP id k197so316526pga.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 11:51:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Tc6p/vzIYhyddj7vHAkwwUtjdL96r1yW+buff2VY9JA=;
 b=cXre7i2Yv1FmRcR8LuhXxbhP8wV/cMwiFulKdK9Dhll3/FBXVSXlQapj5Ybtnys6e8
 4mbFWzNgAO2j4ziHuT8yBWKelNubnrTDSd5NYNx7cCctJYfN+5g9L9CJDq0vXf7YEaY4
 d0jbFE2A3NFC6XOmhLgFOCCP327E8rj4m4KFcFXzHVjp4mituDLRPI+NR+t1mXgPhkCj
 M7ZIIRVKfgfrUOneBqGil6nu/ST7x6uV5zKSh4NtT/z/8dIwnd7UlCuLDsj1Gjmzeja8
 P8HVhkjJSbGBuvIU0UfrXICm/usY0hHl9OL/9Leb6+0XaIznggXXeBB8fgYE5IPb/Xua
 RiAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Tc6p/vzIYhyddj7vHAkwwUtjdL96r1yW+buff2VY9JA=;
 b=OrDq9EYsRYcUiOP6+j4sRJsWdfjjuhF9m6/Tukt0pQcddlCMs5FA4WFuL3Ez7WVfj2
 Z+xDVZlpXNgz1jhkj0mPpfgJ7JulVUb+X0mTVocQFljEdcDRRDe8cPKQNyX4e0da369I
 xbxcU84V9IEXkvBuCzbr09sGXni+1m+sY1T/zSKs3DxxaCu7widxy2qGXjTIBv7yZt9d
 R7ZMKPbmYUCO4hsKc8OmlkCvXUYPFVGWQ1ZH2g1y9mgKt1m5WQl8g6ZmlHhM7bNj3IQq
 r4JqDzzvvagSBS035qjY5PwFqcjMO5Ma7eGJZjcEmNP+tf6bf5uXc0zP24MkF3c0b7mN
 NXGw==
X-Gm-Message-State: APjAAAVpr73nPNJ1WxjzROpWtzfaNWD3R1fZdF6lH1DqE9Fpa1QC24Bn
 1YIZj32wLgccbY+0zvAjWZVn+fkZ
X-Google-Smtp-Source: APXvYqx98LWsP2NEgocpB6/0UXE+Z2zVCQCD4PJc++G98WekMVHcmQlpxjEhXTaDOG9/4zmYD7kpDw==
X-Received: by 2002:a63:31cf:: with SMTP id x198mr1321442pgx.272.1576266692563; 
 Fri, 13 Dec 2019 11:51:32 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id p186sm12417117pfp.56.2019.12.13.11.51.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 11:51:32 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: NSP: Use hardware I2C for BCM958625HR
Date: Fri, 13 Dec 2019 11:51:02 -0800
Message-Id: <20191213195102.23789-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_115133_845789_A65E85EA 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that the i2c-bcm-iproc driver has been fixed to permit reading more
than 63 bytes in a single transaction with commit fd01eecdf959 ("i2c:
iproc: Fix i2c master read more than 63 bytes") we no longer need to
bitbang i2c over GPIOs which was necessary before to allow the
PHYLINK/SFP subsystems to read SFP modules.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/boot/dts/bcm958625hr.dts | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/bcm958625hr.dts b/arch/arm/boot/dts/bcm958625hr.dts
index a2c9de35ddfb..536fb24f38bb 100644
--- a/arch/arm/boot/dts/bcm958625hr.dts
+++ b/arch/arm/boot/dts/bcm958625hr.dts
@@ -55,18 +55,9 @@
 		priority = <200>;
 	};
 
-	/* Hardware I2C block cannot do more than 63 bytes per transfer,
-	 * which would prevent reading from a SFP's EEPROM (256 byte).
-	 */
-	i2c1: i2c {
-		compatible = "i2c-gpio";
-		sda-gpios = <&gpioa 5 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
-		scl-gpios = <&gpioa 4 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
-	};
-
 	sfp: sfp {
 		compatible = "sff,sfp";
-		i2c-bus = <&i2c1>;
+		i2c-bus = <&i2c0>;
 		mod-def0-gpios = <&gpioa 28 GPIO_ACTIVE_LOW>;
 		los-gpios = <&gpioa 24 GPIO_ACTIVE_HIGH>;
 		tx-fault-gpios = <&gpioa 30 GPIO_ACTIVE_HIGH>;
@@ -74,6 +65,10 @@
 	};
 };
 
+&i2c0 {
+	status = "okay";
+};
+
 &amac0 {
 	status = "okay";
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
