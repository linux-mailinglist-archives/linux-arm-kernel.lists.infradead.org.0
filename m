Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C004AF42A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 04:11:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ulIN8Mkd6YYqrPDeNbNqyryE0/gklGXtEUvKt9b7F1U=; b=qdw1Uf4K5uvcF5
	6+ytL3Hjuxz/ual4yE9mEjLthXj+LEKoO7X2cuNGmWp/NBkjp4WsG0FbvV1QuwZG1OuTONymgrfj3
	aNWfNV6SDUBdLbO+rikVqfLxSF1K9Q35ZC3u/Xzsse1ZAgh6TtYqSh4EWOh/MEjVdSSJG6UJFeLap
	LZNBkrzWxQjmj0C3RPR9ljgLmnvEcvtawq4c8OGqCyQELDczGCZfcO1JB72OlGdqwWpeorCCiX9F9
	aMAo1hmJiICy5PVG9sr6Wc8JKrzspqlxWKUlt515V71A9b5Su/CCnpJARGsXxAkjPFXlVSfAm/uBo
	J5ECILW0qSWPaoBFt/lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7s6o-0002Z3-RE; Wed, 11 Sep 2019 02:11:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7s6c-0002Yg-3S
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 02:11:39 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CCB02208E4;
 Wed, 11 Sep 2019 02:11:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568167897;
 bh=wN3entfb3NTWY+gXs7eCj7SlJ951/P0907ehl1l0cQo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uMxX+qvcw3H6p8YdCZDxFK4zg90W6w9CFWEv3AsyB9FSy+jsttj76wYvNuwJtuGwu
 oFS75MP9I7x5JS9i2mY4mZU3gEb75kigykTqeEi65MjbccWghLolug1hiCgIn0MqgC
 yrkRth2KTAFup4lK2vlNzVpY2BE+hWDz7DLPLkW8=
Date: Wed, 11 Sep 2019 10:11:29 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: =?iso-8859-1?Q?S=E9bastien?= Szymanski <sebastien.szymanski@armadeus.com>
Subject: Re: [PATCH v2 1/2] ARM: dts: opos6ul/opos6uldev: rework device tree
 to support i.MX6ULL
Message-ID: <20190911021127.GB13923@dragon>
References: <20190724120623.2385-1-sebastien.szymanski@armadeus.com>
 <194bd606-e4bf-d8fd-ece2-cbec1f5e025f@armadeus.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <194bd606-e4bf-d8fd-ece2-cbec1f5e025f@armadeus.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_191138_169627_FA606C9D 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 03, 2019 at 09:38:11AM +0200, S=E9bastien Szymanski wrote:
> Hello,
> =

> On 7/24/19 2:06 PM, S=E9bastien Szymanski wrote:
> > Rework the device trees of the OPOS6UL and OPOS6ULDev boards to support
> > the OPOS6UL SoM with an i.MX6ULL SoC.  The device trees are now as
> > following:
> > =

> > - imx6ul-imx6ull-opos6ul.dtsi
> >   common for both i.MX6UL and i.MX6ULL OPOS6UL SoM.
> > - imx6ul-opos6ul.dtsi
> >   for i.MX6UL OPOS6UL SoM. It includes imx6ul.dtsi and
> >   imx6ul-imx6ull-opos6ul.dtsi.
> > - imx6ull-opos6ul.dtsi
> >   for i.MX6ULL OPOS6UL SoM. It includes imx6ull.dtsi and
> >   imx6ul-imx6ull-opos6ul.dtsi.
> > =

> > - imx6ul-imx6ull-opos6uldev.dtsi
> >   OPOS6ULDev base device tree.
> > - imx6ul-opos6uldev.dts
> >   OPOS6ULDev board with an i.MX6UL OPOS6UL SoM. It includes
> >   imx6ul-opos6ul.dtsi and imx6ul-imx6ull-opos6uldevdtsi.
> > - imx6ull-opos6uldev.dts
> >   OPOS6ULDev board with an i.MX6ULL OPOS6UL SoM. It includes
> >   imx6ull-opos6ul.dtsi and imx6ul-imx6ull-opos6uldevdtsi.
> > =

> > Signed-off-by: S=E9bastien Szymanski <sebastien.szymanski@armadeus.com>
> > ---
> > =

> > Changes for v2:
> > - explain the file hierarchy in the commit log
> > - use MIT license instead of X11
> > - Change compatible properties to "armadeus,imx6{ul,ull}-opos6ul" and
> >   "armadeus,imx6{ul,ull}-opos6uldev" to follow the bindings of the
> >   Armadeus boards already supported.
> =

> gentle ping...

I missed the patches.  Sorry about that.  Just applied both.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
