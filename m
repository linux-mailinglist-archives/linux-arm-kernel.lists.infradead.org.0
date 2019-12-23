Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0D8129B63
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 23:07:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xeMT0y0GdqTpxfCpotnbggZ4krdj9waxdyhpF0B+WiI=; b=qfdx0f6x7Q/xVD
	TIznhYXI5uJqA0OLKtTs2uJ8iyHEXn6SKeZ7vFYxvlDGUbGYz+maTnPdqX0tOhohni2P8DOr/eASl
	lYWeoat4KdNWrbJKPLZ5+5D5iQv0qRiYsSCyL14xhkrXapmQLO90sZHqgRQWCcF+ouWvpoJY1beqB
	fOnCjDfRKQdUcuxrzDpYh9MhsnejsD943zLb0zRRI6JvhaszE5MHJOZjGovzA2sMXtN4LTK+FDsZL
	+KLI7T4f3wS9u0cR043rJAB4kKha+JJ5keJ+qH3pyxvabs1GBOVsM31e2UYNBfS0NKFY3XjQV9V12
	SUUrOdjZGQRZwxeWN0rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijVrK-0000oe-UP; Mon, 23 Dec 2019 22:07:26 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijVrA-0000o5-Ft
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 22:07:17 +0000
Received: by mail-lf1-x142.google.com with SMTP id v201so13669350lfa.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Dec 2019 14:07:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mmTdxucpbmcUC1/HgsgMrwttzt2udxIVlgF0GEdd2ms=;
 b=NWWjxU+JXWlYNpDZQIWeoSFGLBhiBVu5VbrOeJ/oDPQxDx9uWLW6+0NVgeW3HSfQdp
 B24WwHikl+IfInCl/Szc+mBMU7IIjy65tNEElwsOeG54wdw7Ahn+xqi0q2ZknxXpl42Z
 J+ZRoC+DrYhX3fU+MD9TkhxaIj47OZPV2N0OhXcaEkoWiGHWgDWMXmNiB6sMpv863JCp
 MaGSGu8oy24i4ihktleGN065EKRTm3dSr+ZrjcYFG/kuHxTh9ybhnzVUUoA2jPsiJmmy
 9On+fD6g25TIlf3DrkTWAdbyViANUY2NzmibXnZjDSeSif+TTkx7Fa2euSi5bJjWxXUQ
 QM6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mmTdxucpbmcUC1/HgsgMrwttzt2udxIVlgF0GEdd2ms=;
 b=owGl/Icg7EqcKx3K7UmoQlDB3qK90/FkV/ZzmxZkP41lwumDfSls5qUu6t5EwDnGN0
 5hZjQFvebshFmfdsDUrcUENr6cCx8DCRHPjP1dS8Wm4ruxZzL1wbA+H2/fxXz4gTNBJ+
 /vQm3UMw/1k/suesTXQRllDoxpdLIcCixf63iqNIhD17R9wz/cb49PXPQzfcDz1Rycrp
 kt7q3rZCRw2hT6Lsb640Oyc4Oiv1QppyAqeY+HU4DfduGTfnsGeb2FNBJo5WtZSoRlfW
 6nijmappcRnqY7DDvDp6HxHMXEeiIXdakQJciwrAsRaP1MC31yzfPTx+abTbdd8Uw85k
 7QUg==
X-Gm-Message-State: APjAAAWPu/1NARJWLT/PXa6HBqh7SpCyFmEw6ajTdswAmWOCMESMfBqD
 J7s/NfrFCkv2Vcii0/vBrEV1B/3MKoFSTvoGfMs=
X-Google-Smtp-Source: APXvYqyPGBGJdbyAReF1wKA5YkURhfw98cKXEjCntRVnT39Q/KOHRPTlCAOlz1gex7/ZBZVylxHkr/0wV5tMrKX5SSY=
X-Received: by 2002:a19:c648:: with SMTP id w69mr17843677lff.44.1577138834702; 
 Mon, 23 Dec 2019 14:07:14 -0800 (PST)
MIME-Version: 1.0
References: <20191223214412.12259-1-rjones@gateworks.com>
 <20191223214412.12259-3-rjones@gateworks.com>
In-Reply-To: <20191223214412.12259-3-rjones@gateworks.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 23 Dec 2019 19:07:01 -0300
Message-ID: <CAOMZO5CkfTM04GQVZbz6K7WSCmmCWb=OAvcUqDjW3zVkyiqx3g@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] ARM: dts: imx: Add GW5910 board support
To: Robert Jones <rjones@gateworks.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_140716_527022_E6481253 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Tim Harvey <tharvey@gateworks.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 23, 2019 at 6:44 PM Robert Jones <rjones@gateworks.com> wrote:
>
> From: Tim Harvey <tharvey@gateworks.com>
>
> The Gateworks GW5910 is an IMX6 SoC based single board computer with:
>  - IMX6Q or IMX6DL
>  - 32bit DDR3 DRAM
>  - FEC GbE RJ45 front-panel
>  - 1x miniPCIe socket with PCI Gen2, USB2
>  - 1x miniPCIe socket with PCI Gen2, USB2, nanoSIM
>  - 5V to 60V DC input barrel jack
>  - 3axis accelerometer (lis2de12)
>  - GPS (ublox ZOE-M8Q)
>  - bi-color front-panel LED
>  - 256MB NAND boot device
>  - microSD socket (with UHS-I support)
>  - user pushbutton
>  - Gateworks System Controller (hwmon, pushbutton controller, EEPROM)
>  - Dual-Band Wireless MCU (CC1352, UART/I2S interrconnect to IMX6)
>  - WiFi/Bluetooth/BLE module (Sterling-LSW, SDIO/UART interconnect to IMX6)
>  - RS232 transceiver (1x UART with flow-control or 2x UART (build option)
>  - off-board SPI connector (1x chip-select)
>
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>

Ok, this one has Tim as the author, but since you are submitting it,
you should also add your Signed-off-by below Tim's.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
