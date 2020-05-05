Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E40A81C5BB1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:40:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SxCkmcj6axmYJE5Jm1hDbltDYMbzO22XJKAHuNeIVDA=; b=DMwaJjH/d+l7jt
	91V6j2TCAqnIxULwhHfb1rORkTKYLvpYLEggdAJGsd14bbiLf87VuaXE6FJs0rEahRjs3FE3Zt9sS
	kQHXo53wad3BhKECmHATz7uYQRYb/fsncle3MumUZrXVlBdU7KbOn/BX7l3EnP1PmBhwZLhdbXG7T
	ct5WjCwB3BPaFyxRiZRqRQzjci9QZ5KvoZQ47lmedL5uUCBRViv/6hGDKmoUAVVjGJsr520axWNDF
	vJxaUDNbYw8PhLd4OjqWwQMqwBUr18Q+bzJbiLGsSOf1cEfzo0LXoxXpp/53h97JhEfkVKvNpMSRY
	a3wcH6W9/wC0MyPvWUqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzgB-0001UX-Ep; Tue, 05 May 2020 15:40:19 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzfv-0000U5-CD
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:40:04 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id E842080A5;
 Tue,  5 May 2020 15:40:48 +0000 (UTC)
Date: Tue, 5 May 2020 08:39:57 -0700
From: Tony Lindgren <tony@atomide.com>
To: afzal mohammed <afzal.mohd.ma@gmail.com>
Subject: Re: [PATCH] ARM: omap1: fix irq setup
Message-ID: <20200505153957.GK37466@atomide.com>
References: <20200505141400.767312-1-arnd@arndb.de>
 <20200505143017.GA5263@afzalpc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505143017.GA5263@afzalpc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_084003_463867_B5C4F4A9 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Arnd Bergmann <arnd@arndb.de>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Kevin Hilman <khilman@kernel.org>, linux-kernel@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* afzal mohammed <afzal.mohd.ma@gmail.com> [200505 14:31]:
> Hi,
> 
> On Tue, May 05, 2020 at 04:13:48PM +0200, Arnd Bergmann wrote:
> 
> > A recent cleanup introduced a bug on any omap1 machine that has
> > no wakeup IRQ, i.e. omap15xx:
> 
> > Move this code into a separate function to deal with it cleanly.
> > 
> > Fixes: b75ca5217743 ("ARM: OMAP: replace setup_irq() by request_irq()")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> 
> Sorry for the mistake and thanks for the fix,
> 
> Acked-by: afzal mohammed <afzal.mohd.ma@gmail.com>

Acked-by: Tony Lindgren <tony@atomide.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
