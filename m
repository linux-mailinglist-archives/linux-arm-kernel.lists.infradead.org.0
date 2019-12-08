Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFE3116430
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 00:43:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nVEPfHjsLoxYTxI9pKBy9GHcwjAqLpenMZT6egudSdM=; b=uBsaUzNf97u3y8
	wTdSVi9PBzVcCJKe5jbne+k+2Um3lv7/+KHtx1WHCWj01P4ENL0OSqP5LNsCVNqeQ3VFGSGdwDyXK
	ky3pjwzfO5YqVho1DUOgnr3TNCTy1HOQQVTkMpgtyCXzBrDWOpAD7OiBIJY23pITae7BoQBnX9oeZ
	02m6u+W9dYyUh3MYr40vtu7u2iFgmn75PFMSNEaWZyYcqzQ20gV/S48X7RErr55kzWxfLFOF6orq6
	cUzUf1oYeMSEVmM17pNRgvr+JLvk/B+yWByxQzM9euKCGOnwUoyC9s1A2p3jF9ZXnokBXWBWpiv5m
	1hKSFl5FVADM/j08+Tjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ie6Cj-0000na-IQ; Sun, 08 Dec 2019 23:43:09 +0000
Received: from coyote.holtmann.net ([212.227.132.17] helo=mail.holtmann.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie6Cc-0000n4-Bm
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Dec 2019 23:43:04 +0000
Received: from marcel-macbook.fritz.box (p4FF9F0D1.dip0.t-ipconnect.de
 [79.249.240.209])
 by mail.holtmann.org (Postfix) with ESMTPSA id 7C9E9CED16;
 Mon,  9 Dec 2019 00:51:55 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3601.0.10\))
Subject: Re: [PATCH v3 2/3] Bluetooth: hci_h5: Add DT support for rtl8723bs
From: Marcel Holtmann <marcel@holtmann.org>
In-Reply-To: <20191130194719.112335-3-bonstra@bonstra.fr.eu.org>
Date: Mon, 9 Dec 2019 00:42:44 +0100
Message-Id: <F6C9DDF3-AB63-45C3-8EA6-CFEDE15366C6@holtmann.org>
References: <20191130194719.112335-1-bonstra@bonstra.fr.eu.org>
 <20191130194719.112335-3-bonstra@bonstra.fr.eu.org>
To: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
X-Mailer: Apple Mail (2.3601.0.10)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_154302_549392_9883777D 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.132.17 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, Maxime Ripard <mripard@kernel.org>,
 linux-bluetooth@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hugo,

> The hci_h5 already supports Realtek controllers discovered via ACPI. This
> commit adds support for discovering via device tree for ACPI-less
> platforms.
> 
> Signed-off-by: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
> ---
> drivers/bluetooth/Kconfig  |  2 +-
> drivers/bluetooth/btrtl.c  | 75 +++++++++++++++++++++-----------------
> drivers/bluetooth/btrtl.h  |  3 +-
> drivers/bluetooth/hci_h5.c | 65 ++++++++++++++++++++++++++-------
> 4 files changed, 95 insertions(+), 50 deletions(-)
> 
> diff --git a/drivers/bluetooth/Kconfig b/drivers/bluetooth/Kconfig
> index aae665a3a254..48c9a004b033 100644
> --- a/drivers/bluetooth/Kconfig
> +++ b/drivers/bluetooth/Kconfig
> @@ -211,7 +211,7 @@ config BT_HCIUART_RTL
> 	depends on BT_HCIUART
> 	depends on BT_HCIUART_SERDEV
> 	depends on GPIOLIB
> -	depends on ACPI
> +	depends on (ACPI || OF)
> 	select BT_HCIUART_3WIRE
> 	select BT_RTL
> 	help
> diff --git a/drivers/bluetooth/btrtl.c b/drivers/bluetooth/btrtl.c
> index 4f75a9b61d09..01b0eb4b57d7 100644
> --- a/drivers/bluetooth/btrtl.c
> +++ b/drivers/bluetooth/btrtl.c
> @@ -17,6 +17,8 @@
> 
> #define VERSION "0.1"
> 
> +#define FW_DIR "rtl_bt"
> +
> #define RTL_EPATCH_SIGNATURE	"Realtech"
> #define RTL_ROM_LMP_3499	0x3499
> #define RTL_ROM_LMP_8723A	0x1200
> @@ -45,7 +47,7 @@ struct id_table {
> 	bool config_needed;
> 	bool has_rom_version;
> 	char *fw_name;
> -	char *cfg_name;
> +	char *cfg_basename;
> };

you need to split this into individual patches. I am not in favor of doing a refactor and then adding DT support in the same patch.

Regards

Marcel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
