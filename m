Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C378CFFCA7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 02:01:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g/RPCHpg2crJYylrHZhjwTTJ5WcPLSqJ3R928UHY6CE=; b=KTy0LzcPGoKPyB
	2P07uw/mqCUtE7kgd+T/B4Nh2u6WImanXMSfmKmegCGSB+t/RYZ6Mok3bdlcRzFXUUvG7KG9Y3+JX
	2szzw7niFjFPZKHgniZhHR1QRjDowqOBs5tgwlUg8KD26OgiKnSacWtg4/LpAp9tsQaUPaKh2xFu1
	Dy4bZNXiQa5TKyo88+0LUYVb2WS9/KgJgaH8sY8hfdY+wKGiX/OygluEMBhytZeK9jfZ+1tl11eIP
	irn3un6oxYWRoC/vnLI6C8s8E+KPbLxD5Gy0Frrdq93c3FJbnzzplJl69Bmffg32GtCD6D/WAtT6M
	bkTIETy0/AHM+jqHnJ9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWVQF-0008HL-7O; Mon, 18 Nov 2019 01:01:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWVQ4-0008GG-35; Mon, 18 Nov 2019 01:01:34 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iWVPq-0003i0-4Y; Mon, 18 Nov 2019 02:01:18 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: arm64: dts: rockchip: Disable HS400 for mmc on rk3399-roc-pc
Date: Mon, 18 Nov 2019 02:01:16 +0100
Message-ID: <14740383.9LiiEhnQET@phil>
In-Reply-To: <367bf78a-f079-f0b4-68fe-52c86823c174@fivetechno.de>
References: <20190301153348.29870-1-christoph.muellner@theobroma-systems.com>
 <20190301153348.29870-2-christoph.muellner@theobroma-systems.com>
 <367bf78a-f079-f0b4-68fe-52c86823c174@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_170132_281855_0BFE8BEB 
X-CRM114-Status: GOOD (  10.97  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>, Tony Xie <tony.xie@rock-chips.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, shawn.lin@rock-chips.com,
 Jeffy Chen <jeffy.chen@rock-chips.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 linux-kernel@vger.kernel.org, Vicente Bergas <vicencb@gmail.com>,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, Klaus Goger <klaus.goger@theobroma-systems.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Randy Li <ayaka@soulik.info>, Kishon Vijay Abraham I <kishon@ti.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 11. November 2019, 10:51:04 CET schrieb Markus Reichl:
> Working with rootfs on two 128GB mmcs on rk3399-roc-pc.
> 
> One (mmc name 128G72, one screw hole) works fine in HS400 mode.
> Other (mmc name DJNB4R, firefly on pcb, two screw holes) gets lots of
> mmc1: "running CQE recovery", even hangs with damaged fs,
> when running under heavy load, e.g. compiling kernel.
> Both run fine with HS200.
> 
> Disabling CQ with patch mmc: core: Add MMC Command Queue Support kernel parameter [0] did not help.
> [0] https://gitlab.com/ayufan-repos/rock64/linux-mainline-kernel/commit/54e264154b87dfe32a8359b2726e2d5611adbaf3
> 
> Therefore I propose to disable HS400 mode on roc-pc for now.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>

applied for 5.6 (or maybe still 5.5)

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
