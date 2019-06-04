Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A0835280
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 00:03:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PzBnSYHiTyAdC6JXr58ugOV3RkMyiT97y13ipUOdrGY=; b=Np0NshR1JEEuXX
	Q/llK7sY1oIyVwWG8Qiv97eeL/qadvcPttO3e67tZonDWcltrxT+e80GV39Acu222AUs0qdVRJcva
	OfCENL/kdd/NXql0cGOmsjenHp57P9VBjLGRu4EGPIw2QrPLNi+Gmb5t0oTI5C73DTLw5eJBXtqwa
	rF0HD2+gOGNtUHCdXKO2P5S5xcy1NXliKL1sjmjnF/rfhE0zjk1mLBzxKOKRabgxd/5ZhIHACmRhO
	cnH8YbTqnrPiALx5gDmLmnaF+larpa1o1kg2mKSPyZyc16iYQhM1oijI2x1OqAS36DgtVJUAY0Mg+
	ON8bwcwErDVUvu3pwY3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYHX2-0002Gg-2V; Tue, 04 Jun 2019 22:03:48 +0000
Received: from atlmailgw1.ami.com ([63.147.10.40])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYHWu-0002Fd-Ih
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 22:03:42 +0000
X-AuditID: ac1060b2-2cbff70000003d86-4a-5cf6eab90d42
Received: from atlms2.us.megatrends.com (atlms2.us.megatrends.com
 [172.16.96.152])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by atlmailgw1.ami.com (Symantec Messaging Gateway) with SMTP id
 4B.AE.15750.9BAE6FC5; Tue,  4 Jun 2019 18:03:37 -0400 (EDT)
Received: from ATLMS1.us.megatrends.com ([fe80::8c55:daf0:ef05:5605]) by
 atlms2.us.megatrends.com ([fe80::29dc:a91e:ea0c:cdeb%12]) with mapi id
 14.03.0415.000; Tue, 4 Jun 2019 18:03:37 -0400
From: Hongwei Zhang <Hongweiz@ami.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: RE: [PATCH linux dev-5.1 v1] ARM: dts: aspeed: Add SGPM pinmux
Thread-Topic: [PATCH linux dev-5.1 v1] ARM: dts: aspeed: Add SGPM pinmux
Thread-Index: AQHVGl3d/v6MjHMzm0SmoLtXRU7xKqaK0JyAgAE8dbA=
Date: Tue, 4 Jun 2019 22:03:37 +0000
Message-ID: <14D3C8298A3B0F42A1EB31EE961CFF8231E4AA@atlms1.us.megatrends.com>
References: <1559601789-27121-1-git-send-email-hongweiz@ami.com>
 <CACRpkdYPHw994Ov0xCfK6tCg60tiuWrRwTcYpMSfOr4G0VKu_Q@mail.gmail.com>
In-Reply-To: <CACRpkdYPHw994Ov0xCfK6tCg60tiuWrRwTcYpMSfOr4G0VKu_Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.100.241]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrHIsWRmVeSWpSXmKPExsWyRiBhhu7OV99iDN5tULDYdZnDYv6Rc6wW
 v8//ZbaY8mc5k8Wmx9dYLZpXn2O22Dz/D6PF5V1z2CyWXr/IZNG69wi7A5fH1fZd7B5r5q1h
 9Lj48Rizx6ZVnWwed67tYfPYvKTe4/yMhYwenzfJBXBEcdmkpOZklqUW6dslcGW8m3iTpWAF
 f8Wj27tZGxi/8HUxcnJICJhI/Py6h7WLkYtDSGAXk8TlpzugnEOMEv97FrCAVLEJqEk8/dPA
 DmKLCOhIdG/7CVbELHCPWWLO55dADgeHsIC7xIJ1tRA1HhLTp/9jg7CtJDa9/8YEYrMIqEhc
 P/cdLM4r4Ctx/dBudohl7YwSbbv/gS3gFAiUuLJyOlgDo4CYxPdTa8BsZgFxiVtP5jNBnC0g
 sWTPeWYIW1Ti5eN/rBC2kkTDin9MIPcwC2hKrN+lD9GqKDGl+yE7xF5BiZMzn7BMYBSdhWTq
 LISOWUg6ZiHpWMDIsopRKLEkJzcxMye93FAvMTdTLzk/dxMjJE437WBsuWh+iJGJgxEYdhzM
 SiK8ibe/xAjxpiRWVqUW5ccXleakFh9ilOZgURLnXbnmW4yQQHpiSWp2ampBahFMlomDU6qB
 cdKihp/iwvaPZuYmcTMt/X8jRP/yRpYqY2ZnNv9Gz1OhOj+W6Mg80VE42X19YctqyakLd7mf
 CZzledFnRmnQovvFVUsibs/8nBXw22/9S9uX9QzPHH3dwoR/dQafOy6TXbi3WuC1F3f+7EXG
 kx/f2pCRlHsvpZt5Xj3jvx/2R7Xqel+sZ3jXr8RSnJFoqMVcVJwIAJ80j6fBAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_150340_689993_7681C186 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.147.10.40 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, "open list:OPEN FIRMWARE
 AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Andrew Jeffery <andrew@aj.id.au>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open
 list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

-----Original Message-----
From: Linus Walleij <linus.walleij@linaro.org> 
Sent: Monday, June 3, 2019 7:08 PM
To: Hongwei Zhang <Hongweiz@ami.com>
Cc: Joel Stanley <joel@jms.id.au>; Andrew Jeffery <andrew@aj.id.au>; Rob Herring <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>; open list:GPIO SUBSYSTEM <linux-gpio@vger.kernel.org>; open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS <devicetree@vger.kernel.org>; Linux ARM <linux-arm-kernel@lists.infradead.org>; linux-aspeed@lists.ozlabs.org; linux-kernel@vger.kernel.org
Subject: Re: [PATCH linux dev-5.1 v1] ARM: dts: aspeed: Add SGPM pinmux

Hi Hongwei,

On Tue, Jun 4, 2019 at 12:44 AM Hongwei Zhang <hongweiz@ami.com> wrote:
>
> Add SGPM pinmux to ast2500-pinctrl function and group, to prepare for 
> supporting SGPIO in AST2500 SoC.
>
> Signed-off-by: Hongwei Zhang <hongweiz@ami.com>
> ---
>  Documentation/devicetree/bindings/pinctrl/pinctrl-aspeed.txt | 2 +-
>  arch/arm/boot/dts/aspeed-g5.dtsi                             | 5 +++++
>  drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c                   | 4 ++++

Please try to separate out the change to arch/arm/boot/dts/aspeed-g5.dtsi into a separate patch that goes through ARM SoC.

Just committed the DT patch to _https://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git , please help to review. Thanks!


Other than that it looks fine to me.

Yours,
Linus Walleij
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
