Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA3995FCD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 15:18:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BE50N13sosFuSHfDW+IGpNzt+BM1d8Q0RAbTl1UZLAU=; b=TY5KD6m84gsXWA
	W1go8zvLJvWlX8myyW5SB/VDdpthN1mYv9FYpkVWssZKXKzsS3YQpXChpURq35btL71ECV4IKUQGu
	78lVG4hdzMbYF/2iVMskkfZKOvMYI8rmKA2FFePNxt+WfxDsYxUYDdf7HjV+DBfXO+Vuk9h6GV7xh
	UOO6kR2RrCuZUEPhcfpxNYXL8X5Zb6EQHCkBF48eTJm/ZaxGmrbZdD5IspP1u7/eETBDUjoqNxIx3
	+glj6q7LeGqjsfwyxDXqDVfAMx+bQ3RuaQk6CpPbH1CQTHG792MC0m5+rnaYaB3EP+hE+MhCyKmLY
	fsWhCk6D1ZDrWltqCOXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i041r-0000KG-G0; Tue, 20 Aug 2019 13:18:27 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i041I-0000Jl-UO
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 13:17:54 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id E18FC19FC;
 Tue, 20 Aug 2019 09:17:51 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Tue, 20 Aug 2019 09:17:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm3; bh=q
 1zMCHP9N5dVVFnUfRVs/+hK9HwHAxsq2830Gk8Otsg=; b=TKnHxb30U2xLo5RnR
 KlEyBBAb+ChXyncMtNVmDnLF3EhbIBW6zwW4BUbMpJA8iBZ5R1EfCY5gtOhqtvbN
 7cnfPLR/vxNLffoxJrjRxpkon7yCCkCPK1pyhjplXtX4I8Jq9HA/+rIQid+SIh7i
 A2/n3pj7quWpytyiSvRWasKIAPB7/7sKnGG203xhTbkOOJX1TpVTkt+ZujqmlSTl
 nBi7/kKyP/ed8hP6NA8Fq9NDTD9LNEKmMtyO1TYWA3HAyvoJrISpLW+qEAnF8K7T
 Lcf8nAneMs1AF5g4iPiM1R7CnwgYbAJI3F4Dg/nhGenlRm1Y9bROVXSxH7pYqxyD
 3F0rg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; bh=q1zMCHP9N5dVVFnUfRVs/+hK9HwHAxsq2830Gk8Ot
 sg=; b=P566rOuk25uZ8kvW2Qcy7xPqQAvYpqGna+vaACB0COl254I6sG+rJM8tV
 og8Fq/f/OM9udD0D3TzgO1xxeOc+GBLa8IUnAYiezLITXVA+SNtOZdbZqX6qYxlp
 TMLh9jNmz9Mam7DExzTC6n5C4l6ZSOQelzMDaKVrhPu2F4VwIoG5yXX1c5w1u7Pt
 nX/UC/VAeN3bT0vm31KpIlpZw/o7H/EJ+EcJ+nvNiMKQyBx1SoplMIWhKq+m7rw6
 gr3qOWX7lGJQXGRyA7AudPZcBGSWp0IfNAuSd8CcUf9nPJ24P9hQqER06VOWXLu0
 sBNel/sEsBdSWzh3uZrhNZM+IMagg==
X-ME-Sender: <xms:_vJbXQ5RO5O9O1Rczy5smOCcSkohwcFzrAUqNdmYYmKfsUWO1G3zkA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudeguddgieduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 goufhprghmkfhpqdhouhhtucdlhedttddmnecujfgurhepuffvfhfhkffffgggjggtgfes
 thejredttdefjeenucfhrhhomhepufgrmhhuvghlucfjohhllhgrnhguuceoshgrmhhuvg
 hlsehshhholhhlrghnugdrohhrgheqnecukfhppeejtddrudefhedrudegkedrudehuden
 ucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
 enucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:_vJbXQLP4-G8J52XBWp3Oa34_OhDPDoTAN1cAfUR217WjvVuk-9gJw>
 <xmx:_vJbXclwYk_iWxKdsVVnmGdYi1LS2aMU48Q4RjV-T4EW3k6R1X5sXQ>
 <xmx:_vJbXX_maJBFjW-7ggTBO5hZDoiWM227wr87IFn7VVbempcryJfYRg>
 <xmx:__JbXWfxxQEm5aSfIkZCk4bK5_ro-AT2199PORzHo8kYpsHUbVPJ2q1jzw4>
Received: from [192.168.50.162]
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id C09B1380075;
 Tue, 20 Aug 2019 09:17:49 -0400 (EDT)
Subject: Re: [PATCH v4 05/10] ARM: dts: sunxi: a80: Add msgbox node
To: Maxime Ripard <maxime.ripard@bootlin.com>
References: <20190820032311.6506-1-samuel@sholland.org>
 <20190820032311.6506-6-samuel@sholland.org>
 <20190820081528.7g2lo4njkut5lanu@flea>
From: Samuel Holland <samuel@sholland.org>
Message-ID: <f3e3420e-450a-7d41-edf8-776c0cd5a320@sholland.org>
Date: Tue, 20 Aug 2019 08:17:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190820081528.7g2lo4njkut5lanu@flea>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_061753_253903_16E8CA68 
X-CRM114-Status: GOOD (  15.74  )
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

Hi,

On 8/20/19 3:15 AM, Maxime Ripard wrote:
> On Mon, Aug 19, 2019 at 10:23:06PM -0500, Samuel Holland wrote:
>> The A80 SoC contains a message box that can be used to send messages and
>> interrupts back and forth between the ARM application CPUs and the ARISC
>> coprocessor. Add a device tree node for it.
>>
>> Signed-off-by: Samuel Holland <samuel@sholland.org>
> 
> I think you mentionned that crust has been tested only on the A64 and
> the H3/H5, did you test the mailbox on those other SoCs as well?

No, I only have A64/H3/H5, and recently H6, hardware to test. I've looked
through the manuals to verify that the registers are all the same, but I haven't
run the driver on earlier SoCs.

On 32-bit SoCs, where there's no other user of SRAM A2, it should be easy to get
the toy firmware running. All you should need to do is:
  1) Update the MMIO base/clock addresses in drivers/msgbox/sunxi-msgbox.c
  2) Update the load address in platform/sun50i/include/platform/memory.h
  3) Load the firmware to SRAM A2 (can be done from a U-Boot shell)
  4) Initialize the reset vector (algorithm is in tools/test.c:109)
  5) Deassert AR100 reset (again, these last two steps can be done from U-Boot)

Thanks,
Samuel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
