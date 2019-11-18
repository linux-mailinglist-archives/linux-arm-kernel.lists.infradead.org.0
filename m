Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E56ACFFC8A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 01:46:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=npu77resRHdhhgSEd6KZfL1eiHY2KraNlYI0i6gv6ao=; b=RWWH5XIvlgmENV
	s3O0833u/uxN6+1O2n3XvJEWd3lyi1BNMsHuLKxJi1uhLZYhV8zRL2CShIRs70QAiDjNwgWPU+L/1
	apZCte0HB2reiRGdIVj6g6wN8xjZUtNnyDOcxupKQUVZWcqCstxKJXHCH51Jpv4CQ3A1qr0lOA4Bb
	evwyiK8WQQg53GHNek4Jhjq1SItn+UjBs1KFo6BCAIsa76tmyPLCTZ15iEO/HsgmcbCQ66Paps8yx
	9gf15adz+pq7Cp7LTBtyzMGu8c1p/4dVEsDe/bhMkhxE2d3Yg+GP8kBmOg9Xq7H9VIavSIxT7L2ke
	J1gnyGii4YL0Whks9SJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWVBy-0002OY-1z; Mon, 18 Nov 2019 00:46:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWVBm-0002NS-W6; Mon, 18 Nov 2019 00:46:48 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iWVBd-0003e6-2B; Mon, 18 Nov 2019 01:46:37 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: "Matwey V. Kornilov" <matwey@sai.msu.ru>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enable PCIe for Radxa Rock Pi 4
 board
Date: Mon, 18 Nov 2019 01:46:36 +0100
Message-ID: <1784520.t1z2W423De@phil>
In-Reply-To: <20191117101545.6406-1-matwey@sai.msu.ru>
References: <20191117101545.6406-1-matwey@sai.msu.ru>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_164647_176066_D36A5DE3 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>,
 matwey.kornilov@gmail.com, Ezequiel Garcia <ezequiel@collabora.com>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Matwey,

Am Sonntag, 17. November 2019, 11:15:37 CET schrieb Matwey V. Kornilov:
> Radxa Rock Pi 4 is equipped with M.2 PCIe slot,
> so enable PCIe for the board.
> 
> The changes has been tested with Intel SSD 660p series device.
> 
>     01:00.0 Class 0108: Device 8086:f1a8 (rev 03)
> 
> Signed-off-by: Matwey V. Kornilov <matwey@sai.msu.ru>

applied the patch, but you could do a follow-up that mimics
https://lore.kernel.org/linux-arm-kernel/20191117140728.917-1-linux.amoon@gmail.com/

aka find out from the schematics where the 0.9 and 1.8 supplies come from.

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
