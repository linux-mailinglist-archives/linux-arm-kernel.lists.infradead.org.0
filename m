Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6309AFFCAF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 02:05:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e07LNwQ9RNaQb6r0L+3ReSB9KR3qH/4jQxoCpk1cVN0=; b=WINgm253Fflfyx
	5hkY14oPmF610sjavCFTpbioP3FxXgTvBQ+so48aIk/CHdzM/l8pqDzKnfcBX6fucnJ9Zky8cZR0i
	vwFa8x0unVuH/PEY0RWdPpgwO1H/AMovY/fkVVIcNbkrnVYaOFIFL6baD8nVDs5RBaSQVf2G4LUJz
	7qWAYVsD/50+ckwkLbA06xupU8WcxMnZDL4JyxHQ+kwLL6drJwgBPWmP9gz/kOwLLETPvhWe66o/2
	JRkHqOn5DPxhfNZxstg74Jz/DCs1VU1d6fyNmQWhaRqbo/OC6t8YykvdIARFlUDEmr25c4ywakZjo
	DlXFbrEgqU1Rix/dVf6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWVTf-000129-3y; Mon, 18 Nov 2019 01:05:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWVTR-0000Xt-C8; Mon, 18 Nov 2019 01:05:02 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iWVTO-0003jf-2X; Mon, 18 Nov 2019 02:04:58 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Fix min voltage for
 rk3399-firefly vdd_log
Date: Mon, 18 Nov 2019 02:04:57 +0100
Message-ID: <2125664.Zgi4m6pvVL@phil>
In-Reply-To: <20191111005158.25070-1-kever.yang@rock-chips.com>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_170501_563206_C86001CB 
X-CRM114-Status: GOOD (  10.66  )
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
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 11. November 2019, 01:51:56 CET schrieb Kever Yang:
> The min/max value of vdd_log is decide by pwm IO voltage and its
> resistors, the rk3399-firefly board's pwm regulator circuit is designed
> for IO voltage at 1.8V, while the board actually use 3.0V for IO, which
> at last lead to the min-microvolt to '430mV' instead of '800mV'.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>

applied for 5.6 (or maybe still 5.5)

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
