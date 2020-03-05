Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B7017A67E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 14:37:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2hWO0bEmXA9MCGnG9KTsoiL+LztQ4dWMgLCcqL87JZA=; b=FzkYzG/c/sPvG+
	Yy+3s9ltSTrp/3z3O5V1DtXlBSYaBLRi0x5t7tWKXGGuDz8wJgo6ukICEsB5wizMlqkiMZqseZf0A
	pLNPsM4hh5WwdMM1UrIQ9FaGXh1bRd/gPQHjLOlYryqaMblRvFvN1/IILpU7F/XVt7TnjXP0Xxa7U
	9xCsYxgS1WuihPKF0U0LRWHdjtWtWE6JwULS+ydlcbwuJRRtSdQ3HaJWEiDn9NO7SIUg6s9TxlFvf
	s2HFbBIdoVOl59dhAN0Y77kVemUm8Bnfx+2/1BwpQRgJGeW7k3YVGWRBRDVb3No+oxoOWMY7HWbxE
	j4Ti+1qlEQc8zBPSH2NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9qgT-0003N9-T2; Thu, 05 Mar 2020 13:37:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9qgL-0003M4-0n
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 13:36:58 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1j9qgE-0002FX-Tj; Thu, 05 Mar 2020 14:36:50 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1j9qgE-0007e3-1O; Thu, 05 Mar 2020 14:36:50 +0100
Date: Thu, 5 Mar 2020 14:36:49 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Paul Barker <pbarker@konsulko.com>
Subject: Re: Inverted PWM output on iMX6
Message-ID: <20200305133649.bx7r7d4ntwi75qqb@pengutronix.de>
References: <20200305132232.1aced378@ub1910>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305132232.1aced378@ub1910>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_053657_064098_746469B7 
X-CRM114-Status: GOOD (  23.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Thu, Mar 05, 2020 at 01:22:32PM +0000, Paul Barker wrote:
> I recently ran into an issue using the pwm-fan driver with an inverted
> PWM output on iMX6.
> =

> The fan is defined in the device tree as follows:
> =

> 	fan0: pwm-fan {
> 		compatible =3D "pwm-fan";
> 		pwms =3D <&pwm2 0 25000 PWM_POLARITY_INVERTED>;
> 		...
> 	}
> =

> In pwm_imx27_probe() the support for a third `flags` argument in a pwm
> reference is enabled:
> =

> 	imx->chip.of_xlate =3D of_pwm_xlate_with_flags;
> 	imx->chip.of_pwm_n_cells =3D 3;
> =

> However, the flag is ignored and the output is not inverted.
> =

> By adding some prints I saw that when of_pwm_xlate_with_flags() is
> called, args->args_count is 2 instead of 3.
> =

> Looking at the definition of the pwm device itself in imx6qdl.dtsi I
> can see that the number of cells in a pwm reference is set to 2 not 3:
> =

> 	pwm2: pwm@2084000 {
> 		#pwm-cells =3D <2>;
> 		...
> 	};
> =

> That seems to be preventing a third argument from being passed.
> =

> I can change `#pwm-cells` to <3> and then everything works for my
> device but I'm not sure that is the correct solution for everyone. That
> would require all pwm references on iMX6 devices to use 3 cells. The
> code in of_pwm_xlate_with_flags() seems to be built to handle either 2
> or 3 argument cells but I can't see any way to allow this choice in the
> device tree.
> =

> If the solution is to set `#pwm-cells` to <3> I'm happy to send a patch
> which does this and updates all pwm references in device trees which
> include `imx6dql.dtsi`. Before I do that I'd like to know that it's the
> correct approach though.
> =

> For context I've confirmed this is the case in Linux 5.4 and that the
> relevant files haven't changed between that release and 5.6.0-rc4.

I think changing that is fine. However you'd have to care that all
in-tree users that rely on #pwm-cells =3D <2> are fixed accordingly.

I'd do: add #pwm-cells =3D <3> in the cpu.dtsi and then adapt all
machine.dts to add #pwm-cells =3D <2> until there are no more changes to
the generated files compared to the current state.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
