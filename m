Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D2287059
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 05:57:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a/fddmJP9MjNEzhTXYrDoxyCL45GBN67TlYjpyIJoi4=; b=SMvMlJqM4zXtyV
	j330QSxAODhFYFTazHy4wM+8DgFfkALdoqisYiaTuQxLX6uhOLnnA0xYHb+6uMCsJXSJWc1oYoyit
	BH8ZrdakHxRLK2lxwDTVLutj/xOeUc+eCk9qYO2T5A92wM5wk4hNlIMNWufqfx96O/I7PR/q9dKXm
	F2AQwD5CzkpWi7hyIKg8sB+h7xgs7lWoRCgng9hR09ad9ppjTXXu49NZozAKOXc0j4SFAg6lyKo2w
	wNvA2xMqXLNeoTjoX76hnw2unMSaq3J92216s8WeYLEVJTIektzsLSKJllUIXWCc9a42jknkRTnHP
	ulCtwE/w1PyhGFAjXOqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvw2I-0003CC-Lm; Fri, 09 Aug 2019 03:57:50 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvw27-0003Bt-FX
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 03:57:41 +0000
Received: from [192.168.1.102] (c-71-204-185-212.hsd1.ca.comcast.net
 [71.204.185.212])
 by kirsty.vergenet.net (Postfix) with ESMTPSA id 484A325AD78;
 Fri,  9 Aug 2019 13:57:36 +1000 (AEST)
Date: Thu, 08 Aug 2019 20:57:32 -0700
User-Agent: K-9 Mail for Android
In-Reply-To: <CAMuHMdUCb_7=yTb+E-CvbabdRgWRRg6DYzukWqzd_ZCexobnwg@mail.gmail.com>
References: <20190731073744.13963-1-geert+renesas@glider.be>
 <CAMuHMdUCb_7=yTb+E-CvbabdRgWRRg6DYzukWqzd_ZCexobnwg@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [PATCH] arm64: dts: renesas: r8a77995: draak: Fix backlight
 regulator name
To: Geert Uytterhoeven <geert@linux-m68k.org>
From: Simon Horman <horms@verge.net.au>
Message-ID: <C9A11CC5-8449-4C2A-AE04-E678EC52D7DB@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_205739_666546_7A1B28D0 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 8 August 2019 02:00:20 GMT-07:00, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>Hi Simon,
>
>On Wed, Jul 31, 2019 at 9:37 AM Geert Uytterhoeven
><geert+renesas@glider.be> wrote:
>> Currently there are two nodes named "regulator1" in the Draak DTS: a
>> 3.3V regulator for the eMMC and the LVDS decoder, and a 12V regulator
>> for the backlight.  This causes the former to be overwritten by the
>> latter.
>>
>> Fix this by renaming all regulators with numerical suffixes to use
>named
>> suffixes, which are less likely to conflict.
>>
>> Fixes: 4fbd4158fe8967e9 ("arm64: dts: renesas: r8a77995: draak: Add
>backlight")
>> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>> ---
>> I guess this is a fix for v5.3?
>
>Do you plan to queue this as a fix for v5.3?
>Thanks!

Likewise, thanks.

Will do.

>
>>
>> This fix takes a slightly different approach than commit
>> 12105cec654cf906 ("arm64: dts: renesas: r8a77990: ebisu: Fix
>backlight
>> regulator numbering"), which just fixed the conflicting numerical
>> suffix.
>> ---
>>  arch/arm64/boot/dts/renesas/r8a77995-draak.dts | 6 +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
>b/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
>> index 0711170b26b1fe1c..3aa2564dfdc25fff 100644
>> --- a/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
>> +++ b/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
>> @@ -97,7 +97,7 @@
>>                 reg = <0x0 0x48000000 0x0 0x18000000>;
>>         };
>>
>> -       reg_1p8v: regulator0 {
>> +       reg_1p8v: regulator-1p8v {
>>                 compatible = "regulator-fixed";
>>                 regulator-name = "fixed-1.8V";
>>                 regulator-min-microvolt = <1800000>;
>> @@ -106,7 +106,7 @@
>>                 regulator-always-on;
>>         };
>>
>> -       reg_3p3v: regulator1 {
>> +       reg_3p3v: regulator-3p3v {
>>                 compatible = "regulator-fixed";
>>                 regulator-name = "fixed-3.3V";
>>                 regulator-min-microvolt = <3300000>;
>> @@ -115,7 +115,7 @@
>>                 regulator-always-on;
>>         };
>>
>> -       reg_12p0v: regulator1 {
>> +       reg_12p0v: regulator-12p0v {
>>                 compatible = "regulator-fixed";
>>                 regulator-name = "D12.0V";
>>                 regulator-min-microvolt = <12000000>;
>> --
>> 2.17.1
>
>Gr{oetje,eeting}s,
>
>                        Geert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
