Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D17E13588D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 12:53:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJyujo4zmH6Otn7qCp1pO6nQWyaOjvdDJHVgBwnr5mY=; b=KY4Z8bA3yfk/Z7
	Xn9SSuJ7Nlz0qkySGVdFMKaNFvKsxmekHCLkdlBwDJ9NQ/6DadOhC3MGc5fLiPPCJ+6lLVikx52eT
	p3+8HkKqbbPx7PjGnQBey/NOHhsSxoxOWrSZ7j8vKOrW04m/SGEwDyw/fzUJUDy5t0mO16G1UziHa
	OpZE8FaT3h1yqtXkFr4Woh+kjtd9kG9XOalUlmSTImsfHXxwUy+4+KUilq4f/4i5SbUebqUqLBIcp
	ijoP3nckVlnrv8v8y7GfgsW+wiC2viLCzmWEJbRdCYuBKcdy2TJ+0yGKWROlyqe2DQrc5jAP6JiUv
	5WyNM9XqC2IBfSUq0LfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipWN4-0001gg-CC; Thu, 09 Jan 2020 11:53:02 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipWMu-0001fK-6k
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 11:52:54 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 58E2120003;
 Thu,  9 Jan 2020 11:52:42 +0000 (UTC)
Date: Thu, 9 Jan 2020 12:52:41 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH 04/10] rtc: at91rm9200: use of_platform_populate as
 return value
Message-ID: <20200109115241.GX3040@piout.net>
References: <1576686157-11939-1-git-send-email-eugen.hristev@microchip.com>
 <1576686157-11939-5-git-send-email-eugen.hristev@microchip.com>
 <20191218164348.GN695889@piout.net>
 <04264cb0-61a9-aba3-82ad-e7d12fd8441e@microchip.com>
 <20191218165831.GO695889@piout.net>
 <91cc67e1-7e14-f7b9-da77-b16d9e158f20@microchip.com>
 <20191219102321.GR695889@piout.net>
 <20191223111636.4698123b@archlinux>
 <7e67d601-e17e-f82c-edeb-824fc3dd89db@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7e67d601-e17e-f82c-edeb-824fc3dd89db@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_035252_381144_20EF1E50 
X-CRM114-Status: GOOD (  11.43  )
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org, a.zummo@towertech.it,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/01/2020 11:19:45+0000, Eugen.Hristev@microchip.com wrote:
> I started to work on this, I am trying to add and probe the 
> rtc_adc_trigger with platform_device_add.
> 
> However, some issues arise: this means that the rtc_adc_trigger will not 
> be OF-compatible, so, how can I identify the driver to probe ?
> Second, by adding a new platform device from the RTC driver, would mean 
> that I would have to supply it's probe/remove functions, which I cannot 
> have here. Those are in the rtc_adc_trigger iio driver.
> 
> In fact, the question is, which is the mechanism you suggested, to be 
> able to probe the rtc_adc_trigger, from inside the rtc driver, without 
> using a child node in DT, as you requested ?
> The rtc_adc_trigger needs a MEM resource, and a parent, and it must 
> reside inside the IIO subsystem.
> 

As suggested earlier in the thread, you can use platform_add_device
which fits all your requirements.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
