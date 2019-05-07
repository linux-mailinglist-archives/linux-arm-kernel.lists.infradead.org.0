Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F14681610D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 11:35:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sWrByswtxlVkAjqEwp1PHHdMAwVizyQhvqJ/HF+NXjU=; b=RGydXnbYIaL7mm
	FV3umO52y8ly7W84gvnX4aoG3AyAFCGogQIFYUF+rOTg9enFtitLgb81DGMM+rlSJ+HUqjVcsLWUH
	T5DtMnT42UbFV3RAowTTv3DlxPShWXtjSmBseibMVENDADhGNWZU0wirN4SMfsh/APr3ULGOs7M/7
	85URLcHcQFur9uSIMJOX5vKlEUIJCHLp0Yz3S46/Dn5P+X1DJFiagViYaqOv1ge28jokNyWKl8GdT
	xun521cT0ldp09IvZC5qwG6ikiwEuwsJ/xIOavy/0OPrWmeus/kZcVgV96KzKaf5o6I7+Ttn3fuVr
	X0rP8MF4lVsfNgvtWsEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNwVl-00070Q-Ol; Tue, 07 May 2019 09:35:45 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwVd-0006zm-Rs
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 09:35:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1557221735; bh=ldoLNmoDFfbeja2q4a+Rh5QICPMhKBlbE7KGJkgYnvw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fO9vlopfZxr3U78dgV0RXJxUiXqgiQfcDS0dXQA3Fe/vMCA9+DW3PyWSNIk8Cp0d9
 OTRKbUeidJ2E4+080m3bpyzxfqpXMliXGec0mzapVPD8iuS5e1ESFtyh/FDKNeqkeC
 QelJZ4Kg7S8J3krLQMFKbmOWVCjGFQ1sx0LgRkiY=
Date: Tue, 7 May 2019 11:35:35 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH] arm64: dts: allwinner: h6: Enable HDMI output on
 orangepi 3
Message-ID: <20190507093535.uapqhxduwtbdgbtq@core.my.home>
Mail-Followup-To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Yangtao Li <tiny.windzz@gmail.com>, mark.rutland@arm.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20190420145240.27400-1-tiny.windzz@gmail.com>
 <20190502073401.3l3fl4alicyzpud7@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502073401.3l3fl4alicyzpud7@flea>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_023538_225445_8553444A 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Yangtao Li <tiny.windzz@gmail.com>, linux-kernel@vger.kernel.org,
 wens@csie.org, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

On Thu, May 02, 2019 at 09:34:01AM +0200, Maxime Ripard wrote:
> On Sat, Apr 20, 2019 at 10:52:40AM -0400, Yangtao Li wrote:
> > Orangepi 3 has HDMI type A connector.
> >
> > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> 
> Queued for 5.3, thanks!
> Maxime

This patch is not enough. HDMI support on Orange Pi 3 also needs to
enable DDC IO. While the SoC will feed some default output singal
into the display, without DDC enabled it will not work reliably.

That support is part of my Orange Pi 3 series, and will be reworked
for v5 of that series.

While I can rebase on top of this, it would be easier if you dropped
this patch until the propper support is ready. I don't see any reason
why this should be rushed with half-working solution.

regards,
	o.

> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com



> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
