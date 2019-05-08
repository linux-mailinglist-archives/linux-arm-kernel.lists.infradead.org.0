Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D32211741B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 10:42:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bI+DNSoMjmXCROzc4sXq+sHL8lgZrMVmdK43vpFaLXM=; b=oCSC4Ryn7f2bql
	+Q8ECHislkoADbl7CIKzrxtPrmae6churA7TDTIxPf+qltcVtNeVeyDkQu8nALcLA612rxrUHUnPE
	lUYsyaQ5JMWHWqwNHaXH1AQBnSa3XvhX8fa0hN6Udh+XIz19/0SymySgxmdJlcbQlj6+Lh/WuaFvv
	o12B+rsEePHd/WDLvnbEaQwqfyuGxRc32XYyRbtFrDAF3jp2L8JyTC2rhEfmz35KeZPZp+9SOCqs5
	0CF3KWcDKZUgXO59DgajXcEH2N57y3IJO50BOM8QYKB7CGzbYWvpnbo4Z+lvywv60hYDv1AiTHJSp
	WXwBj23zDju791jGLHTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOI9N-0005Tu-CG; Wed, 08 May 2019 08:42:05 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOI9G-0005Sz-97; Wed, 08 May 2019 08:42:00 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id DD9AC47A7;
 Wed,  8 May 2019 10:41:53 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id a0fd15e7;
 Wed, 8 May 2019 10:41:52 +0200 (CEST)
Date: Wed, 8 May 2019 10:41:52 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v4 02/10] dt-bindings: doc: reflect new NVMEM
 of_get_mac_address behaviour
Message-ID: <20190508084152.GM81826@meh.true.cz>
References: <1556893635-18549-1-git-send-email-ynezz@true.cz>
 <1556893635-18549-3-git-send-email-ynezz@true.cz>
 <CAL_JsqLt6UFU_6bmh3Pc0taXUgMtAEV7kL7eZU13cLOjoakf=Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqLt6UFU_6bmh3Pc0taXUgMtAEV7kL7eZU13cLOjoakf=Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_014158_470671_752C9FFC 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Frank Rowand <frowand.list@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Kalle Valo <kvalo@codeaurora.org>, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>, devicetree@vger.kernel.org,
 Jassi Brar <jaswinder.singh@linaro.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Salil Mehta <salil.mehta@huawei.com>,
 netdev <netdev@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rob Herring <robh+dt@kernel.org> [2019-05-07 11:44:57]:

Hi,

> > -- local-mac-address:   the driver is designed to use the of_get_mac_address api
> > -                       only if efuse-mac is 0. When efuse-mac is 0, the MAC
> > -                       address is obtained from local-mac-address. If this
> > -                       attribute is not present, then the driver will use a
> > -                       random MAC address.
> >  - "netcp-device label":        phandle to the device specification for each of NetCP
> >                         sub-module attached to this interface.
> >
> > +The MAC address will be determined using the optional properties defined in
> > +ethernet.txt, as provided by the of_get_mac_address API and only if efuse-mac
> 
> Don't make references to Linux in bindings. You can talk about
> expectations of client programs (e.g Linux, u-boot, BSD, etc.) though.

I've just tried to reword what was already there, anyway, did I understood
your remark properly, would this be more appropriate?

 The MAC address will be determined using the optional properties defined in
 ethernet.txt and only if efuse-mac is set to 0. If any of the optional MAC
 address properties are not present, then the driver will use random MAC
 address.

Thanks!

-- ynezz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
