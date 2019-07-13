Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4CE767AE2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jul 2019 17:17:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6C8IcUg4Fq+rRltTZsZG6U4P1uZeZvNZUdVhJMcsz6M=; b=JLWPOZStgNgQAp
	wSJE1qLd0vRrgfrpPCGnYUOeUhCuqeY2m5ePeZY/mzHqupBB5Z7BujI3zAYDdzVdx3p+/GS8iWJLa
	scvLpsIOkPw+DF55WgumIQh+AoqUa2f8HMXjz0ahsQ0teU3EYBtY71tlBaIkDtbw/jdpCPp3cDUsT
	ojQN2r0V50N7QMBkE8hKaf/0xzm8i30cDAXRJFTVxu+hX0t8d1fIuWnJgxhExEnszd+p7ln/arr4g
	Enl0jZVKSJorfiIlD6/xWD29QkyyU81c1Y0tinf8loMjy1Fdk85wZu/fdljqDK5BwrLzrMLspCiuf
	XGlheqvneDiDST9HluFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmJmG-00041I-Co; Sat, 13 Jul 2019 15:17:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmJm3-000408-5t; Sat, 13 Jul 2019 15:17:21 +0000
Received: from p508fcc68.dip0.t-ipconnect.de ([80.143.204.104]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hmJlt-0006eI-7X; Sat, 13 Jul 2019 17:17:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Alex Dewar <alex.dewar@gmx.co.uk>
Subject: Re: [REGRESSION] Xorg segfaults on Asus Chromebook CP101 with Linux
 v5.2 (was Asus C101P Chromeboot fails to boot with Linux 5.2)
Date: Sat, 13 Jul 2019 17:17:08 +0200
Message-ID: <2648434.ut0pN6mfR1@phil>
In-Reply-To: <f47f8759-8113-812a-b17a-4be09665369e@gmx.co.uk>
References: <59042b09-7651-be1d-347f-0dc4aa02a91b@gmx.co.uk>
 <5fe66d5d-0624-323f-3bf8-56134ca85eca@gmx.co.uk>
 <f47f8759-8113-812a-b17a-4be09665369e@gmx.co.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_081719_378561_A06CC04A 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Am Samstag, 13. Juli 2019, 13:38:45 CEST schrieb Alex Dewar:
> I initially thought my machine was failing to boot entirely, but it
> turns out it was just failing to start the display manager. I managed to
> escape to a tty by hammering the keyboard a bit.
> 
> I suspect the culprit is the rockchip_vpu driver (in staging/media),
> which has been renamed to hantro in this merge window. When I run startx
> from a terminal, X fails to start and Xorg segfaults (log here:
> http://users.sussex.ac.uk/~ad374/xorg.log). X seems to work without any
> issues in v5.1.

5.2 also has support for Panfrost (Mali-Midgard GPUs) but I'm not
sure if it already can support X11 yet and your X11 log mentions
libglamoregl in the segfault stack trace.

Apart from it bisect that Greg suggested you could also just try
blacklisting either panfrost or vpu kernel modules
/etc/udev/somewhere . This would prevent them from loading

Hope that helps
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
