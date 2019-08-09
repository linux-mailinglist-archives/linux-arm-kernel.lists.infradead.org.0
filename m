Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F94876BA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 11:54:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ddDx2cWCdno1n+E/XeewU8eGINc8luKrjJxwpI/cPaA=; b=VbC6UTsk5GmvAz
	A8P05JcXSDPdml9vPpAsQG6BUoA0vX4w/4yRRVk+6kP93xb2ziCS8kOOUW/ynbSMFIRp8TBKhSv7g
	p1WRdXo3/FD2rTSRVjSfy8F+uDIT9BYf4a+32yqRy7gPwCQECHUxtbLhVBpTqECHT419qcdHy3V2j
	6B2Z9uFIXr28kjJ34zI1NDE93Eueco8T4YrkQ1C+VI2QYgQbxVOyld+iopnUK4507YLxQhJ2Ssx7E
	fUAaeuUs/Vr7o+hZRrnbPPHja970SGQUf+ZbRzUPe3Yl+HhA6j1tSM/9XTLMVLQ1xNzsIqPRHt8C5
	f9xgs9Z7KySI9PfVZpYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw1ax-00075m-2W; Fri, 09 Aug 2019 09:53:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw1ai-00075E-GI
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 09:53:45 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 815C82171F;
 Fri,  9 Aug 2019 09:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565344424;
 bh=HvIMRzJAD8xKVNar+I0poiTdap6cuZjybn8Cb39/S4A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mAW5usvY5TRTwNwiyb9HbLqnttY7Fl181BMCrvMtghPMrPW3HXe/FUImhq15iYn+R
 Fy0fDCyZCSZqFB9kERdFKnUn41T527BTUSDqT89jqc5LukkdNqmwjulPAd8DZKyhu6
 eTjpDwZA0xMwsF4/pd+QBlSjd51QxUOAeObojS5I=
Date: Fri, 9 Aug 2019 10:53:38 +0100
From: Will Deacon <will@kernel.org>
To: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
Subject: Re: [PATCH 5/6] tty: serial: Add linflexuart driver for S32V234
Message-ID: <20190809095338.d73fomq424gayf2b@willie-the-truck>
References: <20190802194702.30249-1-stefan-gabriel.mirea@nxp.com>
 <20190802194702.30249-6-stefan-gabriel.mirea@nxp.com>
 <20190808080832.nleult5bknmzr3ze@willie-the-truck>
 <VI1PR0402MB28635661A4A294EC6F01095EDFD70@VI1PR0402MB2863.eurprd04.prod.outlook.com>
 <20190808171711.nk7ljqkugtketu4q@willie-the-truck>
 <VI1PR0402MB2863B3E3E2F93CBA8ADB96E5DFD60@VI1PR0402MB2863.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR0402MB2863B3E3E2F93CBA8ADB96E5DFD60@VI1PR0402MB2863.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_025344_585814_7E422BB7 
X-CRM114-Status: GOOD (  18.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Cosmin Stefan Stoica <cosmin.stoica@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Larisa Ileana Grigore <larisa.grigore@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 09:45:40AM +0000, Stefan-gabriel Mirea wrote:
> On 8/8/2019 8:17 PM, Will Deacon wrote:
> > On Thu, Aug 08, 2019 at 12:47:00PM +0000, Stefan-gabriel Mirea wrote:
> >> On 8/8/2019 11:08 AM, Will Deacon wrote:
> >>> On Fri, Aug 02, 2019 at 07:47:23PM +0000, Stefan-gabriel Mirea wrote:
> >>>> +             linflex,<addr>
> >>>> +                     Use early console provided by Freescale LinFlex UART
> >>>> +                     serial driver for NXP S32V234 SoCs. A valid base
> >>>> +                     address must be provided, and the serial port must
> >>>> +                     already be setup and configured.
> >>>
> >>> Why isn't earlycon= sufficient for this?
> >>
> >> "earlycon=" is not actually supported. I will fix this in the next
> >> version by adding a /chosen/stdout-path to the dts. The compatible
> >> string provided to OF_EARLYCON_DECLARE will also be changed from
> >> "fsl,s32v234-linflexuart" to "fsl,s32-linflexuart" to match the one in
> >> the device tree nodes. I missed this after importing a rename from our
> >> codebase.
> >>
> >> Should I remove this addition from kernel-parameters.txt after that?
> > 
> > Yes, if you can use earlycon instead, then you can drop your custom option
> > entirely and therefore there's no need to document it either.
> 
> Can you please clarify what you mean by "drop your custom option"? The
> "linflex" option documented in the paragraph is the name of the
> earlycon_id declared via "OF_EARLYCON_DECLARE(linflex, ...)". We have
> not done anything particular to accept it in the parameter value.

My apologies, I completely misread your patch and thought your were adding
a *new* kernel parameter. Having looked at the context, I now see you're
adding a new earlycon option, which is what I was suggesting :)

By all means, please update the stdout-path, because then you can just pass
"earlycon" and things will work as expected.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
