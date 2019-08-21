Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8137A9806B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 18:43:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6G2VOKl5eONTtMfNgaB5izYPAS1F/2uMIs7UEGawLtA=; b=Wslwz/3Dik4Phi
	fJoVkfOvYudcpx9CfFmIAtcWKq0TOP7XmEKTR6hODW94iAG3aIu6gNMGsvsreajxyKA2N7EWQ2LlO
	wYgcO8Oy8Cx5uAiqjO01xStbMyE4VRPdI222ulqYK6UW9utc4n2neeyPWXWVzx85Nm/aXW7UpwmO/
	OHi+T3lNjlMU4acxIr3NrDDb7f4nDrtmShmtRLcf40PQ/TmWFFWaSs6dQG9S1fRSBbz1Al9HtFwwf
	oo3sInAJEGknmR+rUOsVAFxauchZkJHf3ATXhzfysvQR1HB0/1SvwmmemdirkKnK644fcmYYaOw+q
	iHTJZxs46NGiNE+v94sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Thm-0005cH-JO; Wed, 21 Aug 2019 16:43:26 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Thd-0005ZG-4B
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 16:43:18 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 1960824000D;
 Wed, 21 Aug 2019 16:43:08 +0000 (UTC)
Date: Wed, 21 Aug 2019 18:43:08 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH 1/9] ARM: dts: at91: Add label for sam9x5's internal RTC
Message-ID: <20190821164308.GF27031@piout.net>
References: <20190812212757.23432-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812212757.23432-1-uwe@kleine-koenig.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_094317_316853_3F047FFA 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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

On 12/08/2019 23:27:49+0200, Uwe Kleine-K=F6nig wrote:
> This allows to simplify several machine device trees using this label
> instead of duplicating the SoC's hierarchy.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> ---
>  arch/arm/boot/dts/at91sam9x5.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
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
