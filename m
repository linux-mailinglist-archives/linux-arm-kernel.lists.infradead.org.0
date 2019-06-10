Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B653B8E8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 18:05:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WNAowQC0yJGix0l4wgvGxtoMU40FQWMYpXqnPEEwFmo=; b=hXxRVItHwxo6gl
	uIQZ9DPG3slZH9nXlSN0I/z70KdMt2WBWL4VBazo865TNz/Q33RPPjHeZtNCc0mjzwBOjLLB/Gx55
	5jVXgt6ADf0N0pmoxyiA+HgSUqqfIO9NVp2SfklY6Ds+tlCWeIWfrcX4zeutWb/IUTmaSPn00ZmTR
	1FuSvpovwzV7U5AKfYpwjN+aCFrSOZ7PCVeF/9Oxd30c/AfINTkxRUuinhqYO9pbqShWwzQ+wgpoc
	FC9qw7yMnNJlTt8auQz4L5aG6LXAckkxcx3ESAJgVo/cyFDDXqmn1bNfA6tSNZccydHSTm4/4RIuP
	clucKFiiGKMADa8jP33w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haMnP-0000q4-69; Mon, 10 Jun 2019 16:05:19 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haMnF-0000TZ-Vl
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 16:05:11 +0000
Received: by mail-pl1-x643.google.com with SMTP id s24so3832882plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 09:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=I97k1/yDNx0Ud4d53tFJ+yzis1/msAxhI7LkJXdDlMI=;
 b=VV9N9tGP8t2WAQUQ+OSK2mKKCq5hw/N4x7i7RZ590iX541DGS+qpKTG/j+IEqxn3rZ
 H21R38eWL4cZzvIqWG7yGw0Yx4RUYnU9IA3evlNHfq6dOXsAFoXgTAcwEqrrt/75qDWv
 1WNhWrZEc0F/+0Ap5HW9EQB8XXHjjpSbB6ID2xPX1JuBstBbT7ctDcNGOvhu80VQPrY5
 MUkeQgFjzhu8vYi6C7HA4Rt/jmQHHLQuvUs9a4wdno0iKRSy0ijN+2sbahr1MiseeeI2
 YTg3k9hu+cDwt1c8aDmL0YZ4s0933Hol8De084L5JSPIBTCLwUBcgcKYL4aMYP0xWafo
 mnSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=I97k1/yDNx0Ud4d53tFJ+yzis1/msAxhI7LkJXdDlMI=;
 b=pAze8w+/C9mw4rZZhdsOOkE2DFUvUOgoP4Zc8Cnz9zLx5AQVtDifLsM43FT7tRVwG2
 OTSEkViFri801Bh7seIKLA0QgYgTrZSOC6Wuxc9Bc9EsUiTgCZHcWVY1NkCyEXZmmQiB
 Q8nRWfn5e0cPsC1dDR1gwBpe7r9BB+pIQBcf2ZDF5JuM8WVKtAj/eEJd2sv+kjL+69hE
 bkMOo5UYjDFQDgOmxBi/1G+YBgIYOJXdiYmrUdr30H3qhrgSYTgnLEihclPHDIgO2vle
 3LeAfp+tAVu6+YZ2BjxekvkFV3GssBguBpgh0AGaSh0/evs7BIOm8882R/u4gvGuk6O6
 29rA==
X-Gm-Message-State: APjAAAUSZqdmSzkmhmvcGPCmyF/SC9MB0+ijGBjL+iYuTWf0NbraUD2t
 FY5Lu2U9Gq0Yqx6rmnbKVITB7iws/iy2
X-Google-Smtp-Source: APXvYqwH/NmDelm4Qk4hvpw7av9GCUs379dTbeOaPUH87D6Xn3audTYv6l3vxIFimcWYviwc+NPV4Q==
X-Received: by 2002:a17:902:ac1:: with SMTP id
 59mr9967531plp.168.1560182706367; 
 Mon, 10 Jun 2019 09:05:06 -0700 (PDT)
Received: from mani ([103.59.133.81])
 by smtp.gmail.com with ESMTPSA id 144sm8900066pfa.180.2019.06.10.09.05.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 10 Jun 2019 09:05:05 -0700 (PDT)
Date: Mon, 10 Jun 2019 21:34:59 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH 2/7] dt-bindings: mmc: Add Actions Semi SD/MMC/SDIO
 controller binding
Message-ID: <20190610160459.GA31461@mani>
References: <20190608195317.6336-1-manivannan.sadhasivam@linaro.org>
 <20190608195317.6336-3-manivannan.sadhasivam@linaro.org>
 <5d164528-c797-5f94-f905-719d4f69542c@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d164528-c797-5f94-f905-719d4f69542c@suse.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_090510_029570_4C241488 
X-CRM114-Status: GOOD (  23.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, ulf.hansson@linaro.org, sboyd@kernel.org,
 linux-actions@lists.infradead.org, linus.walleij@linaro.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 thomas.liau@actions-semi.com, robh+dt@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Andreas,

On Mon, Jun 10, 2019 at 03:45:37PM +0200, Andreas F=E4rber wrote:
> Am 08.06.19 um 21:53 schrieb Manivannan Sadhasivam:
> > Add devicetree binding for Actions Semi Owl SoC's SD/MMC/SDIO controlle=
r.
> > =

> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  .../devicetree/bindings/mmc/owl-mmc.txt       | 37 +++++++++++++++++++
> >  1 file changed, 37 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/mmc/owl-mmc.txt
> =

> Rob, should this be YAML now?
> =

> > =

> > diff --git a/Documentation/devicetree/bindings/mmc/owl-mmc.txt b/Docume=
ntation/devicetree/bindings/mmc/owl-mmc.txt
> > new file mode 100644
> > index 000000000000..a702f8d66cec
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mmc/owl-mmc.txt
> > @@ -0,0 +1,37 @@
> > +Actions Semi Owl SoCs SD/MMC/SDIO controller
> > +
> > +Required properties:
> > +- compatible: should be "actions,owl-mmc"
> > +- reg: offset and length of the register set for the device.
> > +- interrupts: single interrupt specifier.
> > +- clocks: single clock specifier of the controller clock.
> > +- resets: phandle to the reset line.
> > +- dma-names: should be "mmc".
> > +- dmas: single DMA channel specifier
> =

> I recall the main blocker for MMC being regulators, i.e. the I=B2C
> attached multi-function PMIC. Yet I don't see any such required property
> here, nor any patch series implementing it. Seems like this relies on
> U-Boot having initialized SD/eMMC? Do you intend to make them optional
> or did you want to hold off merging this one until the rest is done?
> =


Yeah, I'm planning to rely on u-boot for regulator enablement. PMIC support
in kernel will take some time because the floating SIRQ patchset is not yet
finished.

> > +
> > +Optional properties:
> > +- pinctrl-names: pinctrl state names "default" must be defined.
> > +- pinctrl-0: phandle referencing pin configuration of the controller.
> > +- bus-width: see mmc.txt
> > +- cap-sd-highspeed: see mmc.txt
> > +- cap-mmc-highspeed: see mmc.txt
> > +- sd-uhs-sdr12: see mmc.txt
> > +- sd-uhs-sdr25: see mmc.txt
> > +- sd-uhs-sdr50: see mmc.txt
> > +- non-removable: see mmc.txt
> =

> I'm not convinced duplicating common properties is a good idea here, in
> particular pinctrl.
> =


Hmmm, I thought of adding the MMC properties which were supported by the So=
C.
I can remove those if needed.

Thanks,
Mani

> Regards,
> Andreas
> =

> > +
> > +Example:
> > +
> > +		mmc0: mmc@e0330000 {
> > +			compatible =3D "actions,owl-mmc";
> > +			reg =3D <0x0 0xe0330000 0x0 0x4000>;
> > +			interrupts =3D <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
> > +			clocks =3D <&cmu CLK_SD0>;
> > +			resets =3D <&cmu RESET_SD0>;
> > +			dmas =3D <&dma 2>;
> > +			dma-names =3D "mmc";
> > +			pinctrl-names =3D "default";
> > +			pinctrl-0 =3D <&mmc0_default>;
> > +			bus-width =3D <4>;
> > +			cap-sd-highspeed;
> > +		};
> > =

> =

> =

> -- =

> SUSE Linux GmbH, Maxfeldstr. 5, 90409 N=FCrnberg, Germany
> GF: Felix Imend=F6rffer, Mary Higgins, Sri Rasiah
> HRB 21284 (AG N=FCrnberg)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
