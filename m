Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D53F417C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 08:46:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4NaETZX2MI3/msEdeGE18dbldA+kEyZSS0KRTfMAFG0=; b=FOXeNh9ReaSo4RFFbnE/F7IR3
	2cepJDH87IXDddUy8C9bPsnu+XQXuBVXpgd1XaBdTjz5NFKGF+oEjDpxLRfqbidsvUMFcx0sr/MbE
	rIeEmeRza0PvJJT4MXkW4L3MyFXJThVGOzlzgLPN8uaENkKVmLsWasJ2WSJi1JE1LbzQygIOxzm85
	3TQqdxRtBU/hdBvARmnBdkcxCxVU9JJFjFwQAKdP4J0J+ylXC0OGicrXEZKjVPc4nsKGJABM8MEgf
	bMr3Xvkegd5Dy9jDkH6l4AsoqqkVnF3gqEjPyyccFYXOdWckKpu6iqMptr0bJAvapUgcXcNL85jqj
	sg3abEj3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSyya-0005xS-3z; Fri, 08 Nov 2019 07:46:36 +0000
Received: from hel-mailgw-01.vaisala.com ([193.143.230.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSyyR-0005wd-UW
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 07:46:29 +0000
IronPort-SDR: 129yQmbdZKXsCpBsztJCh70TKG3VOg30OJA9nvUB1XkuM9/6xxbG+4rlO3IR+KWJR7gO1YRqjp
 Ry52xx1RkFvgy6lE30muLhQT3Rxj9YcbNmfSYl7oYQik3SvD+Bg4wjDbB9fy7EK9qUfMWk9TH9
 l+4cPNpX0qQm51kjGtiZidRnz30S0Bbyp1Fi+g8vCfFHzz2hBI9T0MY9O2/mvej/cGFA0e/TIr
 P3QRGBRbrzj6fbSGG9HO0vAGbkXEM8OJ3Tbvd1Fyf1UwxUlXoH34YAAERzAq66MQjiDPzwoOKO
 vnk=
X-IronPort-AV: E=Sophos;i="5.68,280,1569272400"; d="scan'208";a="254656674"
Subject: Re: [PATCH v2 0/2] Add definition for GPIO direction
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>,
 Ian Ray <ian.ray@ge.com>
References: <cover.1573029228.git.matti.vaittinen@fi.rohmeurope.com>
 <20191106120846.5bunrqj3uz4khih5@earth.universe>
 <ddcd02cc6c709837a28cae2cbfa672c506927659.camel@fi.rohmeurope.com>
 <20191106142441.GC32742@smile.fi.intel.com>
 <CACRpkdZ2F3zR2bdHgUV9GJX8iSojiM34BTWizTV_z+j7sS4jtw@mail.gmail.com>
 <2ca76ecb58b9e6377925d6790ff4f7722604f57b.camel@fi.rohmeurope.com>
 <20191107120859.zoml7cmxbtaetjsk@earth.universe>
From: Nandor Han <nandor.han@vaisala.com>
Message-ID: <8722c9bd-6fc9-681a-d5e0-b8c7884ea69c@vaisala.com>
Date: Fri, 8 Nov 2019 09:46:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20191107120859.zoml7cmxbtaetjsk@earth.universe>
Content-Language: en-US
X-OriginalArrivalTime: 08 Nov 2019 07:46:15.0948 (UTC)
 FILETIME=[99AD64C0:01D59608]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_234628_332545_2FDB9340 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [193.143.230.17 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "andrew@aj.id.au" <andrew@aj.id.au>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/7/19 2:08 PM, Sebastian Reichel wrote:
> Hi,
> =

> On Thu, Nov 07, 2019 at 08:52:11AM +0000, Vaittinen, Matti wrote:
>> That reminded me.. I got 'unknown recipient' replies
>> <nandor.han@ge.com>: 550 5.1.1 No such user - pp
>> <semi.malinen@ge.com>: 550 5.1.1 No such user - pp
>>
>> from both Semi and Nandor - who seem to be the only maintainers listed
>> for XRA1403 GPIO EXPANDER in MAINTAINERS.
>>
>> XRA1403 GPIO EXPANDER
>> M:      Nandor Han <nandor.han@ge.com>
>> M:      Semi Malinen <semi.malinen@ge.com>
>> L:      linux-gpio@vger.kernel.org
>> S:      Maintained
>> F:      drivers/gpio/gpio-xra1403.c
>> F:      Documentation/devicetree/bindings/gpio/gpio-xra1403.txt
>>
>> Anyone knows new mail addresses or perhaps the separate entry
>> for XRA1403 should be removed?
> =

> +cc new mail address from Nandor Han
> +cc Ian Ray with valid GE mail address
> =

> -- Sebastian
> =


Thanks Sebastian.

Matti, I did review the gpio-xra1403 changes and LGTM.

According with the datasheet, 1 means direction input:

XRA1403 datasheet (https://www.maxlinear.com/ds/xra1403_100_092011.pdf)
```
  Setting these bits to =921=92 will enable the GPIOs as inputs.
```

Note: I will update also the maintainers list.

Nandor


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
