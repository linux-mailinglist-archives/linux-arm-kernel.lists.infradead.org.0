Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE60179C13
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 23:57:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=goCkCz7eu/ei49lVdUEVxCcmHBOV1pzksd3DNxrMu9w=; b=DanWPPZ5Q+gyeJ
	+7Qawup1/Zb5eOm4jd1dCMX6C1TyhwPrgsTnoDKXIxAJ9n7Lkj2v2c2UO+UcqH/THZfHvEKHdUS4C
	mCYlz3dtYsKhn22A9f8ljyJrr4GXLN5BrwRUdIkMY9fnM0ebKTR4ki+X1N42DpqXLSVzbioXl7zfD
	HBprr1gZk7IMc0AyauUj5gzEsxCaEdjC7RtbCQstcncoOwGNmF6DUDMgLfymw8b1TeBx7eHnS29sC
	1J4OyAqNUN7urQMFahDfs8FrYllQ7WUakF5WXnyo2kV+kZQRbpJZzD0iTfPFGxcObRcPb3Ipzdk85
	McaANQFgARtB1U9DYJbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9cx0-00005c-G9; Wed, 04 Mar 2020 22:57:14 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9cwp-000058-O6
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 22:57:04 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 5112780F5;
 Wed,  4 Mar 2020 22:57:48 +0000 (UTC)
Date: Wed, 4 Mar 2020 14:56:59 -0800
From: Tony Lindgren <tony@atomide.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: Re: [PATCH 1/3] ARM: OMAP2+: Handle errors for cpu_pm
Message-ID: <20200304225659.GA37466@atomide.com>
References: <20200304225433.37336-1-tony@atomide.com>
 <20200304225433.37336-2-tony@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200304225433.37336-2-tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_145703_825486_53277A6B 
X-CRM114-Status: UNSURE (   6.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Keerthy <j-keerthy@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Tero Kristo <t-kristo@ti.com>, linux-gpio@vger.kernel.org,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Ladislav Michl <ladis@linux-mips.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tony Lindgren <tony@atomide.com> [200304 22:55]:
> We need to check for errors when calling cpu_pm_enter() and
> cpu_cluster_pm_enter(). And we need to bail out on errors as
> otherwise we can enter a deeper idle state when not desired.
> 
> I'm not aware of the lack of error handling causing issues yet,
> but we need this at least for blocking deeper idle states when
> a GPIO instance has pending interrupts.

Also, If these changes look OK, it's probably best to apply all
three into some immutable gpio branch against v5.6-rc1 that
I can merge in too if needed.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
