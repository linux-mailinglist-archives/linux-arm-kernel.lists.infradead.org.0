Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 855191FF4D3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 16:36:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xs9gsFMeLLINgd+yX58TIMn4tzwcdYxk5cuZOkCqhEo=; b=nrRGKGuTC4sN7+
	+eKWnGqaghWleR56FIcntnWWQTo1ExQ3mjaYjNFtwLn95hJRLvzydDiRJrLIbAJbmXNtDrNhA5B+T
	F37xf3bdOrcbmRP1pkiY4uCV5EAHsueSTRgloeKp54BHmi4VeBKf5nNl9DdkDOy8QKeMTkm7pRB7Z
	drihkgaAPZuXQvbvutPIrCfLB6kHTElQhOhEzevbuPypYYr3g6iiDJf9/Wi0qst0RkGAwYHpmQTW+
	b0u0/XFkOc+lNH2oXtmpGeick62k9Xe7lsrtbhDNxRMwX00Occ4oBYN0UtcPRSk/N92xGkDK4xYIE
	7vRAyuAlC1+XOzWhsumw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlveH-0007xJ-Vp; Thu, 18 Jun 2020 14:36:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlve7-0007wx-31
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 14:36:04 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AFAAB20773;
 Thu, 18 Jun 2020 14:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592490962;
 bh=RWb0EG4AA1t/dDxJ4cQzZzWxAFTWvxEs6/gsnf64rjQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xujRlONhy/QxHYnmfV06xqi5FAqnmqD2oMbTyj8lBGS/7aMeVmxM3fF3bFAzzkm4S
 geS+SHB1wN0GDCIlqtcFMvTXLWTqwtr5li2TbAUwtTGPN2EOlMCaLJE0MnxB7MBWus
 wH5FGntEK7KV9U9kuGgXcDOQxa/fOZR7wAZaegGs=
Date: Thu, 18 Jun 2020 22:35:57 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Daniel Baluta <daniel.baluta@gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mm-beacon: Fix voltages on LDO1 and LDO2
Message-ID: <20200618143556.GE464@dragon>
References: <20200526170939.104111-1-aford173@gmail.com>
 <CAEnQRZCv0KbVkGUoVz-Sz3XwQyFY-5KZXfLoFw6u5amxGSCVgg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEnQRZCv0KbVkGUoVz-Sz3XwQyFY-5KZXfLoFw6u5amxGSCVgg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_073603_154197_F2F85201 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Devicetree List <devicetree@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 aford@beaconembedded.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Adam Ford <aford173@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 08:43:24PM +0300, Daniel Baluta wrote:
> On Tue, May 26, 2020 at 8:11 PM Adam Ford <aford173@gmail.com> wrote:
> >
> > LDO1 and LDO2 settings are wrong and case the voltage to go above the
> > maximum level of 2.15V permitted by the SoC to 3.0V.
> >
> > This patch is based on work done on the i.MX8M Mini-EVK which utilizes
> > the same fix.
> >
> > Fixes: 593816fa2f35 ("arm64: dts: imx: Add Beacon i.MX8m-Mini development kit")
> >
> > Signed-off-by: Adam Ford <aford173@gmail.com>
> No need for a new line between fixes and signed-off-by.

I fixed it up and applied the patch.

> 
> With that:
> 
> Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

Thanks.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
