Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A39C2158A3A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 08:10:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GerIDzcMpqFl4oM5/c3webEFWV3/XCwY5LT/63zh94c=; b=hENy233q96g4Ks
	ekMNN9IEVDMPqJ0HL67BbQNTjtLEkZQdE+mANTIDDPej3Jt1b958M6VPrn2Hq5xs5HuO/miKK2UL3
	Wi4QRAfmqKZvnhC8BY+vqyAR68gup1viZEecgAkOR0sYV4nOVoRvkAQxGaA4KR5GC2LyE8LzzKRQ3
	9kU/fVsXOkiwkxKxDATWidOvCflRHiNpk7jIczlyn6uYFuMGnXUho9Fkk7891SU8DLPQqhT5Mq/Af
	x962qLUstuSot84KGlJRpFk9G/FBHs4wm1tTIyJLDTfYQwjYX6CaBg8EdhL8UIslWHiPUM9wF/tcf
	x1S0aRDG7lApuL2j87kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1PgX-0003f5-LH; Tue, 11 Feb 2020 07:10:17 +0000
Received: from mailoutvs5.siol.net ([185.57.226.196] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1PgO-0002zk-66
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 07:10:10 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id F143A521267;
 Tue, 11 Feb 2020 08:09:58 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id sUOmFP3lA8oO; Tue, 11 Feb 2020 08:09:58 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 9883F521FDA;
 Tue, 11 Feb 2020 08:09:58 +0100 (CET)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id E6842521FD0;
 Tue, 11 Feb 2020 08:09:57 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v2] arm64: dts: allwinner: h6: orangepi-3: Add eMMC node
Date: Tue, 11 Feb 2020 08:09:57 +0100
Message-ID: <5325319.DvuYhMxLoT@jernej-laptop>
In-Reply-To: <20200211065141.2kn2gsg5kvzu7kl6@gilmour.lan>
References: <20200210174007.118575-1-jernej.skrabec@siol.net>
 <20200211065141.2kn2gsg5kvzu7kl6@gilmour.lan>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_231008_431107_8A905687 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

Dne torek, 11. februar 2020 ob 07:51:41 CET je Maxime Ripard napisal(a):
> On Mon, Feb 10, 2020 at 06:40:07PM +0100, Jernej Skrabec wrote:
> > OrangePi 3 can optionally have 8 GiB eMMC (soldered on board). Because
> > those pins are dedicated to eMMC exclusively, node can be added for both
> > variants (with and without eMMC). Kernel will then scan bus for presence
> > of eMMC and act accordingly.
> > 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > Changes since v1:
> > - don't make separate DT just for -emmc variant - add node to existing
> > 
> >   orangepi 3 DT
> >  
> >  arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> > b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts index
> > c311eee52a35..1e0abd9d047f 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> > @@ -144,6 +144,15 @@ brcm: sdio-wifi@1 {
> > 
> >  	};
> >  
> >  };
> > 
> > +&mmc2 {
> > +	vmmc-supply = <&reg_cldo1>;
> > +	vqmmc-supply = <&reg_bldo2>;
> > +	cap-mmc-hw-reset;
> > +	non-removable;
> 
> Given that non-removable is documented as "Non-removable slot (like
> eMMC); assume always present.", we should probably get rid of that
> property?

I checked mmc core code and this property means that bus will be scanned only 
once. In this form, node doesn't tell what kind of device is connected, so 
core has to scan it no matter if "non-removable" property is present or not. I 
maybe missed something though, so it would be great if someone can check it 
again.

Best regards,
Jernej



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
