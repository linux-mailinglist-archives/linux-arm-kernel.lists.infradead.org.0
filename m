Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BCB2B655
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:24:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fao8ZpRxOWNUTOwPjL9NsJJ2AGQsqFILhyQW+6IVI2E=; b=QRFzVR3y4FrGZ0
	1pXwn/dvHT6UojuNvLSjEwT5uOVa6F4V1RFvsUz10m6yA+9evjsnVhVTteDKNDk/nC7vJDVapggHB
	Bsg+Jnebd9SEySJzDtK9X7KU+91kpRepqP/KEH53GHcnPcE45JirKec19A/uM4D96CLdQXwtmxAw/
	tNVm0IN27/r+91/jmi+yY2qslL1BUuttVd31taCiaQ2lmnrNHlF8y+klkWq0iKNOEytsJ6PL9si0b
	Qpcm+O4u5sVLL54FW01MpouHf/6h6L1JpOVDoSYUTQUxW5nmnfTCUD4a/MfcOoxtxE2jFSKvq9UUx
	94mWuLSwYg+pMq8j5fXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFc1-0004Th-52; Mon, 27 May 2019 13:24:25 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFZl-00028Y-Iw
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:22:07 +0000
Received: by mail-wr1-x444.google.com with SMTP id t4so8653845wrx.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 06:22:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Z5tls13Db7MluddscEzD/cF6XBKT+xo8zEqe2ab5FrI=;
 b=bSGwfDwAQNmN5af6mPI9aaBpl7ow9qoZBVLH4+zqLWruiKxLnW5XbtURKbDdTcnRQO
 6vnjdz8rtc5Z/BRk5ivxx7l/c0jj3RbtJPJTGGmKIi5tT1npBVYDSYze3aReFnj0SWDp
 so9B0iTixNrayDnNwS2qbh1fjLesU1G7I7cH+kVWL6zAnqkp7ouE6T+9RbCCrbAooG7d
 Q5+jYo+x4dGc1HMfqMQMyxGyz0fEZ6cxyzW44yUiqd/bUjucvtApDQstXj5Hd7ScmY03
 rdg2aTMEbG3A9OCaQ2K6SA+7/fo2JNpjnysCa8otZntQIsSV0ZYM7EfdXi70+NZnbQKU
 Fyig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Z5tls13Db7MluddscEzD/cF6XBKT+xo8zEqe2ab5FrI=;
 b=DnO7LbvT381ioIfOlAm/c5scOgBdgrVoEP5tC1wSw7NGjY2pBjG+wK4cDvi9YlQOdl
 pZvp+ilzYiB61cVzpBROc1rhxJ+/KMrOMHwrtWHhn47UGdKJ1YZ6/v/JiJg9qETbWtXz
 7ScChgdYQbdKEMJS9qOFR7D35dm37rZKm0nDNSHqOixkhLW2kGbB7YXJ8yYL5x07jilq
 Vy9ZzyzmsSxWsRjX9y7km10l5Wi/ZSknPZDuMrKyUUZpiFYEpfWFO+8Edq+drdSxSMUp
 TjZJPAOZCNHXP7RUTb+k5GPq6BIrxJbxZ5cs3njpkipHYWOgMh7RvzQf98EJeOJ9Gonm
 ElXQ==
X-Gm-Message-State: APjAAAU/j1GT5ex6lxusPbRdsHaQrqAVuxemEePazLPo3ot78IzHe9Mb
 1RKLXkNnrRKZXfR744Wn3P1HFg==
X-Google-Smtp-Source: APXvYqx4ak3U23GjVQ37/QuSEhrHTCPPogN0xcqSigoV1Oz/v7kkcfkYXBee31EHzam3stgt8gbEaA==
X-Received: by 2002:adf:eec9:: with SMTP id a9mr21802706wrp.281.1558963323951; 
 Mon, 27 May 2019 06:22:03 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id l12sm7019836wmj.22.2019.05.27.06.22.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 06:22:03 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 02/10] arm64: dts: meson-gxm-khadas-vim2: fix Bluetooth support
Date: Mon, 27 May 2019 15:21:52 +0200
Message-Id: <20190527132200.17377-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527132200.17377-1-narmstrong@baylibre.com>
References: <20190527132200.17377-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_062205_618387_B6305991 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org,
 Christian Hewitt <christianshewitt@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christian Hewitt <christianshewitt@gmail.com>

- Remove serial1 alias
- Add support for uart_A rts/cts
- Add bluetooth uart_A subnode qith shutdown gpio

Fixes: b8b74dda3908 ("ARM64: dts: meson-gxm: Add support for Khadas VIM2")
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
index 25079501f2bb..ff4f0780824d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
@@ -18,7 +18,6 @@
 
 	aliases {
 		serial0 = &uart_AO;
-		serial1 = &uart_A;
 		serial2 = &uart_AO_B;
 	};
 
@@ -403,8 +402,14 @@
 /* This one is connected to the Bluetooth module */
 &uart_A {
 	status = "okay";
-	pinctrl-0 = <&uart_a_pins>;
+	pinctrl-0 = <&uart_a_pins>, <&uart_a_cts_rts_pins>;
 	pinctrl-names = "default";
+	uart-has-rtscts;
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		shutdown-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
+	};
 };
 
 /* This is brought out on the Linux_RX (18) and Linux_TX (19) pins: */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
