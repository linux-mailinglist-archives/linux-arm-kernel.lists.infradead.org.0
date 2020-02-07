Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5722B154FD9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 01:49:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=agKhWq3SBJnhYq85rV8Erlq3nOu1D54I3L8lvG5A7hk=; b=nqJbY14fY2BEz2
	i8sEABgvix3ofkY0XAolrP1VTFyHXRQtsT+r9+ScY0Eeo0pSQNy1KwCTfeyClnGjREcuxzYutUeEf
	YoZoBtpiSPbGVYNHX20GdEmr8MYiR2MgXByyjyR50OaXVi3WjyOvcoro72G9ouzldWnuwJRGRlzNv
	jzYzc+iqnHz3pDiS1qiolgsP/V961XTlN5QQcdguBOTV+IKlW+d5x4rmjAtCixY19F07aCNp07bx5
	KunDlQWaXKjq5QeXKpQ8yAZVn5uZ06oTgHr0DuoLoC7CkAKRmilfLaK051Qv+os1vN/XWs8C6Frc3
	lLaDwS1vIwCVbyvuDXmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izrpx-0002e7-Tk; Fri, 07 Feb 2020 00:49:37 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izrpr-0002dG-9l
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 00:49:32 +0000
Received: by mail-qv1-xf41.google.com with SMTP id m5so217527qvv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 16:49:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P6oOvkFZ9CSC5ckdz/CdZgJ1/qpX15ssCumnuFtMEW8=;
 b=sU8FpCBau1A8Sy5WiXmDeb7GJAtyl1hXaM0E4yNnUqb2GFL/UJDceg4Qu02bpkKxnu
 c4HNOxX8Xy2FMaH1AmGERnW7cXO3DLKOjD+6Vo08BL1il37Gqr4w5RrKATCgzeo/lpnz
 Dbmw+EsIjDlb3F48fWOOUUF6q/7aaSwKUfIee6faLLOvRJJPPdGvHTe1w8Q1ZoLSf0F5
 WhQVPfuvlm15hZVmjEKLEJAfz5bgtGSi/G1TuZbhXHzoN4N072nkC9e5MFL1S/7SBkfB
 wGDHVmcfktx1DECmrtb+V0uFxKj8LZlDgyRpWIvEINIqt6UzwPCI1QoqSWBTxUDZ1O32
 3KXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P6oOvkFZ9CSC5ckdz/CdZgJ1/qpX15ssCumnuFtMEW8=;
 b=nZyTiVyeCNyuv2DlUtSzAollX8UjMiq0SRNcitacWsPA0qrMzfZe4SGXnKhSrXyhDB
 jb72a/nsWe+pagti25+xOxA/TXcvu0m6KxnCszviU+E4ttPPialqWXMsmWM3RrOcVCHZ
 Q5FE6YXzyAE6U8r1u76ujuGIDF4tjwIFYHEyJi+pOzIAAjmZ33bA9k0RxUep5jIH55mK
 WKhS66fakYcBYYjLn2yBDQc0AU3Mb+URSv3E4JGLyMnyX3WV5tyPcaaY0fbwTJP0G7Qw
 IuGCb5vzyq4eUKP+YNAsFRrQmLIt8Lu1y1IFxT3Ij3uLIzaxLVu2umdKIySyowwAp9da
 fmNA==
X-Gm-Message-State: APjAAAX11N+x4iFn6moNxKSIkmvQ+/x3hM3SMxzWMP6Kk21kdSa/rPqg
 Ab5XZjrjQKH3+ge9mhKCGm7tVCJ+nYeghIiJ/Ss=
X-Google-Smtp-Source: APXvYqxFDtQytKEWKhZPcxgNl3MkZD9ZoQpITSB46YTjUU2thEd25m9XiMt60ChqrBM9fJtNdT3BY4EUL7SDZEWKwSY=
X-Received: by 2002:ad4:55ec:: with SMTP id bu12mr4857664qvb.107.1581036567753; 
 Thu, 06 Feb 2020 16:49:27 -0800 (PST)
MIME-Version: 1.0
References: <20191219172823.1652600-1-anarsoul@gmail.com>
 <CAHLCerPWEDqEE8LRUiO5GpeP+BfnestocndBQq6oXAxVN=+3ow@mail.gmail.com>
In-Reply-To: <CAHLCerPWEDqEE8LRUiO5GpeP+BfnestocndBQq6oXAxVN=+3ow@mail.gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Thu, 6 Feb 2020 16:49:01 -0800
Message-ID: <CA+E=qVf1wVLgJ3_4K3nbZtgkRUVfmfgArwssPXu2Qb0NHAB+GA@mail.gmail.com>
Subject: Re: [PATCH v8 0/7] add thermal sensor driver for A64, A83T, H3, H5,
 H6, R40
To: Amit Kucheria <amit.kucheria@verdurent.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_164931_367992_DE51C2FC 
X-CRM114-Status: GOOD (  20.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [anarsoul[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>,
 Linux PM list <linux-pm@vger.kernel.org>, Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 6, 2020 at 6:14 AM Amit Kucheria
<amit.kucheria@verdurent.com> wrote:
>
> Hi Vasily,
>
> For this entire series, the DTS files don't contain any trip points.
> Did I miss some other series?

See https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git/commit/?h=sunxi/dt-for-5.6&id=e1c3804a177418fe14d95f0c4ccba5ae66f73d82
for A64

> At a minimum, you should add some "hot" or "critical" trip points
> since then don't require a cooling-map with throttling actions. If you
> have "passive" trip points, then you need to provide cooling-maps.
>
> Since this series has been merged, could you please follow up with a
> fixup series to add the trip points?

A64 has already made it into linux-next, I believe there's other
series in flight at least for H6 from Yangtao Li and for H5 from
Chen-Yu Tsai

> Regards,
> Amit
> p.s. We should catch all this automatically, I'll send out yaml
> bindings for the thermal framework soon that should catch this stuff.
>
> On Thu, Dec 19, 2019 at 10:58 PM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
> >
> > This patchset adds driver for thermal sensor in A64, A83T, H3, H5,
> > H6 and R40 SoCs.
> >
> > v8:
> >         - [vasily] Address more Maxime's comments for dt-schema
> >         - [vasily] Add myself to MAINTAINERS for the driver and schema
> >         - [vasily] Round calibration data size to word boundary for H6 and A64
> >         - [vasily] Change offset for A64 since it reports too low temp otherwise.
> >                    Likely conversion formula in user manual is not correct.
> >
> > v7:
> >         - [vasily] Address Maxime's comments for dt-schema
> >         - [vasily] Move common part of H3 and H5 dts into sunxi-h3-h5.dtsi
> >         - [vasily] Add Maxime's a-b to the driver patch
> >
> > v6:
> >         - [ondrej, vasily] Squash all driver related changes into a
> >                            single patch
> >         - [ondrej] Rename calib -> calibration
> >         - [ondrej] Fix thermal zone registration check
> >         - [ondrej] Lower rate of sensor data interrupts to 4/sec/sensor
> >         - [ondrej] Rework scale/offset values, H6 calibration
> >         - [ondrej] Explicitly set mod clock to 24 MHz
> >         - [ondrej] Set undocumented bits in CTRL0 for H6
> >         - [ondrej] Add support for A83T
> >         - [ondrej] Add dts changes for A83T, H3, H5, H6
> >         - [vasily] Add dts changes for A64
> >         - [vasily] Address Maxime's comments for YAML scheme
> >         - [vasily] Make .calc_temp callback mandatory
> >         - [vasily] Set .max_register in regmap config, so regs can be
> >                    inspected using debugfs
> >
> > Ondrej Jirman (4):
> >   ARM: dts: sun8i-a83t: Add thermal sensor and thermal zones
> >   ARM: dts: sun8i-h3: Add thermal sensor and thermal zones
> >   arm64: dts: allwinner: h5: Add thermal sensor and thermal zones
> >   arm64: dts: allwinner: h6: Add thermal sensor and thermal zones
> >
> > Vasily Khoruzhick (1):
> >   arm64: dts: allwinner: a64: Add thermal sensors and thermal zones
> >
> > Yangtao Li (2):
> >   thermal: sun8i: add thermal driver for H6/H5/H3/A64/A83T/R40
> >   dt-bindings: thermal: add YAML schema for sun8i-thermal driver
> >     bindings
> >
> >  .../thermal/allwinner,sun8i-a83t-ths.yaml     | 160 +++++
> >  MAINTAINERS                                   |   8 +
> >  arch/arm/boot/dts/sun8i-a83t.dtsi             |  36 +
> >  arch/arm/boot/dts/sun8i-h3.dtsi               |  20 +
> >  arch/arm/boot/dts/sunxi-h3-h5.dtsi            |   6 +
> >  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |  42 ++
> >  arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi  |  26 +
> >  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |  33 +
> >  drivers/thermal/Kconfig                       |  14 +
> >  drivers/thermal/Makefile                      |   1 +
> >  drivers/thermal/sun8i_thermal.c               | 639 ++++++++++++++++++
> >  11 files changed, 985 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
> >  create mode 100644 drivers/thermal/sun8i_thermal.c
> >
> > --
> > 2.24.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
