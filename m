Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E169A1FA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 23:16:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KupTxXP5iUQ8/G1wZrNlz84LtNBYJzAhX75l8UuiOBg=; b=B64v28aQUHQJ7X
	2j2VXIEw6DUJa6NoFKTe+lQ03tH6e4E3y7xRmNp1iHWBhkm1QhHt4ZlBEv6bxaCu1tlL+HaMkQFZA
	WfoCNP+yPb/8YSn1w8rPTIkcz49Bwmp12IyU7a7BeeYeNKg8gMQI4INogpV86rz9XngNDcT0nhiKa
	dNAZf2UNHA4Mn1oYj1yxO1NMqweN9IX7QyRt9DxDNeoG0MefqMFHsHpdGJuzsnzPECiY96W/6dX4A
	EYzudPrSx2jTX4umCsAF5qOAuC9jSfoVQjwxPvw52DLnaqT7P/NQnmSvScjoKEgeGom/I32tuRJq1
	VfdxitEiXOZxnDsTO2rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0uRY-0007H2-1g; Thu, 22 Aug 2019 21:16:28 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0uRG-000753-TA
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 21:16:13 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id BC180FF807;
 Thu, 22 Aug 2019 21:16:01 +0000 (UTC)
Date: Thu, 22 Aug 2019 23:16:01 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: megous@megous.com
Subject: Re: [PATCH v2 2/3] rtc: sun6i: Add support for H6 RTC
Message-ID: <20190822211601.GF27031@piout.net>
References: <20190820151934.3860-1-megous@megous.com>
 <20190820151934.3860-3-megous@megous.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820151934.3860-3-megous@megous.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_141611_367870_1653A4E6 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/08/2019 17:19:33+0200, megous@megous.com wrote:
> From: Ondrej Jirman <megous@megous.com>
> 
> RTC on H6 is mostly the same as on H5 and H3. It has slight differences
> mostly in features that are not yet supported by this driver.
> 
> Some differences are already stated in the comments in existing code.
> One other difference is that H6 has extra bit in LOSC_CTRL_REG, called
> EXT_LOSC_EN to enable/disable external low speed crystal oscillator.
> 
> It also has bit EXT_LOSC_STA in LOSC_AUTO_SWT_STA_REG, to check whether
> external low speed oscillator is working correctly.
> 
> This patch adds support for enabling LOSC when necessary:
> 
> - during reparenting
> - when probing the clock
> 
> H6 also has capacbility to automatically reparent RTC clock from
> external crystal oscillator, to internal RC oscillator, if external
> oscillator fails. This is enabled by default. Disable it during
> probe.
> 
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> Reviewed-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  drivers/rtc/rtc-sun6i.c | 40 ++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 38 insertions(+), 2 deletions(-)
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
