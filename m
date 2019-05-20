Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5134724347
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 00:01:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l+KqmPm4OV6+z1/yknsywB/HUw7rrrhU+/tlQDqBZqw=; b=Mj+YSrQc9wl5xB
	nPrekQVR1Vm7WPG7w7hoJriZni0U8nlPEc3X8yMQ96RP54RH+4TduZvlPLXfBJ/ZcbZnsyoKrd4Il
	iBbbZVg2xb/NsUXWRwoLwR4bWe2hnBWjaRZiRP64o8mfhdQ98/jRRoHdrG8L3tHRm3SYksbmmkRYm
	pHpHyLwTWhR2w7gZWdwNzGtRPUhinJ4lst7wZVwrMkdFCx6HT2EZVWXeixiiXrLrh9z9DorQ7Wp0q
	J/FIllj9w5WYDhAbTFmfOTa51Zxv3WzwFAXYw/HFt5hjpyT2MQlXZEb+tWS1vA2g8ECxTSGV+J5VJ
	VumSsfqRANM8MQtt+i1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSqLD-0000xl-21; Mon, 20 May 2019 22:01:07 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSqL5-0000vl-Bs
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 22:01:00 +0000
Received: by mail-pl1-x642.google.com with SMTP id x15so7334931pln.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 15:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vtpw37UMclFgwsWmb0g3/F0Vs7Vu7ExQy0ncbvkEDZU=;
 b=EPZ0X+O4Hu/F2sATps1IWhS7QDdC7Am72erJCLSgGeemHLtkKl4v4yxKaEToIFQPwB
 N61A4R5TXNaf6/W06obkK79GwzeGrQB9FKapiEMCltkOH9tPsYwgegqkRv19LSHTA3AQ
 RB7232HKfLvJ0y1uqXxOZmTLCRdGvCWWqo4Cc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vtpw37UMclFgwsWmb0g3/F0Vs7Vu7ExQy0ncbvkEDZU=;
 b=bNJqW/pDctzysEeHnJDXt3Efg91Zn2kZ0+8kYZULPcANMOjhKsfhw7hAc7bthy02ge
 4O8Rt2vxpeA7aHn1TLdGgKNQ43pS2o3T+dxAIpwZ/0VA1hGiZKiJ36C6wz0lXDkmCTpm
 8n8Iza9/Pn8EPyxTLmrBS9pEK8DwBj0aSks8X0Zvg5YLWs60itXZ8HYQBTMSLOo159l8
 kpeTaUU2pQ/U5Bj+myEHWzG3EXi9Yspr80lxMMvkq0fFPYlnpULUwNl8OY2kHE4GANZf
 yqx5LS/y/mj7Avqx1THYNUmNPbNfOHMn5G99dVXvZLqUApEUR2JWuXypJ6nlUzG8Ypm5
 yuHw==
X-Gm-Message-State: APjAAAVsOX5kW0k4ZwmgBnuPV11csgc2QluQHtDK6gNt2alE8M6wZ5eW
 6Ds9z8eN2Z6w1RrNjF7HawTiRZi4zhY=
X-Google-Smtp-Source: APXvYqzLoewKhT1vDuz7GtTRsQScroD7YBJPCR6KbPfxnrP99Cz3ZYVhsa75U2HjYsoh8F23esun7g==
X-Received: by 2002:a17:902:aa97:: with SMTP id
 d23mr78594959plr.313.1558389658649; 
 Mon, 20 May 2019 15:00:58 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id k192sm18805998pga.20.2019.05.20.15.00.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 15:00:58 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 1/3] ARM: dts: rockchip: disable GPU 500 MHz OPP for veyron
Date: Mon, 20 May 2019 15:00:49 -0700
Message-Id: <20190520220051.54847-1-mka@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_150059_429061_E6BD9A15 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The NPLL is the only safe way to generate 500 MHz for the GPU. The
downstream Chrome OS 3.14 kernel ('official' kernel for veyron
devices) re-purposes NPLL to HDMI and hence disables the OPP for
the GPU (see https://crrev.com/c/1574579). Disable it here as well
to keep in sync and avoid problems in case someone decides to
re-purpose NPLL.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Changes in v2:
- patch added to the series
---
 arch/arm/boot/dts/rk3288-veyron.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index 90c8312d01ff..ec10ce4fcf04 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -174,6 +174,14 @@
 	temperature = <100000>;
 };
 
+/*
+ * Remove 500 MHz since the only way to make 500 MHz is via the NPLL
+ * which might be used for HDMI.
+ */
+&gpu_opp_table {
+	/delete-node/ opp-500000000;
+};
+
 &hdmi {
 	ddc-i2c-bus = <&i2c5>;
 	status = "okay";
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
