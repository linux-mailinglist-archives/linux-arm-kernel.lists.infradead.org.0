Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35270526F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 10:42:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5VhbnerEB5Ed5zVXBAzUrTG5Tk1G6Axy9J/MuSOZAz8=; b=hfxLoBF84Q1PBa
	loHyRYSoNidg3o6yIc2oonDg40iyAsRmaFU0aVUe68QXhrUxhoBNLPJD3nXNDEbLFgR6BO9hgFXYb
	FjlejQSRJDvH5jnWjjYQ9ufWYHVwAtUnXs3k3ipk7mSUxgt2jhked5krkVqGj+4xbvUBvtLM8/QCZ
	OdmBFu3iBypsCsk1VAduRsoOoviMMLhoqroaapwo3C3tyUU13jT6IF2noTl332dW/F2aWucGpIqSv
	/YQ1xEp6jcJWRf5Onsf7ffbOQbmQllPRqh9r82aYwN42occYirKJcvqBqGAXW72HbwLmnbZtgdQBB
	ZTSDn+p9aexUatBkeInQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfh1X-00031f-Qj; Tue, 25 Jun 2019 08:41:55 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfh1E-00030x-Ry
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 08:41:38 +0000
Received: by mail-lj1-x242.google.com with SMTP id i21so15387842ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 01:41:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yY87oqTTD0Lxu/Nod5+FQjpzkb9Bg3pO2iG7HQ35E9E=;
 b=jy18i/ewXTLgSvPyNLRaupblj/y1T6RuSuzYOmPX9Rgd5ez/9RF4JcwCLM01Ki7+VD
 Mw5HQ7AHG8KHsR5lDtc5F0J+vvOHsVnN8x7Z0VxqkiQBcWFPRj0tKwvNTVFWT7+kwa1o
 CEz4MKcqB2akH4600BMlytNemC6KpfZ33ALUx0+guDJ1Mi3r13EBkSR1eYCAzLR4vLW6
 5k1HUIjZywUQ5iTZwCWcARRV4pNq1caXQH1Z1u88Dg/rbv/Zbka2U5D1RwqR3Io1AUGC
 CfJiRiBAVFDvL+akBMKt/EM4x1oAIOFHEABhAVVZBiPpfsZMNL+2AM65JSiPMyuwqe8R
 45ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yY87oqTTD0Lxu/Nod5+FQjpzkb9Bg3pO2iG7HQ35E9E=;
 b=nLDiCK5xeCtJkVB/L/XKkjspECf9yZnQXyQBVppel+DkACPbLaeRO6V0bEb3AMH0pm
 eaht+bQG9DeOdAv9boX1JTHJT80dVQ0or1XkaXO8W6l37qLN02rLV62XeUZWoFf306ID
 GCz08fskrIa6yQ8+Omq4ESeLjXrkR3X/FjRCokR2zQbC4P7TubztpywgfIVkViylF5o9
 IynnHUW5M3xsP1sDOgXTPz7CK3qCaiPDik+KsZ+PAC/PJPbDmrg+V6TvQd37AN7lrO7c
 biDcWpCJIshGu+YorJekEax9bTDtg8VkPFKWtBHGWwgL8GFwBGJ8mDsE7qRdT49XYT3q
 X/Mw==
X-Gm-Message-State: APjAAAX80Vn+n9kpT4hTLJkEoLfGXNt3wReahe+bS+MowQQLB6/+JKPk
 JctsfQB1Ale1bm/AqfdY8ICE7jDVDp7yF78ahq7F7w==
X-Google-Smtp-Source: APXvYqy6jIwHwap88t5Oaa18Ta0HSwKvS14nJn1eTrjidyPzk7gb5fytFaXhj7sVmPkrE39Kdr2drRh47kPrl+2xWxs=
X-Received: by 2002:a2e:a0cf:: with SMTP id f15mr8401315ljm.180.1561452095250; 
 Tue, 25 Jun 2019 01:41:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190611122535.23583-1-Anson.Huang@nxp.com>
 <20190611122535.23583-3-Anson.Huang@nxp.com>
In-Reply-To: <20190611122535.23583-3-Anson.Huang@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Jun 2019 10:41:24 +0200
Message-ID: <CACRpkdZoySkQHc7sbHchR6O0UqxAjp8FS+ubdbXqESGnotDDpA@mail.gmail.com>
Subject: Re: [PATCH V2 3/3] arm64: defconfig: Select CONFIG_PINCTRL_IMX8MN by
 default
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_014136_913564_6084DCF1 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Stefan Agner <stefan@agner.ch>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Olof Johansson <olof@lixom.net>, Jagan Teki <jagan@amarulasolutions.com>,
 NXP Linux Team <Linux-imx@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Simon Horman <horms+renesas@verge.net.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Dong Aisheng <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 2:24 PM <Anson.Huang@nxp.com> wrote:

> From: Anson Huang <Anson.Huang@nxp.com>
>
> Enable CONFIG_PINCTRL_IMX8MN by default to support i.MX8MN
> pinctrl driver.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
> Changes since V1:
>         - sort the change in alphabet order.

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Please merge this through the ARM SoC tree.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
