Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9FF25EED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 10:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+I5HMwnjoirfeGJIZMbp8OSzcJ5l+Vpf7xt+9pkO6lE=; b=I2Lpwb52V0OOZA
	qg01Tqv2o3G1pvVTeRpjtimtqgxCnboCO4CJ2JWApTZhmCQjzB0XEO5+ZWv+APzi8CDUNGUGse4JS
	CAivNin1Fsunj7OSyKlHF7J86BqlSswhXTg8HX4/TjEESUBgpdc2kvCrRkh5O3ICDBD8yRMQl0yLT
	J7drgo3e3Uqlp7anaeAt+Elf55GWwiQNnvfsypRp2Jzw1Cx9vXreXUlLXjZr/iNcER3SsdKNxvYqU
	W0f44vY6DGSFHJRMcmp0IBs34rKhL84oxHJZ7FxMHEtJs/JTvJlvctBAHkd0sGPpqk4kSC0jGodme
	vP9U+Si0l93K3rYyKhPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTMC8-00059f-AW; Wed, 22 May 2019 08:01:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTMC0-00058S-HP; Wed, 22 May 2019 08:01:45 +0000
Received: from we0524.dip.tu-dresden.de ([141.76.178.12] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hTMBw-0007zg-DG; Wed, 22 May 2019 10:01:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: Add pin names for
 rk3288-veyron-minnie
Date: Wed, 22 May 2019 10:01:39 +0200
Message-ID: <1983983.hLAGMFZVp3@phil>
In-Reply-To: <20190521203215.234898-1-dianders@chromium.org>
References: <20190521203215.234898-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_010144_723801_75822CAE 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 briannorris@chromium.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 mka@chromium.org, ryandcase@chromium.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Dienstag, 21. Mai 2019, 22:32:14 CEST schrieb Douglas Anderson:
> We can now use the "gpio-line-names" property to provide the names for
> all the pins on a board.  Let's use this to provide the names for all
> the pins on rk3288-veyron-minnie.
> 
> In general the names here come straight from the schematic.  That
> means even if the schematic name is weird / doesn't have consistent
> naming conventions / has typos I still haven't made any changes.
> 
> The exception here is for two pins: the recovery switch and the write
> protect detection pin.  These two pins need to have standardized names
> since crossystem (a Chrome OS tool) uses these names to query the
> pins.  In downstream kernels crossystem used an out-of-tree driver to
> do this but it has now been moved to the gpiod API and needs the
> standardized names.
> 
> It's expected that other rk3288-veyron boards will get similar patches
> shortly.
> 
> NOTE: I have sorted the "gpio" section to be next to the "pinctrl"
> section since it seems to logically make the most sense there.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

applied both for 5.3 ... that is actually a pretty nifty feature for
boards whose schematics cannot be published :-)



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
