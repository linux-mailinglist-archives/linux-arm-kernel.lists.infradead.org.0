Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F2911F427
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 22:10:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JiARZjKjPPOJ/hFaToqY5VtgDL91o4b4S2FQYts1Xg0=; b=oMDNAjDkqP2VxZ
	g28NU+pLiZgrpCeccsj4advGzsxuzYz33uVrOk7t+hJe4x7gG+4XcYXGgIS6vsx/MVwFQbWevW3wH
	QGlR/8Jua71axplc/4Y6n3iz0rbTa4aSzLYix3qOR79Vawwins8/KNPv2gMKxdzLY2fE/pjn0CuwQ
	+w0ULNw0Dmxo7Cde1I2iHTtf35z7GaYKwX33ektcFpYq0IaXCu+VCvmuftIOeATXFM7yqtHSEIbCo
	F0gfx+jn98fH9fN7rKNh9BY/bkppBXEqt+gMseFRtiqYyYDPX87adskSsVkD0P1tMVexzRul/Qte6
	qS9ir4AwVKZsS00Aqqhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igEg7-0003B2-C1; Sat, 14 Dec 2019 21:10:19 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igEfv-0002Va-TP; Sat, 14 Dec 2019 21:10:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1576357790;
 bh=TXBkusM4pGGyyc42JuzHWCOIuM+BLDKgM7c9ve9GIqY=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=fPMD/xFJTCMs3LrZKukP4l0lDeb4LAswt9Po2OEfDOnyP7Of0Q7+SXPW2cfh0cthX
 0jru4yctgV1TSvFu9w3k1IKhWOYBCyxoIMQXK5FtviVN6I6l5XEyXlk49vTCbmbKnr
 89ls6eAV9lHcD9tv3lb6VSWzUlQfeJ7ceo9Bu3Tc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.176] ([37.4.249.154]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MUGi9-1iG4ib0WSR-00REKH; Sat, 14
 Dec 2019 22:09:50 +0100
Subject: Re: [PATCH] ARM: bcm: Fix support for BCM2711 SoC which breaks other
 ARM platforms
To: "H. Nikolaus Schaller" <hns@goldelico.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <33662723d61a80669390abc1e592eb006d8709f1.1576353784.git.hns@goldelico.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <a78dbb9c-31ee-90c6-6bb6-6f6448c8208e@gmx.net>
Date: Sat, 14 Dec 2019 22:09:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <33662723d61a80669390abc1e592eb006d8709f1.1576353784.git.hns@goldelico.com>
Content-Language: en-US
X-Provags-ID: V03:K1:W19swVnhvLWklH1Ap3rdgPxUw/2Kp/bVdKN4sEQ/PBWwjnDI5b2
 A48uwBM4gtkWr80+vegiKsJV+Cszcb/2mvAIKzGjIsy0KRO7ZYWbG6Uu7Oj0Fa46hkNBht2
 w+/WFYA7GcddJKwDk/amdibedXDP/G0MJLHfpeNHFkCFDZHULdWgqQAkqvyoU7o9sdNHDSu
 vIZ9xgkq+MwWtwu+3yl1A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tN3rSwrH9Ok=:yigtH0PU6m6NjmVpqOiYkl
 1vLoM48c66zGlX+gVDVUttKOoFJ8RkNqQ6sxj4dKtO4Z7ACo+I5+UioIVbSwLSxrDyUvP5nFz
 iOAnsTXtnaOecrOJKR4DObXhW5FahpQFOKQ5lfZQ8zZWulSuDaM1hNz+8MUQ3Vr09ibunC7e/
 BIOXbeuQeucovK/253kqe2p2wTMvbIp46zl42xkhxupUWT3FyZ7TThlQ4KvRCsG7TEtTuPZ+W
 hB8dS8O+uVEQpOYnTd6yl3jWX5hJMLZ8XweT5ZWS2aeGBBQaNBnq22NosasqxsFsBDSF411/Y
 k0RH+rWns3jwcZbv0OUCcPxdGo2pXJFXVexYi5fid1auhLWA7iDrX95+yCq0V9cZD7NuxDRXL
 Xm3kKAv7z05d9P8OxhVfxIqfml32rEI7KxpsruNUN5yeqc0RDocd+Xpj86JOXERvfrwVCbDYh
 g9X5lG3P880nq/zZ0dRD/RPzb6iMM7PNhS7gBIz3jVz99LGOtV0qSSHb8v6ztyflRRRoRope5
 U4yjuz/4RDoQo7hB7QrwySIhqX3tgVTWHFNyL1dMrXb0wqfRaTMzToXc7AUM6A4jYZkr5mP00
 4m9aL1afP1PW66vQd+H1heo4MLK5szRHlniGgzLntiZJpaqMQY0/dD6I/McfpW1Cvdul8N3q6
 n5gja47RHBkVOSQtrJ3NwCwNwqipKmxJ78PWsBWIEM1QSPBEtZq3bv60u4MxdQIAJtDPvg+AO
 CWC7+U17H7LweSTF9NFv+hNo9aCFfWgPju2yBc4++VVrdmrHobNOrkSbES1QWZ/D+5fT8z6ON
 mepwGtjD3QYF4ZvafYJ2O0ge1EO4LJz3OAyVGKtaxsNBTzeKYSw44FWmFP0i0JVQAIQ4gyoU3
 GxaIv3y4TxCkUyDk8Prn7qHgRwrLCY9G/Ov1LkwfpImispxH9MjmVAsMPaMYKYeRS/sqtx2T1
 CQJKrqKWqy1vj2Gyda7iC6e5D+eaElyYRCDqEDXatu1croxR8mc2uu4B8kisFTP4CN/nsR5G6
 sqJt5DYiiQX2o8lKPC3UMuoGHcGSHO30NS/XxFw15+//jxAdEO1h6/jvEAQkHEc8c/cprnWSe
 5AEc2ohhNTdAwSmBk1mSf/8lMhxCvyn42BYb29bn+Vo9S4M8eQeasKS1odgKH0SYaT0roEdMb
 1x8roXR4lnOsPbuhlKJS5rSeeQHZblDZwHuxF20RpezSQxODyKwmtZPPsqGwSWP7/haUkIes+
 VkmA08KzuSEB/NdZhGeeRH61SWfc0S8Sgra922cOBHxvxi2Fmm2XCpxeS88s=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_131008_294468_0838460A 
X-CRM114-Status: GOOD (  19.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux-OMAP <linux-omap@vger.kernel.org>, Tony Lindgren <tony@atomide.com>,
 linux@armlinux.org.uk,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-rpi-kernel@lists.infradead.org, kernel@pyra-handheld.com,
 letux-kernel@openphoenux.org, arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nikolaus,

Am 14.12.19 um 21:03 schrieb H. Nikolaus Schaller:
> commit 781fa0a95424 ("ARM: bcm: Add support for BCM2711 SoC")
>
> breaks boot of many other platforms (e.g. OMAP or i.MX6) if
> CONFIG_ARCH_BCM2835 is enabled in addition to some multiplatform
> config (e.g. omap2plus_defconfig). The symptom is that the OMAP
> based board does not show any activity beyond "Starting Kernel ..."
> even with earlycon.
>
> Reverting the mentioned commit makes it work again.
>
> The real fix is to add the missing NULL sentinel to the
> bcm2711_compat[] variable-length array.
>
> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>

could you please add a Fixes tag. Apart from that

Acked-by: Stefan Wahren <wahrenst@gmx.net>

Thank you
Stefan

> ---
>  arch/arm/mach-bcm/bcm2711.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm/mach-bcm/bcm2711.c b/arch/arm/mach-bcm/bcm2711.c
> index dbe296798647..fa0300d8c79d 100644
> --- a/arch/arm/mach-bcm/bcm2711.c
> +++ b/arch/arm/mach-bcm/bcm2711.c
> @@ -13,6 +13,7 @@ static const char * const bcm2711_compat[] = {
>  #ifdef CONFIG_ARCH_MULTI_V7
>  	"brcm,bcm2711",
>  #endif
> +	NULL
>  };
>
>  DT_MACHINE_START(BCM2711, "BCM2711")

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
