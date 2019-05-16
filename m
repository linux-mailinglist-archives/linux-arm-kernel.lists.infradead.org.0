Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F085E210D4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 01:00:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2Uzci/w/ObDuFGwD0rh3wy1N426/OvWuVv3lPWM5ec=; b=UCNISW2LuWyZ9W
	pZcaD5GcrKKXy6KnMY0Umj5XyXcpZBIOEnUIMdW3yTPvlipOjzEkVIlQrrn8Fqy99CywLhii+a3p5
	/Aw6qopXFg922Wh25v3b8oh5S50xvwES+yotoB5vLmz39UfIEGyw1+fFh+nO695Mf1DOoy5q++3M1
	Ly21b6XHyuQSBZKGqSxy6wS7gUgtxc1qlsgaVVq3Fk5T/GkYH66O3gsCHJZo+qgRAUtzhfG6NTpjg
	eB1B7OeKtLZr8wQiTxtnPprkjXwSpkZ1qb2hC+NpMqLBtDub3Cz/8hhKtyS6rbViNxDw3XsAFS41k
	2+vUL+bTwuBlTKTflEkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRPMQ-0003cZ-Jt; Thu, 16 May 2019 23:00:26 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRPM4-0002Sq-1W
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 23:00:10 +0000
Received: by mail-pf1-x441.google.com with SMTP id z28so2630763pfk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 16:00:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lvg93XkWk/IauY18P9MzBBlRGinky/ZsfgSfGtfzvWE=;
 b=IrWnxdlePeHzk4plSAn4SitSypwJhfMhyVRFzVajRhwefK/vTtfDyVbKcueIKno2Ov
 jT6zbh26BxuIW4pNBvtfSUcEVz8djCazhjKU2cYWODdnIiwcJETXjueu1AdTY2Vy4UaH
 9FEwUwnG58TWdJ+b6VXxLxHhJE5mCkwSbNT+w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lvg93XkWk/IauY18P9MzBBlRGinky/ZsfgSfGtfzvWE=;
 b=W/2JtoDm1OogfS131318nFh3humyNm1mG0teylRs7V57ImHK6PbSTddzgBHUOUzjFJ
 3r2NkVKo5c03ma2ssYmBW8st4KgbHUkYnUXKel7sHo8gQ2TC3wXqZUX++KYtysNFVVfo
 hPulzWTzPqWN4L3ew5mYUapXrj2GD3fsWTDhe0tLPurTgLtRfnAQNtgX2avcfGh9wD7k
 LlQkRWXEeo+3CENpR264vndQnbnQ3rN3mDjZbovPpnwCkxJdIIaI/Qd7YDU70I9BDR7u
 z5Fe/5bShQgOgpis0chpH+/F+RKlmFe10d5lt7hT4cPUdiXh8CC0bKZlWCaoKDCexQOp
 WASA==
X-Gm-Message-State: APjAAAUaLNyl3tvqF6Hacg8AiGPKZJTd7fSNcqgsChGjDNeOnCM4h7rH
 0C8leiHPaEe/tBIMEOm7m3iAUg==
X-Google-Smtp-Source: APXvYqyXmrMlXwbThNdH5OYzM2uXETKw3ITSWk1x8137xR6JOng1E+DtlSZxRvtpsu174gwuzPC5Dw==
X-Received: by 2002:aa7:8acb:: with SMTP id b11mr57008369pfd.115.1558047603560; 
 Thu, 16 May 2019 16:00:03 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id j64sm1769506pfb.126.2019.05.16.16.00.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 16:00:02 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Minas Harutyunyan <hminas@synopsys.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>, heiko@sntech.de
Subject: [REPOST PATCH v2 3/3] ARM: dts: rockchip: Allow wakeup from
 rk3288-veyron's dwc2 USB ports
Date: Thu, 16 May 2019 15:59:41 -0700
Message-Id: <20190516225941.170355-4-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190516225941.170355-1-dianders@chromium.org>
References: <20190516225941.170355-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_160004_288387_37072E61 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Artur Petrosyan <Arthur.Petrosyan@synopsys.com>,
 Amelie Delaunay <amelie.delaunay@st.com>, Randy Li <ayaka@soulik.info>,
 amstan@chromium.org, devicetree@vger.kernel.org, zyw@rock-chips.com,
 linux-usb@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 Alan Stern <stern@rowland.harvard.edu>, Mark Rutland <mark.rutland@arm.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, jwerner@chromium.org,
 William Wu <william.wu@rock-chips.com>, ryandcase@chromium.org,
 dinguyen@opensource.altera.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We want to be able to wake from USB if a device is plugged in that
wants remote wakeup.  Enable it on both dwc2 controllers.

NOTE: this is added specifically to veyron and not to rk3288 in
general since it's not known whether all rk3288 boards are designed to
support USB wakeup.  It is plausible that some boards could shut down
important rails in S3.

Also note that currently wakeup doesn't seem to happen unless you use
the "deep" suspend mode (where SDRAM is turned off).  Presumably the
shallow suspend mode is gating some sort of clock that's important but
I couldn't easily figure out how to get it working.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v2:
- rk3288-veyron dts patch new for v2.

 arch/arm/boot/dts/rk3288-veyron.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index 1252522392c7..1d8bfed7830c 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -424,6 +424,7 @@
 
 &usb_host1 {
 	status = "okay";
+	snps,need-phy-for-wake;
 };
 
 &usb_otg {
@@ -432,6 +433,7 @@
 	assigned-clocks = <&cru SCLK_USBPHY480M_SRC>;
 	assigned-clock-parents = <&usbphy0>;
 	dr_mode = "host";
+	snps,need-phy-for-wake;
 };
 
 &vopb {
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
