Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 076E51FB8CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 17:59:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nUMxLPFYdVwMw3ykJTyfJ3flYfbtu7FzdMbvBpr3YKw=; b=FpnjP/82XVE+rx
	0kPifWgMJXnPOE1DiFWObUjQI3/3PdAka+vMVIc0fymObuCXGhRqCDnpmjwIkwI/IBARYlsJ5lQbo
	XaYajPHx0m+LclbYyLswfPJLBd0YbG0A0AdT+Bfu9vf5STABQUpPc81jfjWlyhl5xe8hvfQSmnDjN
	PDX5TlZ/v9ewpXtbQ1urUi+G0/NnxF2/8r7wN0a62a1+5RsJkScj/hLXKKcNeUZdgYQseuClD7FDZ
	2C7aPYnjQ2ZSaHHvvNaC1quncmhRNvzs0C03qrg6X6S8zRTekyaS1adJU+LwrQERfJbD74LEfQ3XX
	agdE4Aw+kYoTn0XZYmWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlE03-0004Ly-Es; Tue, 16 Jun 2020 15:59:47 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlDzC-0003no-VO
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 15:58:56 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id A82588123;
 Tue, 16 Jun 2020 15:59:46 +0000 (UTC)
Date: Tue, 16 Jun 2020 08:58:52 -0700
From: Tony Lindgren <tony@atomide.com>
To: afzal mohammed <afzal.mohd.ma@gmail.com>
Subject: Re: [PATCH] ARM: omap1: fix irq setup
Message-ID: <20200616155852.GB37466@atomide.com>
References: <20200505141400.767312-1-arnd@arndb.de>
 <20200505143017.GA5263@afzalpc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505143017.GA5263@afzalpc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_085855_076232_1D1A303F 
X-CRM114-Status: UNSURE (   9.63  )
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

Hmm so is this one still pending?

Best that Arnd applies it directly:

Acked-by: Tony Lindgren <tony@atomide.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
