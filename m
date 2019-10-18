Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F32F5DCEE6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 21:01:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3IPkv/xFr6cd4mxn+Ib4xgE1bG5KtSB/YqCZgVJXgTw=; b=e00OFXR4Zxwr90
	WcelIatxsvLqmro7I9X3jjDT8yZR9V2EVTXQnEAziPc1shhxYzZULsacQJass02zdX2vCOHu8BrK6
	K6YvQWAK/4si4C2fSrXa6Z7HnwKykQoJQZ0NqfO/dpX55PL9mXq7xpuVRw9GXBnyPfHJdpLSAUD+H
	t4cKZeK2jiTCGzA7xVcy9ARB4X6PixuYBu8hB1QoPdzAXyxIlWiKqDwL6bGfoH+it2Cz4tvOafCMQ
	8FbFSLPiqx7j5pgCtD/Qbl1yxEvzNyBXR1HaWajYaHaNARvp29Z5gV5NaRWfDWpRg4u5roDdRQMK4
	3RLPnbyFlEfDTuGosVwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLXVT-0005go-Oo; Fri, 18 Oct 2019 19:01:47 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLXVK-0005gB-TV
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 19:01:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=d5loDZDyZ3FGWYtEc80UdkQmNImMULENPQ9QfLtUGRg=; b=rohR03I0mjEhdQm+mVizrZXUcT
 6W416mpGZ9nVFI3EDKraNP+jAOcICWeAI5pbK+etYJTrcnFKW/fPyymxFSQpqNUx/PP9F/fJwgEpq
 qf7k/dUQApFWZyGkRfmdPxwnnnLLCwQ1AqHNSziUwD88/9Ui8cSAJa3C+whKGOqPXsDY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1iLXVH-0002mg-8F; Fri, 18 Oct 2019 21:01:35 +0200
Date: Fri, 18 Oct 2019 21:01:35 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 6/6] ARM: orion: unify Makefile/Kconfig files
Message-ID: <20191018190135.GF24810@lunn.ch>
References: <20191018163047.1284736-1-arnd@arndb.de>
 <20191018163047.1284736-6-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018163047.1284736-6-arnd@arndb.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_120138_951784_D81F248C 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Jason Cooper <jason@lakedaemon.net>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 06:29:19PM +0200, Arnd Bergmann wrote:
> +config MACH_TERASTATION_WXL
> +	bool "Buffalo WLX (Terastation Duo) NAS"
> +	help
> +	  Say 'Y' here if you want your kernel to support the
> +	  Buffalo WXL Nas.
> +
> +endif
> +
> +# SPDX-License-Identifier: GPL-2.0-only
> +menuconfig ARCH_ORION5X
> +	bool "Marvell Orion"
> +	depends on MMU && ARCH_MULTI_V5
> +	select CPU_FEROCEON
> +	select GENERIC_CLOCKEVENTS
> +	select FORCE_PCI
> +	select PHYLIB if NETDEVICES
> +	select PLAT_ORION_LEGACY
> +	help
> +	  Support for the following Marvell Orion 5x series SoCs:
> +	  Orion-1 (5181), Orion-VoIP (5181L), Orion-NAS (5182),
> +	  Orion-2 (5281), Orion-1-90 (6183).

Hi Arnd

I don't think this SPDX line should be in the middle of the file?

  Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
