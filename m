Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C76BF12A8A7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 18:25:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zv723t5rn9UbDqStud6Zx+HDU6W60qRD0oaVj3PITJc=; b=efqqeDYh18fdfT
	FlYwzSNMgHKQRagmyzFzqEcsSwwaIB54aHwNN16guN+6Qa1+IWMTcg5byndHoFbbqThQ8hnL6hN5Q
	a7iU65vuhfwkXEj7ShKNeFWX9ucoJAnwP7aN9jU2UxGm+AG2g4RXAysDhRUlUwEmQI/ihc0oMOssm
	c3UX4XA64oRahCJcyyJvpXw+I3K6tTzfY+yF4bDymgacmQyPxPfIcG3BBe0/227XUQXPW9NPhnXVQ
	QlKWXaUuHo+JTBJaJ0cnggK1sGpEjFTGv+3Tp59HkFNB86R1gENcKlp74cgTtrwhRDaA5IVJ+2gbk
	SkiVN2a+yXAYt4vwHHYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikAPP-0007PK-RK; Wed, 25 Dec 2019 17:25:19 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikAPA-0006ev-2p
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Dec 2019 17:25:06 +0000
X-Originating-IP: 94.238.217.212
Received: from localhost (unknown [94.238.217.212])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 933CAFF802;
 Wed, 25 Dec 2019 17:24:51 +0000 (UTC)
Date: Wed, 25 Dec 2019 18:24:50 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH 1/2] ARM: at91: pm: use SAM9X60 PMC's compatible
Message-ID: <20191225172450.GB1111840@piout.net>
References: <1576062248-18514-1-git-send-email-claudiu.beznea@microchip.com>
 <1576062248-18514-2-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576062248-18514-2-git-send-email-claudiu.beznea@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_092504_266409_592EDECD 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.199 listed in wl.mailspike.net]
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
Cc: linux-kernel@vger.kernel.org, ludovic.desroches@microchip.com,
 linux-arm-kernel@lists.infradead.org, linux@armlinux.org.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/12/2019 13:04:07+0200, Claudiu Beznea wrote:
> SAM9X60 PMC's has a different PMC. It was not integrated at the moment
> commit 01c7031cfa73 ("ARM: at91: pm: initial PM support for SAM9X60")
> was published.
> 
> Fixes: 01c7031cfa73 ("ARM: at91: pm: initial PM support for SAM9X60")
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  arch/arm/mach-at91/pm.c | 1 +
>  1 file changed, 1 insertion(+)
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
