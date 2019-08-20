Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1E495F61
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 15:03:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JXmW7lRgDBCaI3xFmgZOCAyOzYxf4UQ4SqjBg1YgQoM=; b=LGOxtOa1LghqDN
	O2GLcdH7YATwfaHHTT7mpg65IepuYzJclS4xv+F5E5YjzKCMKo02tjpRfhHuwIzaznHkgloWph4Qe
	vQDJ8CJxm5G21O+t31v/dpOuSGBRQkfWWENibSgPd/UagC8n9gBcpH/fzgHfogO8vPReGmpnRNthL
	vdYjkCeThQ2dTVp4i4OLByBOu3bRM083hb3VK3thM7u0yifd64CtXxo7j2CebbhhTtnlhUbl435nQ
	frw78/ZUrU2h9mK/WfKXf2XIw8oSVVqtAHfStwCEN2Tsv547qMm7sIQkmy7khL3th6nGeA0u6tieD
	XqtaMW/0p1ZxW0F0JnTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i03nA-0002HY-G7; Tue, 20 Aug 2019 13:03:16 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i03mw-0002Gi-C6
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 13:03:04 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 1CB561A74;
 Tue, 20 Aug 2019 09:02:59 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Tue, 20 Aug 2019 09:02:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm3; bh=1
 usIyl6jBRrcd9bI7o9gbxd6pE66tvE7eiKPLxty27A=; b=LiOhSbi5IJNsXVgMD
 Qnc0zT60+2lOlbSltEck6AJ4prekCDYxWAEMv+giRPRCuqVRDlWwauFKrOmNhAiE
 +CB34WVyU2GhNxPodFT4AP9Wj7f3AG+6/ftZfXnggizy131pduBImIiQdkk02k0C
 D7ZfEBMzrYkXyBzw9VAolt8g5vUXhNxtyXaq7NjxBZNR6IbCTwjakdMPu+mF11KG
 vv0vEtjYbpqm60N8UmlEADyzbMLfORa/UURKAwN8PFVg4CS5B6Li0AVw5wTScLiq
 m4YTHdrPqQlUpfba3IGXJAo/84yWF8bvAIaEL1P1pFxeFPVJvALbceqcHtSGxPdK
 yFnxw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; bh=1usIyl6jBRrcd9bI7o9gbxd6pE66tvE7eiKPLxty2
 7A=; b=EypA7RvfDE5jwfTIyRB0mMJuOIfQQfHGCG4abVQDW7zn/6LTV5aNNK8aV
 XBBCGD/e4ZIPZeR+CNMqhnlLKM3jlOEI/8ig5ERwuVUfZepuSs8HH0zUivTvIQO+
 uztQKYIYeioz7JTl6ZwPtV4josiU3V4lRdm0gazn4xVKPSFICJSxpfq3V9QAjJLS
 U85qzTyHCKWqfaeuwMRt6yDlxptdnTj2FWYPpTLJ3b9iVW7lA1V772f6JWpsczkl
 Z6vWDNPKyC+yzZnHU3Mgc3HdEtv0r3FqLATGNppq+azRapLXUlMhBzQcuE5P7QSP
 mlxCL+n37OQIVVbnKOFocIcYnrMyQ==
X-ME-Sender: <xms:ge9bXYgRHXVxUiYDoQyP6boSZH3D_2mW33CKOUYLXTPC16V198SkNQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudeguddgheekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 goufhprghmkfhpqdhouhhtucdlhedttddmnecujfgurhepuffvfhfhkffffgggjggtgfes
 thejredttdefjeenucfhrhhomhepufgrmhhuvghlucfjohhllhgrnhguuceoshgrmhhuvg
 hlsehshhholhhlrghnugdrohhrgheqnecukfhppeejtddrudefhedrudegkedrudehuden
 ucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
 enucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:ge9bXaY4wThlynGNdxR2RoMtj90VMsONx9Gr7i1fJkXkUA-tMJH8UQ>
 <xmx:ge9bXZPBVP-n5D76B7tsNqU1FUWFgUKybxt3nLKCRPrrVSkAe7bk8Q>
 <xmx:ge9bXcSrYQWR-HKkZyvnl5gVZWID451AXgTjTo9-4BKPiq90UXS6ug>
 <xmx:g-9bXRhUUZYoxA7ROwch_EfWRiGPjBXmQuQh6ZEm_2DY1jQhbtAHxRscFqA>
Received: from [192.168.50.162]
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id BB527380083;
 Tue, 20 Aug 2019 09:02:56 -0400 (EDT)
Subject: Re: [PATCH v4 02/10] clk: sunxi-ng: Mark AR100 clocks as critical
To: Maxime Ripard <maxime.ripard@bootlin.com>
References: <20190820032311.6506-1-samuel@sholland.org>
 <20190820032311.6506-3-samuel@sholland.org>
 <20190820071142.2bgfsnt75xfeyusp@flea>
From: Samuel Holland <samuel@sholland.org>
Message-ID: <3b67534a-eb1b-c1e8-b5e8-e0a74ae85792@sholland.org>
Date: Tue, 20 Aug 2019 08:02:55 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190820071142.2bgfsnt75xfeyusp@flea>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_060302_641256_A32E1869 
X-CRM114-Status: GOOD (  24.78  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-sunxi@googlegroups.com, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/20/19 2:11 AM, Maxime Ripard wrote:
> Hi,
> 
> On Mon, Aug 19, 2019 at 10:23:03PM -0500, Samuel Holland wrote:
>> On sun8i, sun9i, and sun50i SoCs, system suspend/resume support requires
>> firmware running on the AR100 coprocessor (the "SCP"). Such firmware can
>> provide additional features, such as thermal monitoring and poweron/off
>> support for boards without a PMIC.
>>
>> Since the AR100 may be running critical firmware, even if Linux does not
>> know about it or directly interact with it (all requests may go through
>> an intermediary interface such as PSCI), Linux must not turn off its
>> clock.

This paragraph here is the key. The firmware won't necessarily have a device
tree node, and in the current design it will not, since Linux never communicates
with it directly. All communication goes through ATF via PSCI.

>> At this time, such power management firmware only exists for the A64 and
>> H5 SoCs.  However, it makes sense to take care of all CCU drivers now
>> for consistency, and to ease the transition in the future once firmware
>> is ported to the other SoCs.
>>
>> Leaving the clock running is safe even if no firmware is present, since
>> the AR100 stays in reset by default. In most cases, the AR100 clock is
>> kept enabled by Linux anyway, since it is the parent of all APB0 bus
>> peripherals. This change only prevents Linux from turning off the AR100
>> clock in the rare case that no peripherals are in use.
>>
>> Signed-off-by: Samuel Holland <samuel@sholland.org>
> 
> So I'm not really sure where you want to go with this.
> 
> That clock is only useful where you're having a firmware running on
> the AR100, and that firmware would have a device tree node of its own,
> where we could list the clocks needed for the firmware to keep
> running, if it ever runs. If the driver has not been compiled in /
> loaded, then we don't care either.

See above. I don't expect that the firmware would have a device tree node,
because the firmware doesn't need any Linux drivers.

> But more fundamentally, if we're going to use SCPI, then those clocks
> will not be handled by that driver anyway, but by the firmware, right?

In the future, we might use SCPI clocks/sensors/regulators/etc. from Linux, but
that's not the plan at the moment. Given that it's already been two years since
I started this project, I'm trying to limit its scope so I can get at least some
part merged. The first step is to integrate a firmware that provides
suspend/resume functionality only. That firmware does implement SCPI, and if the
top-level Linux SCPI driver worked with multiple mailbox channels, it could
query the firmware's version and fetures. But all of the SCPI commands used for
suspend/resume must go through ATF via PSCI.

> So I'm not really sure that we should do it statically this way, and
> that we should do it at all.

Do you have a better way to model "firmware uses this clock behind the scenes,
so Linux please don't touch it"? It's unfortunate that we have Linux and
firmware fighting over the R_CCU, but since we didn't have firmware (e.g. SCPI
clocks) in the beginning, it's where we are today.

The AR100 clock doesn't actually have a gate, and it generally has dependencies
like R_INTC in use. So as I mentioned in the commit message, the clock will
normally be on anyway. The goal was to model the fact that there are users of
this clock that Linux doesn't/can't know about.

> Maxime

Thanks,
Samuel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
