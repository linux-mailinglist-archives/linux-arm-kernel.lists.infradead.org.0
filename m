Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27BD31B21D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:38:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CzhbTsHL19H1zQXr6Vi08J35OpiAKhfM9UgqdyBfO3o=; b=Uod1wdRN1qCns3
	E4BZir0WAFF9dIkOVqog8W8Leld35KDJYZcTV3a/+OZZlrs7Nc9440b3GhUBQfir1IIfXGAYAtNaq
	cHLHsBLIiPaxzmlUUOn42NF/cE8O+2p8cRYXdhK/5IA+F4obuLCSSMvviKpVBvQSr3E9Ngt3hN3eA
	/wlO5R8XwvZvgc4UFVMQ+KW7pNNQXARLqxnn2kvkiS7VqOxjUO2R6DDaWjHZNiR1mekd92HIcFHYq
	nQ8NQGsUaUYxNXmqXRgtBIE8EUBD7IyeLO7j89N68JbRsfN1ukZNZJhv4mwWkwkNdnr5/IX1SCnvq
	DsurRvpYuyA6ef5M1L1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQoQ8-00078y-7G; Tue, 21 Apr 2020 08:38:20 +0000
Received: from mail-yb1-f194.google.com ([209.85.219.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQoPi-0006pn-6o
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 08:37:55 +0000
Received: by mail-yb1-f194.google.com with SMTP id o198so4693566ybg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 01:37:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v/3+VZnCM3ynIiT8UZUwJeZ01xBwJWokxUvrEQAQiYo=;
 b=geu8JjinTzHfg9WNehYrpQLctreR4/9x8RdZevOQiEYs6BxvVQayAUUE2Jki2KNXvL
 /a57wecuXPhMg6mHOCfNlCZE8UxppRQe+b+L4lbLxuUdmgRwxh01YTrEsiKdF5H7tI5t
 3O5poWVqPFCop4XTPP1MQGRXDlggoYtq5rOMwumi+cNMTi7WToPVe4nNPL+0zQeLolMI
 v7OysWc3t/klQlLrXVsOfFf78wZDQ4bdH+aKHaBMqnc3n+F7i42FdO13mmA7KQBaehQQ
 16hp9DqOpmP8BkM0lhzqW6XGHhahfks+962ffC/ymzr31Nrt5UyMJyZ9R58OpwNOBPxn
 uMew==
X-Gm-Message-State: AGi0PuaFVeKV+XIJc5aZKMznnsWG7zPS+OMLqKKQv8JePrCiukvcCLSZ
 fpB0JZ9cLopsWS8d5KWDgW1TT/2VjmUD3k32Ok4=
X-Google-Smtp-Source: APiQypIaHQB7wPhEVieQJfu8de8zwg12nMpx1Ox449Qw7TthaEYyLuX1tCmdRhbmN76uN/LTV2imJSE1sR5SRTbdF3M=
X-Received: by 2002:a25:cec8:: with SMTP id x191mr24951591ybe.39.1587458272417; 
 Tue, 21 Apr 2020 01:37:52 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1587058078.git.nicolas.ferre@microchip.com>
 <56bb7a742093cec160c4465c808778a14b2607e7.1587058078.git.nicolas.ferre@microchip.com>
 <61762f4b-03fa-5484-334e-8515eed485e2@microchip.com>
 <8fcf4a8a-362c-a71f-c99e-be9500db7371@microchip.com>
In-Reply-To: <8fcf4a8a-362c-a71f-c99e-be9500db7371@microchip.com>
From: Harini Katakam <harinik@xilinx.com>
Date: Tue, 21 Apr 2020 14:07:41 +0530
Message-ID: <CAFcVECL-uYF2dpOZvAeGpot4wstT3551QKuYm0TCTXv_SxsyXA@mail.gmail.com>
Subject: Re: [PATCH 4/5] net: macb: WoL support for GEM type of Ethernet
 controller
To: Nicolas Ferre <Nicolas.Ferre@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_013754_267358_A8FF30A1 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [harinikatakamlinux[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.194 listed in wl.mailspike.net]
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Sergio Prado <sergio.prado@e-labworks.com>,
 Parshuram Raju Thombare <pthombar@cadence.com>, antoine.tenart@bootlin.com,
 netdev@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 David Miller <davem@davemloft.net>, Harini Katakam <harini.katakam@xilinx.com>,
 Claudiu Beznea <Claudiu.Beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 1:55 PM <Nicolas.Ferre@microchip.com> wrote:
<snip>
> I've reviewed this series to fix this last issues. It's was a
> combination of runtime_pm not handled properly and a mix of
> netif_carrier_* call with phylink calls not well positioned nor balanced
> between suspend and resume.
>
> I have a v2 series that I'm preparing for today: Harini, I prefer to
> post it now so it could avoid that you hit the same issues as me while
> testing on your platform.

OK thanks Nicolas.

Regards,
Harini

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
