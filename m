Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B91F8FFC86
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 01:43:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3TX3BKtZmXIDIc3gmDo1Z6LJNc8jI5YeJSRhu1BzDwo=; b=FSPAi/ZWSDhBPV
	UlgUJMvsQ8jjYUWp4NOPa8Mk/zyDOTBvPFxafhWIhzk3pbEAZtyMhS5P0ynwEkzHfmm5OU3WCWuki
	4ikCr48bvZ4WM3nVKyC5tiXMf2BYuTOSYo/SKcbEYBsWuOlwXVgCac0trLiy2C60L7XAQiTVO9lCP
	grgDVTXvA1+a7Xw68yN8rrS8h9jZAty6q8QBmg2dZcfjeqNnGS1Tixei+e/94IWQIANBlDvw8C7f9
	s7bP1s24aEgali6YUOUz5IARCIu0f6BdaF5OW2s/93j075phIqyOxrDBIG+pE4jZ9wguvySzMnqIJ
	+7LebREl+mhso4bfExTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWV8U-0000ks-1D; Mon, 18 Nov 2019 00:43:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWV8B-0000ZL-Li; Mon, 18 Nov 2019 00:43:04 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iWV7z-0003d9-Ve; Mon, 18 Nov 2019 01:42:52 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add regulators for pcie on
 rk3399-rock960
Date: Mon, 18 Nov 2019 01:42:50 +0100
Message-ID: <2743598.oTfX2hMREy@phil>
In-Reply-To: <20191117140728.917-1-linux.amoon@gmail.com>
References: <20191117140728.917-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_164303_853908_222A5452 
X-CRM114-Status: GOOD (  10.43  )
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
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Sonntag, 17. November 2019, 15:07:28 CET schrieb Anand Moon:
> As per Rock960 schematics add 0V9 and 1V8 voltage supplies to the
> RK3399 PCIe block.
> 
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>

applied, after fixing the property/node ordering.
I try to keep things mostly alphabetically :-)

Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
