Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B44FBD3396
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 23:42:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=teKKYNa8+Js8hW7npn8VxHyGFmox13h1V2QbCdI9oUM=; b=jpGiq8IDM1ItSg
	acDCuumqkqPcQEkkbCSEUzA3LJzB11f/1EC2Z4Y41Vt81bW/GXF0XFeO5aua3KvPMLo4MxMSWogYO
	GLAauwR+ajBgZaO7JF5qaRZ7Rwsp+m07qGhth/DxcB0DeD363xyAf7h/R8kyKnLTo05v8A0Op1hoy
	m/5M1pbInZvrvyvY0Fke6ZJKtmrMXF9YeAextlMYQX5lrnQMiaae769ZWLZ5RRcv+b1ZzzwmQ9R7p
	bp7NCwvJr7zYtBBCOBsg/FyCg5yE+OQGUSO21SLFCmE2PuRqZZ4kC/YIAIcxHaFeKV6u+18+b3g9Z
	CdmDmzMJ9dLn8nXbAxTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIgCo-0007DG-UI; Thu, 10 Oct 2019 21:42:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIgCc-0007Aw-9t; Thu, 10 Oct 2019 21:42:31 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iIgCU-0007G3-KC; Thu, 10 Oct 2019 23:42:22 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix override mode for rk3399-kevin
 panel
Date: Thu, 10 Oct 2019 23:42:21 +0200
Message-ID: <29647267.xx61tplHq2@phil>
In-Reply-To: <20191008124949.1.I674acd441997dd0690c86c9003743aacda1cf5dd@changeid>
References: <20191008124949.1.I674acd441997dd0690c86c9003743aacda1cf5dd@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_144230_494777_B97B3A1D 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Viresh Kumar <viresh.kumar@linaro.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Sean Paul <seanpaul@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Dienstag, 8. Oktober 2019, 21:49:54 CEST schrieb Douglas Anderson:
> When I re-posted Sean's original commit to add the override mode for
> the kevin panel, for some reason I didn't notice that the pixel clock
> wasn't quite right.  Looking at /sys/kernel/debug/clk/clk_summary on
> downstream kernels it can be seen that the VOP clock is supposed to be
> 266,666,667 Hz achieved by dividing the 800 MHz PLL by 3.
> 
> Looking at history, it seems that even Sean's first patch [1] had this
> funny clock rate.  I'm not sure where it came from since the commit
> message specifically mentioned 26666 kHz and the Chrome OS tree [2]
> can be seen to request 266667 kHz.
> 
> In any case, let's fix it up.  This together with my patch [3] to do
> the proper rounding when setting the clock rate makes the VOP clock
> more proper as seen in /sys/kernel/debug/clk/clk_summary.
> 
> [1] https://lore.kernel.org/r/20180206165626.37692-4-seanpaul@chromium.org
> [2] https://chromium.googlesource.com/chromiumos/third_party/kernel/+/chromeos-4.4/drivers/gpu/drm/panel/panel-simple.c#1172
> [3] https://lkml.kernel.org/r/20191003114726.v2.1.Ib233b3e706cf6317858384264d5b0ed35657456e@changeid
> 
> Fixes: 84ebd2da6d04 ("arm64: dts: rockchip: Specify override mode for kevin panel")
> Cc: Sean Paul <seanpaul@chromium.org>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

applied as fix for 5.4

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
