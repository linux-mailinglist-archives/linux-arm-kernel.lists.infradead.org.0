Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53777E6C88
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 07:50:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=evejnF5/8sEn70xymCtRsVFXAN1IXeyfNF4H21ujMAE=; b=T7+gGFT3o//62K
	cGYjF9av1wE0iDlUs193I6orAPbFyfM8ACx2/yfsCPVSpF4cet2rZOe889TljkpbNoq7QqcpkWHsC
	D76wT/njRH8n8BaeCFE28UhWcwquA54d4ONZkYqxRQoPBw0egNMLAZsy1m9Wagnnd9xFuY+2GIILW
	HJkns+9N0sCXQl0UbsL7nwJsR/KHwzXvEFTj1lERdcpjIahZdJ07IyuJcbjlVPBII3MYbLWPoBXuH
	QLvUxkZ2nrf8pe6exi/rBNTjXgY8mfeBHHRG+5Q3wTm8zHESUnzxBert99Ejo8+pfHOOhS4Xo/XIp
	QQOGFIHDFCzZeUQfYO0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOyr1-0003ZT-1o; Mon, 28 Oct 2019 06:50:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOyqj-0003Yr-RC
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 06:49:59 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BDA9620873;
 Mon, 28 Oct 2019 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572245397;
 bh=hE8YrV90OgDfQQtk53yvsfWOnB4/UfgpeGSzKX0bxoE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ITc4HThObbBHQq5pgmMs/87ilJLSD8BO1zEJ/ZyV+nNOdrzQoy7PPFQt0l6gBev9f
 gW0QHRRGB6zpwoqoVyGkP+Z9OMhFLlsYZMsdYbgZMBL05RBA1hApCDB9sZRXcs4pBI
 J7S/NyeYnqIPp3CNruTaEiveIBmczV3n8WPe2Who=
Date: Mon, 28 Oct 2019 14:49:37 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 1/9] ARM: dts: imx6qdl-{apf6,apf6dev}: switch boards to
 SPDX identifier
Message-ID: <20191028064936.GQ16985@dragon>
References: <20191022131655.25737-1-sebastien.szymanski@armadeus.com>
 <20191022131655.25737-2-sebastien.szymanski@armadeus.com>
 <CAOMZO5Bnb-Jd_XkMxdcMFRkmMzcVVikV_6+Ug=Rz6iDa5QZ_yw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5Bnb-Jd_XkMxdcMFRkmMzcVVikV_6+Ug=Rz6iDa5QZ_yw@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_234957_906130_A915F291 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Julien Boibessot <julien.boibessot@armadeus.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 05:38:22PM -0300, Fabio Estevam wrote:
> Hi S=E9bastien,
> =

> On Tue, Oct 22, 2019 at 10:17 AM S=E9bastien Szymanski
> <sebastien.szymanski@armadeus.com> wrote:
> =

> > - *  a) This file is free software; you can redistribute it and/or
> > - *     modify it under the terms of the GNU General Public License as
> > - *     published by the Free Software Foundation; either version 2 of
> > - *     the License, or (at your option) any later version.
> =

> > - */
> > +// SPDX-License-Identifier: GPL-2.0 OR MIT
> =

> The original license said "either version 2 of the License, or (at
> your option) any later version."
> =

> So you should use:
> =

> // SPDX-License-Identifier: GPL-2.0+ OR MIT

I fixed it up and applied the series.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
