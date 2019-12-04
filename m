Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5367112A34
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 12:33:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fd06iaO4ubBU6h0vxdNMEmSurZawqEdUO4xTqPaWkF0=; b=qkda28F0gmvl87
	75tsZ5JKuPKR3t2igNRY6u6YI8hpIkeul8e7QoDeEct7+rImIddywO1rWXm0jtjMWhqRrxqByq7qF
	7aZTCuh65NOT5dE4jCXHPTSPKDtEULrlFa+8wamlyXb8mZzaZiZHYZtfiN+BJOYlkttZ1xdM04exC
	y55mVhH/pULWggwUCtQhggrllWE4ukLHEy+AqFWtEROGexe+GgsEuvwvVgiOM3LXuTxjQZzq9UwWb
	aeIJ6noFl7XJA9V5vfqCMq23MKSryJACzVfjKy0svG+Qb0sCdN/ZdgDtEyNGWh0Fq3o3jSDsZppht
	Ro5MEbYX5Nu+KwrFRyow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icSuM-0006YM-Uo; Wed, 04 Dec 2019 11:33:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icSuD-0006XC-0R
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 11:33:18 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 701C020637;
 Wed,  4 Dec 2019 11:33:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575459196;
 bh=/JHiz2KIdlsuSMIGuTWB++APfysh52tpv3cjf0DfXIs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vQFAdRPVtLGN6tVS4n8E+qoQTrGa7zC4pyb1tB2ytI54dTK+7rCiFuPKQV9vgRIS6
 +cCkba4E+ihxTkHZK8VVubQL5UGy5UWmdsE/KxjnAcjBjMudaENEODAkH7ZwYDj40S
 xw4GTwtiyRM/gEN/ZW6yEPpjWPwv2OueJTLTvCAc=
Date: Wed, 4 Dec 2019 19:33:09 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Bobby Jones <rjones@gateworks.com>
Subject: Re: [PATCH] ARM: dts: imx: ventana: add fxos8700 on gateworks boards
Message-ID: <20191204113307.GH3365@dragon>
References: <20191021205426.28825-1-rjones@gateworks.com>
 <CALAE=UAEFobA2SXOTJWAqexg+VNN_VTXGLGH+VwqqjKkuFwddg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALAE=UAEFobA2SXOTJWAqexg+VNN_VTXGLGH+VwqqjKkuFwddg@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_033317_072859_C40C9BBB 
X-CRM114-Status: GOOD (  13.90  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 11:10:19AM -0800, Bobby Jones wrote:
> Hello Shawn,
> 
> I just wanted to follow up with this and see if you had a chance to
> look at this. I submitted this after responding to Marco on my initial
> submission but haven't heard anything since and didn't want it to fall
> through the cracks. It may be worth mentioning that both the bindings
> for the fxos8700 and lsm9ds1 have been accepted by iio.
> 
> In addition to this submission I have the following that I'd like to
> check in on as well:
> 
> [PATCH] ARM: dts: imx: imx6qdl-gw553x.dtsi: add lsm9ds1 iio imu/magn support
> [PATCH] ARM: dts: imx: Add GW5907
> [PATCH] ARM: dts: imx: Add GW5912
> [PATCH] ARM: dts: imx: Add GW5913
> [PATCH] ARM: dts: imx: Add GW5910
> 
> Please let me know if there's anything I can do. Thanks!

Hmm, did you copy me on those patches?  I cannot find them in my
mailbox.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
