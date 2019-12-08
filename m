Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 611E31163F3
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Dec 2019 23:08:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BWPc39wa9AnsvYgb7CE5jGkouD0CcBpnCSbt6JzzWBk=; b=UlNun4dnYPMknm
	T9ibfBCx7PPfRk3jQdpYe7umJ0/OTR+8y6AfOKg4z4fB+nXU3OYE4a4Q8oNjGPnzkXY5mSghXbSQj
	Ov4uQPQHGOZnmdvr0ts3ykykpt2bti8JlArsavmStq4bdCSa5IBfIK7T7KDMje1wIr3vrEAqZyxtI
	NNLYarBzGonSIVzwROJ2xtZ00iG9gIdgNLy04PrmatGgyaiZTrf35EI43FCJUav5BoRawVt8Vv0LD
	FXybaSCmyWVXPxbj5STM03o2ixWYqk0+To5Z8EM01+Pp90e71Pk5vjlO5eRNocjpfPBHFYXrwjNB/
	b9ZUkpLLxBrUpAzYfAjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ie4j2-0005HW-5S; Sun, 08 Dec 2019 22:08:24 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie4iq-0005Fy-AA; Sun, 08 Dec 2019 22:08:13 +0000
Received: by mail-oi1-x243.google.com with SMTP id v140so4692002oie.0;
 Sun, 08 Dec 2019 14:08:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6LcpecxJCuptWnky/wBInRHW7dBWZyoNDO8ejqGqya4=;
 b=JiUPaF+aLz6TU175q9IIuAWCfbj1Dp34A44ajwK6wWjJuU4qAW6BB4WFznxCnlrz+m
 11aV+yzG5hho4KnFOHqZ4MdNh0vO5men3cU1qp5cZ4yKlf8NYCo/WlL3zH/9Us1l56E2
 zaiUI5IFBXi84lF7T6fkfCSTwUxRB+6DMpcPrFgw+839cVtn7VvEd/tz1YJlMGKUMrFv
 cMVvpXHbsEhI+l1VNNoyP/3w2xVFStHfFJ1IDsQzMBaQj74boPcUBmJpW+MuWdDWAp4S
 z91RVykEF70X975kRocmzBBOXgC3eOuH0yxBwNCsUrxB0bkqd2TIjaIXJztFPi8M4KID
 6zPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6LcpecxJCuptWnky/wBInRHW7dBWZyoNDO8ejqGqya4=;
 b=uaFykxfGiG5E12oMyXtvOoXLtWs/1IHPIRJOIsbR6NElyF4PRJtYfal/riu3STgjt2
 mkkwR3rw2NXb3J+5NilxtQEz/JUhqZ2F9ALCdu7RfLWk6Kd1HsrAazj1mcpEUuVAXoqA
 TZgcMw3GpUibNwt3RqpsayYltDjQjMtw5F3U+kRHq4kzXSjg+a9ToI7T2GXNGlVH4VZD
 MmP0nByy1oTSsdJoMJVo+G/0LLN28NDslSD1UlGXHPJRp2HPEgljY5xhhShLl0RntPhe
 ZvcYMEOtNkbnJRL1GjuqcTJl9koS2C+1LS1W3rS7HjObwOCvwZQ5AGVN01cBuErcEQDn
 BhNg==
X-Gm-Message-State: APjAAAWzdrNQRxs1K1KQlPjRZnrW4qe52WB4a3EDgoZpmVB5JFSaSu7a
 M7FHdhvLm5hmX0Z3Fqy2eSc0PNFW1QC0klEIEXU=
X-Google-Smtp-Source: APXvYqyhNhm0JNicy/loq8RdAT4DHahKdfAG1UNTU2pTEGoRTXZgPhgK9yLqIJ8epqm1nERlorhDJkru2+6iVkzYho0=
X-Received: by 2002:a54:401a:: with SMTP id x26mr21795889oie.15.1575842888488; 
 Sun, 08 Dec 2019 14:08:08 -0800 (PST)
MIME-Version: 1.0
References: <20191208210320.15539-1-repk@triplefau.lt>
 <20191208210320.15539-2-repk@triplefau.lt>
In-Reply-To: <20191208210320.15539-2-repk@triplefau.lt>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 8 Dec 2019 23:07:57 +0100
Message-ID: <CAFBinCA7Tnc2M=4jxYYS_RuoLnGNprUOFDrZG_G6fhQCyb3Cig@mail.gmail.com>
Subject: Re: [PATCH 1/2] clk: meson: axg: add pcie pll cml gating
To: Remi Pommarel <repk@triplefau.lt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_140812_377015_89A962F3 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>, linux-pci@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Remi,

On Sun, Dec 8, 2019 at 9:56 PM Remi Pommarel <repk@triplefau.lt> wrote:
[...]
> +static MESON_GATE(axg_pcie_pll_cml_enable, HHI_MIPI_CNTL0, 26);
we already have CLKID_PCIE_CML_EN0
do you know how this new one is related (in terms of clock hierarchy)
to the existing one?

[...]
> --- a/include/dt-bindings/clock/axg-clkc.h
> +++ b/include/dt-bindings/clock/axg-clkc.h
> @@ -72,5 +72,6 @@
>  #define CLKID_PCIE_CML_EN1                     80
>  #define CLKID_MIPI_ENABLE                      81
>  #define CLKID_GEN_CLK                          84
> +#define CLKID_PCIE_PLL_CML_ENABLE              91
this has to be a separate patch if you want the .dts patch to go into
the same cycle
the .dts change depends on this one. what we typically do is to apply
the dt-bindings patches to a separate clock branch, create an
immutable tag and then Kevin pulls that into his dt64 branch.
the clock controller changes go into a separate patch in the
clk-meson/drivers branch to avoid conflicts with other driver changes


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
