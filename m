Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 057BD78E38
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 16:40:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z80cHMVZUroTRHKxvpOwIu7iIANYNuUZOrz38vh4tkk=; b=OO6NIt+wkLtdeK
	Ydf6H7cb800q/qkJTbm89WIJ/iLUkwodDW3LnYwUWl2bL36z9jo0XEhWY2ThyaauzPDdqOS2UjniF
	eAdPhFyELI8DUO+/cgFJ6Vuyn3kgsjtzJ0h386G1s6gwtvDw7spLvTYgnuT0uDdeRG3uCsusbP3eY
	0G9kQdUkgKRcIBHHN+XrHpWUXV8LOSxjnd3E/P82NpveXqZunhnOpilPGZjREPUGfRceQxuPc6S9+
	yISZupMVZlJnSfSwgLwPItifsx9Vkzjd/7d47N7fdiYt+fwDBN7LiBLLOaQQ0yG2zW7GBoxUK1qy1
	5TvL0iDd9vuTOX8oTaHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs6ot-0001SZ-7G; Mon, 29 Jul 2019 14:40:11 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs6oc-00017r-Gh
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 14:39:55 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 366BB20049;
 Mon, 29 Jul 2019 16:37:50 +0200 (CEST)
Date: Mon, 29 Jul 2019 16:37:49 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 1/1] drm: mxsfb: add i.MX6UL in Kconfig
Message-ID: <20190729143749.GB16927@ravnborg.org>
References: <20190729141349.28465-1-sebastien.szymanski@armadeus.com>
 <CAOMZO5CFqQEdqgwyHZ2E2F22QDgG8SUjBM0y4Y6qyn8Tqo4O0g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5CFqQEdqgwyHZ2E2F22QDgG8SUjBM0y4Y6qyn8Tqo4O0g@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=dqr19Wo4 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=8nJEP1OIZ-IA:10 a=k4gcJ1N8AAAA:8
 a=DC0Yf-lEFtUxtSPTF2MA:9 a=wPNLvfGTeEIA:10 a=0EuUHwVWM4Mljrm1lpjw:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_073954_733306_8D34AFCF 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marek Vasut <marex@denx.de>, David Airlie <airlied@linux.ie>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Julien BOIBESSOT <julien.boibessot@armadeus.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi S=E9bastien,
On Mon, Jul 29, 2019 at 11:27:37AM -0300, Fabio Estevam wrote:
> Hi S=E9bastien,
> =

> On Mon, Jul 29, 2019 at 11:14 AM S=E9bastien Szymanski
> <sebastien.szymanski@armadeus.com> wrote:
> =

> >  config DRM_MXSFB
> > -       tristate "i.MX23/i.MX28/i.MX6SX MXSFB LCD controller"
> > +       tristate "i.MX23/i.MX28/i.MX6SX/i.MX6UL MXSFB LCD controller"
> =

> This IP is also found on i.MX6SL, i.MX7D, i.MX7S, i.MX8M, i.MX8QXP, etc
> =

> I think it would be better if we do not keep increasing the list of
> supported SoCs in the Kconfig text.

Could we throw a COMPILE_TEST in the mix so we get better build
coverage too?

	Sam


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
