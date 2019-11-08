Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A96F9F519C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 17:52:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ng7QhWi1AvdZodo1MlljBlzhEJGzHVL2PoGZ+OVbgI4=; b=Y6EU5c9+/bvZyp
	mWlYOIqlJMik6Et32CfcKd1EB60j08SJVBJrpozve0WqqqxXUBEkWJc3EJoUaidwVyvzLX4onNesu
	FhM9BTZCQBJ702X2N3ztlUzspPPamnRn5vI69aR/qAPCCqDwfu2ishcHV1AixaCl3OSTqnbRcivCl
	c9i0Fm6ATHl/FU4ZbsHZz8tWy5dnSNeqQA7XpFc3Y/NjQHY8sxOIM/7m0E6y3TyCHVAzeVv4JPuP0
	UiRV3h3OWXJetvD8sboB49GUzdU9cZHXUgyhfk9QTibqtexJnl8ZoTytXzPZCksIC28k1vsHCBh2p
	FOv4V9ThRwh5024/lvhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT7VD-0001Nt-Sn; Fri, 08 Nov 2019 16:52:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT7V2-0001NK-SF; Fri, 08 Nov 2019 16:52:42 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iT7Uy-0002QA-3f; Fri, 08 Nov 2019 17:52:36 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH v3] arm64: dts: rockchip: Split rk3399-roc-pc for with and
 without mezzanine board.
Date: Fri, 08 Nov 2019 17:52:35 +0100
Message-ID: <4421021.f1aGTiCmcP@diego>
In-Reply-To: <616df0fa-a503-1a57-12b6-43bcd674db8c@fivetechno.de>
References: <7293c5f6-a07f-cf51-954f-92907879eea2@fivetechno.de>
 <1628743.87kQKnQNn8@diego>
 <616df0fa-a503-1a57-12b6-43bcd674db8c@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_085241_060553_5BBF6428 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Markus,

Am Freitag, 8. November 2019, 16:18:39 CET schrieb Markus Reichl:
> Am 08.11.19 um 15:41 schrieb Heiko St=FCbner:
> > Am Montag, 4. November 2019, 16:22:25 CET schrieb Markus Reichl:
> >> For rk3399-roc-pc is a mezzanine board available that carries M.2 and
> >> POE interfaces. Use it with a separate dts.
> >> =

> >> ---
> >> v3: Use enum in binding and full name in compatible string and file na=
me.
> >> v2: Add new compatible string for roc-pc with mezzanine board.
> >> --
> >> =

> >> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> >> ---
> >>  .../devicetree/bindings/arm/rockchip.yaml     |   4 +-
> >>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >>  .../dts/rockchip/rk3399-roc-pc-mezzanine.dts  |  72 ++
> >>  .../arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 757 +----------------
> >>  .../boot/dts/rockchip/rk3399-roc-pc.dtsi      | 770 ++++++++++++++++++
> >>  5 files changed, 847 insertions(+), 757 deletions(-)
> >>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzani=
ne.dts
> >>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> >> =

> > =

> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm=
64/boot/dts/rockchip/rk3399-roc-pc.dts
> >> index 7e07dae33d0f..cd4195425309 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> >> @@ -4,764 +4,9 @@
> > =

> > This whole hunk fails to apply against my current branch for 5.5
> > which contain your other patches [0].
> > =

> > And the moved block is obviously so big that I can't really check
> > which part is somehow different, so I'd ask you to rebase this
> > patch accordingly, so that it applies again.
> =

> Yes, will rebase and come with v4.

Not wanting to put any pressure on you, but do you have an estimate
for this? I need to do my second (and final) round of pull requests for
v5.5, so it would of course be interesting if it's sensible to wait for
your respin ;-)

Thanks
Heiko




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
