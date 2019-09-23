Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD411BBD51
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 22:50:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hi/4VUirPIEgoPtVU5udCJZayeOSH4i7d5EJ1TigQfE=; b=bi9B9xHrF/8zxl
	8gbFUd5ilAetMH0tuC+06/+ZkviejQhk+gwLS8jAcsgZhxKtIxfHeYPYHKbUscfpvthgBADlMmZ2l
	jjZcZFINeAzt21j5ThZwOn/seYwCyRKfGXaFBG4wFmc35NHIskjS5+WeYKUcjAOmlVdhb13YUF+1t
	X5NF4n1Q9Kf2ol6z+4MuTJ/XDaSfddf9cCC4CZChCkWL4hQiX60OSpHH/pjVRY3hOe5LDkK/Yj8ah
	mpsq5y3OtGN2tfJbwfKmlrEz3wk5JQtFGdiJj4jgJ/xityn2zOUvkKY+DSZDhDO2CmiBwy/UyrQDf
	ruOuZTFr7DmiXKBcgYiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCVHa-00041O-F9; Mon, 23 Sep 2019 20:50:06 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCVHK-0003za-Oh; Mon, 23 Sep 2019 20:49:52 +0000
Received: by mail-ot1-x342.google.com with SMTP id k32so13406146otc.4;
 Mon, 23 Sep 2019 13:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MAD3Xg1lcz/vWNfKOXbNQkNK8JcAqagoLevWw8c1H8w=;
 b=Uc1rJg9EHlGwJNJeN6soMEoo/3M+ZsjMSxAMCVEA+f9rOyJvTLPXhHKYXJwgIcEzBr
 e+3CndfndOMezv1Ptw3MLfFegfdCU9l142+6xMNb6yc4r537qDyguMUGRJy+2tVBa8tR
 F3znac2BBuFbLhadIwE1d+eNekHVycr0brsa51/cTtZc6+gj6CyZzfwmL64hoJreYrbK
 BNsn+vt4zqHzlSpK9FPzf9skcHsynz8YunjI1ogBbKbkLYBspiO7cYeF+/GORadBkgQs
 BoXGJUuzpml3+FLUCkphSuXEpIZ0v82lo8jO+mArHKkjDH3EoiOUfBwEJn5ZHqf0JXAZ
 jGjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MAD3Xg1lcz/vWNfKOXbNQkNK8JcAqagoLevWw8c1H8w=;
 b=k2vKxFePKV1OJVY5o82v5IQhRKWvMBqA3D+cA8f532wY2kPx50lT/NYxR0pCtmw8a+
 BFacWZlS1wbMKFpxA5iyAc1HRqyKSdmSgqpRR2zozNLhgxKcdpK1WJgUqMTZJBV+4rMt
 9Fza6mfFxvXriOXa8vjYGedSbU74J8w1nrL7arlm9KMgmiXeW7qLC4lNgX7BrfLLXLXi
 vRILKFA3wVxtVNYb6WyMN+RjSO9TnUBYWTUdKL7s3jXmGwmzbOXtGxAMq2tVC0Oxos4U
 j43O1vttOEE12BcA86ZTCEaVQo4961AtmaR+HYGJBuZX9ylYPRfC8kRw9P+6H2z42DwZ
 xYBQ==
X-Gm-Message-State: APjAAAWgvpvIVDRUaxha1lvJSrLqsDKVHX34M1auN6uHzCC9TCyEDHlp
 Zc5XIKaNqS+ohDyA+gKv0ly492u5V0aAMoFzKzA=
X-Google-Smtp-Source: APXvYqxg9tfZ17T4nhNMMZMbP5FnSoEzZH0Yj/hpHqWL0Dt5cVhCyLOpWwrFdj59nZDuupSIBtRiMaKO4g+TxYTiSnw=
X-Received: by 2002:a9d:7d17:: with SMTP id v23mr161527otn.81.1569271789175;
 Mon, 23 Sep 2019 13:49:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190921151835.770263-1-martin.blumenstingl@googlemail.com>
 <1jsgons4wy.fsf@starbuckisacylon.baylibre.com>
In-Reply-To: <1jsgons4wy.fsf@starbuckisacylon.baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 23 Sep 2019 22:49:37 +0200
Message-ID: <CAFBinCAHD+D=a2mHeHMGq12MvoksHBr308jSrdcH+UYsUmwd8w@mail.gmail.com>
Subject: Re: [PATCH 0/6] add the DDR clock controller on Meson8 and Meson8b
To: Jerome Brunet <jbrunet@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_134950_832933_DB413C05 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jerome,

On Mon, Sep 23, 2019 at 12:06 PM Jerome Brunet <jbrunet@baylibre.com> wrote:
>
> On Sat 21 Sep 2019 at 17:18, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:
>
> > Meson8 and Meson8b SoCs embed a DDR clock controller in their MMCBUS
> > registers. This series:
> > - adds support for this DDR clock controller (patches 0 and 1)
> > - wires up the DDR PLL as input for two audio clocks (patches 2 and 3)
>
> Have you been able to validate somehow that DDR rate calculated by CCF
> is the actual rate that gets to the audio clocks ?
no, I haven't been able to validate this (yet)

> While I understand the interest for completeness, I suspect the having
> the DDR clock as an audio parent was just for debugging purpose. IOW,
> I'm not sure if adding this parent is useful to an actual audio use
> case. As far as audio would be concerned, I think we are better of
> without this parent.
there at least three other (potential) consumers of the ddr_pll clocks
on the 32-bit SoCs:
- CPU clock mux [0]
- clk81 mux [1]
- USB PHY [2]

I have not validated any of these either

> > - adds the DDR clock controller to meson8.dtsi and meson8b.dtsi
> >
>
> Could you please separate the driver and DT series in the future ? Those
> take different paths and are meant for different maintainers.
sure - so far Kevin has been doing a great job of still tracking these
but I'm happy to split this into two patchsets


Martin


[0] https://github.com/endlessm/u-boot-meson/blob/345ee7eb02903f5ecb1173ffb2cd36666e44ebed/board/amlogic/m8b_m201_v1/firmware/timming.c#L441
[1] https://github.com/endlessm/u-boot-meson/blob/345ee7eb02903f5ecb1173ffb2cd36666e44ebed/board/amlogic/m8b_m201_v1/firmware/timming.c#L452
[2] https://github.com/endlessm/u-boot-meson/blob/f1ee03e3f7547d03e1478cc1fc967a9e5a121d92/arch/arm/cpu/aml_meson/m8/firmware/usb_boot/platform.c#L22

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
