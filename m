Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FD5C19C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 01:46:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rf6Ju4TVH9NuIlyT2HpRJjQZOnBW1HCDIlBxqOb/3Ag=; b=Ih5UHyxqjavWFO
	kmA1i1IeXWV8sXOGM9downoAN0hrFHF9z8zVvviGkeXmTN4YAbetH8t7HYgXiZiGvc1JuQpWCu4GU
	N5kaYWylXR+qbngz5mccGG9FDsyfW8g3JerZAjsq3zIXO82BogQmrFYPwUtMu5KGRxkD0uuuvsiJV
	akmhp2KIROr2AEyzVZijNtsjB2HgNQ9AXv1c8ER+vcSsYvspjQWMdpKqwA5l2nEokuYLzbBikBn6F
	o+cKn8mHwLOUopfJ8R6yajt538Z+89ii+D1Tj3QzOpP5MSWP9bixJzZtgQD1H0jld7qZQqAt0HOGB
	ScGjpBc+JGcc6+8Sk7LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEitV-0004TH-Qn; Sun, 29 Sep 2019 23:46:25 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEitQ-0004Sh-Rn; Sun, 29 Sep 2019 23:46:22 +0000
Received: by mail-qt1-x841.google.com with SMTP id u22so14666795qtq.13;
 Sun, 29 Sep 2019 16:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=9IjuVXfjyC+Q3EgkfLoZRHzj7hful0PTkZcBqQey3BU=;
 b=WgOkqUXG/IOsCK1v46IkgYuvCCXlWivbA0/c8I3P1LW9SLM09h//IDxsINvCoNLie1
 d2uDzX0BimZmK66AyDUtq4ykya65Xw7IM43b5alZxJ6Bj4GSCxD/hznZReZ+zKZKcjnW
 32ER5J6DTGckGj+qW2ka0ox7QFqlyfL11PLQ6onHceTt7/mxI6u6G7ArnYeq9ad3PyZG
 fTePApuiq8DXfLot28KFYxlHH/PoJ4FZSJzGQPl5+gejE1YAeeSNrfgue6W8MbxenL3w
 0YHyQ/tlYHv2h/6F+e+b8mDM6hZXe+sEJBwENssePuU7yxUAt54Pmic+/221kiWZY6iy
 oUZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=9IjuVXfjyC+Q3EgkfLoZRHzj7hful0PTkZcBqQey3BU=;
 b=ttJChTriWmQocD/u36WAdh+GJ3H53y8DbRcBf0COPD+567kPByd3cf3AIOe8R0S+y4
 HUBBKCuFucZFUBTClByxjQwahxKVBW8xKOAB/PZJR6Ve5SsoowxiFycA0QFfpwix6aiS
 Wpel9T1Q7Nt5ud7t3zd0wDH7Ym/SJSygyJyjdklA2TvEMfEur+oe2lpSai70zhoi9+3K
 zrqOc6ZHRjmL+Um0/IWUfuVhEHDU2ucyAGZ90BD/1ecqSLjPkFWBqpFXBNf/wJs+6rmQ
 EiUyZCPpnrfuq7W0/Y6ECR2gDLdZ7wabIYxNLvZbhjTe66+MoSL4gvE3mntw/uQpSrkF
 ZGJg==
X-Gm-Message-State: APjAAAWY8R5m909gXm8NyowYOCD+JouUcPdlqswp5b+euzO1jnhMrE8h
 S4qW2rDZiMO9NP8XGEanKDY=
X-Google-Smtp-Source: APXvYqxVMoPmFYQFR1uQ9s3WqrOhj1kuaz6jaF1gAqCSFqi7agIMTQouJhYavwt4z9geiH7wAvaCbg==
X-Received: by 2002:a0c:c48e:: with SMTP id u14mr18611626qvi.37.1569800779344; 
 Sun, 29 Sep 2019 16:46:19 -0700 (PDT)
Received: from vivek-desktop (ool-457857f8.dyn.optonline.net. [69.120.87.248])
 by smtp.gmail.com with ESMTPSA id
 m14sm4585875qki.27.2019.09.29.16.46.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Sep 2019 16:46:18 -0700 (PDT)
Date: Sun, 29 Sep 2019 19:46:15 -0400
From: Vivek Unune <npcomplete13@gmail.com>
To: Vicente Bergas <vicencb@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix usb-c on Hugsun X99 TV Box
Message-ID: <20190929234615.GA5355@vivek-desktop>
References: <20190929032230.24628-1-npcomplete13@gmail.com>
 <54c67ca8-8428-48ee-9a96-e1216ba02839@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54c67ca8-8428-48ee-9a96-e1216ba02839@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_164620_921961_800E2C01 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (npcomplete13[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npcomplete13[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 Felipe Balbi <felipe.balbi@linux.intel.com>, Felipe Balbi <balbi@kernel.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, akash@openedev.com, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 29, 2019 at 01:22:17PM +0200, Vicente Bergas wrote:
> On Sunday, September 29, 2019 5:22:30 AM CEST, Vivek Unune wrote:
> > Fix usb-c on X99 TV Box. Tested with armbian w/ kernel 5.3
> > =

> > Signed-off-by: Vivek Unune <npcomplete13@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > =

> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> > b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> > index 0d1f5f9a0de9..c133e8d64b2a 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> > @@ -644,7 +644,7 @@
> >  	status =3D "okay";
> >  	u2phy0_host: host-port {
> > -		phy-supply =3D <&vcc5v0_host>;
> > +		phy-supply =3D <&vcc5v0_typec>;
> >  		status =3D "okay";
> >  	};
> > @@ -712,7 +712,7 @@
> >  &usbdrd_dwc3_0 {
> >  	status =3D "okay";
> > -	dr_mode =3D "otg";
> > +	dr_mode =3D "host";
> >  };
> >  &usbdrd3_1 {
> =

> Hi Vivek,
> =

> which is the relationship of your patch and this commit:
> =

> e1d9149e8389f1690cdd4e4056766dd26488a0fe
> arm64: dts: rockchip: Fix USB3 Type-C on rk3399-sapphire
> =

> with respect to this other commit:
> =

> c09b73cfac2a9317f1104169045c519c6021aa1d
> usb: dwc3: don't set gadget->is_otg flag
> =

> ?
> =

> I did not test reverting e1d9149e since c09b73cf was applied.
> =

> Regards,
>  Vicen=E7.
> =


Hi Vicen=E7,

Indeed, I was motivated by e1d9149e ("arm64: dts: rockchip: Fix USB3 =

Type-C on rk3399-sapphire"). X99 TV box showed exact same symptoms
with usb-c port. After applying the fix, it worked.

I was not aware of c09b73cf ("usb: dwc3: don't set gadget->is_otg
 flag") and it will be interesting to test it. This might render
my fix unecessary.

Thanks,

Vivek


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
