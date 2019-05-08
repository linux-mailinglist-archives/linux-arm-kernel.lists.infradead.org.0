Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75266178DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 13:50:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7JJck2XvuTDcMYfxObZSUaNFTyvFRcNAxhNRmV9zhaI=; b=GPYEbqrLNFsdNv
	9gzahfHRXmfzITo1osuu8SDehLe1XqR89HoeVGMaasJ0kCCO0TlQUlHKeuBoyuy9HbuSla5e3vcIu
	SGsXkd/075tg9KBiwUzWteVbKoYojiMnwdR86o9JpTaLBvR3vCeFc5sBdvhFjyxrEYUPxs7qoDbPl
	FjyRHemKLtGWGMqi6CznXgol4vRyy5Cv4L6rNKiZ3Zq4wByovMJN2IPMBCjLcwyaa9c4bv2M4H+B3
	dga1P3+tOVrv8BrNLsxBzj3HpEFT68qOB0chllkw+VyKLEupJFZOt1IpznEsyHRDOpWetIcksJ9xg
	UjHQUKEMczapYnr7nXnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOL5Z-00005s-6C; Wed, 08 May 2019 11:50:21 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOL4V-0006Zl-5b; Wed, 08 May 2019 11:49:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cHXDOAI/sb7qYnc/OEjR9OhWCqVE0yCfcRGxBY6Z0kM=; b=h8uS09r9tHqr1dIZuU0P8ieTGe
 Ay1aINmssQ22D65almIb0CMh4ccZ/IMgFRgo9OQ6OYSW99xZIJ0fo2q/z0cPr91eBvnC1lYJOCvWq
 WOW8e5cl83tFaLwLbOJNROmkMjhu94vfmmL/MW+c5/reEcIyC7Luq/WWsrG1aWDhTAp4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hOL46-0000iQ-Vo; Wed, 08 May 2019 13:48:50 +0200
Date: Wed, 8 May 2019 13:48:50 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Subject: Re: [PATCH v4 02/10] dt-bindings: doc: reflect new NVMEM
 of_get_mac_address behaviour
Message-ID: <20190508114850.GC30557@lunn.ch>
References: <1556893635-18549-1-git-send-email-ynezz@true.cz>
 <1556893635-18549-3-git-send-email-ynezz@true.cz>
 <CAL_JsqLt6UFU_6bmh3Pc0taXUgMtAEV7kL7eZU13cLOjoakf=Q@mail.gmail.com>
 <20190508084152.GM81826@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508084152.GM81826@meh.true.cz>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_044916_054793_13B6F318 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Frank Rowand <frowand.list@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Kalle Valo <kvalo@codeaurora.org>, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>, devicetree@vger.kernel.org,
 Jassi Brar <jaswinder.singh@linaro.org>, Rob Herring <robh+dt@kernel.org>,
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

> I've just tried to reword what was already there, anyway, did I understood
> your remark properly, would this be more appropriate?
> 
>  The MAC address will be determined using the optional properties defined in
>  ethernet.txt and only if efuse-mac is set to 0. If any of the optional MAC
>  address properties are not present, then the driver will use random MAC
>  address.

If _all_ of the optional ...

   Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
