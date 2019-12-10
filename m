Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50755117CC1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 01:57:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ygCRq0cOzB53+KhXvvQV+DAwLPqzx3uyr0zd38dK1yo=; b=T3VJ67t51dXgBu
	JnjfKx1cPJ9D0AocY0K1Lcku3dCZEW2ubBgJtqD2wrkde0P9ty/nC49QmS8UJqVmBb/0fIkr8l9JN
	H6hD1GBSTGbPj2H6aiBQ67LVBRhuOe05fR8CCtyO/dqkb7F32k5JSLhpv5LHKWUmLvjcyXFD8T1BK
	qDtc3kDMJlE9cnCTbeBpH87qwJAGQw9ZQ79hQboYzY13kCamFM12ABbgwIx20PwSiaWg3tJEJdFlU
	ZRuD1PfI6VefuUQ/3bEcqQ2E/f1P7zxnhOjh13Z+XQMRrjGNS7J+d5iPZ9LOQPbsLpU4FP36ZVjmU
	Hic/xRMsZUkS+fFQbirQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieTqF-0000zT-SM; Tue, 10 Dec 2019 00:57:31 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieTq6-0000yb-T7
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 00:57:24 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id 3EDFE22612;
 Mon,  9 Dec 2019 19:57:14 -0500 (EST)
Received: from imap26 ([10.202.2.76])
 by compute7.internal (MEProxy); Mon, 09 Dec 2019 19:57:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alistair23.me;
 h=mime-version:message-id:in-reply-to:references:date:from:to
 :cc:subject:content-type; s=fm2; bh=QZSXV0E2wXwjz2l7XHDJiDEjbOAx
 GZT1UKVhqbaYJS8=; b=fEtJ5hPtvSAdSQ2BivWZ7OUUHuFksOY6CDc7SDdWY04X
 BaXoOYVrDWqh2qPUm8fH5X0MJlIJeoIAMjSIMWg/5oultj4Wz+mbXUhwF8QQEJVW
 lFBu5rbkxO1LyGcKPZEW+Vk6gCguhIy9AKqM62AT+ck5dBhy89ZG9/nw2Q+EuDor
 l0txAnqPecnZQI9psuJPysP6/vNB2rhZsGBkkSWnbQBZfGc7LXOg/KNkILPvYMAI
 ebHchkssx1W/1Kqc7B3lDkQ0s/czCG+31W8wlIqaDt7CzRmZaC70Tp7oqucG6oqD
 yvgMm7UZ4wr9eluob6YpoI+NnsUWXBAy9lGelLVZJg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=QZSXV0
 E2wXwjz2l7XHDJiDEjbOAxGZT1UKVhqbaYJS8=; b=m4YrBQR/R8XYEOxqL7N4cj
 3h3TFlRcKePgjbCeoMH29mbXXEmDovrya2ovuVSEvgi70R/Io5PsebbxMSs+MQyG
 AuNCDaKnw9NICmc6uVwmabX30OlrJGvBA/lzk+0cP63GsBH+nEo4P7Jp556m+rlG
 RtVD46mnbtpQidkAbGpyNqus3+Nxv1fCV5WlkIXvQyGw5xbafnroQ8+YrwieKsAf
 1VtXSU2QQgHDRm+RaeotgFmRemnGsBgza6nLp6+IecIVrs7WL0qZKQ98+555CnY9
 mdyNliv/hlnV+nQ98Bs89ZNsb+KWswAEDpTzxUQmDcg4rmRONj8O/LsJ4BlwPKAw
 ==
X-ME-Sender: <xms:ae3uXXaMbU9PuTAgFY9hQigs_Z65vPQGS0vt4Fh-3fBHr27Vx9XBjA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudelvddgvdefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomheptehlihhs
 thgrihhruceorghlihhsthgrihhrsegrlhhishhtrghirhdvfedrmhgvqeenucffohhmrg
 hinhepshhpihhnihgtshdrnhgvthenucfrrghrrghmpehmrghilhhfrhhomheprghlihhs
 thgrihhrsegrlhhishhtrghirhdvfedrmhgvnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:ae3uXe8mZ2ugEYMZ1BvAjmp-FXJ-774sqs1jLk2FbNVBVJ4lVWJNcg>
 <xmx:ae3uXRDyMyv3RHp3ckaW3hxkWXBFqA3JWgmKcigXceu9o8aY0SC2mw>
 <xmx:ae3uXSvOKzSH31YiNKC1NXacEPJFBOdvDKBJikquBXqY-guQIMkOKQ>
 <xmx:au3uXTAfTPH-TKoOB3XMECe3IqAp5Q2BpJi8Z-QHq7H84ey-UZ_bHg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 13DBC14200A1; Mon,  9 Dec 2019 19:57:13 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-612-g13027cc-fmstable-20191203v1
Mime-Version: 1.0
Message-Id: <e5cc3689-14c9-4cb6-bda8-beb6a9e8db7a@www.fastmail.com>
In-Reply-To: <20191209193729.jfw2z4iqlhrzohse@hendrix.lan>
References: <20191207192249.8346-1-alistair@alistair23.me>
 <20191209193729.jfw2z4iqlhrzohse@hendrix.lan>
Date: Mon, 09 Dec 2019 16:56:51 -0800
From: Alistair <alistair@alistair23.me>
To: "Maxime Ripard" <mripard@kernel.org>
Subject: =?UTF-8?Q?Re:_[PATCH]_arm64:_allwinner:_Enable_Bluetooth_and_WiFi_on_sop?=
 =?UTF-8?Q?ine_baseboard?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_165723_079581_EE6F017B 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, wens@csie.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Alistair Francis <alistair23@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 9, 2019, at 11:37 AM, Maxime Ripard wrote:
> On Sat, Dec 07, 2019 at 11:22:49AM -0800, Alistair Francis wrote:
> > The sopine board has an optional RTL8723BS WiFi + BT module that can be
> > connected to UART1. Add this to the device tree so that it will work for
> > users if connected.
> >
> > Signed-off-by: Alistair Francis <alistair@alistair23.me>
> > ---
> > .../dts/allwinner/sun50i-a64-sopine-baseboard.dts | 14 ++++++++++++++
> > 1 file changed, 14 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > index 920103ec0046..0a91f9d8ed47 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > @@ -214,6 +214,20 @@ &uart0 {
> > status = "okay";
> > };
> >
> > +&uart1 {
> > + pinctrl-names = "default";
> > + pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
> > + status = "okay";
> > +
> > + bluetooth {
> > + compatible = "realtek,rtl8723bs-bt";
> > + reset-gpios = <&r_pio 0 4 GPIO_ACTIVE_LOW>; /* PL4 */
> > + device-wake-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /* PL5 */
> > + host-wake-gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
> > + firmware-postfix = "pine64";
> > + };
> > +};
> > +
> 
> Output from checkpatch:
> total: 10 errors, 11 warnings, 0 checks, 20 lines checked

Sorry, I should have checked that before I posted.

> 
> More importantly, that binding isn't documented, and doesn't have a
> driver either.

Ah, I confused myself.

I have some patches that will fix this, but from below it looks like someone else beat me to it.

> 
> I guess you want to have a look at:
> https://www.spinics.net/lists/arm-kernel/msg771488.html

Thanks for pointing this out. I will just wait for this to be merged before trying again.

Alistair

> 
> Maxime
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
