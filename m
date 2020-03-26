Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 940AE1946EA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 20:02:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+V11gJrPGCcuvRwkK8TYfPW1laIatCp396rnoo92rCY=; b=STaXsDXmixBheQ
	HtwnBqjZFFL2/5QUmN44pa12m/3UqccJYHiYBR4MmSt9Anl/HJPzAp5Cmlk20RY6g/Bs3rIar3TAD
	A0GGG6RPuis+imCCGz9I4chH2iYyGR/jtdHCU0BPfMDkD76Sk309B0asiXKO5j8lVGNTX7a9fn9eo
	QhoD+dlPTRVjfHOYUhKKkl56dw7NpkHbQQTSRR4ZoUHn3G1W/0U+o9nDm67mm/oHxPBGTxxwCsu6U
	kxnqu/JI9U9fgteqv6yVopQWHRrq+umQtFiGbESehaE+KLLB97Z5ZWT4cfABhNKgBKBTbDtGvpzjg
	y9IpHX59V8DXvWe4DJ8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHXlO-0003WM-RQ; Thu, 26 Mar 2020 19:01:58 +0000
Received: from mail.v3.sk ([167.172.186.51] helo=shell.v3.sk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHXlF-0003Vl-Vw
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 19:01:51 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 491D3E014C;
 Thu, 26 Mar 2020 19:02:09 +0000 (UTC)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id RmSV6Em5SBCs; Thu, 26 Mar 2020 19:02:08 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 99EE5E02CB;
 Thu, 26 Mar 2020 19:02:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id GK1B_kf-kSbS; Thu, 26 Mar 2020 19:02:08 +0000 (UTC)
Received: from localhost (unknown [109.183.109.54])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 4DF34E014C;
 Thu, 26 Mar 2020 19:02:08 +0000 (UTC)
Date: Thu, 26 Mar 2020 20:01:44 +0100
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [PATCH 00/21] ARM: dts: Marvell SoC Device Tree updates
Message-ID: <20200326190144.GA552637@furthur.local>
References: <20200325114111.475258-1-lkundrak@v3.sk>
 <20200326185423.552288-1-lkundrak@v3.sk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326185423.552288-1-lkundrak@v3.sk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_120150_167932_D23FB79B 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Haojian Zhuang <haojian.zhuang@gmail.com>, Daniel Mack <daniel@zonque.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>, linux-arm-kernel@lists.infradead.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 07:54:23PM +0100, Lubomir Rintel wrote:
> On Wed, 25 Mar 2020 12:41:10 +0100 Lubomir Rintel wrote:
> > [PATCH 01/21] ARM: dts: kirkwood: Fix interrupt controller node name
> > [PATCH 02/21] ARM: dts: dove: Fix interrupt controller node name
> > [PATCH 03/21] ARM: dts: pxa168: Add missing address/size cells to i2c nodes
> > [PATCH 04/21] ARM: dts: pxa168: Fix the gpio interrupt cell number
> > [PATCH 05/21] ARM: dts: pxa3xx: Fix up encoding of the /gpio interrupts property
> > [PATCH 06/21] ARM: dts: pxa910: Fix the gpio interrupt cell number
> > [PATCH 07/21] ARM: dts: pxa*: Fix up encoding of the /rtc interrupts property
> > [PATCH 08/21] ARM: dts: mmp*: Fix up encoding of the /rtc interrupts property
> > [PATCH 09/21] ARM: dts: mmp3: Fix L2 cache controller node name
> > [PATCH 10/21] ARM: dts: mmp3: Fix USB & USB PHY node names
> > [PATCH 11/21] ARM: dts: berlin*: Fix up the SDHCI node names
> 
> These seven patches (12-18) were applied to linux-next.

Sorry, I mean tty-next.

> Please consider applying the rest. Thank you!
>  
> > [PATCH 12/21] ARM: dts: pxa*: Don't redeclare phandle references
> > [PATCH 13/21] ARM: dts: pxa*: Fix serial port names
> > [PATCH 14/21] ARM: dts: pxa*: Make the serial ports compatible with xscale-uart
> > [PATCH 15/21] ARM: dts: mmp2-brownstone: Don't redeclare phandle references
> > [PATCH 16/21] ARM: dts: mmp*: Fix serial port names
> > [PATCH 17/21] ARM: dts: mmp*: Make the serial ports compatible with xscale-uart
> > [PATCH 18/21] ARM: dts: tango4: Make /serial compatible with ns16550a                                            
> 
> > [PATCH 19/21] ARM: dts: mmp3: Drop usb-nop-xceiv from HSIC phy
> > [PATCH 20/21] ARM: dts: mmp3: Use the MMP3 compatible string for /clocks
> > [PATCH 21/21] ARM: dts: mmp3-dell-ariel: Fix the SPI devices
> 
> Lubo

Lubo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
