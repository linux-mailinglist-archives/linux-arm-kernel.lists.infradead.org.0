Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8D39A1C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 23:12:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/aU9Yain0kMKPJaGFxmNnh+aT9AVGVHVzXg6H3JZA8I=; b=p9rtIXmQGvZZfK
	SSVqg656dfO+q60ggmga2OR4FgdqqTcAqOA89uaY9EK4pb6kGyCOEg5HMpEPJGX2/5aOHn0P2Rjjf
	sWpH/9BUclfD3ELo1Pujb2IUUzNB4udFJggUtgEA+yixN0EoMvHfJ/QoZgmnBTjfWyHjFkh1UNMhA
	hZrId6b/stb6WjbzdeX8XGnXYriwl7L284FIzpLwfAZqKD0tJ77uZ8bsgIxXNru1qR6bE0IiVec1r
	2ISVNoWdiU/TsoOJGbMg7V2ydY/IRy8Uz/fPocZol9Ef8x0NmrxI89ZGLlT1QpIMcHPZ9Lj/FiBHE
	UbQCRDrFKUWgh9Lo61SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0uNB-000449-Hk; Thu, 22 Aug 2019 21:11:57 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0uMv-00042f-5q; Thu, 22 Aug 2019 21:11:43 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 3AE0F20008;
 Thu, 22 Aug 2019 21:11:34 +0000 (UTC)
Date: Thu, 22 Aug 2019 23:11:34 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Kevin Hilman <khilman@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: rtc: new binding for Amlogic VRTC
Message-ID: <20190822211134.GA27031@piout.net>
References: <20190812232850.8016-1-khilman@kernel.org>
 <20190812232850.8016-2-khilman@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812232850.8016-2-khilman@kernel.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_141141_390117_58114333 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/08/2019 16:28:49-0700, Kevin Hilman wrote:
> From: Kevin Hilman <khilman@baylibre.com>
> 
> Add binding fo the new VRTC driver for Amlogic SoCs.  The 64-bit
> family of SoCs only has an RTC managed by firmware, and this VRTC
> driver provides the simple, one-register firmware interface.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Kevin Hilman <khilman@baylibre.com>
> ---
>  .../bindings/rtc/rtc-meson-vrtc.txt           | 22 +++++++++++++++++++
>  1 file changed, 22 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/rtc/rtc-meson-vrtc.txt
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
