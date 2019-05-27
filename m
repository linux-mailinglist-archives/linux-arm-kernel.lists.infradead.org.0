Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D149A2B643
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:22:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YdXLX1oLSmvG9AwKXa3GL2jybLbuK9iOyUiBKvl5RQ4=; b=TrImtW/62vNiCK
	bwyof4XRNP4cBttpgNP0dc3GM6xE8VySYili2uaBztWk10oxpbeKP2Mn4bMtjt8h71Cm/LKqJJW4V
	XmB0zv0fmVNDTPuIH67opfpQHASpwBU9wMA+JM3aAkn1jk/HojMqmIxli9B4UYMs8Njqyiw5oDDW8
	CXBnh89vNwBi/UBoSZYfbRw+mfrW8XgbrwMlH4ab6C21AaW3DA7k+rVyAU3XqiZGXCur1UZ7vy1KQ
	auH/H6m1rlMjwM0r6HiiHXgfhs6m1NWvykh7oHC6NGeRylt67o7HLM2izbqwinEIIgHQ05zxeD0CE
	8cg0tgZJ83lU2Il9zvmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFaY-0002vp-SC; Mon, 27 May 2019 13:22:54 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFZn-00029z-HJ
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:22:10 +0000
Received: by mail-wr1-x441.google.com with SMTP id h1so2789299wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 06:22:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1CiRqWREkgXuihOBunUI3fz+CBkOdeZkmwsLz+vnX0Y=;
 b=Hg2CCl48NNB6AMXkrTWKa8IdPcIBCv4b8IP+DMrhifc8ubYGhMOkLQyDLeWo1LLLZu
 JjN42+xp70/Pq4+VvnuCgjCMy/fujF0c5f9W+02piqOcWB6Vuq6txI+u/Qy7+sDhh9tI
 J3HJIJ4xRyWnBOLDLZ0ZNjq9saFTrJe+p4mGJ2WI1pa1UCWbWHskqAlTPksoWQGPl6q3
 gtzJglAvTqLuWJXateDZ/fmZHv9A5d8CUlk8xc3cCXdQrJVSMd0TBaGGEuWiF3opdJfI
 doDO5PCC5S7u50ZOE1D+dRos4HDFw4O0CYZhd6VXJ4eQRKXg59Q1YJdhmTBggPvZ73dx
 8TPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1CiRqWREkgXuihOBunUI3fz+CBkOdeZkmwsLz+vnX0Y=;
 b=B2yFNr7rt8StmcDehkuoRjSbtRMlkYH9F8uTZ6AZhiQAX988l5qaVpp7HjHLJCM5dt
 jP0yag0YjWPz44PE9b7qBIrvpns70wlIccjuQsQ82JO11V4oqV2aJire6oUFw5nzEjQD
 AHxZk3LDbcfJUU+nNI70HnL9Z4OnrTuVoD09eZkHS43qXbH5TYmn3brIBwxgNy1ruwem
 JfJNRt5Ztf7orW19/WbaKWzTkcbUypw+2rLz4d8nEmj8vDSag3eOVALRCmMR0eSfgEcK
 4PtjguZS+zjR9kUHS6YKnHtN8zSUPMwISEmvB7FRQ3JEcljsYC45Pyt23lRhYpRV65BZ
 JeEA==
X-Gm-Message-State: APjAAAUFJ/Ivf544EkzPQIshLuoQ8/I1+dr+RBmLCwQG6j/9e3vHnSrG
 qDjiG2B/1rfZqBicV/MDaWtlaw==
X-Google-Smtp-Source: APXvYqzC4VmNhq9v3nbo8eE5sL9A319fsc//sxkeiH4qYeTzgim31C30hxhgbJLRajqBnZV/wSwEmw==
X-Received: by 2002:a5d:4e89:: with SMTP id e9mr3774964wru.72.1558963326098;
 Mon, 27 May 2019 06:22:06 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id l12sm7019836wmj.22.2019.05.27.06.22.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 06:22:05 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 04/10] arm64: dts: meson-gxbb-wetek: enable bluetooth
Date: Mon, 27 May 2019 15:21:54 +0200
Message-Id: <20190527132200.17377-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527132200.17377-1-narmstrong@baylibre.com>
References: <20190527132200.17377-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_062207_752875_92F8047E 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

This enables Bluetooth support for the following models:

AP6335 in the WeTek Hub rev1 - BCM4335C0.hcd
AP6255 in the WeTek Hub rev2 - BCM4345C0.hcd
AP6330 in the WeTek Play 2 - BCM4330B1.hcd

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi
index 45e306da2154..9ef6858779c1 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi
@@ -249,6 +249,19 @@
 	vqmmc-supply = <&vddio_boot>;
 };
 
+/* This is connected to the Bluetooth module: */
+&uart_A {
+	status = "okay";
+	pinctrl-0 = <&uart_a_pins>, <&uart_a_cts_rts_pins>;
+	pinctrl-names = "default";
+	uart-has-rtscts;
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		shutdown-gpios = <&gpio GPIOX_20 GPIO_ACTIVE_HIGH>;
+	};
+};
+
 /* This UART is brought out to the DB9 connector */
 &uart_AO {
 	status = "okay";
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
