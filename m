Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A8931C9C05
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 22:17:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kJDCsx8noyYQIm+SmTXw8BltXGvy6kKj/SPNqJ1mhQo=; b=UdI4wuDi4lu4wY
	Stl3zXeLCiUyUXj4N39QOTpEihDStm+zarDkF1O3PZRxdSCDpCSbFRXzBnKuHfqeI4Synjtd0zVVG
	+mTCWsOclRDMrtKZ1MDDbxUn8yLFXfYOt51RGv+Z9+yWM3v5WsuIwzcqLzVFLtbpUO1srvYTK8eRm
	o2V7526NrW0ViNSirVf8xARja+Oa+aBbN/yjJ1gR0yVN56ab592mp4KZe5gzbFVSBBGxpBQpLQs0l
	okL9FTd87XRZKSaNk4jXLWceruqAdkwrIdEfI6yPHre2ch9fcM6ivXWdJHwnqIBQmh+7gKDZHdaD4
	vD8xGanKtA7vFEZOjsKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWmxl-0000qb-UF; Thu, 07 May 2020 20:17:45 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWmxb-0000pk-L2
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 20:17:37 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 7651E1195050D;
 Thu,  7 May 2020 13:17:28 -0700 (PDT)
Date: Thu, 07 May 2020 13:17:27 -0700 (PDT)
Message-Id: <20200507.131727.907589220898369492.davem@davemloft.net>
To: geert+renesas@glider.be
Subject: Re: [PATCH] via-rhine: Add platform dependencies
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200507114205.24621-1-geert+renesas@glider.be>
References: <20200507114205.24621-1-geert+renesas@glider.be>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 07 May 2020 13:17:28 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_131735_690442_C92745DA 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux@prisktech.co.nz, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, arnd@arndb.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Geert Uytterhoeven <geert+renesas@glider.be>
Date: Thu,  7 May 2020 13:42:05 +0200

> The VIA Rhine Ethernet interface is only present on PCI devices or
> VIA/WonderMedia VT8500/WM85xx SoCs.  Add platform dependencies to the
> VIA_RHINE config symbol, to avoid asking the user about it when
> configuring a kernel without PCI or VT8500/WM85xx support.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Applied to net-next.

Although I hope that the COMPILE_TEST guard is not too loose and
now we'll have randconfig build failures for some reason.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
