Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA04B13AFC
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 17:34:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dcBKyXla5IsDgLQ3/yOnMPQT+YLjeuhHzYI8lPdzTBg=; b=pGcNsPbxLzewCW
	YPwX71owUP1z8ghXHXqXnUwFurFngvFJU0ZsH8tUBMtsV+3jOWCeOjcmTnj1a0JJ4A/2o70jXX5vY
	WLe5NKbIACGMPJmqUh3QwjLIZ1ioVvlGnoUSImsWeq5OtvU2GCQ6XuH9oAXCuD+bG3Ao6WBWVS5o1
	2HILyGY2JFdBE9UIUqoJTKGIKT0IskmA+27L0n1dNkWJ5wT5CWryKUdLGRIzCVCueJ1VKY56erluj
	OQGwUh4ZeVXcHWMKX/YDUQPY0sCFzV3Yxx1JjSWSI1JOGh9fOxGJ4HIXLMEilgft9/M2NemNdn+y8
	sQVvGz4LNCht/3giSKWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMwg1-0003VR-G4; Sat, 04 May 2019 15:34:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMwfu-0003V2-S7
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 15:34:08 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8943B20644;
 Sat,  4 May 2019 15:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556984046;
 bh=agsAwtVsIz38/b3nNvthW5T/+SquGa1yYvuAfPCINwU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D50Ej+DeZapXpNfc+9EqPjuJJNMjMbAkTVpETMwbCTVSdPyfsbElAZmofjmUFs47L
 yQE/+81IZRvxBaw1vusPB7AvNVE6GmEflAF+vuRnIVyFLP7MKn/5vGgzBh4ReMEFsP
 OXfLg3N4q7aNmu+qRdYr7Rgd4/xjWAwWPFPph6OA=
Date: Sat, 4 May 2019 17:34:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Bryan O'Donoghue <pure.logic@nexus-software.ie>
Subject: Re: [RESEND PATCH v6 0/5] Add i.MX8MM OCOTP support
Message-ID: <20190504153403.GA19654@kroah.com>
References: <20190503165342.30139-1-pure.logic@nexus-software.ie>
 <20190504083939.GA1859@kroah.com>
 <d67c692d-9e4f-9d08-12bc-ab3644fbaa8c@nexus-software.ie>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d67c692d-9e4f-9d08-12bc-ab3644fbaa8c@nexus-software.ie>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_083406_930526_4EF53B3A 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devel@driverdev.osuosl.org, aisheng.dong@nxp.com, peng.fan@nxp.com,
 abel.vesa@nxp.com, anson.huang@nxp.com, srinivas.kandagatla@linaro.org,
 linux-imx@nxp.com, kernel@pengutronix.de, fabio.estevam@nxp.com,
 leonard.crestez@nxp.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 04, 2019 at 03:49:05PM +0100, Bryan O'Donoghue wrote:
> On 04/05/2019 09:39, Greg KH wrote:
> > On Fri, May 03, 2019 at 05:53:37PM +0100, Bryan O'Donoghue wrote:
> > > V6 RESEND:
> > > - Adding Greg to sender list. Greg looks like you are the right person to
> > >    apply this.
> > 
> > $ ./scripts/get_maintainer.pl --file drivers/nvmem/imx-ocotp.c
> > Srinivas Kandagatla <srinivas.kandagatla@linaro.org> (maintainer:NVMEM FRAMEWORK)
> > Shawn Guo <shawnguo@kernel.org> (maintainer:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
> > Sascha Hauer <s.hauer@pengutronix.de> (maintainer:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
> > Pengutronix Kernel Team <kernel@pengutronix.de> (reviewer:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
> > Fabio Estevam <festevam@gmail.com> (reviewer:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
> > NXP Linux Team <linux-imx@nxp.com> (reviewer:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
> > linux-arm-kernel@lists.infradead.org (moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
> > linux-kernel@vger.kernel.org (open list)
> > 
> > 
> > Why me???
> > 
> 
> Looked like you were doing the merges to me.

I might do merges, but that does not mean I do the initial
review/acceptance of the patches.  That's up to the real maintainer of
the driver/subsystem.  I do not circumvent them unless something really
odd happens.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
