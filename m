Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 737FEA86A5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 18:36:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gJ4Bn9ilgaOIelEh+OKFTmGfLSqWRpuSckV24ujP+E8=; b=gCGj6KMP3swvqx
	pOz/Hj+vxvezccEgXxAxvHWjoHxjYWm2fZVKG7WMoTBbsZZpCVfMvBENobPGdbj5P3PXwPmUw6Jjh
	C6tvp/jP2E0ONmPcxwkfJ0pncwj2HQatLjOP/yIIqIYWYYITwSbgolYnnX6Y75Nq16oVRWALrqajD
	RYmWJ5l6RYRbPMmVYxvUuh+aNVg6uzHm2Q6sQ51r5QMgg2D734a2Sk1WzLoSqB8o9WwigCm0ewHiv
	XE9bm6Tlr6Luugsl0sZEBcXGH5HAF3LZyu2fVJbzmkPKAiVSW0kHO9RZ4S+8+iqgN2oLt61qIn/cs
	X6NweXVKZQcxBdpaphrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5YGz-00045b-1m; Wed, 04 Sep 2019 16:36:45 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5YGm-00045B-0D
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 16:36:33 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 77FD480F3;
 Wed,  4 Sep 2019 16:37:00 +0000 (UTC)
Date: Wed, 4 Sep 2019 09:36:27 -0700
From: Tony Lindgren <tony@atomide.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [GIT PULL 1/2] ti-sysc driver changes for v5.3
Message-ID: <20190904163627.GS52127@atomide.com>
References: <pull-1566599057-142651@atomide.com>
 <CAK8P3a1Hh8nFe7h0Jr7tf_aoarvwr3utD7LrFf9rV_OePL-+Zg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a1Hh8nFe7h0Jr7tf_aoarvwr3utD7LrFf9rV_OePL-+Zg@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_093632_083506_80E3B6FE 
X-CRM114-Status: GOOD (  10.10  )
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-omap <linux-omap@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Arnd Bergmann <arnd@arndb.de> [190904 15:27]:
> On Sat, Aug 24, 2019 at 12:24 AM Tony Lindgren <tony@atomide.com> wrote:
> > Driver changes for ti-sysc for v5.4
> >
> > Few changes to prepare for using a reset driver for PRM rstctrl mostly
> > to deal with the clocks for reset. Then few minor clean-up patches and
> > SPDX license identifier changes, and add a MAINTAINERs file entry.
> 
> Pulled this one into an arm/late branch, together with the three
> other pull requests that depend on this one.
> 
> Don't worry about the arm/late name, I expect to send this off
> together with the other branches, it's just easier for me to
> describe what's in each of the top-level branches this way.

OK sure thanks.

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
