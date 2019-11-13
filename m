Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9F1FAA79
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 07:53:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x25PCiI55jXrTfG9L7uSASTeW4eQc8MZwgQRGoMPzW0=; b=LHS50oU3Vmmwfu
	TgJux3JTeMcP7rKVpW4PRH+E1lrwwLzLVh0EP/0xVqdhU4L21cDzjfEnA5nElIczFORMGBLyTOA+s
	ayByZNQLyKJLTIuTSND6j3hqkqHOeSsf+adwXqUBp1U+jJG1XpKgl+GTId1bpdKZVYwxi1lOeJkT9
	VvCXK3/pFzh2ITQl6up1b6L2rF/wtDuqSD7SeG1MYdEiqXIoEGtaUUUWZ3YMF7u1RyJDLZPQjQN6X
	ebHdMSPiTBJsx1Iv1H8zXWEbwJ1maRFWZRL6Y9GOP6r4x3ttW9oF5bC0G5FvOZ11fih9CRHwMCWKd
	rUy3ggfQ1dMntelvp5rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUmWb-0007V8-Me; Wed, 13 Nov 2019 06:53:09 +0000
Received: from mailgate1.rohmeurope.com ([178.15.145.194])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUmWT-0007UG-EN; Wed, 13 Nov 2019 06:53:03 +0000
X-AuditID: c0a8fbf4-199ff70000001fa6-37-5dcba8474e9a
Received: from smtp.reu.rohmeu.com (will-cas002.reu.rohmeu.com
 [192.168.251.178])
 by mailgate1.rohmeurope.com (Symantec Messaging Gateway) with SMTP id
 0C.B8.08102.748ABCD5; Wed, 13 Nov 2019 07:52:55 +0100 (CET)
Received: from WILL-MAIL002.REu.RohmEu.com ([fe80::e0c3:e88c:5f22:d174]) by
 WILL-CAS002.REu.RohmEu.com ([fe80::fc24:4cbc:e287:8659%12]) with mapi id
 14.03.0439.000; Wed, 13 Nov 2019 07:52:51 +0100
From: "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
To: "lkp@intel.com" <lkp@intel.com>
Subject: Re: [PATCH 2/2] pinctrl: Use new GPIO_LINE_DIRECTION
Thread-Topic: [PATCH 2/2] pinctrl: Use new GPIO_LINE_DIRECTION
Thread-Index: AQHVmWQOgs5cHlsmlU+Vdtkf5ZbC06eIlAaAgAAGWoA=
Date: Wed, 13 Nov 2019 06:52:51 +0000
Message-ID: <ac16492e11899ef4ec981f7f2e84714c7d61d2a7.camel@fi.rohmeurope.com>
References: <20191112141819.GA22076@localhost.localdomain>
 <201911131438.KT6pnFZ7%lkp@intel.com>
In-Reply-To: <201911131438.KT6pnFZ7%lkp@intel.com>
Accept-Language: en-US, de-DE
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [213.255.186.46]
Content-ID: <C743A44B714FD7408E8547FE06DD0021@de.rohmeurope.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02TbUxbZRiG855vYIccSmnfoUZXQnCaMTc1ebOvMJ3x8MNlxixLpgTPxpE2
 g7ZpiwP9IQzm1iIKrpmua0GhQGllzBYDTipNnVpXGRtkHQub46MjgluJ2+ICTLCHusGvc+e5
 n/u+3h/PYXDZJTqT0WhNokErlKioZCLgWvBueN0VLnihZmILuji5QKBjsTYafRsNAzR4I4ij
 zrqfCRTujxEoUDUM0HzsPI0cpz8HyO6qQEsTf5GoyjlMoIHaCEDWh+0Y8k5GSNTQP0AjX9ND
 gIbP2Sk0XH0ZoPCcB0ffTccwdHdsCUcNo2dpZIlESTRTPUGhPzuvkuhIzYvI3hoiUOO/nSQK
 fvo26vF9jSN76ApAn7UMEejWKR+FYp4oQCfO5KPZuZ3o15AZR3PBQSwvhz8y+wvFz44cpfnG
 bz7kbTcHKN4zdIziz054SL5hYAP/ve0Gzbd4+ym+yfwA41v6pjHe6zZTfGVgkOCvR/oovvb0
 IsH7nB/tUexP2XZAML3/lqZYu3HHuynqkako0Nenlrf1XqUrwRhrAUkM5F6CJ+q+oCwgmZFx
 VwC0Wh2kZMi4EIBO7zoLYBiK2wYt12hpLOeyYOs9Hy7t45w7DVZ12DDJSOe2w9GPhyhpX87t
 gL7ulITcAs19r0mS4LLhvU+ypGWW2w0D3X4iAToIL800L0OTuM2w3WldLgTcU9BcGVvWOKeE
 3qkHZOLFHHT2DeIJnQGnJxf/n6ugf26ckFA4tx52nduYiOZBl6cLJPQ6aK0dpxNPSIO/nYoS
 9UBhW0WwraRtq9K2VWnbqvRXgHQDWCpoSooFk7gp1yCW5Rp06tL456Cu1AsSF3q/FywF84MA
 Y0AQrGUwVQbbUx0ukKUe0BVVqAWjutBQViIagwAyuErO9paHCmRskVDxgWjQPbKeYAiVks0Z
 byiQcRLrkCjqRcMj90mGUUGWb4+XphnEYrH8PU2JacXGmCSpPDlTbhS1RaJBKDOpC6XbKDTG
 j0Oy1sS5prZ4nDXqhdL4NBG9AJ5n6qcdzThz3tHajMsIrU4rZipZvUTipFV1mfYxaAYoGaBK
 Z49KRWviv+njnpk4Aosjan66ICFMwoqVWQneOHyGkvu1mn/2bO1Wpveongn8fWuvW7F/RH/d
 vddv/zIn+/47xy86Zrb75ptAe93lrsKdebmvJN3Md6GsXc8eOt64b7Hn2ps55sOKBe2PntZw
 cYaXpDbf6fBtPbnbepd7uaklmxoThX7F6O21t0/+cGd+fceuP57e9zvlX5iqjaS+qiKMamHT
 c7jBKPwHB3TLUWMEAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_225301_638244_78E5F74B 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.15.145.194 listed in list.dnswl.org]
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "narmstrong@baylibre.com" <narmstrong@baylibre.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "patrice.chotard@st.com" <patrice.chotard@st.com>,
 "paul@crapouillou.net" <paul@crapouillou.net>,
 "eric@anholt.net" <eric@anholt.net>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "wens@csie.org" <wens@csie.org>, "agross@kernel.org" <agross@kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "mazziesaccount@gmail.com" <mazziesaccount@gmail.com>,
 "rjui@broadcom.com" <rjui@broadcom.com>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-rpi-kernel@lists.infradead.org" <linux-rpi-kernel@lists.infradead.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 "sbranden@broadcom.com" <sbranden@broadcom.com>,
 "sean.wang@kernel.org" <sean.wang@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "wahrenst@gmx.net" <wahrenst@gmx.net>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "linux-oxnas@groups.io" <linux-oxnas@groups.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Wed, 2019-11-13 at 14:30 +0800, kbuild test robot wrote:
> Hi Matti,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on 70d97e099bb426ecb3ad4bf31e88dbf2ef4b2e4c]
> 

>    480	static int wmt_gpio_get_direction(struct gpio_chip
> *chip, unsigned offset)
>    481	{
>    482		struct wmt_pinctrl_data *data =
> gpiochip_get_data(chip);
>    483		u32 bank = WMT_BANK_FROM_PIN(offset);
>    484		u32 bit = WMT_BIT_FROM_PIN(offset);
>    485		u32 reg_dir = data->banks[bank].reg_dir;
>    486		u32 val;
>    487	
>    488		val = readl_relaxed(data->base + reg_dir);
>    489		if (val & BIT(bit))
>  > 490			GPIO_LINE_DIRECTION_OUT;

Right. Return is missing. I think I already fixed this - I guess I sent
wrong version... Sorry guys. I'll do v3 with only this return added -
and I'll send it to limited amount of recipients as I think most of you
guys may not be interested. Probably to Linus W, Geert and GPIO list
only. Let me know if you want to see the v3 (or other subsequent
patches)

>    491	
>    492		return GPIO_LINE_DIRECTION_IN;
>    493	}
>    494	
> 
> ---
> 0-DAY kernel test infrastructure                 Open Source
> Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel
> Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
