Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 481A9AC5DD
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 11:25:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vG1UxnMm6Tfl/FCskC1naa11Dh9OQSHEdxgbxK9/z+I=; b=FArM61ss2C9yM6
	jEVq1pBY1HHSWBASGopLBpQd7fhF5XMKrLCN2a5RKOtYNBdXPIF+I2XAZl+8+SlUmMvA1GCptmQH/
	MzdmVPjIC+8KnMpLmnzyyTrGV3pZCOvkHl+HkBLKykrZp/bYkLHGp0mtK2M6ZGaciuPlAai+q9d8w
	8upbglIS3CxoHDP9jLPnXkV2lmrDwgU/bqkydV0+XWzmN/oe88BOWivlfNDSdB2CLhzOPF3q+2A8Z
	1amkJBi2MaUd6sexLN/oQVm7B2KIcI8ER7YDeGOH4qRDygNyR0CU9uzP/l5l0FQAptbKmlY+kQzjZ
	QTv5VzA4nS9fBfZbkwMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Wy7-0005hy-Rg; Sat, 07 Sep 2019 09:25:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6WvB-0003aa-DB
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 09:22:19 +0000
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BDF1121A4C
 for <linux-arm-kernel@lists.infradead.org>;
 Sat,  7 Sep 2019 09:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567848137;
 bh=fBxqwyXRgG0wRFfx6cCxY4NmxXwIILcA5XjIypH7uu0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=zlt5xhpjzApIWNI0gaW5dXnJE36f4x6ZxAlNBjEMz8N0zlqPrJsWJNfiU3dVG7nzu
 9SfXcDgvJMKWRPH5MJCJQGIakV8asCCscRsV7JOKfUpMlTXiIel38w92mwwilaeagH
 WA17Qenz/0v1sTheTNRpTvsItNdVbT5GsnEeSsV8=
Received: by mail-lf1-f50.google.com with SMTP id l11so6940462lfk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Sep 2019 02:22:16 -0700 (PDT)
X-Gm-Message-State: APjAAAVnj4WOXkKCR+tZX8Na1EaQEDTL4BJz1dlKrKzd+lbo4eo90Sf7
 DY4Zh6Je++Hwkvi86YSDRnbBLssM47lql60iAiw=
X-Google-Smtp-Source: APXvYqzmcslfK41HV4+HPxQdPrd5x829CWIRSwqYXaJYvVNobPvFr0tb37FSkJUy6tzZ75dlNx+LflPaZcO8QXTsVY4=
X-Received: by 2002:a19:7d55:: with SMTP id y82mr9373225lfc.106.1567848134943; 
 Sat, 07 Sep 2019 02:22:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190823145356.6341-1-krzk@kernel.org>
 <20190823145356.6341-5-krzk@kernel.org>
 <CAL_JsqJybT41cEqiTriLMywUQj1BtAG_9muJ4=84OkF23y53CA@mail.gmail.com>
 <CAJKOXPc0SY_8BHMsWLN=1M3VQh41+bdBiH21L4KQPA+iLPYy+A@mail.gmail.com>
 <CAL_JsqKdsABWK9Og_f38T9zf3SCFFdhU8WOJ4uJjREantoYvYQ@mail.gmail.com>
 <CAJKOXPfnvu=c5f6AcOSiQ_9E-C2fMf9qbEpy1Tr3QvH8LgAtpQ@mail.gmail.com>
 <CAL_JsqKyj3s-Mn3q_Lna0w38K3DJzvKN5d72WHzqt4CUVf5X4Q@mail.gmail.com>
In-Reply-To: <CAL_JsqKyj3s-Mn3q_Lna0w38K3DJzvKN5d72WHzqt4CUVf5X4Q@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Sat, 7 Sep 2019 11:22:03 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfg4p1CAbXeF1++b7+OaR99RdeJGrkbusisNKNywoNHHg@mail.gmail.com>
Message-ID: <CAJKOXPfg4p1CAbXeF1++b7+OaR99RdeJGrkbusisNKNywoNHHg@mail.gmail.com>
Subject: Re: [RFC 5/9] dt-bindings: arm: samsung: Convert Exynos PMU bindings
 to json-schema
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_022217_610517_05F8D4E6 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Arnd Bergmann <arnd@arndb.de>,
 devicetree@vger.kernel.org,
 "open list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tomasz.figa@gmail.com>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Olof Johansson <olof@lixom.net>,
 "open list:REAL TIME CLOCK \(RTC\) SUBSYSTEM" <linux-rtc@vger.kernel.org>,
 notify@kernel.org, Jonathan Cameron <jic23@kernel.org>,
 =?UTF-8?Q?Pawe=C5=82_Chmiel?= <pawel.mikolaj.chmiel@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 6 Sep 2019 at 17:49, Rob Herring <robh+dt@kernel.org> wrote:
> >
> > The bindings never required any specific ordering. Also the driver
> > just go through all indices and parses them.
> >
> > Your second syntax fails:
> > Documentation/devicetree/bindings/arm/samsung/pmu.yaml:
> > properties:clock-names:items: {'enum': ['clkout0', 'clkout1',
> > 'clkout2', 'clkout3', 'clkout4', 'clkout5', 'clkout6', 'clkout7',
> > 'clkout8', 'clkout9', 'clkout10', 'clkout11', 'clkout12', 'clkout13',
> > 'clkout14', 'clkout15', 'clkout16']} is not of type 'array'
>
> Update dt-schema and try again. It should be allowed now. You'll also
> need to define minItems and maxItems though.

Thanks, works!

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
