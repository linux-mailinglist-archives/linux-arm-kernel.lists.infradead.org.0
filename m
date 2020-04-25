Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5336A1B88EC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 21:29:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4kvbogB+VanpRnRzMFEkHVf6rte3kD3AyRANrSygc6o=; b=RfOfj70siJFkKK
	BAVgk8U0pDkCmvoBh0PRDpJAfXCwXjDjUg0ZOoQNnbBpVbowKNyCw2Zwyd/x6oV3Ei3VOu2FkZO9A
	qIRF4I6cqf1xgQ6c+Giu+1uSa9p2XdPOxq/hztgd2ExIYOpRFU4kyLjexhsX7VQ5x8IrGgmpv+V2D
	kvfUyyuGzOyFPFII786dSmzDSTiVpz12Lxoka6hXqTPLJjjmF2CcATHGSX+9AUSQEOsnwc/PKnhuT
	IMHJn66aO6JqMUu0nRsX6JHGuy7EFLwEpyKzYp7PdXhnT0KeBt+UgJERfTGY3MuPAvXueTOobm0CK
	X14jIflclhZ1TyRE+v3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSQUJ-0000Ch-3K; Sat, 25 Apr 2020 19:29:19 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSQU6-0000Bv-6l
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Apr 2020 19:29:08 +0000
Received: by mail-pl1-x642.google.com with SMTP id c21so4297207plz.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 Apr 2020 12:29:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tarricone.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Lm+aBuK3qYVmobkn5UobHgKE3H8kF4a+Z8H29+Fb6sI=;
 b=ID4nJFLkApOnqMzR//sx+h29zYmxxSyyLG+2GO/DvMUM6eEeZMX3eO6xHwc3eL1sYW
 qautOnh4zcBTAI20pskjVE17HnWaY1kw2U6lkeb3NvscKyX/YFdgSPPkGrnT8ux7RkJi
 hxYsBxN3UtLWCjUtV7/gT1om0fAoDhNcy1+Io=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Lm+aBuK3qYVmobkn5UobHgKE3H8kF4a+Z8H29+Fb6sI=;
 b=Twh0Br/N6Hi9M098CPB0pX1b2cjO6K0snvEDRxAeUdf85UMVmpXA6Er7C8/aj5guIA
 UpTsIpFXxMkPe1jzzzLXtoHQq09IrmJldnzMO61Txvsx2SF8viXG0kF90v4F+Jh7X7O4
 2GtVWn+8CxLvyIdwetG2jOcZ9pn/WMZCiB5/mmIEEiiO3SOv5T45Bj/mbffKWDHuNjUI
 kszGs7rE3m4iMiRWMlsmPVjgwrl7mx/j4XODUpx4Mr2PuLV84wqgutuCN85ZCg+/uwiO
 +m+p4jLf8G6XYvT7T3w1x+Z75CsMI3nS0E8tTAOhS261n1s4YLHbhdMa1DNtcR975va4
 +JEA==
X-Gm-Message-State: AGi0PuaB0nkKf7kVlmwd5/3xXSwMBdZN5WguaN20wjvHYrEiWZhSQt5k
 4JjEx1dJiWNUt30DPsvWzmvCuBgMjeliRA==
X-Google-Smtp-Source: APiQypJdd6KZgMyjH0JILXA3WHuuflmRrIq8G50jhMl7mOFw6xEZMxZaHqCq6VX7D92gIaJOkrLhxw==
X-Received: by 2002:a17:90b:3d8:: with SMTP id
 go24mr13737949pjb.33.1587842944697; 
 Sat, 25 Apr 2020 12:29:04 -0700 (PDT)
Received: from fermion.lan ([2601:645:8700:e500:4cbc:3e32:7315:3b10])
 by smtp.gmail.com with ESMTPSA id v94sm7675848pjb.39.2020.04.25.12.29.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Apr 2020 12:29:03 -0700 (PDT)
From: "Brian J. Tarricone" <brian@tarricone.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: kirkwood: ReadyNAS NV+v2: Add LCD panel
Date: Sat, 25 Apr 2020 12:28:20 -0700
Message-Id: <20200425192820.2499185-1-brian@tarricone.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200425142736.GC1095011@lunn.ch>
References: <20200425142736.GC1095011@lunn.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_122906_503603_AF04930F 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: andrew@lunn.ch, gregory.clement@bootlin.com,
 "Brian J. Tarricone" <brian@tarricone.org>, jason@lakedaemon.net,
 sebastian.hesselbarth@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The NV+ v2 has a WH1602 LCD panel (which is just a rebranded HD44780),
similar to the Netgear RN104, just with different GPIO assignments.

Signed-off-by: Brian J. Tarricone <brian@tarricone.org>
---
 .../boot/dts/kirkwood-netgear_readynas_nv+_v2.dts  | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/kirkwood-netgear_readynas_nv+_v2.dts b/arch/arm/boot/dts/kirkwood-netgear_readynas_nv+_v2.dts
index 8cc8550242ef..b13aee570804 100644
--- a/arch/arm/boot/dts/kirkwood-netgear_readynas_nv+_v2.dts
+++ b/arch/arm/boot/dts/kirkwood-netgear_readynas_nv+_v2.dts
@@ -113,6 +113,20 @@ sata@80000 { /* Connected to Marvell 88SM4140 SATA port multiplier */
 		};
 	};
 
+	auxdisplay {
+		compatible = "hit,hd44780";
+		data-gpios = <&gpio0 17 GPIO_ACTIVE_HIGH>,
+				<&gpio1 1 GPIO_ACTIVE_HIGH>,
+				<&gpio1 3 GPIO_ACTIVE_HIGH>,
+				<&gpio1 17 GPIO_ACTIVE_HIGH>;
+		enable-gpios = <&gpio0 16 GPIO_ACTIVE_HIGH>;
+		rs-gpios = <&gpio0 14 GPIO_ACTIVE_HIGH>;
+		rw-gpios = <&gpio0 15 GPIO_ACTIVE_HIGH>;
+		backlight-gpios = <&gpio0 12 GPIO_ACTIVE_LOW>;
+		display-height-chars = <2>;
+		display-width-chars = <16>;
+	};
+
 	gpio-leds {
 		compatible = "gpio-leds";
 		pinctrl-0 = < &pmx_led_blue_power &pmx_led_blue_backup
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
