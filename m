Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A367CD0179
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 21:50:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0ICeVA6BVHYlEgwMLTW42S8QweFqrVnEEY5BNluKziY=; b=Q02jR5MiY+cqm/
	indmUb+okJsQI7QbsmnjiH4+0YhbIGiscNsXhu5rd5EaS2QoMA6VcL2McRgnyS5nHpmOUUzg+pprU
	49tcNFR45woqGdYPpD4PB1xTFSAtBzbMs97HoE2IALV09eyv432fnWREGTOdKWDduV6hFad0DtSoH
	udnjczqC6LDFtXppc5MNkkoeF9zNmiyTCmN+dkoGJRpYBT6vyQJx844F5t3kfTpFhDzMmCdU4OtZa
	MPEwjIGheH85f1svgPWdU0ss2fIvw2/ODlDPkLSSbDzoTXCfr7EipMmkkaDiUG9d8DUiDvq5+EVLP
	1rvKTKDxtcucdFeEt/eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHvVV-0001uB-Km; Tue, 08 Oct 2019 19:50:53 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHvVI-0001s4-KH
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 19:50:42 +0000
Received: by mail-pf1-x441.google.com with SMTP id h195so11413688pfe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 12:50:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=m4uzQSP3Au83CY4u9n7jhItUEp/vcRKY4n5Lv4fKXM4=;
 b=NEknN+AncK8N4y3dBTFRjlKwCZTSN45tB2R19Wdue51byzRgFK6nM32RciwiCAIrZZ
 xFqf5RC0mQTk3lG5OYT8jlQFtxEBNHC9dp5Dhh2m3Q9+oWws25Vy7E6OKTWyvUj2aAbJ
 H6ONAOSSaHWDlCR1ES2lfPvBhbkhjW1I+N6Xs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=m4uzQSP3Au83CY4u9n7jhItUEp/vcRKY4n5Lv4fKXM4=;
 b=oRuxyIZ8VU9ncGee/xpnb7QT3dh6SYy+/S3N6v7g8sft0cslOCgO498ifrDpbDF98X
 xjqHLUTOZHMfWB4t+2PscHQtckNi7JbxRhzThfnQ7unn5QxeCtyZHI87RHt/l3/AE0cQ
 FMTnketPC/4qXMK4tknIyIrFPEI2aV4R+YB/YgqZ5PyAUQf1Q1AWZvZI57QSoteN+AKL
 Ny2iZ3S0Et0/p5Z20TV0Mh32rHTP5v/kXoeMoMYwo9AVSlOTiMe701gMgPMGnodk3z6P
 xm7YNh8j1ZYS5c3lEUs4ghBl5O4LciUU4bHemzTSJy4bea3oSvz++qkOKlLMbE3ZLKyE
 RfRA==
X-Gm-Message-State: APjAAAU9hQ5V6YWXIdUZyXYtQ6WjcR3dCE1cWpfiIfyG8CaZskTIAoSl
 16SwCk0z9qQbaMXUmESkE3uuPA==
X-Google-Smtp-Source: APXvYqzF88Vn4VUDh5dsiErTZYveKRuzhv1DkFqI04BEQC732nyRt5k8P/3eBe/8j0xqwAB7yvXHCw==
X-Received: by 2002:a17:90a:730a:: with SMTP id
 m10mr6682606pjk.80.1570564239809; 
 Tue, 08 Oct 2019 12:50:39 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id 30sm13313pjk.25.2019.10.08.12.50.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 12:50:39 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] arm64: dts: rockchip: Fix override mode for rk3399-kevin panel
Date: Tue,  8 Oct 2019 12:49:54 -0700
Message-Id: <20191008124949.1.I674acd441997dd0690c86c9003743aacda1cf5dd@changeid>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_125040_702497_18E21299 
X-CRM114-Status: GOOD (  16.46  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Sean Paul <seanpaul@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When I re-posted Sean's original commit to add the override mode for
the kevin panel, for some reason I didn't notice that the pixel clock
wasn't quite right.  Looking at /sys/kernel/debug/clk/clk_summary on
downstream kernels it can be seen that the VOP clock is supposed to be
266,666,667 Hz achieved by dividing the 800 MHz PLL by 3.

Looking at history, it seems that even Sean's first patch [1] had this
funny clock rate.  I'm not sure where it came from since the commit
message specifically mentioned 26666 kHz and the Chrome OS tree [2]
can be seen to request 266667 kHz.

In any case, let's fix it up.  This together with my patch [3] to do
the proper rounding when setting the clock rate makes the VOP clock
more proper as seen in /sys/kernel/debug/clk/clk_summary.

[1] https://lore.kernel.org/r/20180206165626.37692-4-seanpaul@chromium.org
[2] https://chromium.googlesource.com/chromiumos/third_party/kernel/+/chromeos-4.4/drivers/gpu/drm/panel/panel-simple.c#1172
[3] https://lkml.kernel.org/r/20191003114726.v2.1.Ib233b3e706cf6317858384264d5b0ed35657456e@changeid

Fixes: 84ebd2da6d04 ("arm64: dts: rockchip: Specify override mode for kevin panel")
Cc: Sean Paul <seanpaul@chromium.org>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts b/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts
index e152b0ca0290..b8066868a3fe 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts
@@ -44,7 +44,7 @@
 		power-supply = <&pp3300_disp>;
 
 		panel-timing {
-			clock-frequency = <266604720>;
+			clock-frequency = <266666667>;
 			hactive = <2400>;
 			hfront-porch = <48>;
 			hback-porch = <84>;
-- 
2.23.0.581.g78d2f28ef7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
