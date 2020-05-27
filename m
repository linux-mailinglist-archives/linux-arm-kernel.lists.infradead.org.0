Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85BAE1E3B39
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 10:05:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JCuaLPB3Y47HWzo+yTkuwDv12u75Jry7cepPZu3NJCE=; b=WjmP3fD/0Bx/KI7iM9e+km0BYj
	5XYeneKI6Ee8ePJ0V3JzT/DhOS2CKKZUmk+q01KH8FZAzrNLE7y1Gsb7+RFX9gF9fKkR0XOiNbldY
	cOUNE/P/YadR5p+jr7Fvzf7NZ91U2H8WTVDKbHOlz5bDquVlCF4BZJg8fmA6sJGqO+l7QNfIk7wg5
	uKIzSFxE4MaVa1OEHXguGJABpoftOUnwpUmXcdiCQDSQPGT4uz3ZbQYZPd7/NgWuidZzHxZqzooYr
	YKZQuDsa5RNR/MaGxjFmEnKGKVEs1Yc1GOOw3+PJ1C3cif7K6rpht4HpkreMjHW070awkXPYpOknN
	BYI7IxAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdr4L-0007HO-Qg; Wed, 27 May 2020 08:05:45 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdr48-0007GD-Gb
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 08:05:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590566732; x=1622102732;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=PVXzxMF9Vqjr2PV3qWdmGql8cs4THQnOC1D9NN8NFjI=;
 b=MHkYrIRm0ibZYXekNi2/+pNmuht5a2gVRrNHyNBzciMDDGz9k5CYwGBK
 WsIKnPHyKeT6/IqHyyRzLLVmJPzbNAc6e2v74abALzMQaunZsX7qKPBko
 bFRxCBR3uJzAG8/XkR7xUX3PK4SkEB7oB7dEaZEcY4BQXJTYgppJ+FfGs
 hv0l96zvDee5ovN+d4M+90RJsvEw9hkuCqyfLYKVcaMx0ZjQd8I+p15lu
 sMWylk9D3Uh3VwsE5bKdsHAdrblumoaaTrULC+nkrK1zdwJ/gTf2hzipb
 Z6EVanx0/AXFRRs9rTX+oX4JMT6I3Mn0QgB09W4TMRSis3rcCpdCaxOqb A==;
IronPort-SDR: wg7qi6vKQlAMeUaLNnYr/pgQElF/mppTRVRdDs9j6PL/VdSfGQovFxd2A5lvqEM0HL/Ak6SWnd
 ajiqm0f2b17I3CEQkkBX2KqN9Qqxg5p/Q8wLzRN0jfPwJMHJFvYjz7hs5Ur4MGRcXojOH/HKbs
 qwbkThrcDH62qSlTpCfcrRcwCppPObutq2XoZRMqMTvY2iTGXWTgRnBE6QwtZZ3MvtvBHfLiMz
 B0KEQqOfwbBq7msr+yB8KK/1kjFe07ov25eqns6rasTXxFBJrGetBF5DDmXjml6pxyGrC+gVJb
 ccM=
X-IronPort-AV: E=Sophos;i="5.73,440,1583218800"; d="scan'208";a="13635860"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 May 2020 01:05:25 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 27 May 2020 01:05:24 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 27 May 2020 01:05:22 -0700
References: <20200513141134.25819-1-lars.povlsen@microchip.com>
 <20200513141134.25819-2-lars.povlsen@microchip.com>
 <CACRpkdZa7OM3bqB+zRprEQ3M4m9hG3uPCoYxrdH_O=oxD8zi8Q@mail.gmail.com>
 <87pnb1nf2j.fsf@soft-dev15.microsemi.net>
 <CACRpkdYesD9sRQZXQNEaBY2Ouu3bjKKGWpRtU-Lpa4AcjyPwXw@mail.gmail.com>
 <87r1v8oz9f.fsf@soft-dev15.microsemi.net>
 <CACRpkdaJvaqPptPD-A1DriVgBOZGZ4Qf0UsbsjG39ptx6bSJKg@mail.gmail.com>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 1/3] dt-bindings: pinctrl: Add bindings for mscc,
 ocelot-sgpio
In-Reply-To: <CACRpkdaJvaqPptPD-A1DriVgBOZGZ4Qf0UsbsjG39ptx6bSJKg@mail.gmail.com>
Date: Wed, 27 May 2020 10:05:20 +0200
Message-ID: <87pnappzun.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_010532_657370_E0E51D6C 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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

> On Mon, May 25, 2020 at 4:38 PM Lars Povlsen <lars.povlsen@microchip.com> wrote:
>
>> Yes, the problem is they're not in sequence. F.ex. you could have ports
>> 0,1 enabled, skip 2,3,4 and have 5,6,7 enabled.
>
> Just use disabled nodes.
>
> That would look like this in my idea of a device tree:
>
> pinctrl@nnn {
>     gpio0: gpio@0 {
>         compatible = "foo";
>         status = "ok";
>         ....
>     };
>     gpio1: gpio@1 {
>         compatible = "foo";
>         status = "ok";
>         ....
>     };
>     gpio2: gpio@2 {
>         compatible = "foo";
>         status = "disabled";
>         ....
>     };
>     gpio3: gpio@3 {
>         compatible = "foo";
>         status = "disabled";
>         ....
>     };
>     gpio4: gpio@4 {
>         compatible = "foo";
>         status = "disabled";
>         ....
>     };
>     gpio5: gpio@5 {
>         compatible = "foo";
>         status = "ok";
>         ....
>     };
>     gpio6: gpio@6 {
>         compatible = "foo";
>         status = "ok";
>         ....
>     };
>     gpio7: gpio@7 {
>         compatible = "foo";
>         status = "ok";
>         ....
>     };
> };
>
> It is common to use the status to enable/disable nodes like this.
>
> In the Linux kernel is is possible to iterate over these subnodes and
> check which ones are enabled and disabled while keeping the
> index by using something like:
>
> i = 0;
> struct device_node *np, *child;
> for_each_child_of_node(np, child) {
>     if (of_device_is_available(child)) {
>         pr_info("populating device %d\n", i);
>     }
>     i++;
> }
>
> Certainly you can use i in the above loop to populate your registers
> etc from an indexed array.
>
> This way the consumers can pick their GPIO from the right port
> and everything just using e.g.
> my-gpios = <&gpio6 4 GPIO_OUT_LOW>;
>

Linux, thank you for your input, it is much appreciated. I will use the
pattern in the driver in the next revision.

The only issue is that the gpios on the same "port" have restrictions on
their status - they can only be enabled "all" or "none" for gpios that
map to the same port. F.ex. gpio0, gpio32, gpio64 and gpio96 must all be
enabled or disabled because at the hardware level you control the
_port_. But as I noted earlier, that could just be the driver enforcing
this.

Thanks again.

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
