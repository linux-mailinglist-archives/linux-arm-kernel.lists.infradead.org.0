Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DECC71E10AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 16:39:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zcKKF3uPfSF5iwN4ZC/Z4UwGP5U6z1wd+3H2juUzcEg=; b=cOeT0aeTa9cda0vz7o7OMN6h5B
	pIbkSGJcR6T2J71WjBvMzkG10gxbqzgcfXd2WlUUhTQOthkYZbxiqYrjPu4DKNoaAl901m8RfokNc
	L8FAf2RmwMRAniWKPCydqIazdMhGFsNqWOKw0CvU1ZJ31Ar5VH3Axz6ojdLBvvjcykr0PitBc7usQ
	1RYzY7z0a0vbYbf8/kMuag8xflEBch8orTBl27WZnXx0rseVDd5y6aVuulqxG2CZWn9YXicBQ7KBa
	JeEI/OKFk3pBlzIXs5NBnFqQ16sH9s4emsUJ/zcwPh0VcdDu6E7WM+h97SsaOEGGxCJK3bH1XLJE3
	b2nCzAvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdEFw-0008VV-2u; Mon, 25 May 2020 14:39:08 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdEFl-0008Sh-8w
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 14:38:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590417537; x=1621953537;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=S99rpstexzLZC2qjsjZJhCbIgtSPGJorenKaanjakaE=;
 b=pT4+h8fCaIn96oklBnQTxFWI/OHuOUFUc+pPvkE3Ke3mn6clzggjOsf8
 7vPKANeLlkhnPSdmO5aSdGIKmBBEJQv78jGCZKZLVAZwaC1cpyo0sRlVW
 XUNoAqJRHUl0gfH4YoIYEL2J0OWYxim+S2q5DXXuNraDkwv+pFWGiuAZm
 1F6l/Wl4Qyg/oaK6Ouq0/myKH0Ng0criMb+bthTz5qswhXTGWbRghLEzd
 Qc5c2NywQXj5ViYRrFpzJ/RMz91kJwqLFm7rAGCatDLn2gXvJrCEjQydK
 xnyxTzPr8Oj3EBjNt5b0VY52ADIpmuv58+y8W7ZzNHMZHSRR7+e7KlOid g==;
IronPort-SDR: LwW1A8ByBD+yBQ/Mc7nwGC0gUUpS4Zyp18/VCWuBjvzcMjQ/rEekYWeunGRQeW5G0mAYzSZEqO
 /cjuIUTRDbGV75TNsQADzOHlMoauPmPg373Goh/msbCft2ZFui8BtaWTiair59yBATkZ9D3CI8
 LfWxNnNy0wiUWuCaLU/H/or2Jyq2G0YBCoGNhILyKx3hl7ugIYuiRPwKmM1ilZjskJ5JQ8hBYU
 fgYi0kGYXyr6/pN0fcvJzfUQwCj8Nlu4Ei4Dw5gp2HLmBFNhjfq+xGKbHlnlBWjHt0mol8W3IJ
 L78=
X-IronPort-AV: E=Sophos;i="5.73,433,1583218800"; d="scan'208";a="74411981"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 May 2020 07:38:56 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 25 May 2020 07:38:58 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 25 May 2020 07:38:49 -0700
References: <20200513141134.25819-1-lars.povlsen@microchip.com>
 <20200513141134.25819-2-lars.povlsen@microchip.com>
 <CACRpkdZa7OM3bqB+zRprEQ3M4m9hG3uPCoYxrdH_O=oxD8zi8Q@mail.gmail.com>
 <87pnb1nf2j.fsf@soft-dev15.microsemi.net>
 <CACRpkdYesD9sRQZXQNEaBY2Ouu3bjKKGWpRtU-Lpa4AcjyPwXw@mail.gmail.com>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 1/3] dt-bindings: pinctrl: Add bindings for mscc,
 ocelot-sgpio
In-Reply-To: <CACRpkdYesD9sRQZXQNEaBY2Ouu3bjKKGWpRtU-Lpa4AcjyPwXw@mail.gmail.com>
Date: Mon, 25 May 2020 16:38:52 +0200
Message-ID: <87r1v8oz9f.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_073857_363637_8B8335EF 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

> On Mon, May 18, 2020 at 10:50 PM Lars Povlsen
> <lars.povlsen@microchip.com> wrote:
>> Linus Walleij writes:
>>
>> > On Wed, May 13, 2020 at 4:11 PM Lars Povlsen <lars.povlsen@microchip.com> wrote:
>> >
>> >> This adds DT bindings for the Microsemi SGPIO controller, bindings
>> >> mscc,ocelot-sgpio and mscc,luton-sgpio.
>> >>
>> >> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
>> >> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
>> >
>> >> +  microchip,sgpio-ports:
>> >> +    description: This is a 32-bit bitmask, configuring whether a
>> >> +      particular port in the controller is enabled or not. This allows
>> >> +      unused ports to be removed from the bitstream and reduce latency.
>> >> +    $ref: "/schemas/types.yaml#/definitions/uint32"
>> >
>> > I don't know about this.
>> >
>> > You are saying this pin controller can have up to 32 GPIO "ports"
>> > (also known as banks).
>> >
>> > Why can't you just represent each such port as a separate GPIO
>> > node:
>> >
>> > pinctrl@nnn {
>> >     gpio@0 {
>> >         ....
>> >     };
>> >     gpio@1 {
>> >         ....
>> >     };
>> >     ....
>> >     gpio@31 {
>> >         ....
>> >     };
>> > };
>> >
>> > Then if some of them are unused just set it to status = "disabled";
>> >
>> > This also makes your Linux driver simpler because each GPIO port
>> > just becomes a set of 32bit registers and you can use
>> > select GPIO_GENERIC and bgpio_init() and save a whole
>> > slew of standard stock code.
>> >
>>
>> Linus, thank you for your input.
>>
>> The controller handles an array of 32*n signals, where n >= 1 && n <=
>> 4.
>>
>> The problem with the above approach is that the ports are disabled
>> *port*-wise - so they remove all (upto) 4 bits. That would be across the
>> banks.
>>
>> You could of course have the "implied" semantics that a disabled port at
>> any bit position disabled all (bit positions for the same port).
>
> I don't understand this, you would have to elaborate...
>
> In any case microchip,sgpio-ports is probably not the right thing,
> use ngpios which is documented and just divide by 32 to get the
> number of ports I think? But that is just in case they get
> enabled strictly in sequence, otherwise you'd need a custom
> property.
>

Hi Linus,

Yes, the problem is they're not in sequence. F.ex. you could have ports
0,1 enabled, skip 2,3,4 and have 5,6,7 enabled.

In the data stream you would then have:

p0.0 p0.1 p0.2 p0.3
p1.0 p1.1 p1.2 p1.3
p5.0 p5.1 p5.2 p5.3
p6.0 p6.1 p6.2 p6.3
p7.0 p7.1 p7.2 p7.3

I will mull about this and try to come up with something better and more
understandable.

Luckily, this is not gating for integrating sparx5, so its possible
we'll just skip the SGPIO driver for now.

I'll provide an update as soon as possible.

---Lars

> Yours,
> Linus Walleij

-- 
Lars Povlsen,
Microchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
