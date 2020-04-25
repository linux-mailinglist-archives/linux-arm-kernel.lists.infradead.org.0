Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A271B8338
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 04:24:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4GEu6d/dW57njl/21/itMMjHc313M5hW3QKN7r2ad78=; b=HIJLr9xtu1vBWV
	YX6nSa9i8gAz/MoOHf30tWmr67cQrEryIPTsAeWJevccvRk3RKgRSQcT7ndyVJHiROvf46ZWYwq9L
	Dca73trol/ETldIn5LgSTFrS664m00PgnmS6CTLBpyZiirrFD/PGJw41dfFOSBiGIXiWdwb42ak47
	WPWjPIyhVyghcm3ZHZ54pFG+OHtCCi2Sn+o0IyJ64sIsxs6jk/eokoPdpdJwwukMXERY2OWOJWkJo
	A0R7m0uCoobxytw1p5+eQw7JDUDCGpChHDSddU2dQaByqzSm1LTsltBmEi2slyPW40GmBhyKkvq8+
	gnC88noPbAFtZEb8znWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSAUl-0005fE-46; Sat, 25 Apr 2020 02:24:43 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSAUc-0005dj-H0
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Apr 2020 02:24:35 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ms17so4664032pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 19:24:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tarricone.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KiR/eKLb3SnWB1YcCG4ZJMnZF3G8y8v64vGN14y8HeQ=;
 b=YM7awdOAtTOBxdN1bUG9oWWoPeOFyQnqXzf9SXR9G++9vgOEbA1Vk11OhFUENJpb3o
 ddyiHbj5b95g39JpcAUHs00vPrhMG7zNAy9tmLiQc3VNll4SoeayWGn3NtHux5X1mwih
 SjFBsCsttSaWFyZQAtPY/iIJklHzzpHIxHMGw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KiR/eKLb3SnWB1YcCG4ZJMnZF3G8y8v64vGN14y8HeQ=;
 b=NbfJVt9inRHs2SSVFVigwoZ6avbSuhI7tfgQDjGEGFDfo1pDA1OzInCTS/Fsui25kJ
 yJstMSsFAID42TVsKUr4Rbk15ue2i+i1Q7q/TxQomhvxqnvGxoaSwY/Ll/rwiuYFsqIo
 1lox4tOFmi7awU1FNYMij4E1vTvvB2L1vHmkuwVPH1uxGpIPqBO4YJG4/rArka4XRmYF
 56uBlb6iRgW2zGxYLKJs8V67iIXhwVsOoctUl6mxrtdx0XEW0r1iY8r8DDd6bM1A7dLC
 fIoAo4HGxPKETrIBrn87ldgzh2NFo2CzIhVW0t5/3C+QM0ViEMuDaLB4NyKhSz1RA2R1
 rKRw==
X-Gm-Message-State: AGi0PuZMPDNdgY0nM2ScnAhe3uZwKXKVgLZxY04u9vMqvS7pwpq4QF1V
 RsxlFMYDwbDTNj+wms0F7E+Igu96e4+A/Q==
X-Google-Smtp-Source: APiQypIXP7/M8Xl7D7Mtd1FpecAZrx7wvymqCE4u++fdQbBXwQgR7Z0Dd9ELNWyp7zWJOYpOWL4LQA==
X-Received: by 2002:a17:902:a50d:: with SMTP id
 s13mr2413836plq.5.1587781469770; 
 Fri, 24 Apr 2020 19:24:29 -0700 (PDT)
Received: from fermion.lan ([2601:645:8700:e500:4cbc:3e32:7315:3b10])
 by smtp.gmail.com with ESMTPSA id bo19sm5654768pjb.26.2020.04.24.19.24.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Apr 2020 19:24:28 -0700 (PDT)
From: "Brian J. Tarricone" <brian@tarricone.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm/dts: Add DT block for Netgear ReadyNAS NV+ v2 LCD panel
Date: Fri, 24 Apr 2020 19:24:09 -0700
Message-Id: <20200425022409.2093354-1-brian@tarricone.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_192434_563937_18C64B61 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
