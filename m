Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C6417046D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 17:32:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iemlFvRsItp0uWWdY0uxo38YmgiyteuJ8C5n1th2SLA=; b=lTTYjxSrKDOBSt
	P1XoCejLYTPCTdw4Kcp/3WH2WLn9j5/dL0BCuE5fdOmxb7/ydZvTKGNERqTywjENiztf8pNWclU43
	efVy8PQ2fA0TAvOJlU1Ja8n+jTqiu40vycM2+CMFLqKotflAwJSl6m9xGEFCNfSoR9jzMMdP169SF
	kWFoVGo0YFblYGiRoPM2Y0wLfIATcUD/QhyXm4NBYCeiN+K2DMEIQPSicLfGDz36qwm9FWM6IdI7O
	WTOzl1nyQZEBtEXvVSfw1YQ38RJQquiDgynmrdI50lmfN0Vq7KiWfBQXLOJsI0eghwKx1WgNzUI+3
	yen0nc+WpRLFjWTbx2Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6zbG-0001G7-Gs; Wed, 26 Feb 2020 16:31:54 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6zb7-0001Fg-PP
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 16:31:47 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 9BCE38022;
 Wed, 26 Feb 2020 16:32:28 +0000 (UTC)
Date: Wed, 26 Feb 2020 08:31:40 -0800
From: Tony Lindgren <tony@atomide.com>
To: afzal mohammed <afzal.mohd.ma@gmail.com>
Subject: Re: [PATCH v2 02/18] ARM: replace setup_irq() by request_irq()
Message-ID: <20200226163140.GP37466@atomide.com>
References: <cover.1582471508.git.afzal.mohd.ma@gmail.com>
 <cbc4859788bd30d6ddc9d9483ed641d6f2d0fd42.1582471508.git.afzal.mohd.ma@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cbc4859788bd30d6ddc9d9483ed641d6f2d0fd42.1582471508.git.afzal.mohd.ma@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_083145_863833_E8FD416B 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Arnd Bergmann <arnd@arndb.de>, Lubomir Rintel <lkundrak@v3.sk>,
 Enrico Weigelt <info@metux.net>, Viresh Kumar <vireshk@kernel.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Kevin Hilman <khilman@kernel.org>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 Krzysztof Halasa <khalasa@piap.pl>, Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Thomas Gleixner <tglx@linutronix.de>,
 linux-omap@vger.kernel.org, Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* afzal mohammed <afzal.mohd.ma@gmail.com> [200224 00:49]:
> request_irq() is preferred over setup_irq(). The early boot setup_irq()
> invocations happen either via 'init_IRQ()' or 'time_init()', while
> memory allocators are ready by 'mm_init()'.
> 
> Per tglx[1], setup_irq() existed in olden days when allocators were not
> ready by the time early interrupts were initialized.
> 
> Hence replace setup_irq() by request_irq().
> 
> Seldom remove_irq() usage has been observed coupled with setup_irq(),
> wherever that has been found, it too has been replaced by free_irq().
> 
> [1] https://lkml.kernel.org/r/alpine.DEB.2.20.1710191609480.1971@nanos
> 
> Signed-off-by: afzal mohammed <afzal.mohd.ma@gmail.com>
> Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
> Acked-by: Alexander Sverdlin <alexander.sverdlin@gmail.com> # EP93xx
> Tested-by: Alexander Sverdlin <alexander.sverdlin@gmail.com> # EP93xx

Works for me:

Tested-by: Tony Lindgren <tony@atomide.com> # omap1 osk

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
