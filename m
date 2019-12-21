Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B94128908
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 13:16:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m+jpRP5/CSKAO+NBvuf8ThbgUG7KtkzO1rbLSvd21PI=; b=djVSU8e7eyPm3z
	kRUgD6Q+MG265SIWDHsIHJBW6j2PLDcuUHtUGI6vw6aRkiLvQuM6OfIg8ur7noYb7y53qrqk0fZ0c
	AJUPmUuSU+p+Gloy1gaek6dRUYYvGsqQ4XCysNXnt6/xW1M3/52yWjlu8X8tRfPlVglWDy3aK98Q3
	MXOxDg98ereUCDxcps9EiVePZyB122pIvl6wEUkcUlDUPzaLY4CA8ISeyffsw0jxtk6Bfr6eD/VqO
	fsWkuAtcdGSuqskltxI7uKtTWpEAQKJYD3lWKHoFK6oaaF7Ic82J5tdMHotiUrixaZcPl+pMScFWM
	w7B7Hp6xz/hOC2mNNlcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iidgC-0004b2-Eu; Sat, 21 Dec 2019 12:16:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iidg3-0004ai-TU; Sat, 21 Dec 2019 12:16:13 +0000
Received: from [195.37.15.138] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iidfu-0004rE-Np; Sat, 21 Dec 2019 13:16:02 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v3 0/4] arm64: dts: rockchip: Add Rock Pi N10 support
Date: Sat, 21 Dec 2019 13:15:59 +0100
Message-ID: <2568287.AjJObobGxI@phil>
In-Reply-To: <20191216174711.17856-1-jagan@amarulasolutions.com>
References: <20191216174711.17856-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_041612_103340_B3824A68 
X-CRM114-Status: UNSURE (   8.55  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tom Cubie <tom@radxa.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 16. Dezember 2019, 18:47:07 CET schrieb Jagan Teki:
> Unlike, other Rock PI boards from radxa, Rock Pi N10 SBC is based
> on SOM + Carrier board combination.
> 
> Rock Pi N10 is a Rockchip RK3399Pro based SBC, which has
> - VMARC RK3399Pro SOM (as per SMARC standard) from Vamrs.
> - Dalang carrier board from Radxa.
> 
> patch 0001: dt-bindings for Rock Pi N10
> 
> patch 0002: VMARC RK3399Pro SOM dtsi support
> 
> patch 0003: Radxa Dalang carrier board dtsi support
> 
> patch 0004: Rock Pi N10 dts support
> 
> Tested basic peripherals and will all more in future patches.

applied all 4 for 5.6

And looking for to seeing the rk3288-variant as well :-D .

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
