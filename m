Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F7F117235
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 17:53:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QgYn3rE9q1jYNyg71YghdoBPoGmlY4G33RJVyIIrJck=; b=KM3H2ezDEemlZj
	mZH6ducVuwULoOABLM/8/GeIX4J/3YkZvo66Pkx1dO/2Dr/kqAgJ5yaTXYO/13L3yO1WblGiNbKKT
	fReoQXM+hyj2iilLltyN1s34+JfkXI84XKOFB/dRh3dsOiW7fW4LrfTcXNCCMODbiW1PzjPPXd6zZ
	4h8K9uISuRd3V0uF3X3TbxdBSonqR2QhoYUZizj0HAMW1OjotIhH5IFv3tDPP13/3oRzFXGOgzHUw
	mQrqsHCb1asIYZoISdxKC3R8EOhEKgpprmslfV1M1ItUT4xpmQEULJwYWAxUT/pY/MPBR2jUqEXaE
	dx5TgR7ag20m/SiGOPqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieMHm-0006Jm-75; Mon, 09 Dec 2019 16:53:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieMHd-0006JQ-4s
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 16:53:19 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4A012207FD;
 Mon,  9 Dec 2019 16:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575910396;
 bh=k3WgWl5UbXv5MieBdR01WsYTXtWFKoGPrB4Yk7jToYk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kcq2/sSYcppBI8w2mxwBtMccK3ngl1WPRnkKmwdW/ZNj+vNMsr4mlmrcD5kWFhsVD
 tgixkVrldVEmGq7NE1u1XEAcOAxFVrxzQHXfJ+Zo1Oq3LRhM6DZSJq0YcntMBv2ufG
 hJMIrkWRlmrK3sD/SfqwRCLVOjmNvxT5iCZByjkE=
Date: Mon, 9 Dec 2019 17:53:14 +0100
From: Maxime Ripard <mripard@kernel.org>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: Convert to new-style SPDX license
 identifiers
Message-ID: <20191209165314.mostdak54qgo2r3y@gilmour.lan>
References: <20191123132435.22093-1-peron.clem@gmail.com>
 <20191128174204.tbr5ldilkadw42gc@gilmour.lan>
 <CAJiuCccY7AFsd22bOxKZW=BAne5YEG0vmnVmUNFamU9cpW_vNA@mail.gmail.com>
 <20191202191205.2izimptezz5rf5kp@gilmour.lan>
 <CAJiuCcdKi9vedvCWz1BvCS8B0h9rEX1oafZzdok9noFsnvg1NA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJiuCcdKi9vedvCWz1BvCS8B0h9rEX1oafZzdok9noFsnvg1NA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_085317_799374_D63BD94C 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 02, 2019 at 08:45:44PM +0100, Cl=E9ment P=E9ron wrote:
> > > > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.=
dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
> > > > > index f335f7482a73..84b7e9936300 100644
> > > > > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
> > > > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
> > > > > @@ -1,4 +1,4 @@
> > > > > -// SPDX-License-Identifier: (GPL-2.0+ or MIT)
> > > > > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > > > >  /*
> > > > >   * Copyright (C) 2019 Cl=E9ment P=E9ron <peron.clem@gmail.com>
> > > > >   */
> > > >
> > > > And I'm not sure what this one (and the next) is?
> > >
> > > The license expressions in dual licensed files is wrong here, "OR"
> > > should be uppercase.
> > > I can move it to a separate commit if you like.
> >
>
> > Ah, right, indeed, this should be in a separate patch.
> So how many patch do you recommend here ?
>
> 1 for the or -> OR style fix.
> 1 to change to SPDX.
> and 1 to use the same // style everywhere ?

Yep :)

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
