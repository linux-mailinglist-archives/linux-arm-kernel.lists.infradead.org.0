Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C6E3974D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 23:04:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hs6e/FxUGREVB4kxAe+SCHncPp9XXHVA/P8UaFKteIQ=; b=d8c2zeJ4O/jHFt
	bmSTWdc0aK+JxirbjNU7XZtCQs8+PMegfRN++SLYVdxTB17r0gD0vofOfPJxN3o1n/yI4GZ3uvHTZ
	szJcYzmtY7Kq8G8NzV6PFELQRXoMkXWCQ/xri3ryB38ZgUlvzE/ZZ2mdhE7oszUBH0VJBw/ajTeqj
	E9k+zkOowvY2BSha6LUt0vP52mr1sPOreB36rm2MN7VuAeU71RsW1imCFKQyShk40vLClyzoUcfYB
	KqTHhyzwLdsMJhdfAGh2izq913VTjbtEY//kFJN5Rp650I5PRKJ0DisQECQuK3l938cc9yfzc5XEY
	Xsjv9elve0x0XpiPRNww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZM2U-0005Sz-Fu; Fri, 07 Jun 2019 21:04:42 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZM2N-0005Sc-5Y
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 21:04:36 +0000
Received: by mail-lj1-x241.google.com with SMTP id 131so2913071ljf.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 14:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vkU0CLA4zd7U+4w/MeYB7MsnfkDi0Po4BQ8jWMFBUjo=;
 b=Bl3VdEFDNRcw68lQN2+iAhPiWw5DQMPXg2SfOdO0jMkLGnBZ+uzq2sVjmQ4vaHAbG4
 yNaYAP/1r/yIlm+Vay8Wsve+dfOIcTk28G0cVRmtAwbrROgC3Dyj8uSlyUDJNpKeM1wL
 EBMTqw5WMOWJKdh3wSd10dvEDiZK+z1gGAbKjQrBjE6N7MCrUY9X5KM/bZYvdjcRZ424
 gdJXbrG19WOm+xi1E8pcpR2k4g5NwCTXuPQO1pXeFt8zefmVKfKGIXKgKIHsdyV+XrUH
 AIsp1mw/e21lcxOHA2q/t59+syFLF30vm0Vl1BbVgLnQG/sILfmw0yuI/keT7LFF3F9f
 Ghqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vkU0CLA4zd7U+4w/MeYB7MsnfkDi0Po4BQ8jWMFBUjo=;
 b=TyOV6q01+JtLlkqkUZhQDTLDIZF/Su4eFLtYnNmdWMkVe5bBzSeuQwvYIVg4sRpuy6
 41xc7xWkrtpUJ4N28nYAWCDzHoXi3/DDBJ+nqCXDO/tPhk+K91THdinWGeksZS3RuvHA
 pTRXCY3KfngknUDy+LHj7zH1xX9TVYh0pL1omg0sCf8JzpKwGprPzJ1fuJNVFqpbehKj
 aAUykXU3jUa+3rZTbE5gnlq/4tDGUdfmwuFNhlM1hFWKVasI3V6nTFDTV8UCU7miZBrN
 ZLHdwIDkHGfLXaMesgz/Isrpvs82YXsRs/4o0QtX1m2ROWhgTp3jFCyB8diCkB2jR8QO
 uyMg==
X-Gm-Message-State: APjAAAWeGKlOCx7hu/W6U0GUkTASoYozYSbNzkey3ySV8gu/tUqgN6O6
 O/9ML4GQPP/+OPsgOAVELGJiTVV5N6EEl+TiOzHKBA==
X-Google-Smtp-Source: APXvYqyCQqq/sYVcHyrozCmhdkems9DE56UaaALAZIcDJuvLRmL+KVL12nZblAfJci6jVwnq/iR/eVswn8WPsSelqws=
X-Received: by 2002:a2e:5bdd:: with SMTP id m90mr19782540lje.46.1559941473627; 
 Fri, 07 Jun 2019 14:04:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190530030546.9224-1-Anson.Huang@nxp.com>
In-Reply-To: <20190530030546.9224-1-Anson.Huang@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 7 Jun 2019 23:04:25 +0200
Message-ID: <CACRpkdY-35o378Ka+4bgeSPjmq6P8DM872sgTxq2X3dDP9XZHQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: imx: Add pinctrl binding doc for i.MX8MN
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_140435_220391_FF4DE81E 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Thu, May 30, 2019 at 5:04 AM <Anson.Huang@nxp.com> wrote:

> From: Anson Huang <Anson.Huang@nxp.com>
>
> Add binding doc for i.MX8MN pinctrl driver.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Looks mostly OK to me, but I'd like the maintainers to review,
so Dong et al please look at this!

> +Required properties:
> +- compatible: "fsl,imx8mn-iomuxc"

So should this not be "nxp,imx8mn-iomuxc"
or "nxp,freescale-imx8mn-iomuxc" or something these
days? The vendor name is nxp is it not.

I was complaining to the DT maintainers at one point that
these companies seem to buy each other left and right
so this vendor nomenclature is dubious, but I guess at least
it should reflect the vendor that produced the chip or something.

If everyone is happy with "fsl,*" I will not complain though.
(i.e. if the maintainers ACK it.)

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
