Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C99787BFDE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 13:33:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4qAd/4Nv+rGSEd1DNeujQR6kQqOBKzeSSkMUTMSPTQ0=; b=i8BEv+JHE4vqPz
	H6dOKj6D5AYfBoKA1qAx1uDPnMyOuRLokbstieA6IkfuO/38j63m43PRXgJhvn/fu8R86Tub8mDdf
	VsA/T98iBkEe4rYxYz9GbKLSFZa5NFSV/PnNnXP8Je3Yp1OUfxRJZW8gq7TiiVG4byrxRI5J1hPi9
	dNSXz66sIhRjpdwlB32LzZV4y0hUTVHjafrm3LVvbuwEVncQIojIHbVlyDEpsErnbWGCC1DHxHE6r
	OT/PRajqFog8mF+8PdyahZjatsCN7MLdnvrO9i3iM7O8TP15uWfRSyM6EGNJt5fRa3Fw9KF0rpFcF
	+Y2JbkKPlFX/YxpW63rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsmrL-0006HO-R1; Wed, 31 Jul 2019 11:33:31 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsmrE-0006GZ-OZ
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 11:33:26 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: R7AozpEsiUeC+4/7Dc7j4pVNUsX9pjR2XB3pzZMFDh6QAPI5tFCjtoBTPiH537hIRDBOjlpeS+
 fGQlqjOs6wKIM7hBji0uinb5XRla0cEiMJmS/d5ttVP6Q5oFkjWk4yecUbJjVaeCqrYSVxnK4u
 KTwfH+m1/OH9WDxZYSuXA7XFlAJatLiXphOEGTjhCCrEhVAf1YbKSJQq8geuFZ041aOkUDXHyd
 AMYU/8P/E+Vu33yYo1XKVHkutu560EEG+jBBn+YHq8oPA9dduSLqR5F5X2zgiI8f/KuGp3cpyA
 UUo=
X-IronPort-AV: E=Sophos;i="5.64,330,1559545200"; d="scan'208";a="43442093"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 31 Jul 2019 04:33:23 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 31 Jul 2019 04:33:11 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Wed, 31 Jul 2019 04:33:11 -0700
Date: Wed, 31 Jul 2019 13:32:16 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] mmc: atmel-mci: Mark expected switch fall-throughs
Message-ID: <20190731113216.ztxckd54a74g2lw5@M43218.corp.atmel.com>
Mail-Followup-To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Kees Cook <keescook@chromium.org>
References: <20190729000123.GA23902@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729000123.GA23902@embeddedor>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_043324_911250_5AFB735A 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Ulf Hansson <ulf.hansson@linaro.org>, Kees Cook <keescook@chromium.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Sun, Jul 28, 2019 at 07:01:23PM -0500, Gustavo A. R. Silva wrote:
> 
> Mark switch cases where we are expecting to fall through.
> 
> This patch fixes the following warnings:
> 
> drivers/mmc/host/atmel-mci.c: In function 'atmci_get_cap':
> drivers/mmc/host/atmel-mci.c:2415:30: warning: this statement may fall through [-Wimplicit-fallthrough=]
>    host->caps.has_odd_clk_div = 1;
>    ~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~
> drivers/mmc/host/atmel-mci.c:2416:2: note: here
>   case 0x400:
>   ^~~~
> drivers/mmc/host/atmel-mci.c:2422:28: warning: this statement may fall through [-Wimplicit-fallthrough=]
>    host->caps.has_highspeed = 1;
>    ~~~~~~~~~~~~~~~~~~~~~~~~~^~~
> drivers/mmc/host/atmel-mci.c:2423:2: note: here
>   case 0x200:
>   ^~~~
> drivers/mmc/host/atmel-mci.c:2426:40: warning: this statement may fall through [-Wimplicit-fallthrough=]
>    host->caps.need_notbusy_for_read_ops = 1;
>    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~
> drivers/mmc/host/atmel-mci.c:2427:2: note: here
>   case 0x100:
>   ^~~~
> 
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>

I don't know if there is a policy in the kernel about the expression to
use. As this one does the job
Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

Thanks

> ---
>  drivers/mmc/host/atmel-mci.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/mmc/host/atmel-mci.c b/drivers/mmc/host/atmel-mci.c
> index 9ee0bc0ce6d0..c26fbe5f2222 100644
> --- a/drivers/mmc/host/atmel-mci.c
> +++ b/drivers/mmc/host/atmel-mci.c
> @@ -2413,6 +2413,7 @@ static void atmci_get_cap(struct atmel_mci *host)
>  	case 0x600:
>  	case 0x500:
>  		host->caps.has_odd_clk_div = 1;
> +		/* Fall through */
>  	case 0x400:
>  	case 0x300:
>  		host->caps.has_dma_conf_reg = 1;
> @@ -2420,13 +2421,16 @@ static void atmci_get_cap(struct atmel_mci *host)
>  		host->caps.has_cfg_reg = 1;
>  		host->caps.has_cstor_reg = 1;
>  		host->caps.has_highspeed = 1;
> +		/* Fall through */
>  	case 0x200:
>  		host->caps.has_rwproof = 1;
>  		host->caps.need_blksz_mul_4 = 0;
>  		host->caps.need_notbusy_for_read_ops = 1;
> +		/* Fall through */
>  	case 0x100:
>  		host->caps.has_bad_data_ordering = 0;
>  		host->caps.need_reset_after_xfer = 0;
> +		/* Fall through */
>  	case 0x0:
>  		break;
>  	default:
> -- 
> 2.22.0
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
