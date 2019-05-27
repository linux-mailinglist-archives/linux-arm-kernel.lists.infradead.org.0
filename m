Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 185A22B6EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wl2HT2B6jS3Zx67be8lDkcI4JHb6u4GA41wOGAusGQA=; b=O8JHF5ltiKTgsy
	hIgqLO4KW8SgSVjU7i1nn72WFnVSFAWvsUqmV0FfPRjcFTQtakxLVnnJPhZX26txq+enmUR2W7qMd
	H2g5tLOK8GzCMe+APCtkEg4oGosqFJvxg/4vQ48INlsXVvXcPNn+H1DN9UJ/419pA72DnhhR2HwiH
	XQZ8jPkXqPWO7u9btshb63HqzMPTXuM05HnFmwAumwhpVifHcGgZuN3uAX7EYIOTQK71caXLj/Ege
	c4CZs4om50b/tFA2I5eWuzAHfY3HrIBA3k1UIwwZht9BvfVnD0A+omjI/7ujoQ62dbvuMziw4OZEz
	TyvvgPWR/eiqAibqF0KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFz7-0002qB-F9; Mon, 27 May 2019 13:48:17 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFyz-0002pP-Nq
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:48:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1558964885; bh=ustEk4EO9XCG6FHJLRsAPk5OCbRSi/9z1v7hcR+OOgc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=edC5Jqk9FcWLFnpa3bcokUCDAFQwsb+TpIDCCYGdhgfUh1W7oU5Bn2z9Q0GL+F8Kt
 42vTLM8E5qQffspMvcPk6PzjMvdtXIcbSRfGRYIdLtoGA+RizEVkzZa4TRt/L3mxxf
 AJPIdPH7zJyf/4FtMpBuLG2nnV9lRFhnELYl4BC8=
Date: Mon, 27 May 2019 15:48:05 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v2 00/10] Allwinner A64/H6 IR support
Message-ID: <20190527134805.j7t4ffstrnhdml47@core.my.home>
Mail-Followup-To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
References: <20190526222536.10917-1-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190526222536.10917-1-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_064810_279734_8A25B396 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Cl=E9ment,

On Mon, May 27, 2019 at 12:25:26AM +0200, Cl=E9ment P=E9ron wrote:
> Hi,
> =

> A64 IR support series[1] pointed out that an A31 bindings should be
> introduced.
> =

> This series introduce the A31 compatible bindings, then switch it on
> the already existing board.
> =

> Finally introduce A64 and H6 support.

Does H6 support actually work? I don't see any driver changes and last time
I tried with the exact same bindings, I got RCU stalls shortly after boot.

Enabling/disabling ir node was enough to trigger/stop the RCU stalls on H6.

regards,
	o.

> Regards,
> Cl=E9ment
> =

> [1] https://lore.kernel.org/patchwork/patch/1031390/#1221464
> =

> Changes since v1:
>  - Document reset lines as required since A31
>  - Explain the memory mapping difference in commit log
>  - Fix misspelling "Allwiner" to "Allwinner"
> =

> Cl=E9ment P=E9ron (8):
>   dt-bindings: media: sunxi-ir: add A31 compatible
>   media: rc: sunxi: Add A31 compatible
>   ARM: dts: sunxi: prefer A31 instead of A13 for ir
>   dt-bindings: media: sunxi-ir: Add A64 compatible
>   dt-bindings: media: sunxi-ir: Add H6 compatible
>   arm64: dts: allwinner: h6: Add IR receiver node
>   arm64: dts: allwinner: h6: Enable IR on H6 boards
>   arm64: defconfig: enable IR SUNXI option
> =

> Igors Makejevs (1):
>   arm64: dts: allwinner: a64: Add IR node
> =

> Jernej Skrabec (1):
>   arm64: dts: allwinner: a64: Enable IR on Orange Pi Win
> =

>  .../devicetree/bindings/media/sunxi-ir.txt    | 11 +++++++++--
>  arch/arm/boot/dts/sun6i-a31.dtsi              |  2 +-
>  arch/arm/boot/dts/sun8i-a83t.dtsi             |  2 +-
>  arch/arm/boot/dts/sun9i-a80.dtsi              |  2 +-
>  arch/arm/boot/dts/sunxi-h3-h5.dtsi            |  2 +-
>  .../dts/allwinner/sun50i-a64-orangepi-win.dts |  4 ++++
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 18 ++++++++++++++++++
>  .../dts/allwinner/sun50i-h6-beelink-gs1.dts   |  4 ++++
>  .../dts/allwinner/sun50i-h6-orangepi.dtsi     |  4 ++++
>  .../boot/dts/allwinner/sun50i-h6-pine-h64.dts |  4 ++++
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  | 19 +++++++++++++++++++
>  arch/arm64/configs/defconfig                  |  1 +
>  drivers/media/rc/sunxi-cir.c                  |  1 +
>  13 files changed, 68 insertions(+), 6 deletions(-)
> =

> -- =

> 2.20.1
> =

> =

> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
