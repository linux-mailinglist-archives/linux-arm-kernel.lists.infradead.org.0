Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 480CB1CEDAA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 09:09:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ts0p3S1g0f+yx60resFeKx6RxbqTKT6qgX6NOHkDvIg=; b=qCKH0yl5CtsJLauqya0s71NH83
	XPDek8qy0Vnv/z6sxdSxc7RZNaQ+W60vihDeIKtrNamX86WFwurTaF4C2ZUccOJeM/aifiPqqlLCm
	yjirRCdWDbS5dMEs8CHfYUspKT452qsSsbt0AgLQP+LDRiCOjyCI+KbaKh4ngyq+toVe0H8Rdr+ok
	z6hFTwxWjDSoL6+h5VhuiAGswTy8pBt8S1ECYN2sgqSSQSH3vfbAKhuk/c0oFdp8utwkIPENnxzJG
	TlrCFPZdJ6RNlsQpVGmw4Dk/OvoNdKasbI3GGD3b/eAMQbZupOqW4zXr8+BrYkDv5ahQGZGhMjT/U
	tCVpHfDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYP2d-00040E-Qc; Tue, 12 May 2020 07:09:27 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYP2O-0003xN-Rh
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 07:09:16 +0000
Received: by mail-wm1-x344.google.com with SMTP id n5so7101637wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 00:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=ne4G1hw7iuZLuKwIvm4TOsEkgQyVcIP6lOJe9NG9OX0=;
 b=c/AU81xdLryWPyTaVh0+eW0JsKLbkkiWgEN20UkCWXLyadejFKrluqrbp8vt2dQyQX
 Q75VgyKXGQuVcsPkfs60ki1+4JY/BvC3BK38fko2EvEXHYClK1B3oLQ/brM1S/ZydJr0
 /i1t81irAJaH4BkX9o3oIZoq1eiUg5QUbtazxL/OqXBKPFrPWsIqlPNg0Db6a7wTkSji
 eaQCMIiYzTmzCVSvqYKOwTeOuWZmLBO1b0+xVhEUl0tKJtE5k2wEyl9MnbPXLAUhpLSz
 UlWsQmoTfk6f1C3So6RcyBMhQvFjTub6Ap8yp0Mk0DQDrZQgMLfsb7H1J+GrzJx99h6O
 QbAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=ne4G1hw7iuZLuKwIvm4TOsEkgQyVcIP6lOJe9NG9OX0=;
 b=pCk/Vogenom/7inFQRxB7imusyJB8CYCtLQOhqUYqVVO1Lel4wBSw/Evz6mdkVgsVw
 CaCNBGW5JiMTc/NJa5pmqFQghNfG+su8gAyCiqVOJ2wCmhrlpsJpgxx/gfRT7PqMjeZV
 WnR6pY/m2ZSTS3tjj9m6bo3WjroqkalnaQMNy9p4z2PECXXz4cWTjIFOHn4csM2o3gxi
 SRaVT5HlZqArgOeCCuGtbZ8FuE9NhWZI1oCV8Xhal5B7vOwJL9k2WPVHumN2d97qJRLO
 0cwBeEUPtkFfxRq/egfEGeyUtcE93N8wershZfj/Yjl3tpcIK7xaIJ63vG9vtpy65S5f
 rqEw==
X-Gm-Message-State: AGi0PuYutCeMqEYKgxrfMbF8dT6nHrZB/u/y1zPFPlccfpGttCbGsWk1
 EfdYtdK1jCigcq0LC54PWMEw/A==
X-Google-Smtp-Source: APiQypL3S59Ppn7G1AX6lM0+lpoyv3dcIFbr+mUAxlZbBRTqgnNBSaJUmfVNj9b+buv6l1BlzJK5vg==
X-Received: by 2002:a05:600c:2c0f:: with SMTP id
 q15mr38502498wmg.185.1589267350798; 
 Tue, 12 May 2020 00:09:10 -0700 (PDT)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id i17sm30353895wml.23.2020.05.12.00.09.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 00:09:09 -0700 (PDT)
References: <20200428210229.703309-1-martin.blumenstingl@googlemail.com>
 <20200428210229.703309-3-martin.blumenstingl@googlemail.com>
 <1jlfmdi9uw.fsf@starbuckisacylon.baylibre.com>
 <CAPDyKFoEh8qKYFONo1SHnvwhDwjUa5bMnnT1Kbu8=4rd=T-8Kg@mail.gmail.com>
 <1jh7x1i3hj.fsf@starbuckisacylon.baylibre.com>
 <CAPDyKFq_USCNNps3s4+C_1hriycrxtRMKJvnPFcP59CZmLXbGw@mail.gmail.com>
 <1j1rnygye6.fsf@starbuckisacylon.baylibre.com>
 <CAFBinCAPGwb4YKJvUSyvzSC7hpVO0z-Ju_pBWx-06QzYXc0orw@mail.gmail.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH v6 2/2] mmc: host: meson-mx-sdhc: new driver for the
 Amlogic Meson SDHC host
In-reply-to: <CAFBinCAPGwb4YKJvUSyvzSC7hpVO0z-Ju_pBWx-06QzYXc0orw@mail.gmail.com>
Date: Tue, 12 May 2020 09:09:08 +0200
Message-ID: <1j1rnpfx4b.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_000912_976249_81C1983D 
X-CRM114-Status: GOOD (  21.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: DTML <devicetree@vger.kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Jianxin Pan <jianxin.pan@amlogic.com>, Stephen Boyd <sboyd@kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 yinxin_1989@aliyun.com, Anand Moon <linux.amoon@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, lnykww@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Sun 10 May 2020 at 22:52, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> Hi Jerome,
>
> On Tue, May 5, 2020 at 6:05 PM Jerome Brunet <jbrunet@baylibre.com> wrote:
> [...]
>> > 2. Keep the existing approach, with devm_clk_get(). I am fine with
>> > this as well, we can always switch to 1) later on.
>>
>> I have a problem with this approach.
>> The dt-bindings would include "#clock-cells = <1>" for a device that
>> does not actually provide and only needs it has a temporary work around.
>> Those bindings are supposed to be stable ...
> actually I don't see a problem here because this specific MMC
> controller has a clock controller built into it.

Clock controller is a bit exagerated. It's an MMC controller with a
composite input clock and a couple of gates. A fairly common setup.

Also the property does not indicate a "clock controller" (or any number
of clock hosted by the device) but the ability to provide clocks out of
the device.

This device does not actually provide clock externally. Your provider
is just meant to be used internally. It is a work around using DT for
something missing in CCF.

IHMO, it is not such a big deal but since the binding are supposed to be
stable, I'm just pointing out that it is not great.

> Rob also didn't see any problem with this when he reviewed the dt-bindings

Again the bindings would be fine if the component was actually providing
the clocks, AFAIU.

>
>> I have proposed 2 other short term solutions, let's see how it goes
> since I was also curious how this turns out I first implemented your
> suggestion to use a similar clk_hw registration style as
> dwmac-meson8b.
> That made the code easier to read - thank you for the suggestion!
>
> On top of that I switched from clk_hw_onecell_data to directly
> accessing "clk_hw.clk".
> Unfortunately the diffstat is not as great as I hoped, it saves 21
> lines (11 in the driver code, 6 in the soc.dtsi, 5 in the dt-bindings)
> Once devm_clk_hw_get_clk() is implemented 8 lines have to be added
> again for error checking.
> I attached the patch for the drivers/mmc/host/meson-mx-sdhc* parts if
> you are curious (it'll apply only on top of my github branch, not on
> this series).

Diffstat was not my concern, TBH

>
> Please let me know if you want me to submit an updated series where I
> directly access "clk_hw.clk"

I'd be happy if you did

> to get the "struct clk" or if I should
> keep clk_hw_onecell_data.
> If it's the former then I'll also add a TODO comment for the
> conversion to devm_clk_hw_get_clk() so it's easy to find.
>

Perfect !

>
> Regards,
> Martin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
