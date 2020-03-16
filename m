Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CAF1860EE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 01:50:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4WAZTsfeXikv+ficgOpZgDiNubnvgf4Qs/Ki4pKbeGM=; b=lBuCfArGWOwQsT
	aBnqy/uu3ebxX0neut7g/fIHdw7sO5QsknxDQ29qcKZvMSr/13VoSJ/fStV99FGxJdb6JW9Mwv7Ql
	/Lp5kfr/taIS0ShQfM6plKVcyZ0EjL7jLF+siCINmlZ/cXqjTL0j7ELnVMA7XnBqUEO2YoXJn8KQi
	2PVZg2Vl4PsOTg6T8COL+fmo6V4iBMv6aT9+Z61926kNE3NbWR49xxjJMlYfTymuX81XuLv+su1rv
	HM8JziL0y5KAvhGm6KftbwH5UfsgPP6e5get7T/CYn0Ltu+47f4q/bx5s6jW5t0Lw9b4qE7a7ELcp
	+WKTX5dAcx6w00xwMjFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDdxo-0007OO-Pj; Mon, 16 Mar 2020 00:50:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDdxc-0007Np-1z
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 00:50:29 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F1615205C9;
 Mon, 16 Mar 2020 00:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584319827;
 bh=MZc7oF3471k1hccW1atocrA0d/NQncNY/pnti0s5LzQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EmSkGTJqfSsEHrjGpbw7TCdn8y7Iv0YcJFmoX+d0AfoLbYxGQcuePcDkskovUoUTo
 RKgvFpbRrCnzDfxwWayahd4qLANc8a1bTEGr0ADs2qwax31sKHAAmtyBGmApMF6jN7
 h3SYM03EEE5ZZ5Lhn1O7Cru4zPo4UhXIjyM5jC/s=
Date: Mon, 16 Mar 2020 08:50:21 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Michael Heimpold <mhei@heimpold.de>
Subject: Re: [PATCH] ARM: dts: imx23: introduce mmc0_sck_cfg
Message-ID: <20200316005019.GC17221@dragon>
References: <20200308222144.24863-1-mhei@heimpold.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200308222144.24863-1-mhei@heimpold.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_175028_119970_E6C7CB61 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 08, 2020 at 11:21:44PM +0100, Michael Heimpold wrote:
> The Olimex Olinuxino board has a user led connected to SSP1_DETECT.
> But since this pin is listed in mmc0_pins_fixup, it is already claimed
> by MMC driver and this results in this error during boot:
> 
> [    1.390000] imx23-pinctrl 80018000.pinctrl: pin SSP1_DETECT already
>   requested by 80010000.spi; cannot claim for leds
> [    1.400000] imx23-pinctrl 80018000.pinctrl: pin-65 (leds) status -22
> [    1.410000] imx23-pinctrl 80018000.pinctrl: could not request pin 65
>    (SSP1_DETECT) from group led_gpio2_1.0  on device 80018000.pinctrl
> [    1.420000] leds-gpio leds: Error applying setting, reverse things back
> [    1.430000] leds-gpio: probe of leds failed with error -22
> 
> This fix it, introduce mmc0_sck_cfg and switch the Olinuxino board to it.
> 
> Signed-off-by: Michael Heimpold <mhei@heimpold.de>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
