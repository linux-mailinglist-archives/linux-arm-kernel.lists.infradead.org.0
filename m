Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0194D989
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 20:38:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z5CItIRXuS9BtXVecvSIWPp8GahjN4eN15alTIiMe/M=; b=opz2MNhFe+Ok5X
	GFLsz1pZbCWCUqwA8a8Q8eaizeMuEA0TmAIwaKeRzARHI1f+zIUh/1vshmIqJ+JmMk5HsFNaMl7Zq
	aqW3GVhS0z4wrSu7SPel8cET5mSd20HTKXrtXs7xuh+jD72Uz6vriGpmmlDpf3DVCGsK/wSy7xI6i
	d0B/oirl+Fb55N4X1WXXtpTO1bdcogrGvQesYjoNvBtJimnX3ht+dJRgcQy4mX1ojBK8lsQjIPJ9t
	Ic7+I8ss/yAFEVOVkIOeZiCL0MToreOMfwrUC5HuxO4xcd5O3UKXz6R8+7lVBpqR7Lgpbv8Ock5ie
	bVI3fGNTOkuDs2yhUZiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he1xH-0002ro-EH; Thu, 20 Jun 2019 18:38:39 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he1wP-0002SP-4g
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 18:37:46 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 54605240009;
 Thu, 20 Jun 2019 18:37:42 +0000 (UTC)
Date: Thu, 20 Jun 2019 20:37:42 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 2/3] rtc: pcf8563: Clear event flags and disable
 interrupts before requesting irq
Message-ID: <20190620183742.GD23549@piout.net>
References: <20190604042337.26129-1-wens@kernel.org>
 <20190604042337.26129-3-wens@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604042337.26129-3-wens@kernel.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_113745_421103_EBC7449F 
X-CRM114-Status: GOOD (  12.00  )
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 devicetree@vger.kernel.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel@vger.kernel.org, Vincent Donnefort <vdonnefort@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/06/2019 12:23:36+0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> Besides the alarm, the PCF8563 also has a timer triggered interrupt.
> In cases where the previous system left the timer and interrupts on,
> or somehow the bits got enabled, the interrupt would keep triggering
> as the kernel doesn't know about it.
> 
> Clear both the alarm and timer event flags, and disable the interrupts,
> before requesting the interrupt line.
> 
> Fixes: ede3e9d47cca ("drivers/rtc/rtc-pcf8563.c: add alarm support")
> Fixes: a45d528aab8b ("rtc: pcf8563: clear expired alarm at boot time")
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  drivers/rtc/rtc-pcf8563.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
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
