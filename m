Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D59131C07E0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 22:26:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xDKENgOvDh1NifkozyTTfHIdc+As7icuF7q3uKRdRh0=; b=fqWGmINT5Dbqzm
	ynqW4KA0AiJfgjefFgA5g7mdeZKX03iefIAtL+IBDQcgHbAAXpZdEIf9Wvp1rBywdZrs03SWgVjQ3
	RxDi/zRX0qkyQslw7QvF6zKcnKSkHTOUtIQ5fVS9SxDd1XC8FZbA9LFYahLOtAPXpg4XnlS2fzNNH
	1hu4xLaK6saPHCb4vND02IHiDOAmm/hSq8bMPLAKiPvc04yvF7XqJSc9PA76sYN8UiIw+ZGfWmB/K
	uvoLk0JpOkaCHfP8i/0cSMCJRSgTQZNk20EPzKPJTEddQOi9OpSRPAyJYYp4ueNmePTB4KLHPWlnO
	4awCB6/aCkCD+uLvVDeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUFko-0001hA-P7; Thu, 30 Apr 2020 20:25:54 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUFkf-0001g4-0o
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 20:25:46 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id B48918123;
 Thu, 30 Apr 2020 20:26:29 +0000 (UTC)
Date: Thu, 30 Apr 2020 13:25:38 -0700
From: Tony Lindgren <tony@atomide.com>
To: Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCH 1/8] ARM: dts: omap4: fix node names for the l4_cm
 clkctrl nodes
Message-ID: <20200430202538.GZ37466@atomide.com>
References: <20200429143002.5050-1-t-kristo@ti.com>
 <20200429143002.5050-2-t-kristo@ti.com>
 <20200429220714.GV37466@atomide.com>
 <fef91f43-df5f-99e4-7861-05190fcc2040@ti.com>
 <cb563fb2-4909-a11a-d167-a5e982f38968@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cb563fb2-4909-a11a-d167-a5e982f38968@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_132545_100011_B09516E1 
X-CRM114-Status: GOOD (  13.93  )
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
Cc: linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tero Kristo <t-kristo@ti.com> [200430 08:35]:
> On 30/04/2020 07:55, Tero Kristo wrote:
> > On 30/04/2020 01:07, Tony Lindgren wrote:
> > > Heh this is no longer needed since commit 6c3090520554
> > > ("clk: ti: clkctrl: Fix hidden dependency to node name")
> > > that added support for using the compatible name :)
> > > 
> > > Maybe you are using some older tree? Or else there's
> > > still something wrong somewhere.
> > 
> > I was using 5.7-rc1 as baseline so can't be that.
> > 
> > Let me try to check this one again.
> 
> Ok you can ignore this and patch #2 for omap5 for similar case. It seems
> like the patch 6c3090520554 actually forgot to fix the subclock names, and
> it causes issues in mixed clock node setup. Will post a fix against the
> clock driver shortly.

OK good to hear.

Thanks,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
