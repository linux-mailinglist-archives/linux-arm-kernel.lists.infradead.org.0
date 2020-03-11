Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35303181109
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 07:47:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7lGOUCjoSDswBk7ChmwUw3GuO6uEv4z5ZLoN778gLxA=; b=HTQQeRMgaFCEYM
	KIxDVGpp9vrkIINyLwrU1xLsbgpjWVRGmGiFw8s0gkiZWcqTVpulAQYYJfWh+ZWp77pLp9dP8/bmL
	ajI8rQpsYyIoJDiOHDTxuszohQpStJtCcHG+FBnYy18Llbrqcuk2lKHu+J8nEHqN+lhAgmkVGzw0w
	FhsknPNK1dkLnTpJWZiidIUUFrPXxZvFhOtigql5a7051er1JsBKRG2oPMnXS4EFJM8qoInVJy2gi
	865oLjFgkbP/8Djj4U1E9ckgq65qPRuzl2Jt9AECzZ9B1kw2wJUKH8w1BAfy7nwPPZgjMjc6w+SFi
	WdGnHlT8/NZTr1PtulMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBv9Q-0001dE-E4; Wed, 11 Mar 2020 06:47:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBv9G-0001cv-VC
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 06:47:24 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9C0EB208C4;
 Wed, 11 Mar 2020 06:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583909242;
 bh=1L8TjFfihGshIzkEM6CmdHV+pCg3Tp027/L3pLR/vKQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HIR+j2I59UjllRewn3aytb2ic1xfJtvItX4kmzINrBJIL2HNaYJDTmk0Z5uB9UzjN
 oBAv7imfGiXpSL9J5eU5kKppn7nAQiQX5yY5f4LUqmlqJ6/ETsMV3zlkaNW5Yd1+h7
 CShax6KlT/MvlDfdfe1WoDl8087oLXsHv5kNjFIk=
Date: Wed, 11 Mar 2020 14:47:12 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Subject: Re: [PATCH v2 3/6] arm64: dts: imx8mm: add snvs clock to pwrkey
Message-ID: <20200311064711.GG29269@dragon>
References: <20200225161201.1975-1-git@andred.net>
 <20200225161201.1975-3-git@andred.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225161201.1975-3-git@andred.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_234723_025734_B00834EA 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Horia =?utf-8?Q?Geant=C4=83?= <horia.geanta@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-input@vger.kernel.org,
 Robin Gong <yibin.gong@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 04:11:58PM +0000, Andr=E9 Draszik wrote:
> On i.MX8MM, the SNVS requires a clock. This is similar to the clock
> bound to the SNVS RTC node, but if the SNVS RTC driver isn't enabled,
> then SNVS doesn't work, and as such the pwrkey driver doesn't
> work (i.e. hangs the kernel, as the clock isn't enabled).
> =

> Also see commit ec2a844ef7c1
> ("ARM: dts: imx7s: add snvs rtc clock")
> for a similar fix.
> =

> Signed-off-by: Andr=E9 Draszik <git@andred.net>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
