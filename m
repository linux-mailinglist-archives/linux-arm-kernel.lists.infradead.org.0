Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD0877F94
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 15:21:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VVxyoQ9dY+CEKzmk2Xc65psPfHHk0wiHxy5zgFlW9K4=; b=gJPqB8GrEcBQFK
	9U20m0TEafeB7AcJ2yy81e0mFfig6BHBDHNIlnuSLEFK06wlC3LlIJhRZD4J1BJwprFR4otyRpSuV
	8R3dTUc72BsyCfyr8blIMosaLe1uina4dx9zyTapD4xBdNU39O4OyP9n5eEhZ5WvW5dC2ld5Y7asw
	oRx6PFRybRKW8hd8TmRAbj0nl+3SvYOF+uiFvlyomvQCdbVmKFyRJLS4RYohQcwe/kkLfm/nrD9GB
	ryIVarXBnwAmsA0eefaIheJf8XkVrPDLYsG8ucCaIehDu8GrvvN2CnNCZm7eb+f75ScV/gFW8ONuy
	7XaKHgAZGU3/xidoUloQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrj6y-0006Oz-B9; Sun, 28 Jul 2019 13:21:16 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrj6m-0006MT-D6
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 13:21:06 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 02D3F80234; Sun, 28 Jul 2019 15:20:40 +0200 (CEST)
Date: Sun, 28 Jul 2019 15:20:47 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Evgeny Kolesnikov <evgenyz@gmail.com>
Subject: Re: [PATCH 0/5] Add support for WD MyCloud EX2 Ultra (+ versatile
 UART-based restart/poweroff drivers)
Message-ID: <20190728132047.GA8718@xo-6d-61-c0.localdomain>
References: <cover.1563822216.git.evgenyz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1563822216.git.evgenyz@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_062104_598483_D89D28E9 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>, linux-pm@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Reichel <sre@kernel.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 2019-07-22 21:53:00, Evgeny Kolesnikov wrote:
> This patchset consists of the DTS, which describes the WD MyCloud EX2 Ultra device,
> 'poweroff' and 'resert' drivers for power-managing MCUs connected to a board via UART
> (these drivers are more versatile than qnap-poweroff and could be used as a substitude),
> and DT bindings for these drivers.
> 
> The difference between uart-poweroff and qnap-poweroff is small, but important:
> uart-poweroff is able to send to an MCU a command of arbitrary length, and the command
> itself is defined in a DTS file for a specific device/board, thus making this driver
> applicable to wider range of devices.
> 
>  drivers/power/reset/uart-poweroff.c           | 155 +++++++++
>  drivers/power/reset/uart-restart.c            | 204 ++++++++++++

These twon really need to be combined somehow.

Plus... does it have mini-16550 driver in it? Should it use serdev instead?
										Pavel
-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
