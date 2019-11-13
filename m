Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3B0FAEAB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 11:41:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0DhHy6yigYf+sUja8Ekdd9xaaYTxeyByqktN1UGiMa8=; b=YkYtsYcqf9hUKN
	EzNPaaTnjBnEu0wiYuUgyttorbKZHRWDlbPcbOf7U8KUXKl9HPr3UgMgtU3BJo0tCgZXRp0iBP+KN
	l2o6MSlWuSYeBASe0m77uSP0sl04c5es7Q5P4VAD3fA6kfuDuWk2NYvmYoeEkAMOiKs+EL5Mcz3yF
	d9WLiu0vMy+v/wMRdHuyqwE7Hb47qCSN+Xjs6qAFvCDTNzQht5LUrkDYEaSJU6hDFsbdKoQsPZKHk
	a2Xi2n6aW1107OxXjBdkRe+Hz2m0fLXMNjGpTH06vVMRJpUwYl20ZQlM/tZ64N+bilzy0u4jtThBx
	fIDxoPP/uO8lukE+z+zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUq59-0004BI-Kn; Wed, 13 Nov 2019 10:41:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUq52-0004Ar-H6
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 10:40:58 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iUq4m-0003S2-JM; Wed, 13 Nov 2019 11:40:40 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iUq4j-0005jl-TW; Wed, 13 Nov 2019 11:40:37 +0100
Date: Wed, 13 Nov 2019 11:40:37 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH/RFC] ARM: boot: Relax kernel image alignment for RZ/A
 with CS3 SDRAM
Message-ID: <20191113104037.e45j37xoxeztvut3@pengutronix.de>
References: <20191113102729.29303-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113102729.29303-1-geert+renesas@glider.be>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_024056_567698_9283A193 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 Russell King <linux@armlinux.org.uk>, linux-renesas-soc@vger.kernel.org,
 Chris Brandt <chris.brandt@renesas.com>, Eric Miao <eric.miao@nvidia.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 11:27:29AM +0100, Geert Uytterhoeven wrote:
> The RZA2MEVB sub board has 64 MiB of SDRAM at 0x0C000000 (CS3 space).

This wording is misleading. You don't adapt the limit because 128 MiB >
the amount of RAM on that platform but because the alignment of the CS3
space isn't a multiple of 128 MiB. So I suggest:

	On the RZA2MEVB the SDRAM's base is at 0x0C000000 which isn't
	aligned to 128 MiB. So to ensure the assumptions of the
	decompressor are valid the used alignment must be decreased.

> Hence the mask for CONFIG_AUTO_ZRELADDR needs to be changed, otherwise
> the system will crash because it will try to decompress a zImage or
> uImage to a non-RAM garbage address.
> =

> Based on a patch in the BSP by Chris Brandt <chris.brandt@renesas.com>.
> =

> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> No idea what to do with the rest of the comment, or if this breaks
> existing platforms.

I would assume that it indeed breaks existing platforms. So maybe better
make this configurable, default to 128 MiB and select it to 64 MiB on
the affected platform? If the resulting kernel supports also other
machines a warning (at compile time) might be a good idea.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
