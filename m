Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3809806C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 18:43:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z1qcq7R1sa1yoG/oiV8QTK2nYjCNJus85HeXMn0O1yo=; b=pCxvmAqPBOyBHr
	Gh6vICumvQmH9i26EkZrF0J6tTGCWwvqcVf/3SuY8Qkx1UqjAtCf9taF88iYXLxFAc4WGlTNjG/Qs
	BzLiDUl8nNXL5utGiFlozx5ytYfkhsq98V1hlfODgnCWsqKiea8ZYhRM00UGFykqPd3XiVokIQpwh
	n8fcVPaOHTQwObEOBw2y8+bTZQUyniAFYZ2qc7NZuUHMDDroLM/1ev20E8OseDN+IzvYPggWn75Yl
	Dsag6lVzmnqdrYQq3LssKqFBY9P1L2Y2sFtvYDxP5OYOHqmFDdAWAxMaTnfft3jXFagDU91ux04dY
	WvcW2tTTgfOphZb6EYnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Ti4-0005s9-Gh; Wed, 21 Aug 2019 16:43:44 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Tht-0005oq-7H
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 16:43:34 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 4309D1BF208;
 Wed, 21 Aug 2019 16:43:25 +0000 (UTC)
Date: Wed, 21 Aug 2019 18:43:24 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH 2/9] ARM: dts: at91: ariag25: Style cleanup
Message-ID: <20190821164324.GG27031@piout.net>
References: <20190812212757.23432-1-uwe@kleine-koenig.org>
 <20190812212757.23432-2-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812212757.23432-2-uwe@kleine-koenig.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_094333_412318_2E876470 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/08/2019 23:27:50+0200, Uwe Kleine-K=F6nig wrote:
> - newline between properties and sub-nodes
> - use tags from included dtsi instead of duplicating the hierarchy
> =

> There are no differences in the generated .dtb
> =

> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> ---
>  arch/arm/boot/dts/at91-ariag25.dts | 255 ++++++++++++++---------------
>  1 file changed, 124 insertions(+), 131 deletions(-)
> =

Applied, thanks.

-- =

Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
