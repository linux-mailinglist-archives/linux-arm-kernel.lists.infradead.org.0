Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23745122C83
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 14:07:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=39gt5FAmyF5fSIirYeE9EarwkCxhbOtJIfDo2Px3PXE=; b=kbHkH5TvuxIRut
	0UgoNDcc37OvWByqZSVpUWoiNsTO5xiSFg3KaEIVeBO1WJba9ZvIWJQzsrTnO3IEEq9oMTJHghnRG
	hHO791FENaGS8ZhbRoxAo9XpMb2WZPfuO/8z+4fKuV/v3B88YkCqmPWSY7aZQ9Zqd9nn6J2A/Ifdt
	k9UryWThaz7wiAmKftNIorNMWoR2KcWu5pYTcyBqX1X55oZflb/poxVgHwXvD19sy/UFeTVeYShOQ
	XSucSFHeKP2OdV6l7PvrM1EsjZSDcvB9VXx5YqAEDpeaNa+ubXmJkamDH6t2Yy5KToNHVEXo+dRb5
	oZECzsk1mZNxgI7fuoUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihCZm-0005um-BC; Tue, 17 Dec 2019 13:07:46 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihCZc-0005u1-2n
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 13:07:37 +0000
Received: by mail-io1-xd42.google.com with SMTP id v3so10933483ioj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 05:07:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=79YzXGa0/bKZjTejQkahRNRf5+MjE4e315RFe1Zru6E=;
 b=uEdL9aQ//2cvH7MK3vYjzUibPqOMpLbTDYx1ZHIvvwU2pO5qHei8XziqJDijRDJYJc
 HpOlQ4Bv3BgBvbn0qm4M9YVmWWm9cATm4M6kDXKvkICp6eBRBdnaML5iB5AMtVrYkZxY
 /sTSnc9hVxnVnEhbSw/HahNznZNn46SwQPIPn62mZ5zuoE6+eUYBVkPBZe2NcAuYIGgC
 ARr2MHogOpOibXiVkAYHBd/YpByoHF8+unLbdnMqC22s8+AIY4dtlB4gkb/87fW25ZVL
 NavvwR4u+E0Dewwms/s+luNATajh4dh6hCOj07nJj27T51LdntG2qA+h4Y6OVOG3Zfni
 R9ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=79YzXGa0/bKZjTejQkahRNRf5+MjE4e315RFe1Zru6E=;
 b=UTEO97afsIgGDOLy9QrjD7KiULMdVNiMr7/dfytKXpPbnhXD74+Ze9TMPK+EG/Ul9X
 WJl401Z8f8uZl3HK0PnpvzwZzH8cLfxmP/A5OjVW17Y3GFozirFYM1xPtn2hfqj23nyv
 QKnPAfXhVB3nfoXgBM4AEFNVih7VsWWMh+jh6+oyt7TbH6QBpQNPBtUshjTOGM6+1UTd
 OuOat17x1vRgnsWzlWLaRUo2PwrZZODgVSuFCDPTHMcs6Zf8M4ybx8j+arCNeMgKwOyO
 +fDHwy/y7ZM55BgGsCzEvdmTdtJYn4zsBIkiIdFgPa8oCNvvZjQOWxukQnj4RTts6/G6
 0t/w==
X-Gm-Message-State: APjAAAUhad2lv2mISGT4KqsXV18FISKkFa0MzKZ0Spef/Gxq6ZPyLcBU
 ZO9jHpMSlfgzluZioddNYHhmR7hx/NubLby1rOE=
X-Google-Smtp-Source: APXvYqxs0JVvmohGW3CJM38cF0ip/ZTgWWaOjkWzTyyLdlMiI3ZT24dQAZUD4JM9uMEPgvaFWrK8qOAfXcEpluXtEiM=
X-Received: by 2002:a5d:9bd0:: with SMTP id d16mr3776062ion.78.1576588053967; 
 Tue, 17 Dec 2019 05:07:33 -0800 (PST)
MIME-Version: 1.0
References: <20191213153910.11235-1-aford173@gmail.com>
 <20191213153910.11235-3-aford173@gmail.com>
 <VI1PR0402MB3485AB1908AD6B6617CFC08C98500@VI1PR0402MB3485.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR0402MB3485AB1908AD6B6617CFC08C98500@VI1PR0402MB3485.eurprd04.prod.outlook.com>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 17 Dec 2019 07:07:22 -0600
Message-ID: <CAHCN7xLrX0R7Uag2vc1qMp4z=1r3haCWrcp4qJT0H0eC3RiA4Q@mail.gmail.com>
Subject: Re: [PATCH V2 3/3] arm64: defconfig: Enable CRYPTO_DEV_FSL_CAAM
To: Horia Geanta <horia.geanta@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_050736_152428_F3DD0E1B 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Will Deacon <will@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 3:11 AM Horia Geanta <horia.geanta@nxp.com> wrote:
>
> On 12/13/2019 5:39 PM, Adam Ford wrote:
> > Both the i.MX8MQ and i.MX8M Mini support the CAAM driver, but it
> So do the Layerscape ARMv8-based SoCs:
> LS1012A, LS1028A, LS1043A, LS1046A, LS1088A, LS2088A, LX2160A
>
> > is currently not enabled by default.
> >
> > This patch enables this driver by default.
> >
> > Signed-off-by: Adam Ford <aford173@gmail.com>
> > ---
> > V2:  New to series
> >
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > index 6a83ba2aea3e..0212975b908b 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -845,6 +845,7 @@ CONFIG_SECURITY=y
> >  CONFIG_CRYPTO_ECHAINIV=y
> >  CONFIG_CRYPTO_ANSI_CPRNG=y
> >  CONFIG_CRYPTO_DEV_SUN8I_CE=m
> > +CONFIG_CRYPTO_DEV_FSL_CAAM=y
> This should probably be "m" instead.

Out of curiosity, what is the rule for when things are 'm' vs 'y'?

In the Code Aurora repo, it is set to 'y' and the mainline kernel for
the i.MX6/7, the imx_v6_v7_defconfig is also set to 'y' which is why I
used 'y' here.

I can do a V3 to address the other items you noted, but I want to
understand the rules about the defconfig so I don't make the same
mistake again.

thanks,

adam
>
> Horia

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
