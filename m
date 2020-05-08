Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD601CB216
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 16:42:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0NeFQYXnJTvsh/e7lJ3CJBhzpUlwBioFaBiej2VADJU=; b=dLqltbF881CK1N
	HjtEZgSQHP/pHzqQv6qUT/rWKcp6W2dN3DEObK7CmY0dpBzmNHRrreCKdE+Qz338a4SG4RQDUht61
	PM94p9YR+F8/5VqD+Re9NvCgCeZECqplA3LdqM3SctpoPc2Tjs6ggIRZBxoPOjYwFo9fai2oXCUOX
	TJM7Fj0qSLgaL6t+QWnqrKNIxiSQDux0EWqxFmgZLHXLCW1yWRUqzyLu/L36JKVeRP3Be+0HY/uAQ
	sByg3AYJcHMB4xfxgr91bzXj/zI5T8uHCjv1K82taPXVq9/VB5AersEg1GcN1RqmsNq0WVTGCRkeQ
	TLO5aw34UUfzKiRcM+Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX4CT-00015t-DF; Fri, 08 May 2020 14:42:05 +0000
Received: from pb-smtp21.pobox.com ([173.228.157.53])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX4CK-00015O-Aq
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 14:41:57 +0000
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
 by pb-smtp21.pobox.com (Postfix) with ESMTP id 80148DF4AB;
 Fri,  8 May 2020 10:41:50 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=date:from:to
 :cc:subject:in-reply-to:message-id:references:mime-version
 :content-type; s=sasl; bh=268nGxKP+kP8/XSx+FAGYbeJFbM=; b=EfDZKg
 quu3bsCWpJPAtiimjwFQdAyQ3doXrreNcbzWilo7RWd3SQCeFvhsS0rCUUTa5kvK
 4gwnC5q3fAG/n+LTUB7TBNJaaHc4+mHoZYcu/6kpvDBQmVyzuBNA2NAsOoHVcFaG
 lXqOZSyEt8KZYCqLQ7niTrQmMI/j8xeAE/ySw=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
 by pb-smtp21.pobox.com (Postfix) with ESMTP id 76C27DF4AA;
 Fri,  8 May 2020 10:41:50 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=fluxnic.net;
 h=date:from:to:cc:subject:in-reply-to:message-id:references:mime-version:content-type;
 s=2016-12.pbsmtp; bh=8mmkg4rH5isXJ8wYaDfAzwV/UGUoKXvhObaLZRR/pjg=;
 b=iHBypVXsGyesmH50JwnbTKdvFsdL098OUBaME150jW1tisDFVFN6gpceGMEJQOpHUXDpL87A8bqLblvH3cGGI8qdDy7ZazHhBSCK+UuDTWnOMaNGu5k5t6RFkDEj1EDxRxgulIsuLyUwwU2ZhuikCo+lBg5yMVTmz5mQMKWbBfU=
Received: from yoda.home (unknown [24.203.50.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp21.pobox.com (Postfix) with ESMTPSA id 0E163DF4A9;
 Fri,  8 May 2020 10:41:47 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
 by yoda.home (Postfix) with ESMTPSA id 10AC02DA0AA9;
 Fri,  8 May 2020 10:41:45 -0400 (EDT)
Date: Fri, 8 May 2020 10:41:44 -0400 (EDT)
From: Nicolas Pitre <nico@fluxnic.net>
To: Chris Brandt <Chris.Brandt@renesas.com>
Subject: RE: [PATCH/RFC] ARM: dts: rza2mevb: Upstream Linux requires SDRAM
In-Reply-To: <OSAPR01MB2114FB6F10EC904F19363F9D8AA20@OSAPR01MB2114.jpnprd01.prod.outlook.com>
Message-ID: <nycvar.YSQ.7.77.849.2005081023180.5637@knanqh.ubzr>
References: <20200507080528.547-1-geert+renesas@glider.be>
 <nycvar.YSQ.7.77.849.2005071056450.5637@knanqh.ubzr>
 <CAMuHMdXgpR6HDQs_NS4W2C8NxqJp3g1DjR2VneUF5Rvun-L4jQ@mail.gmail.com>
 <nycvar.YSQ.7.77.849.2005071303480.5637@knanqh.ubzr>
 <CAMuHMdW0=KWk2pC2tRUajvZQsoObBEFz7WoJ+uJbHbX27f7b2g@mail.gmail.com>
 <OSAPR01MB2114FB6F10EC904F19363F9D8AA20@OSAPR01MB2114.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
X-Pobox-Relay-ID: 0B3AB5CA-913A-11EA-8877-8D86F504CC47-78420484!pb-smtp21.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_074156_446615_D7AEB77B 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [173.228.157.53 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Magnus Damm <magnus.damm@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 8 May 2020, Chris Brandt wrote:

> The big argument was always that "XIP cannot be multi-platform by 
> definition because RAM/ROM always resides at different addresses in different 
> devices". And as you know, the physical address for RAM and ROM have to 
> be hard coded in the kernel binary.

Exact.  So what is the problem?

> At an ELC a while back, I talked to Arnd and his suggestion was to put 
> the base addresses for RAM and ROM at a fixed location in the kernel 
> binary. Then for each SoC, you manually modify those values in the each 
> binary to match your board. This means there is 'technically' a single build
> that will support all boards.

The very reason for using XIP in the first place is to maximize resource 
savings on constrained platforms. Any notion of a multi-platform kernel 
is completely contrary to this goal. This is even more true for no-MMU 
platforms where you can't abstract physical address differences behind a 
page table.

Multi-platform kernel supporting all boards make sense for generic 
distros and/or build coverage tests. But a multi-platform XIP kernel is 
a nonsense. Trying to make XIP multi-platform might be a nice 
intellectual challenge but that has zero value for actual deployment and 
usage.

Given that there isn't a lot of such platforms anyway, it should be 
possible to carry a few kconfig entries outside of the multi-platform 
menu for XIP targets and live with possible kconfig duplicates. That 
shouldn't be such a maintenance burden.


Nicolas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
