Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AEED79BF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 17:28:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S1bS8GuiM308VhCU69EbkjMz795o9JDCLyc9eD9Xp/c=; b=TkcuiE3itqNmB2
	rT72bA3MXRMakHvRqAXo3nSS8AltgWmmlR0ZJmz5oyZziu63qUJZzt8Fyi2BLa/D46d4kCu2kmpA+
	Pdu66HDXQEkllOH4o+U1fVKLJdWN+NaR5vi3GsKcdyr7QPdATtIeA8qlkKVDpv2rH1Y2eoKRWwQC2
	TDW9Lt/oNWy2kXKwTWTMXtDd43AK7t+0oKW5B0+At/QeCmU1ytmw2jHO/GYfV4vT5bzFgaptJBihF
	/y40e+FzVPe/EHRqIUC96YLCVt2EJdtSZbOpfNCkT+vy9grepJAGpsH2vDgm2CAw2sMhEFym5b2IH
	qxCRdKVWbTc4/oYHvLVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKOjp-0000sz-34; Tue, 15 Oct 2019 15:27:53 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKOjM-0000hw-Rn
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 15:27:26 +0000
Received: by mail-pf1-x443.google.com with SMTP id h195so12710829pfe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 08:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ht5w3WErN3ZWYQclG5fL/Luiq/R/+94kXfroCBCb638=;
 b=ss9p+80ZfJXC5FyuE7OqcA6ywFpKwWr55KF72jHOALCaliIlb19fYH/orwdNzb/otS
 c95W6RE7S87SUaimNOUxVRn5tK6StFzoncuB3RGK/N6PLasd1u1S8BIu522g121aZ9+6
 Y2hfY2Oi2Vgl6mePVTxlpxpAtw+HwwovmvAinYj+y4m1mnT8jHKx9vxeh8KkJwAfoCO4
 rkhylSh+eJbZZWMC/Hz8jnoHxpCS+cYlXbtnH7p/sX6rMz7qmUw1wOgO2cH0/2qoy+hF
 mHlQQE+5MqG1/PYbFIZm2j+U0uSze55KBklyH4d7PxUE7TY1awKDejCKygKIuaCK6FXs
 zQxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ht5w3WErN3ZWYQclG5fL/Luiq/R/+94kXfroCBCb638=;
 b=s/ljau2dOGvClb9Yt7XUsK4cuPULKK2V6eClrhMo1yWOXM73wVMA5DVibNNbstZTYF
 OW4C3BMxR5yCS/Uzdd9jYMG72AqLCTHolL3u5/eYIDs+KadOa5at0/ACIV3XS54VQGbI
 RgdaMMTRuBmyQNzRc0I/X9aS0Pwnj7QwjlhuA6QWaKi9DyWNAHaIMidO/xfTmDkQnByw
 AVyxd6xesuArC9KqNBhhacgslwARX0D1/fj+WsFbPWMEYVoC0i/TyJW6Sgd8xWdxfoUv
 VbSXeL1MfBkDO2H76CCU1EVjBs1jFE7iuFoCi1d/QKv2tCFz6oyENqmMWUrFpNUy5lRn
 u7mw==
X-Gm-Message-State: APjAAAWGfEQtHSm9EwSBA6WaK03S4nGxZdFlq0p2+/X8oxReQwgsOqL3
 zAPRn8JrMm96POBjGG3fSDzoOuAEevg=
X-Google-Smtp-Source: APXvYqxV1TEeLG1NI+A4mOFbmd4nvkN2wl2dG8PAFrOked1Td0or3Znwh2ckTxsnEH4yaU/oVwFASA==
X-Received: by 2002:a17:90a:f986:: with SMTP id
 cq6mr44224653pjb.17.1571153242882; 
 Tue, 15 Oct 2019 08:27:22 -0700 (PDT)
Received: from localhost.lan (c-67-185-54-80.hsd1.wa.comcast.net.
 [67.185.54.80])
 by smtp.gmail.com with ESMTPSA id w11sm21158957pgl.82.2019.10.15.08.27.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 08:27:22 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/4] arm64: dts: zii-ultra: Fix regulator-3p3-main's name
Date: Tue, 15 Oct 2019 08:26:52 -0700
Message-Id: <20191015152654.26726-2-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191015152654.26726-1-andrew.smirnov@gmail.com>
References: <20191015152654.26726-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_082724_897040_44512F79 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, linux-kernel@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Chris Healy <cphealy@gmail.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It's 3V3_MAIN, not 3V3V_MAIN on schematic. Fix it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
Cc: linux-kernel@vger.kernel.org
---
 arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
index 5d7a8f09f1ab..21eb52341ba8 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
@@ -62,7 +62,7 @@
 	reg_3p3_main: regulator-3p3-main {
 		compatible = "regulator-fixed";
 		vin-supply = <&reg_12p0_main>;
-		regulator-name = "3V3V_MAIN";
+		regulator-name = "3V3_MAIN";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		regulator-always-on;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
