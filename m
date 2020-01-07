Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5822132D5D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 18:46:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4dKsnvwb6X3PiH1vt3C0AWJjWzYdmOeuve09EAAvYjM=; b=kWSBqKO0swyZTs
	vv8qj/jdtfwijegaBsbvdlnUzoUbCAOaGNVu75eVO8UjzErDw6udpriAjmrCS61uHjcFet9afxFGr
	03eLTPWYDou0TsxlubLxKGVw88EppuKLZyoPth0zDIRyGGeFj3bshYN3FLqjvywBh4nTY/Rr0QgnL
	rQKKuqqL2jJme+gS72orYrlwk6F/1JVbU6dJRb0QsfPh+ZenZ1fiFcV6LYM5zYImHL87K7m8QEG79
	XUdnzwLhwPtplASjry2iIz+bv/kJ7r/lID5yqYN3beidsfZDDM+jGpMnrdsYswK19V7faOU/BQzOp
	r9i4tty5tQLSK396+VgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iosvW-000614-WA; Tue, 07 Jan 2020 17:45:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iosvN-00060c-Ga
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 17:45:51 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B25102081E;
 Tue,  7 Jan 2020 17:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578419149;
 bh=PogBCs252q4wb6OOumVr05KLsm+Fdz6RVqZBul2qrtQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kbI+F1PdPXANyDqupC3KhyiN/Bs+bvHh6h0tDe8zGJ3b5+TMjjrQx95gBCOJHoYCf
 QrHrLV/eDCZ7sfO+DgqyoxJvDucmgRcFkF8mlSylcYx1L+MJYOMxU0CVWbl/0kD7DY
 SOnmQwyM75ECq8fPo8uZ4r3X2bOwxrG+9OERliMg=
Date: Tue, 7 Jan 2020 18:45:46 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: =?iso-8859-1?Q?S=E9bastien?= Szymanski <sebastien.szymanski@armadeus.com>
Subject: Re: [PATCH AUTOSEL 4.19 102/177] nvmem: imx-ocotp: reset error
 status on probe
Message-ID: <20200107174546.GB2011915@kroah.com>
References: <20191210213221.11921-1-sashal@kernel.org>
 <20191210213221.11921-102-sashal@kernel.org>
 <dd048e02-81f7-8aed-34a7-f95a70859391@armadeus.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dd048e02-81f7-8aed-34a7-f95a70859391@armadeus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_094549_570684_E3F96752 
X-CRM114-Status: GOOD (  18.98  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 07, 2020 at 03:50:59PM +0100, S=E9bastien Szymanski wrote:
> On 12/10/19 10:31 PM, Sasha Levin wrote:
> > From: Lucas Stach <l.stach@pengutronix.de>
> > =

> > [ Upstream commit c33c585f1b3a99d53920bdac614aca461d8db06f ]
> > =

> > If software running before the OCOTP driver is loaded left the
> > controller with the error status pending, the driver will never
> > be able to complete the read timing setup. Reset the error status
> > on probe to make sure the controller is in usable state.
> > =

> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> > Link: https://lore.kernel.org/r/20191029114240.14905-6-srinivas.kandaga=
tla@linaro.org
> > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Signed-off-by: Sasha Levin <sashal@kernel.org>
> > ---
> >  drivers/nvmem/imx-ocotp.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> > =

> > diff --git a/drivers/nvmem/imx-ocotp.c b/drivers/nvmem/imx-ocotp.c
> > index afb429a417fe0..926d9cc080cf4 100644
> > --- a/drivers/nvmem/imx-ocotp.c
> > +++ b/drivers/nvmem/imx-ocotp.c
> > @@ -466,6 +466,10 @@ static int imx_ocotp_probe(struct platform_device =
*pdev)
> >  	if (IS_ERR(priv->clk))
> >  		return PTR_ERR(priv->clk);
> >  =

> > +	clk_prepare_enable(priv->clk);
> > +	imx_ocotp_clr_err_if_set(priv->base);
> > +	clk_disable_unprepare(priv->clk);
> > +
> >  	priv->params =3D of_device_get_match_data(&pdev->dev);
> >  	imx_ocotp_nvmem_config.size =3D 4 * priv->params->nregs;
> >  	imx_ocotp_nvmem_config.dev =3D dev;
> > =

> =

> Hi,
> =

> This patch makes kernel 4.19.{92,93} hang at boot on my i.MX6ULL based
> board. It hanks at
> =

> [    3.730078] cpu cpu0: Linked as a consumer to regulator.2
> [    3.737760] cpu cpu0: Linked as a consumer to regulator.3
> =

> Full boot log is here: https://pastebin.com/TS8EFxkr
> =

> The config is imx_v6_v7_defconfig.
> =

> Reverting it makes the kernels boot again.

Does this also cause problems in 5.4.7 and newer?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
