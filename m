Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 875DB14A74C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 16:37:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8I8XKDlIV3YkYDzv/+JMtAbV/D+p6tFOHKmXGX+xqfc=; b=eggCjngL3iLx8o
	WIRFyIBPRrgHvqx9EAV8AtYumkzkUlqOWSXVGNizHzNxWiIrBg0MP97QJ85/F3Q0xVhxT3dhsuLAb
	z0/jeXXmxPJ3kQaJDIyQ8cTcqse7NIRLQDsQT20p/RC4jlyKJpnROhoCXcbJx68bReRrhQohXR0BQ
	IU5RA5EhbZ1sdu294AlXi9pPSqZE/hhfkSsxOfPqh4lrh0RHsXQMgUxWY11GqpmMt2q3NnV3Esu2+
	a6FGxw8NkAYX05rD23qi1kI30/XkM5rZdy2uYnPKAuerQYmc3sAVKrJpdcprgj2VBF84jnpERaCLS
	U5uLPtpRjA4HUqE4mXow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw6Rk-0003z7-Ch; Mon, 27 Jan 2020 15:37:04 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw6RX-0003y5-8d; Mon, 27 Jan 2020 15:36:52 +0000
Received: by mail-oi1-f193.google.com with SMTP id b18so3083645oie.2;
 Mon, 27 Jan 2020 07:36:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2tMp6J7RhsN6lAcTje3kjguQsBuUD423RsgoOzLk7mU=;
 b=t7oUW1Zv5ShILiYUrbH7F32UA9SvazBjmaNZD4654cIf5nOLKqQLg3qGsi3MUTzhDM
 G80w9vGEra795TCBQsDGHOm+c41J7Bl8AogoIQhJjxD62SZM5I99Dj5d8XmnpztT0/yp
 ONqhUyITHeGiM2I2fv0xoeul/kmsWpROJ3B3/IOr3QSp/Szz3IsyXfGaAGxWKj8oMDYs
 Qx3P+3gV0e15MIDTgY7M6C7x2j15KlusVT+vfN5wp7UwECyFnhueqS46iqFnW1XCQHyK
 UFIk/z9pMm1CmGijCZR6GjEKSnUCfslvl69CCO8IT1o0k3PP3z1K9KrzWEhQT+hVxeWJ
 QguQ==
X-Gm-Message-State: APjAAAWS+wjaglxQG03Uz1a8VwdqQrBz5utbeZ89H7uVqYwgiqGe6nGe
 7r4jCNcVdsL5BR/i9lS8rQ==
X-Google-Smtp-Source: APXvYqzGekj/ZFmSdDOyY4AAWBk440EzsKOKyc1gewORI8sKL5QW+luY/btzprKvUk099ZEBhUGrkQ==
X-Received: by 2002:aca:1c0d:: with SMTP id c13mr7487529oic.44.1580139409565; 
 Mon, 27 Jan 2020 07:36:49 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u18sm5637408otq.26.2020.01.27.07.36.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 07:36:48 -0800 (PST)
Received: (nullmailer pid 32549 invoked by uid 1000);
 Mon, 27 Jan 2020 15:36:47 -0000
Date: Mon, 27 Jan 2020 09:36:47 -0600
From: Rob Herring <robh@kernel.org>
To: Akash Gajjar <akash@openedev.com>
Subject: Re: [PATCH v4, 1/1] arm64: dts: rockchip: add ROCK Pi S DTS support
Message-ID: <20200127153647.GA32343@bogus>
References: <20200125063153.2720-1-akash@openedev.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200125063153.2720-1-akash@openedev.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_073651_307226_2D87F618 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-kernel@vger.kernel.org,
 heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Douglas Anderson <dianders@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, Markus Reichl <m.reichl@fivetechno.de>,
 linux-rockchip@lists.infradead.org, Matthias Kaehlcke <mka@chromium.org>,
 Akash Gajjar <akash@openedev.com>, Nick Xie <nick@khadas.com>,
 Andy Yan <andy.yan@rock-chips.com>, jagan@openedev.com,
 Vivek Unune <npcomplete13@gmail.com>, Alexis Ballier <aballier@gentoo.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 25 Jan 2020 12:01:37 +0530, Akash Gajjar wrote:
> ROCK Pi S is RK3308 based SBC from radxa.com. ROCK Pi S has a,
> - 256MB/512MB DDR3 RAM
> - SD, NAND flash (optional on board 1/2/4/8Gb)
> - 100MB ethernet, PoE (optional)
> - Onboard 802.11 b/g/n wifi + Bluetooth 4.0 Module
> - USB2.0 Type-A HOST x1
> - USB3.0 Type-C OTG x1
> - 26-pin expansion header
> - USB Type-C DC 5V Power Supply
> 
> This patch enables
> - Console
> - NAND Flash
> - SD Card
> 
> Signed-off-by: Akash Gajjar <akash@openedev.com>
> ---
> Changes in v4
> - remove supports-sd/sdio, nums-slots property
> - use vmmc-supply for emmc node
> 
> Changes in v3
> - Use small S on dts file name
> - Add missing semicolon
> - Remove USB2.0 node support
> 
> Changes in v2
> - Use pwm-supply for vdd_core node instead of vi-supply
> - Add USB2.0 node support
>  
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3308-rock-pi-s.dts    | 216 ++++++++++++++++++
>  3 files changed, 222 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
