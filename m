Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6847C75914
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 22:46:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q67Qnz+SAqNcvzoNXRFrBpKVOMJTKu3mzNqZYzWJGwQ=; b=Te7Nd1/b1K3GM9
	45qpyM8a+r7Tpn5l6LfrBh7hFBtkiZOgfbtp8NhJDXLn13LlV3/XX8A6aPj7tNifovI7pQLA0CEsS
	lQ8ymSJNfriXhJ1IbSTWHktSb91a19eTXyXlCLlal1Tggc+222L66NXHhTFAPZBNPW6D6ABuLrbpt
	renLuD/+mxhT/1CnezO9eSFSyRFSW4rUtgXc7DO/1VaSKVQWk8TkEMY4TQt2SbHkVZExJ+SBuBASL
	lNtUkngBTJb339EsgKtdv0fbf+CbMCGGl1tYzrcm57O8w4+1R4xHGapw8o1epmdci2KSfrnvyF+dJ
	C9wZhY1Q8AzqZQU3Ithg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqkcq-0001ht-3w; Thu, 25 Jul 2019 20:46:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqkcd-0001hM-3K; Thu, 25 Jul 2019 20:45:57 +0000
Received: from d57e23da.static.ziggozakelijk.nl ([213.126.35.218]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hqkcZ-0001ze-Q9; Thu, 25 Jul 2019 22:45:51 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v3 1/5] ARM: dts: rockchip: move rk3288-veryon display
 settings into a separate file
Date: Thu, 25 Jul 2019 22:45:50 +0200
Message-ID: <3004515.D41uJgjoEG@phil>
In-Reply-To: <20190725162642.250709-2-mka@chromium.org>
References: <20190725162642.250709-1-mka@chromium.org>
 <20190725162642.250709-2-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_134556_277896_68D195B9 
X-CRM114-Status: GOOD (  10.83  )
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

Am Donnerstag, 25. Juli 2019, 18:26:38 CEST schrieb Matthias Kaehlcke:
> The chromebook .dtsi file contains common settings for veyron
> Chromebooks with eDP displays. Some veyron devices with a display
> aren't Chromebooks (e.g. 'tiger' aka 'AOpen Chromebase Mini'), move
> display related bits from the chromebook .dtsi into a separate file
> to avoid redundant DT settings.
> 
> The new file is included from the chromebook .dtsi and can be
> included by non-Chromebook devices with a display.
> 
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>

applied for 5.4

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
