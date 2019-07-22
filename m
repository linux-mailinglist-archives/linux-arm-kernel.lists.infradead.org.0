Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB2F70A98
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 22:24:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a0wT4ww0QIlZj4eAH3ozdpp9q7S14hHOVuy4Y+ioACw=; b=MwJSTI2WfhJT7/
	pP4SdnaC9oYFZfKknxILvOr5SSUHLvA3y16uzt2EDqK4a2/c+rctbsaUEigJxPLg087IJ8Xwj9NQo
	7KiFOfvsli/LHhUWOEpUSUMEVLYZxncSDAX7SUTKMG8Uztvyu4hk5NENHZEm6Gp3PqpIxwvlNsfkq
	CzzV5OtT/GS6z9HFQhXWoFTNAAqfh5TcU33oQr4xSweckHGyy35tFjDdErD6uKGN07JXG4timb3F6
	6A47j3GscJNd3eDKd8CYz3lbmjPZ8t8MLnYJVnWUC+MET+Z4rP3iy36wLcVR+FKIlb3Cxyctk4a4N
	FZ590Vz3Q7evIktT9VMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpeql-0001yu-6z; Mon, 22 Jul 2019 20:23:59 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpeqW-0001yN-8u
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 20:23:45 +0000
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id E8F1C200002;
 Mon, 22 Jul 2019 20:23:38 +0000 (UTC)
Date: Mon, 22 Jul 2019 22:23:38 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH] dt-bindings: rtc: Remove the PCF8563 from the trivial RTCs
Message-ID: <20190722202338.GC24911@piout.net>
References: <20190722140921.22681-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722140921.22681-1-maxime.ripard@bootlin.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_132344_473767_CD992E12 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/07/2019 16:09:21+0200, Maxime Ripard wrote:
> The PCF8563 has a binding of its own, with some, clocks related, additional
> properties.
> 
> Remove it from the trivial RTC bindings.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/rtc/trivial-rtc.yaml | 2 --
>  1 file changed, 2 deletions(-)
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
