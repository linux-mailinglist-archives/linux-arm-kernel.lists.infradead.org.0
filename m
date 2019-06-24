Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6FB24FF18
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 04:08:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ZFq4Eiapkr8DRA4JlHk1bZBoNFw4q09Q9kOHSpWOdM=; b=t66MiqNuPKugzA
	EJg+1oududw0REe3Qb0m3iDILBJubEZ2GPMsbJF80kJSD+CpbP4gh7cBBJaBvXI3qC3sAI4+1KXdq
	THPPiZcT9wQuchegAXeXJeVQKFvoXuVOyVdKF1MlrppCwhXsnUHrEEhMg3u4B6DxR34ADnAa6OaRT
	kE9i7God8w3ouDH/E+MIW0NGmDcICBPVlc4MtfbBaNugbA3SyefHg4AHIrykKfqubj4+OWdEeDNDC
	BjorxVnOKDNWjO1uix3JGSCrkux9Lamt6bXkEcxdl1RfHWgmxw34LgWJJTLqRlwEn8MDQViaSTY36
	ePKnFnLwCc58nzV+Zv9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfEPW-0004e1-7n; Mon, 24 Jun 2019 02:08:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfEPI-0004df-Td
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 02:08:34 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3DECD20679;
 Mon, 24 Jun 2019 02:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561342112;
 bh=44wBvcD8d69VIm5qFHtpW6IT0vLvVy7DqP9Th9ykY9c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=k8Bl+LZLlB6Bvs6e6KOlFb3THQrGsEArVY0SKfD3f+p/3aA373sukqDA8FXWzVrLS
 ooDICgBZUVxLPXctTGZEUuuij1HvCn908C7v/KbENJoggsF7mkoV8sg+CbjtE6BMVG
 liMdFIxdgPE5Gid21A2sYsB6FyaFfzu3bbIC4dQ0=
Date: Mon, 24 Jun 2019 10:08:15 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: "Angus Ainslie (Purism)" <angus@akkea.ca>
Subject: Re: [PATCH] arm64: dts: fsl: librem5: Limit the USB to 5V
Message-ID: <20190624020815.GK3800@dragon>
References: <20190620170439.18762-1-angus@akkea.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620170439.18762-1-angus@akkea.ca>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_190832_968751_69E1B81C 
X-CRM114-Status: GOOD (  15.06  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Pavel Machek <pavel@ucw.cz>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, angus.ainslie@puri.sm,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 11:04:39AM -0600, Angus Ainslie (Purism) wrote:
> The charge controller can handle 14V but the PTC on the devkit can only
> handle 6V so limit the negotiated voltage to 5V.
> 
> Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>

Prefix 'arm64: dts: librem5: ...' should be fine, so I changed it and
applied the patch.

Shawn

> ---
>  arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> index 3f4736fd3cea..ec85ada77955 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> @@ -353,7 +353,7 @@
>  			sink-pdos = <PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM |
>  				PDO_FIXED_DUAL_ROLE |
>  				PDO_FIXED_DATA_SWAP )
> -			     PDO_VAR(5000, 12000, 2000)>;
> +			     PDO_VAR(5000, 3000, 3000)>;
>  			op-sink-microwatt = <10000000>;
>  
>  			ports {
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
