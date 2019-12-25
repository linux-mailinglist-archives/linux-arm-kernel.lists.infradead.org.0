Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A0912A8A8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 18:25:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3LvxuhF7B7ODFCzWayGFkNEH3omlnp+JMpDmJ0qMk6o=; b=sLBcQxqu6Gjhpt
	R2qPRWHpvCzEMebVy4kxY+lqrDgO7Jdd0ZIa7DAbMiG8KYhSMjsiqxesGn0d+twDk+Du4c/0foGBF
	EKCWb0mMxb34iFFFLE+dKhG/gaeyQ2nI8Cbb+9z+6Pds8AKTihTUqU3QJ/WU8Pgabn+40fHXlxTw3
	D5WVh9BYaSrM99clVCYWrrRkJke2NWkRYoShtVD91JcVPqzW64Is2M2gedUdTwpnPQ9nHWI8+MScP
	QfdZjpbejr0liXZ08eE5DKk59WJIGZEMZ+A7PD3nL3c2wKn5AMCX6yaYa1PFQ1qf9Y9MXYxKTOQIX
	7dhn5Fe7LeJBfmJzpjIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikAPc-00082u-Rx; Wed, 25 Dec 2019 17:25:32 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikAPN-0007xl-1a
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Dec 2019 17:25:19 +0000
Received: from localhost (unknown [94.238.217.212])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 47887100002;
 Wed, 25 Dec 2019 17:25:04 +0000 (UTC)
Date: Wed, 25 Dec 2019 18:25:04 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH 2/2] ARM: at91: pm: use of_device_id array to find the
 proper shdwc node
Message-ID: <20191225172504.GC1111840@piout.net>
References: <1576062248-18514-1-git-send-email-claudiu.beznea@microchip.com>
 <1576062248-18514-3-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576062248-18514-3-git-send-email-claudiu.beznea@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_092517_332403_5B316C62 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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

On 11/12/2019 13:04:08+0200, Claudiu Beznea wrote:
> Use of_device_id array to find the proper shdwc compatibile node.
> SAM9X60's shdwc changes were not integrated when
> commit eaedc0d379da ("ARM: at91: pm: add ULP1 support for SAM9X60")
> was integrated.
> 
> Fixes: eaedc0d379da ("ARM: at91: pm: add ULP1 support for SAM9X60")
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  arch/arm/mach-at91/pm.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
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
