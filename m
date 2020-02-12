Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7273315A7DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 12:28:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=flWLeC9cGUz0awbDwGlyWm6Cvu/HXNLJcsvWy1uuDu8=; b=pCxR8XaZFK5Ydl
	e2jMFacfQzsC46nvb4oFHWCXHeHxBC93JvyxCEHJ7QDyZ7pQMHPwqRWRQt6QW07eu+gqR3GISbCsp
	fuxjxtcJLoyxwawG+b7Ahwh/ow0roKV5UJMEAe+FU/n1GfTi6+IBmpWZ3URbY41G/j7uETZZk8DmG
	zfAmKJw7y7pN8l9WDwKFV9O6MgRD8Ri2P9uw54s4qFU5CZM7Gz1jS8KNJS4KtJpSDoEDahmnAWAu+
	Cu8guz5c4Y6BNkJTEFS/CEmQ/Md4SZdZQsAGLV13nFBM6n6TDgikaRZfrHJVT4I//iJLFf/MpK7Cs
	z+Vb52xqwIv2cA9+tm3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1qCJ-0002rX-0Q; Wed, 12 Feb 2020 11:28:51 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1qCB-0002ql-4m
 for linux-arm-kernel@bombadil.infradead.org; Wed, 12 Feb 2020 11:28:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=0UhlA8aoKrSwS1WTfn2ITcnXsFcZv5+r/dasL1Du6B4=; b=ua0HNXlhlBhwZcVOn7vpLZ3BAf
 7T6aRjUwyOd+gqHBS6GMocmDLnm4dEN5FrE3tIW/ztDxAXIy7NZKO57eHpIvKAuRLUFSNYb7FK09K
 Kt88dL3RB1kT2H0oPFM9rCs5JZ3yt26z51d+eSVAq6kCA4+VJQPHYnjzMFkBB29oI0pdB0ZVoWFS7
 lteWXCzko0nKHGDBH4u+wUFgB55CYT5EWynHFv09GvKIwqiAJswUEHQdovX3s5SPO4o4wNqaEuzmb
 VTkFdHkFA05Ge6c8ClUKfFlMMP+HDSWmirO74JdLwXgTsD3Q33fjnK7kb7goSm7/2nRYMwZeUDRF7
 CkGvGc+A==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1qC7-0006IM-0j
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 11:28:41 +0000
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id DAAAA200008;
 Wed, 12 Feb 2020 11:27:53 +0000 (UTC)
Date: Wed, 12 Feb 2020 12:27:53 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH 1/3] ARM: dts: at91: sam9x60: add watchdog node
Message-ID: <20200212112753.GE3326@piout.net>
References: <1581408369-14469-1-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581408369-14469-1-git-send-email-eugen.hristev@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_112839_234784_06C96F22 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-2.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org,
 Claudiu.Beznea@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/02/2020 08:07:14+0000, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Add node for watchdog timer.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
>  arch/arm/boot/dts/sam9x60.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
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
