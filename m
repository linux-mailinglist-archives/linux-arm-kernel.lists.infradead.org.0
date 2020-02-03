Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F227A1504DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 12:06:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pwW8r+3hxlKNM82B2Jv9Ez1SfeWU2Mw4JOoW3NVEGj0=; b=EV5TTpObJfb/Mf
	giC9EIhkCByBDR+N5b3+tJfjI1z6D6Cg4i6202/YfJPAv1Ls0l1n6u0pC13ms7djb6qlpOavTpGUL
	Ch3OKizV1gBbLuUGSwtvKmlFPHkWbzbMOdM8G0SDS9T/Xw9IR0+7dPztMjb0qssP2idNCyDFqPQR4
	jqyFMiTzDbMM4LgS+0qZqnGf8G2rkxzjvUGgvsdHer1sbPvDRnUbUyTnWfv//tCEAnpWFCy4gzDmB
	lSkAePaXEH6q2w97wng/ncO0WO0CgHqNBcEpYgKPrgOEpqe0o1rybZlnydDN0zFOwizEF8oHzUgjY
	PnyR2UIUH/WDnw9aHjZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyZYJ-0002x1-Ql; Mon, 03 Feb 2020 11:06:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyZYD-0002w5-3N
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 11:05:58 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iyZY5-00046n-Hb; Mon, 03 Feb 2020 12:05:49 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iyZY1-00028x-QW; Mon, 03 Feb 2020 12:05:45 +0100
Date: Mon, 3 Feb 2020 12:05:45 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: Re: [PATCH] arm64: dts: librem5-devkit: add lsm9ds1 mount matrix
Message-ID: <20200203110545.GB24291@pengutronix.de>
References: <20200120100722.30359-1-martin.kepplinger@puri.sm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120100722.30359-1-martin.kepplinger@puri.sm>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:57:57 up 157 days, 23:12, 161 users,  load average: 0.07, 0.17,
 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_030557_140072_504906D5 
X-CRM114-Status: GOOD (  18.74  )
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
Cc: mark.rutland@arm.com, robh@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin,

On 20-01-20 11:07, Martin Kepplinger wrote:
> The IMU chip on the librem5-devkit is not mounted at the "natural" place
> that would match normal phone orientation (see the documentation for the
> details about what that is).
> 
> Since the lsm9ds1 driver supports providing a mount matrix, we can describe
> the orientation on the board in the dts:

I didn't found the patch which adds the iio_read_mount_matrix()
support. Appart of that your patch looks good so feel free to add my:

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de> 

Regards,
  Marco

> Create a right-handed coordinate system (x * -1; see the datasheet for the
> axis) and rotate 180 degrees around the y axis because the device sits on
> the back side from the display.
> 
> Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
> ---
> 
> tested on the librem5-devkit of course, finally fixing the orientation problem
> for the accelerometer :)
> 
> thanks,
> 
>                             martin
> 
> 
>  arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> index 703254282b96..6c8ab009081b 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> @@ -457,6 +457,9 @@
>  		reg = <0x6a>;
>  		vdd-supply = <&reg_3v3_p>;
>  		vddio-supply = <&reg_3v3_p>;
> +		mount-matrix =  "1",  "0",  "0",
> +				"0",  "1",  "0",
> +				"0",  "0", "-1";
>  	};
>  };
>  
> -- 
> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
