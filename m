Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F68213DC65
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 14:53:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oYKtC2LQWgvvjbf9vDwH3lnxRcrwXzeYrht6TtfR69k=; b=FRBubbP42LihdG
	weQTaLDGoMXdoHLZw/tAtgx1Aphkvdw52ktU7BFIau4tc71I5lsUfDj5c3F5dyagtqK3r9KJUfkZC
	4n82Kkmy6hrBkh/ThBKJuTfEBUUM/S1i8VN+3JrdZ9W9SMevD+sDp3Bl8jqbpnpkbolD3Bjk0vri/
	mrnXW+yXQ4zJB8yUiUvut6UWQ3hxsb9e/ZAUs7A2OoaS2sbSoGkrRjMxgZMzDY8a3pD1j9seXzsDZ
	cfTkmtFuqbw7C8ZpcArtARGJ+mCHb4q6onEodnESupQTRkrfjkyEvmnJiW0tRZnfSIR48WrKz6klt
	LWPq0kYi0Q8G6VG/EfQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is5a2-0001NX-KB; Thu, 16 Jan 2020 13:53:02 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is5Zr-0001NL-Ba
 for linux-arm-kernel@bombadil.infradead.org; Thu, 16 Jan 2020 13:52:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4t2Eg3vj+ZaLNCQMxGhBxAFH0ZPHr7QsMfiDNrH0s0g=; b=ZWHxYb2yPD5d9huXEsm8lJQDb
 Zih4ZxLk5hSJFut+iDVYHjgWWRBfg39gylvbxeiibKwOXBwv+zWQzh2U36UGMMzlTZ7X67ss+m+tn
 87VmypRuQQ89OiJspBwpe6zKwmnFdtpimUDujf96XZH124hglyuuApHDxg2oXkE9StWBPdL7KhMnV
 agaE8hHLiiD9Oe7gnCqfrZdhglb/YURVfjS/DVXocw0qOl+Sbm8SH5oIRaSTF8iNTNTsOeW4g12qF
 zT9mrw4X1j5R2qVfjwnccoJY2vPOyWv5ZPpX6Bbbw0MRJCmOegPr1mJApZ/8fvUgZPL4TVcJgLpi7
 JeKrvMqmA==;
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is5aA-0007lK-1V
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 13:53:14 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id D60D2C0019;
 Thu, 16 Jan 2020 13:52:08 +0000 (UTC)
Date: Thu, 16 Jan 2020 14:52:08 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v4 5/5] ARM: dts: at91: sam9x60: add device tree for soc
 and board
Message-ID: <20200116135208.GG100374@piout.net>
References: <1579085987-13976-1-git-send-email-claudiu.beznea@microchip.com>
 <1579085987-13976-6-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579085987-13976-6-git-send-email-claudiu.beznea@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_135310_120194_8EF6913F 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, devicetree@vger.kernel.org,
 richard.genoud@gmail.com, linux-kernel@vger.kernel.org,
 radu_nicolae.pirea@upb.ro,
 Sandeep Sheriker Mallikarjun <sandeepsheriker.mallikarjun@microchip.com>,
 linux-spi@vger.kernel.org, ludovic.desroches@microchip.com, robh+dt@kernel.org,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/01/2020 12:59:47+0200, Claudiu Beznea wrote:
> From: Sandeep Sheriker Mallikarjun <sandeepsheriker.mallikarjun@microchip.com>
> 
> Add device tree files for SAM9X60 SoC and SAM9X60-EK board.
> 
> Signed-off-by: Sandeep Sheriker Mallikarjun <sandeepsheriker.mallikarjun@microchip.com>
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> ---
>  arch/arm/boot/dts/Makefile           |   2 +
>  arch/arm/boot/dts/at91-sam9x60ek.dts | 647 ++++++++++++++++++++++++++++++++
>  arch/arm/boot/dts/sam9x60.dtsi       | 691 +++++++++++++++++++++++++++++++++++
>  3 files changed, 1340 insertions(+)
>  create mode 100644 arch/arm/boot/dts/at91-sam9x60ek.dts
>  create mode 100644 arch/arm/boot/dts/sam9x60.dtsi
> 
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
