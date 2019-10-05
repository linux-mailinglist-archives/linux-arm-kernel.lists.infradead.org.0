Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F6CCCC89
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 21:57:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PAqH4mMDdheK9TIhASGSSSmJKWsOabRf2v7SHzx8Eh0=; b=rC+Ce8o5kgIwqL
	UoDzbf/VVpceW8tn9xzu9BEVr/mZej1X06dFygi4uHUvU7OzpHOn+N9CLPphyKV235qM9U8SsKRbD
	3PmL8sodvw8pcL4LEgqFZAKkpFVRE9u1cYprvkPIHIJv1heuw5wno/upP30fYBoazDmK+qjskkNY5
	hQKM3TROWfiwxPeRMxWzKGhP6UeCJLOrXwWCAoC01VTxrMOeQlOnplsAri+CXx6bjSDSRbIt6Fh1O
	7Eo++dJt82mJCgs5cLLcEPs+f+Dg0i1QsfZopZEL3bJ/y36UNWYHewJOCtiZFii0dQHwem0pmiVUp
	3nliE6ZExdsUE4Of2Iww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGqBQ-0004Ft-Pg; Sat, 05 Oct 2019 19:57:40 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGqBI-0004EY-KQ
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 19:57:34 +0000
X-Originating-IP: 86.202.229.42
Received: from localhost (lfbn-lyo-1-146-42.w86-202.abo.wanadoo.fr
 [86.202.229.42])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 1B9B740002;
 Sat,  5 Oct 2019 19:57:11 +0000 (UTC)
Date: Sat, 5 Oct 2019 21:57:10 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH v6] soc: at91: Add Atmel SFR SN (Serial Number) support
Message-ID: <20191005195710.GA4254@piout.net>
References: <20191004151802.21793-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004151802.21793-1-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_125732_806480_F05AF178 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/10/2019 17:18:02+0200, Kamel Bouhara wrote:
> Add support to read SFR's read-only registers providing the SoC
> Serial Numbers (SN0+SN1) to userspace.
> 
> ~ #  hexdump -n 8  -e'"%d\n"' /sys/bus/nvmem/devices/atmel-sfr0/nvmem
> 959527243
> 371539274
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> Tested-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> Reviewed-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
> Changes in v2:
>  - updated atmel-sfr.c to sfr.c in Makefile
>  - fixed missing drvdata struct definition
>  - added missing syscon header
> Changes in v3:
>  - Fixed typo: processor in Kconfig
>  - Renamed private struct sfr_priv to atmel_sfr_priv
>  - Dropped the drvdata structure as we have same size for both SN
>    registers in SAMA5D2/4, just hardcoded it for now.
>  - Cleaned up private struct from unused members
>  - Fixed misusage of devm_kzalloc
> Changes in v5:
>  - Removed the blankline at EOF
>  - Feeded the entropy pool with the SoC SN using add_device_randomness()
>    and do it only once at probe().
> Changes in v6:
>  - Fixed missing return of a possible error from atmel_sfr_read()
>  - Added T-b and R-b tags
> 
>  drivers/soc/atmel/Kconfig  | 11 +++++
>  drivers/soc/atmel/Makefile |  1 +
>  drivers/soc/atmel/sfr.c    | 99 ++++++++++++++++++++++++++++++++++++++
>  3 files changed, 111 insertions(+)
>  create mode 100644 drivers/soc/atmel/sfr.c
> 
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
