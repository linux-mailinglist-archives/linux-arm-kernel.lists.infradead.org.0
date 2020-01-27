Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A297A14AA39
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 20:05:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LbQwFGS+Maf9GTKfcCAYRlLi3K7V5IgGb8cOoxpl7Bw=; b=UwBHtfeFe7hXgp
	J1iN7lNY64U0Jnht2gKVikxQej2G7fNaL3cLQJSZkTjweQ3haQA7n8NbuZwCy1TjsqoeO2NciN77k
	KXi/BYoMH2IrggmtTZ2nCe4pZZ9D1JaMW4FqC0ckPWXo9LOgIuadjfGPY9TUPX6ohnzRbIZjSc3QJ
	72fzj6mUPwx4lVDJBkXon2j0IcPrqSrjjCfXQH3pNBCK9/xoTHQs6cMfTcnRXoxfuRtU9aZrK1eUl
	GqU6Y8Zl3hJPlKsYss2k2tMi6/6jyZBCTX23A/gitNAMwVQrYwz66UxoE+w1yAtvRFaVjKtNrUt1N
	vK2I4U4r7+FANndtGFJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw9hp-0002GU-4t; Mon, 27 Jan 2020 19:05:53 +0000
Received: from mailoutvs42.siol.net ([185.57.226.233] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw9hc-0002FT-NH
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 19:05:42 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 72D7D523B15;
 Mon, 27 Jan 2020 20:05:29 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id Tcln31hrCOyf; Mon, 27 Jan 2020 20:05:29 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 2468A523B0F;
 Mon, 27 Jan 2020 20:05:29 +0100 (CET)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 32E2C523B07;
 Mon, 27 Jan 2020 20:05:28 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 3/5] arm64: dts: allwinner: a64: Add MBUS controller node
Date: Mon, 27 Jan 2020 20:05:27 +0100
Message-ID: <1736895.tdWV9SEqCh@jernej-laptop>
In-Reply-To: <20200127145931.rjewha4awnlorfvb@gilmour.lan>
References: <20200125110353.591658-1-jernej.skrabec@siol.net>
 <20200125110353.591658-4-jernej.skrabec@siol.net>
 <20200127145931.rjewha4awnlorfvb@gilmour.lan>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_110540_918911_49FB05FE 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.233 listed in list.dnswl.org]
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
 robh+dt@kernel.org, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne ponedeljek, 27. januar 2020 ob 15:59:31 CET je Maxime Ripard napisal(a):
> Hi,
> 
> On Sat, Jan 25, 2020 at 12:03:51PM +0100, Jernej Skrabec wrote:
> > A64 contains MBUS, which is the bus used by DMA devices to access
> > system memory.
> > 
> > MBUS controller is responsible for arbitration between channels based
> > on set priority and can do some other things as well, like report
> > bandwidth used. It also maps RAM region to different address than CPU.
> > 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > 
> >  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi index
> > 862b47dc9dc9..d225ea1f3b87 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > @@ -1061,6 +1061,14 @@ pwm: pwm@1c21400 {
> > 
> >  			status = "disabled";
> >  		
> >  		};
> > 
> > +		mbus: dram-controller@1c62000 {
> > +			compatible = "allwinner,sun50i-a64-mbus";
> > +			reg = <0x01c62000 0x1000>;
> > +			clocks = <&ccu CLK_MBUS>;
> 
> We're merging the clock header patch and the DT through two different
> trees, so you can't use it right away. You should use the raw ID here.

Ok.

> 
> (also, as a general remark, it's easier on us to not send the patches
> during the rc6 <-> rc1 phase), so if you can resend them as soon as
> rc1 is out, that would be great :)

Ok, I'll send v2 then.

Best regards,
Jernej



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
