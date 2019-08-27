Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB79D9E9FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:49:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TttFs5Wb/HklBvKTxcgCLnG7tdEuwTQIB5dc/3ReUhU=; b=i4PvEhynkDR/QF
	FzZ/70VP3GM/0cxjRs4FhrpTcRmm16+QWa2l8XUQlGGDh2CC0KwZU29+KPXREAB8Hz7aG0qx/xP+5
	mEZCrbcWAYYIQw31ZGIOnFeOuGsYzhZiZG4g9aiqran7aoSGcXKlxs8EYo/AnnDJFLtflErtNiYw4
	F/q4jOdkXqQ2lp9hM5ULwab6101PkYD2lx7ekUJC0JFKnYCGeyDZF+ZB1hjvCuJNE8yAHHnq6RNiM
	Ss9Pf6gyGAPmUN+oD+tEIqSVp5ZzrkxTVruDv8cZFxmXqjAvwBgOkHPdhQg6OPq8o0CvJ61TURU/z
	LfoRAoivAPuO5Hu4csUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bqn-0004iy-C8; Tue, 27 Aug 2019 13:49:33 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bpT-0004Dy-88
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:48:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1566913686; bh=gUkiaA2UIAfdqLZqpz83L/LrKryHgSOsMfxD9p5JB0g=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=sInfPNmyAp81M2iQxMQJOE28y/Ho0Y8utaCVwSOeVpnZ9lPQ14QaOa5uVI27fnTN5
 cCVcd9Dz3wvLkYxGyn4l8FmgikPs9k0c3XzJpOfsBok90o5FCZbg8rkUf8Xk3wQBy7
 q+cBxetxCsNjEQRtNK/YhpgyExf19CKbEms/5oIM=
Date: Tue, 27 Aug 2019 15:48:06 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: pine64-plus: Add PHY
 regulator delay
Message-ID: <20190827134806.5l7dxyvzjrvabh7o@core.my.home>
Mail-Followup-To: Maxime Ripard <mripard@kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, wens@csie.org,
 robh+dt@kernel.org, mark.rutland@arm.com,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com
References: <20190825130336.14154-1-jernej.skrabec@siol.net>
 <20190827133443.fdxl5wjmgkerc3uh@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827133443.fdxl5wjmgkerc3uh@flea>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_064811_618530_88328A9F 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Jernej Skrabec <jernej.skrabec@siol.net>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, Aug 27, 2019 at 03:34:43PM +0200, Maxime Ripard wrote:
> On Sun, Aug 25, 2019 at 03:03:36PM +0200, Jernej Skrabec wrote:
> > Depending on kernel and bootloader configuration, it's possible that
> > Realtek ethernet PHY isn't powered on properly. It needs some time
> > before it can be used.
> >
> > Fix that by adding 100ms ramp delay to regulator responsible for
> > powering PHY.
> >
> > Fixes: 94dcfdc77fc5 ("arm64: allwinner: pine64-plus: Enable dwmac-sun8i")
> > Suggested-by: Ondrej Jirman <megous@megous.com>
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> 
> How was that delay found?

I suggested it. There's no delay in the dwmac-sun8i driver, so after enabling
the phy power, it will start accessing it over MDIO right away, which is not
good.

I suggested the value based on post-reset delay in the PHY's datasheet (30ms).
Multiplied ~3x (if I remember correctly) to get some safety margin. Chip has
more to do then after the HW reset, and regulator also needs some time to
ramp-up.

regards,
	o.

> It should at least have a comment explaining why it's there.
> 
> Thanks!
> Maxime
> 
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
