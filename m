Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED6D37200
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 12:46:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H6GWrZWEv2pMFDu70DvsRrXV1NvmpWobV3F04vW8BAg=; b=iaIiUEnxJvQJrh
	vDz/MyqDVzhCI8tRB5yt3h79E2bdIVbyIV24/Jy1LZTtHUfofRdiBvGDLVapvVaEjlAhlnMfj6AM2
	WoUhZgFNWXbWINyRM6h7bPknuY45sMz+VNV/57r3yHKAJEoh6batgiQZI9B+LBJiLuErHn6OuT5Dn
	y1CCfZJ8WIhT2p2282XvLrokorshFQjaUtojuOaRTzgkEVt5e1hVAv9OteGpTi0vmLaSGtonVIQRf
	QYnWSl93a7DFGrZHEn+6fvNtoCrbDqpKmCOhV97FRXC7tI81oveYnm2issG3ntG55UHcGECsoM0f/
	7Hgo0zdSWj1KtcDCmm0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYpuP-0007PU-7R; Thu, 06 Jun 2019 10:46:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYpuI-0007P3-44; Thu, 06 Jun 2019 10:46:07 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hYpuG-0003im-27; Thu, 06 Jun 2019 12:46:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: Configure BT_HOST_WAKE as wake-up
 signal on veyron
Date: Thu, 06 Jun 2019 12:46:03 +0200
Message-ID: <3394571.WlNFeu2Orz@phil>
In-Reply-To: <2828678.vPWIEPrON5@diego>
References: <20190605204320.22343-1-mka@chromium.org>
 <20190605212427.GP40515@google.com> <2828678.vPWIEPrON5@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_034606_314963_CDBE2199 
X-CRM114-Status: GOOD (  17.52  )
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
 Brian Norris <briannorris@chromium.org>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mittwoch, 5. Juni 2019, 23:52:00 CEST schrieb Heiko St=FCbner:
> Am Mittwoch, 5. Juni 2019, 23:24:27 CEST schrieb Matthias Kaehlcke:
> > On Wed, Jun 05, 2019 at 11:11:12PM +0200, Heiko St=FCbner wrote:
> > > Am Mittwoch, 5. Juni 2019, 22:43:20 CEST schrieb Matthias Kaehlcke:
> > > > This enables wake up on Bluetooth activity when the device is
> > > > suspended. The BT_HOST_WAKE signal is only connected on devices
> > > > with BT module that are connected through UART.
> > > > =

> > > > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > > > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > > =

> > > Housekeeping question, with the two Signed-off-by lines, is Doug the
> > > original author, or was this Co-developer-by?
> > =

> > Good question, it's derived from Doug's patch for CrOS 3.14 and
> > https://crrev.com/c/1575556 also from Doug. Let's say I did the
> > porting to upstream, but I'm pretty sure Doug spent more time on it.
> > =

> > Maybe I should resend it with Doug as author and include the original
> > commit message, which has more information.
> =

> It's just that the first Signed-off should be from the original author.
> (And the sender the second)
> In the co-developed-by case (see Kernel documentation) the order
> doesn't matter.

Holding off on this patch till we could clarify the authorship.


Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
