Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE63011BE2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 16:57:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Content-ID:MIME-Version
	:References:In-reply-to:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KGHElWvs4xbCZHN7gVFMjWNImDuTucLh986lDWf2vvw=; b=LuDrMPPhuMhET+
	fErQfeN7B25sS2SWFT+TNFEguo6zjCzX5JMxZOEmLwBTnNblFoZQNRnHq52KBGCSIbENAXQHdCRTd
	kCyUDaGs2/JPoGNCLl8gHo2gMVoB07Fq4hlCJTgG+urY37E3XpWsuOQJW/GW4BK+IEw4mI4fbk7ev
	YId2Kl6ot5WDcBraS20RwKJYKXeQI/BAUKstGAnHsn+VnNxCIdKzfFA30a5cBRrl93PP5gOdkMpo2
	IMckjbqLgK+OtR+pJqz/N9uIOf00MC57ZK80NmFRSvD5OXl1IHw09lupkZJrsJ6pVe6/K+C88937D
	+QAT7JWeC6pJW6lcCPOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMD9e-0001eE-S7; Thu, 02 May 2019 14:57:46 +0000
Received: from mail.cosmopool.net ([2a01:4f8:160:20c1::10:107])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMD9X-0001db-Hf
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 14:57:41 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.cosmopool.net (Postfix) with ESMTP id 9FEE39011E4;
 Thu,  2 May 2019 16:48:48 +0200 (CEST)
Received: from mail.cosmopool.net ([127.0.0.1])
 by localhost (mail.b.radempa.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DD-8LWUwCpVy; Thu,  2 May 2019 16:48:48 +0200 (CEST)
Received: from stardust.g4.wien.funkfeuer.at
 (77.116.181.212.wireless.dyn.drei.com [77.116.181.212])
 by mail.cosmopool.net (Postfix) with ESMTPSA id C6B439005E5;
 Thu,  2 May 2019 16:48:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ccbib.org; s=201902;
 t=1556808527; bh=qecHgRUc9xPqGDQk/sGSxGVHPryu2DgkzhmmOs7Vel4=;
 h=From:To:cc:Subject:In-reply-to:References:Date:From;
 b=kltkYFvhY81mDJ4klIQNHqbTBhQQCDKUQbQ0HKHrSC+Or+Sch2ruknDpVeE/4hVah
 YGuTkh7BqJdW5oBThscygH3DQtJKv6jxPWqXIKMOpFY2dwUPUTIiWMGnc0UG88U4cb
 kd/qGN0juU6YTBXUCR3u9C0AKdzYvoDY9YkkCi8I=
Received: from lambda by stardust.g4.wien.funkfeuer.at with local (Exim 4.89)
 (envelope-from <harald@ccbib.org>)
 id 1hMD0v-0000Yu-Mi; Thu, 02 May 2019 16:48:45 +0200
From: Harald Geyer <harald@ccbib.org>
To: Torsten Duwe <duwe@lst.de>
Subject: Re: [PATCH RFC] arm64: dts: allwinner: a64: teres-i: Enable audio
In-reply-to: <20190502074656.5tw62ngvjxabrw4o@flea>
References: <20190212100929.iqsxu443qrkl6myf@flea>
 <E1gtds8-0000NB-Re@stardust.g4.wien.funkfeuer.at>
 <20190213094442.da2dy6d5bb527nft@flea>
 <E1gtsx9-0000RP-08@stardust.g4.wien.funkfeuer.at>
 <20190213155311.ovkpim3lxwyvuhhj@flea>
 <E1gu4dx-0000Sy-2B@stardust.g4.wien.funkfeuer.at>
 <20190215142029.GB32618@lst.de>
 <E1gv6rh-0000Km-U8@stardust.g4.wien.funkfeuer.at>
 <20190218102442.l3br2h3oqfe2atdv@flea> <20190430133232.GA18808@lst.de>
 <20190502074656.5tw62ngvjxabrw4o@flea>
Comments: In-reply-to Maxime Ripard <maxime.ripard@bootlin.com>
 message dated "Thu, 02 May 2019 09:46:56 +0200."
MIME-Version: 1.0
Content-ID: <2162.1556808525.1@stardust.g4.wien.funkfeuer.at>
Date: Thu, 02 May 2019 16:48:45 +0200
Message-Id: <E1hMD0v-0000Yu-Mi@stardust.g4.wien.funkfeuer.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_075740_043266_F65C9F7C 
X-CRM114-Status: GOOD (  23.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 info@olimex.com, Maxime Ripard <maxime.ripard@bootlin.com>,
 Mark Brown <broonie@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, ibu@radempa.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Maxime Ripard writes:
> On Tue, Apr 30, 2019 at 03:32:32PM +0200, Torsten Duwe wrote:
> > On Mon, Feb 18, 2019 at 11:24:42AM +0100, Maxime Ripard wrote:
> > > On Sat, Feb 16, 2019 at 09:47:13PM +0100, Harald Geyer wrote:
> > > >
> > > > > Would you care to submit a patch version without that GPIO handled?
> > > > > I think it's very useful and has the potential to be agreed upon.
> > > >
> > > > That would enable audio from the internal speakers but select debug
> > > > output on the HP jack by default. I would be okay with that, despite
> > > > still thinking that audio on the head phones should be the default.
> > > >
> > > > Maxime and Wens are the maintainers, so it's their call in the end.
> > >
> > > At this point, I'm not really convinced by the solution in that patch,
> > > but I don't have really good ideas either. I think it would be good to
> > > discuss this with Mark and Linus Walleij, they will probably have way
> > > better solutions than what I can come up with.
> >
> > Once more my plead to *please* apply the unchallenged parts of this patch!
> >
> > For reference:
> > https://patchwork.kernel.org/patch/10792589/
> >
> >
> > Just leave out the line
> >
> > +	hpvcc-supply = <&reg_eldo1>; /* TODO: Use only one of these */
> > (as clarified by ChenYu)
> >
> > and the
> >
> > @@ -131,6 +151,14 @@
> >  	status = "okay";
> >  };
> >
> > +&r_pio {
> > +	r_debug_select_pin: debug-select {
> > [...]
> >
> > hunk, which the discussion was about. The patch is of good value
> > even without it.
> >
> > IMHO it's a shame this didn't make it into 5.1
> >
> > Acked-by: Torsten Duwe <duwe@suse.de>
> 
> Please resend that patch

Sorry, I don't have time to work on this ATM.

Torsten, if you care about this, feel free to take it over.

I should point out that since then I have learned that pinebook is
using the exactly same debug output multiplexing. Their sound DT nodes
got merged, so we don't really add to the mess, if wo do the same
for the Teres.

Thanks,
Harald

> Maxime
> 
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
> 
>>> application/pgp-signature attachment

-- 
If you want to support my work:
see http://friends.ccbib.org/harald/supporting/
or donate via CLAM to xASPBtezLNqj4cUe8MT5nZjthRSEjrRQXN
or via peercoin to P98LRdhit3gZbHDBe7ta5jtXrMJUms4p7w

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
