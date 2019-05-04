Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5A81384F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 10:39:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OIizcf64qLAjq+ctxx+NpCxcqFLpdma0p8vLrodcDSQ=; b=mplw96+SVlGdT+
	Mgj7HlbtLPTB96pZBW3hMQvQcufWysV0QvgQwyV9+SUS7Uj5YU9mk8vfkbopznglFzETvYpRH7Frj
	zikpRcTME+zTWYdPMKWHu/i/9Hwu6bbkIC07VDv1bAmzIwIfM3KraOCJM9IDAAX9SWwDI5zPjTbX3
	P5a5Q/lwuO3n8fvhsoDPJsT6JItuvIEsdEZnD/gAWnTx8kpn6CfTyECDbhzNnM3bFwGpCUfd/OWjt
	oFC24JF1914e5R7nTwDSbZvi/xFxVV6CqvKiw3v37q/sgbbWSqe8RPPWiBII/AyKeW3iNHkzjSRwX
	WfNV10JP7bRJ3caFCTyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMqCz-0006gd-VE; Sat, 04 May 2019 08:39:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMqCt-0006gH-9N
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 08:39:44 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C88AF206DF;
 Sat,  4 May 2019 08:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556959182;
 bh=xLvsu2hAr3Y29FzWk88CnKG2+9X0/zGnUveV/qMfDSM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zNM1DrwCHt9ZcysMiov6a3SJv/luy9stPrja83Xc0kBuj4l0ao5VyvQBoUfGDPYJK
 juDhwGTSPYua0AhLoxWC73N7WM1X+BEGmvlZ94cgxLsXncCBEJ+I7fZOMn/ChOEQzf
 jHEII3m+xtqE0MDYUFkvXCM6vAIkbJvrUua48iOI=
Date: Sat, 4 May 2019 10:39:39 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Bryan O'Donoghue <pure.logic@nexus-software.ie>
Subject: Re: [RESEND PATCH v6 0/5] Add i.MX8MM OCOTP support
Message-ID: <20190504083939.GA1859@kroah.com>
References: <20190503165342.30139-1-pure.logic@nexus-software.ie>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503165342.30139-1-pure.logic@nexus-software.ie>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_013943_353088_6326FE11 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
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

On Fri, May 03, 2019 at 05:53:37PM +0100, Bryan O'Donoghue wrote:
> V6 RESEND:
> - Adding Greg to sender list. Greg looks like you are the right person to
>   apply this.

$ ./scripts/get_maintainer.pl --file drivers/nvmem/imx-ocotp.c
Srinivas Kandagatla <srinivas.kandagatla@linaro.org> (maintainer:NVMEM FRAMEWORK)
Shawn Guo <shawnguo@kernel.org> (maintainer:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
Sascha Hauer <s.hauer@pengutronix.de> (maintainer:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
Pengutronix Kernel Team <kernel@pengutronix.de> (reviewer:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
Fabio Estevam <festevam@gmail.com> (reviewer:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
NXP Linux Team <linux-imx@nxp.com> (reviewer:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
linux-arm-kernel@lists.infradead.org (moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
linux-kernel@vger.kernel.org (open list)


Why me???


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
