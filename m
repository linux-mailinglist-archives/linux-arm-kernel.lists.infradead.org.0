Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B93D9438
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 16:47:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W+0G5UqqtKiFdd1Y+lxbRqDsVP4D44XwfL1YmleiUgo=; b=okbp27BXdnFgwN
	ZcyGlM1h2zag82hZUqrPNQ1n97G/Y1Jb/vqAZx6xDkHw4E9qtw6gw3UOlZ62F/I2jKtpWOJFIP4zG
	iE4DMwuMwLRX1Akv43ghuZE/Z2rNbdk+oEdsvPCXz/69scbqK+Zm959YWSbBqjKvULWdlIt7vd94k
	Ung2V8OzaMHBQOfY5UQ5FQJ8hCYXmh22zrr6g8EM8rYRUBKGTpiaxlRjfxDkZCUv0yR+/1uP7EThL
	A6g5eujlLv8TtHccfMalurYPWX2RkGmXkF2T9oyNMu02OoxURCmplir3AUjvjihMvZK1wPXbKVWxo
	65me0MVJ8Ed127ZzLJIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKkZl-0007mz-TX; Wed, 16 Oct 2019 14:46:57 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKkZa-0007mQ-VK
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 14:46:48 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id F1EAF8107;
 Wed, 16 Oct 2019 14:47:19 +0000 (UTC)
Date: Wed, 16 Oct 2019 07:46:42 -0700
From: Tony Lindgren <tony@atomide.com>
To: Pavel Machek <pavel@ucw.cz>
Subject: Re: [PATCH 7/8] ARM: OMAP2+: Allow core oswr for omap4
Message-ID: <20191016144642.GD5610@atomide.com>
References: <20191010001224.41826-1-tony@atomide.com>
 <20191010001224.41826-8-tony@atomide.com>
 <20191013150806.GE13278@amd>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191013150806.GE13278@amd>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_074647_042920_B0021AC7 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Merlijn Wajer <merlijn@wizzup.org>, linux-omap@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Pavel Machek <pavel@ucw.cz> [191013 15:08]:
> On Wed 2019-10-09 17:12:23, Tony Lindgren wrote:
> > Commit f74297dd9354 ("ARM: OMAP2+: Make sure LOGICRETSTATE bits are not
> > cleared") disabled oswr (open switch retention) for per and core domains
> > as various GPIO related issues were noticed if the bootloader had
> > configured the bits for LOGICRETSTATE for per and core domains.
> > 
> > With the recent gpio-omap fixes, mostly related to commit e6818d29ea15
> > ("gpio: gpio-omap: configure edge detection for level IRQs for idle
> > wakeup"), things now behave for enabling core oswr for omap4.
> > 
> > Cc: Merlijn Wajer <merlijn@wizzup.org>
> > Cc: Pavel Machek <pavel@ucw.cz>
> > Cc: Sebastian Reichel <sre@kernel.org>
> > Signed-off-by: Tony Lindgren <tony@atomide.com>
> 
> 2,7,8 basically modify same lines of code? Should that be done in one
> patch?

In this case let's change one thing at a time as many issues
have been seen earlier with these settings. We want git bisect
to tell us which change breaks things in case of trouble.

The related gpio related issues should be fixed now though.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
