Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 042461D8988
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 22:50:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cF5llfSUEjqbeJsa0LxDL64AJfwg7FLoxszJp7Dj6c8=; b=dlcgVXTH8Y1b0DeNoRm6O4lQkX
	/CLJs/7fkQ+qxSrG09BXKKZC6KngM3EKCUUP+nsWRvC/xk5uke0PRpEtIBFkpAymunwwUEH0cQ5xe
	orTUbzBnrd7Mj2/OIM48h9Fud2s9Gua5AOk7g7dngdMo2qifYsOvpsa9NTV/M8MFynPXr+ki97bH9
	EMJETReM2/+ZGfrrK3QP33vnXjqxTLIpbu9uoanOkxJEaDR43Pd5DBYkcnQ5ptayQWIirkvv76WbT
	jWKzu5YxsajFrf5ujOutBLMp1M7H+3hcsEmwEOdpUuROEPNPJxyE4h1IyfH1eFHBtLIa6XJNgI14K
	Ov7nT8ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jamiJ-0001sv-NT; Mon, 18 May 2020 20:50:19 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jami4-0008IW-69
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 20:50:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589835004; x=1621371004;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=p0UV94Wfg4Hsk7gV7KfpL3Af6oDCzE1nvORnnmrZVjQ=;
 b=X1KL8Fe0p1fI1BRHj9VonMVUTtJjdrG004moc8QESi0qzLLMPzWCzpN+
 p+bWfnjcW8mSvKO53yIZS/P/XaJ4Z7tCZ35Y2uF0oWEu/paeJflkjCAf0
 pdYwWP9MPUKorrGxsR392SONwq7jC63cJ4MKZP5cMTKaC5lvYLzOGlw7r
 FSSxpGKM7FwiHDXpIZxjv+qRDbex112e0YyVtVfSdrcmxFdtMbzczcPtw
 ObRXEqEqPBjXoE7RetFOjOR9xA/oK5uABLMxbnrR2Z9/sGt82U63PjFjk
 aRk3iEYzxnHk3qvVUT2fkzkwNvXxG9cA1OB/0m5D1TnsxQpJ0HZtDr4Ew w==;
IronPort-SDR: XK4Y3Cpypu+/lG6igc25WaLSMNHfNiJU8wcvIUd22VrAzGtyAbepys2YnUOt7tXVe9MRiUBOcN
 10TdXQlx0YZLYcDxmvF2U+wORsVU6HdcRsRjH4/aLQ0v72QTa1xldQ8H72kTJhbjWh03hvN+76
 2Hx89f/nIXp5W+0PeeA2W3KznJjcXS/uhVEEqLSnSuGkS8qYj6Kc1RaeeUsjWzyMxLiGukFEbf
 IJ9ZAyEVbUHLyccLNsdjhz4vexVk6o8gXIFG1gQumVu+bogcb8869N3ULiUlBXuaaT4qAn4okY
 /fM=
X-IronPort-AV: E=Sophos;i="5.73,407,1583218800"; d="scan'208";a="77082876"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 May 2020 13:50:00 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 18 May 2020 13:49:59 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 18 May 2020 13:49:57 -0700
References: <20200513141134.25819-1-lars.povlsen@microchip.com>
 <20200513141134.25819-2-lars.povlsen@microchip.com>
 <CACRpkdZa7OM3bqB+zRprEQ3M4m9hG3uPCoYxrdH_O=oxD8zi8Q@mail.gmail.com>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 1/3] dt-bindings: pinctrl: Add bindings for mscc,
 ocelot-sgpio
In-Reply-To: <CACRpkdZa7OM3bqB+zRprEQ3M4m9hG3uPCoYxrdH_O=oxD8zi8Q@mail.gmail.com>
Date: Mon, 18 May 2020 22:49:56 +0200
Message-ID: <87pnb1nf2j.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_135005_013478_831F2510 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE
 TREE BINDINGS" <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 SoC Team <soc@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Linus Walleij writes:

> On Wed, May 13, 2020 at 4:11 PM Lars Povlsen <lars.povlsen@microchip.com> wrote:
>
>> This adds DT bindings for the Microsemi SGPIO controller, bindings
>> mscc,ocelot-sgpio and mscc,luton-sgpio.
>>
>> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
>> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
>
>> +  microchip,sgpio-ports:
>> +    description: This is a 32-bit bitmask, configuring whether a
>> +      particular port in the controller is enabled or not. This allows
>> +      unused ports to be removed from the bitstream and reduce latency.
>> +    $ref: "/schemas/types.yaml#/definitions/uint32"
>
> I don't know about this.
>
> You are saying this pin controller can have up to 32 GPIO "ports"
> (also known as banks).
>
> Why can't you just represent each such port as a separate GPIO
> node:
>
> pinctrl@nnn {
>     gpio@0 {
>         ....
>     };
>     gpio@1 {
>         ....
>     };
>     ....
>     gpio@31 {
>         ....
>     };
> };
>
> Then if some of them are unused just set it to status = "disabled";
>
> This also makes your Linux driver simpler because each GPIO port
> just becomes a set of 32bit registers and you can use
> select GPIO_GENERIC and bgpio_init() and save a whole
> slew of standard stock code.
>

Linus, thank you for your input.

The controller handles an array of 32*n signals, where n >= 1 && n <=
4.

The problem with the above approach is that the ports are disabled
*port*-wise - so they remove all (upto) 4 bits. That would be across the
banks.

You could of course have the "implied" semantics that a disabled port at
any bit position disabled all (bit positions for the same port).

But I don't know if this would be easier to understand, DT-wise.

What do you think...?

> Yours,
> Linus Walleij

-- 
Lars Povlsen,
Microchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
