Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34706D2C91
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 16:31:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gMhKWO3Ca0pvNMGzaIOB74T7gdmgZwiQ+SVFH4sPtTA=; b=LYcFdeyXAkokW9
	7zi6I/RdI7ntXwKr0ygQ0pUwralsGNHNdfWDnrUNRSy1k4QQfa18EaNny2bVs8QXieF+huQNIGE6u
	xZjdMGAnp940HamOrmc29bKPKwV4uDHkDI9gQurDScacywoKWBnvQy4NgKzKef1vehGMQ/o7MYWVw
	j1amidPSkE84MFrK+J/pF6EDf8M7a9ac/3GE+4IweFr/6HK20deBKMzdPmYk/Va7qrUdvWFyaU3RU
	+tVC2cQg0GKiDlZ4lpiDtXh+RJKhVkqbirPkwGD2td9Om2TV6yckdIrMy5f8ALr+DOhMe0O7eA72N
	pJa+jru6QwufD/WVuK7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIZTm-0001UJ-L1; Thu, 10 Oct 2019 14:31:46 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIZTf-0001U1-3E
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 14:31:40 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 5B12180BB;
 Thu, 10 Oct 2019 14:32:10 +0000 (UTC)
Date: Thu, 10 Oct 2019 07:31:33 -0700
From: Tony Lindgren <tony@atomide.com>
To: Tero Kristo <t-kristo@ti.com>, Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH 0/5] ARM: dts: omap4+: Add PRM nodes for reset support
Message-ID: <20191010143133.GW5610@atomide.com>
References: <20191010082108.15448-1-t-kristo@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010082108.15448-1-t-kristo@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_073139_175816_D8A4D215 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tero Kristo <t-kristo@ti.com> [191010 01:21]:
> Hi Tony,
> 
> This series adds the OMAP PRM nodes for reset support for am3, am4,
> omap4, omap5 and dra7 SoCs. The driver support has been queued up by
> Santosh [1].

OK planning on applying these into omap-for-v5.5/prm on top of
Santosh's immutable branch.

But I'm wondering if we should also have an immutable branch for the
clkctrl changes that I can merge in too?

Then with the prm driver changes, clkctrl changes and these, we
have things working for applying some rstctrl using device patches
like the old am335x sgx ti-sysc patch?

Regards,

Tony

> [1] https://patchwork.kernel.org/cover/11179573/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
