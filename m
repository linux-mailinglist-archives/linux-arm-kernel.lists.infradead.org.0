Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A043320194D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 19:21:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mjgrU6DlmiDg9jzn0qoXSl1v3xpT4T1SFwGbuNJsisY=; b=Wloa9g/3ND46cv
	5MhgXX19jahgiriUhj4BRdUp/npZbtA+2ukG5Mjkfl8y5Thc/mULlyptGdoLJcOMU/d8IRjUIYBhU
	15OdelKoOLTAP4xRTf2Jy+FKPKb4O6fubgXT3MVQlKI1rCjkTfCaqAl9TxJWySPg9O+U5rN0cs+mU
	MYY8908EuVrUf62rBKOdX/eWHuyRdrC+bjZuiA2WyltrqVGI4HOzNYefKWj08iOLB64SDkffp6REr
	814TUW/4Q3ZhyjSuW6i2SZpwbiKMsEYt59m/BIHbOoYJVqQiwRNfcyLNZuhEOB+aFPntINbC/J4Si
	5DSxOMTbQe4RN73s1eEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmKi0-0008Tp-6Z; Fri, 19 Jun 2020 17:21:44 +0000
Received: from mx.baikalchip.com ([94.125.187.42]
 helo=mail.baikalelectronics.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmKhq-0008T9-OK
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 17:21:36 +0000
Received: from localhost (unknown [127.0.0.1])
 by mail.baikalelectronics.ru (Postfix) with ESMTP id 0C2A68030866;
 Fri, 19 Jun 2020 17:21:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at baikalelectronics.ru
Received: from mail.baikalelectronics.ru ([127.0.0.1])
 by localhost (mail.baikalelectronics.ru [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OQ1qZv5ucs0O; Fri, 19 Jun 2020 20:21:32 +0300 (MSK)
Date: Fri, 19 Jun 2020 20:21:31 +0300
From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH RESEND v6 0/3] serial: 8250_dw: Fix ref clock usage
Message-ID: <20200619172131.64qnaghsojgxetgf@mobilestation>
References: <20200617224813.23853-1-Sergey.Semin@baikalelectronics.ru>
 <CAHp75VfPEdxN1UeKJ+gCWpgJymK7YzQs1Lznq1aBfoRNBiMHbQ@mail.gmail.com>
 <CAHp75VdD+=L4OQkwVDx2aLKRssW-qBQL2nsF48J=dCntU8N7Ng@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHp75VdD+=L4OQkwVDx2aLKRssW-qBQL2nsF48J=dCntU8N7Ng@mail.gmail.com>
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_102134_967420_6EEFC8D3 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Maxime Ripard <mripard@kernel.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Vadim Vlasov <V.Vlasov@baikalelectronics.ru>,
 Maxim Kaurkin <Maxim.Kaurkin@baikalelectronics.ru>,
 Ramil Zaripov <Ramil.Zaripov@baikalelectronics.ru>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Tony Lindgren <tony@atomide.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, Serge Semin <fancer.lancer@gmail.com>,
 Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
 Alexey Kolotnikov <Alexey.Kolotnikov@baikalelectronics.ru>,
 Arnd Bergmann <arnd@arndb.de>,
 Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>,
 Ekaterina Skachko <Ekaterina.Skachko@baikalelectronics.ru>,
 Jiri Slaby <jslaby@suse.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Will Deacon <will@kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 18, 2020 at 11:31:44AM +0300, Andy Shevchenko wrote:
> On Thu, Jun 18, 2020 at 11:17 AM Andy Shevchenko
> <andy.shevchenko@gmail.com> wrote:
> > On Thu, Jun 18, 2020 at 1:52 AM Serge Semin
> > <Sergey.Semin@baikalelectronics.ru> wrote:
> 
> > I'm wondering how this will collaborate with runtime PM.
> 

> Forgot to mention the WIP repository [1] for runtime PM rework  (it
> doesn't mean my comment against patch 3 is not valid). Tony and I are
> working on it, you actually may be interested as well.
> 
> [1]: https://gitlab.com/andy-shev/next

Thanks for the link. I'll take a look at the repo. Though our SoC doesn't
require the RPM moderation that critically.

-Sergey

> 
> -- 
> With Best Regards,
> Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
