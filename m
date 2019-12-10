Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 965461182AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 09:46:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4zPMG0yYAgdVwqMFqDbO8MhH/fEoOX/ypbxSdvbgnOU=; b=dtkD+N1UqF+unZTJi6NKa4xKO
	u0M7raRKb7hCRwbgwLmZ+WiDSO0+bxWz5O3gTqVKLZkkb3s+p3VOdQUdPexFn+7inI3BFJXtFmhA9
	OjImNQgKNnlUIbTnNsgHnQGQUoIsM+vhQvFAsXO4otD+++aVx9tat6Ge+5cLnPnUz72QxLzTjCuuZ
	YDFEP2MNMNXtmc5tHrYZA+WQB+ehDL+2W0/Enc1mU/CyVaRwfx6R+BHoft93WS0LNNSWbklQw0oEb
	EzTvwEwoONT94dzbcu9sNx21/fSn0ikcRllngPt0SP+uUU5AjxmBQzYC41Is2zh1Krda6gzRmfbZt
	AzGUYilJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iebA9-0003h8-5c; Tue, 10 Dec 2019 08:46:33 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iebA1-0003gL-E7
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 08:46:27 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 4301722F53;
 Tue, 10 Dec 2019 09:46:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1575967576;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FMHqQIH0YwuED/+u0DxlTgEGgB9bB70Zi0r/xwFd6yw=;
 b=KOZTt67cW8XL0gAMdkR78Sb60+C9JG9VLRnjrjYh2/4TSvdIIVK3PMDOv7LG0wl9c0gwa4
 /EOpJ606cVhtBRlo8RwVucgGDj7nQaMRTtCw/ycZBvNb0NXBEalQ16NjajwX7bx8+afLhK
 CvWEDs5wZG6b6q9AhxHcXjIOYQ8bcrg=
MIME-Version: 1.0
Date: Tue, 10 Dec 2019 09:46:10 +0100
From: Michael Walle <michael@walle.cc>
To: Alison Wang <alison.wang@nxp.com>
Subject: Re: [EXT] Re: [PATCH] arm64: dts: ls1028a: put SAIs into async mode
In-Reply-To: <VI1PR04MB4062D212996FE37A72DE3557F45B0@VI1PR04MB4062.eurprd04.prod.outlook.com>
References: <20191129210937.26808-1-michael@walle.cc>
 <20191209090840.GL3365@dragon>
 <VI1PR04MB4062D212996FE37A72DE3557F45B0@VI1PR04MB4062.eurprd04.prod.outlook.com>
Message-ID: <83445bed8b838b56e7d041915f1849f8@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.8
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: 4301722F53
X-Spamd-Result: default: False [1.40 / 15.00]; ARC_NA(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_SEVEN(0.00)[8]; NEURAL_HAM(-0.00)[-0.710];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_MATCH_FROM(0.00)[];
 SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_004625_776873_4E07D31C 
X-CRM114-Status: GOOD (  20.57  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Leo Li <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Alison,

Am 2019-12-10 06:35, schrieb Alison Wang:
> Hi, Michael,
> 
> In most of our cases, TX and RX are using the same BCLK and SYNC
> clocks. So the default synchronous mode (sync Rx with Tx) is used,
> which means both transmitter and receiver will send and receive data
> by following clocks of transmitter. It is verified on our boards.


I get that, but it doesn't make sense for the LS1028A SoC because, there
is no way you have have the TX data and the RX clocks or vice versa. The
hardware of the SoC doesn't allow that. I cannot speak of the QDS 
variant
of the SoC, but the LS1028ARDB only has a transmitter. So there is no
problem, because it will default to the TX clock. But as soon as you 
also
have a receiver you have to use the clock of the receiver block. You 
could
say, use fsl,sai-synchronous-rx, but that will only work if the SAI is
used in RX mode. fsl,sai-asynchronous mode works for both on the other
hand and can therefore be the default mode.

-michael


> 
> 
> Best Regards,
> Alison Wang
> 
>> -----Original Message-----
>> From: Shawn Guo <shawnguo@kernel.org>
>> Sent: Monday, December 9, 2019 5:09 PM
>> To: Michael Walle <michael@walle.cc>; Alison Wang 
>> <alison.wang@nxp.com>
>> Cc: linux-arm-kernel@lists.infradead.org; devicetree@vger.kernel.org;
>> linux-kernel@vger.kernel.org; Leo Li <leoyang.li@nxp.com>; Rob Herring
>> <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>
>> Subject: [EXT] Re: [PATCH] arm64: dts: ls1028a: put SAIs into async 
>> mode
>> 
>> Caution: EXT Email
>> 
>> + Alison Wang
>> 
>> On Fri, Nov 29, 2019 at 10:09:37PM +0100, Michael Walle wrote:
>> > The LS1028A SoC has only unidirectional SAIs. Therefore, it doesn't
>> > make sense to have the RX and TX part synchronous. Even worse, the RX
>> > part wont work out of the box because by default it is configured as
>> > synchronous to the TX part. And as said before, the pinmux of the SoC
>> > can only be configured to route either the RX or the TX signals to the
>> > SAI but never both at the same time. Thus configure the asynchronous
>> > mode by default.
>> >
>> > Signed-off-by: Michael Walle <michael@walle.cc>
>> 
>> Alison, Leo,
>> 
>> Looks good to you?
>> 
>> Shawn
>> 
>> > ---
>> >  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 6 ++++++
>> >  1 file changed, 6 insertions(+)
>> >
>> > diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
>> > b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
>> > index 379913756e90..9be33426e5ce 100644
>> > --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
>> > +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
>> > @@ -637,6 +637,7 @@
>> >                       dma-names = "tx", "rx";
>> >                       dmas = <&edma0 1 4>,
>> >                              <&edma0 1 3>;
>> > +                     fsl,sai-asynchronous;
>> >                       status = "disabled";
>> >               };
>> >
>> > @@ -651,6 +652,7 @@
>> >                       dma-names = "tx", "rx";
>> >                       dmas = <&edma0 1 6>,
>> >                              <&edma0 1 5>;
>> > +                     fsl,sai-asynchronous;
>> >                       status = "disabled";
>> >               };
>> >
>> > @@ -665,6 +667,7 @@
>> >                       dma-names = "tx", "rx";
>> >                       dmas = <&edma0 1 8>,
>> >                              <&edma0 1 7>;
>> > +                     fsl,sai-asynchronous;
>> >                       status = "disabled";
>> >               };
>> >
>> > @@ -679,6 +682,7 @@
>> >                       dma-names = "tx", "rx";
>> >                       dmas = <&edma0 1 10>,
>> >                              <&edma0 1 9>;
>> > +                     fsl,sai-asynchronous;
>> >                       status = "disabled";
>> >               };
>> >
>> > @@ -693,6 +697,7 @@
>> >                       dma-names = "tx", "rx";
>> >                       dmas = <&edma0 1 12>,
>> >                              <&edma0 1 11>;
>> > +                     fsl,sai-asynchronous;
>> >                       status = "disabled";
>> >               };
>> >
>> > @@ -707,6 +712,7 @@
>> >                       dma-names = "tx", "rx";
>> >                       dmas = <&edma0 1 14>,
>> >                              <&edma0 1 13>;
>> > +                     fsl,sai-asynchronous;
>> >                       status = "disabled";
>> >               };
>> >
>> > --
>> > 2.20.1
>> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
