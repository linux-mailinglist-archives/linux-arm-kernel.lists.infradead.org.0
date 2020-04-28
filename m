Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E06BD1BC419
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 17:51:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWdcE8jotpHRxBYIBxe0Rs79yoTWFFuA6M6JB2KEtbs=; b=BPHSEfpRI2QFtT
	GC+Y5TqNWVW6BuDWis/jNICD+DHjmvaJr23x0VK6L0ZwWSNeCNIYGKTLSX8tOczi+cCLiTfNwsuZO
	GomfLo6qD/oEmxjWTx/tZYkvOVShKIgbqVd/BtTOYgwAoLalvd8bMHQj6TdCSeaJdIEY247vhouuI
	6OwkcJOWvwvBe06tClOQ/tyBdthV9ICC/mcmS+DGNbELrO2DsMOuWPJcB6Fw6xrJa1/736jsypRpJ
	dNEewP+8nYeJGvbAUHoRIaea6VjArojzwcyxEHVN4VYrNmzic2YWmflF+TZ8jenuZQ3zjRjcmYjop
	5lssF08mJirCL38PvY7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTSWX-0008Vx-5I; Tue, 28 Apr 2020 15:51:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTSWO-0008U7-Bb
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 15:51:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CC5D930E;
 Tue, 28 Apr 2020 08:51:40 -0700 (PDT)
Received: from bogus (unknown [10.37.12.53])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2C39E3F305;
 Tue, 28 Apr 2020 08:51:39 -0700 (PDT)
Date: Tue, 28 Apr 2020 16:51:32 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] amba: Retry adding deferred devices at late_initcall
Message-ID: <20200428155132.GA11891@bogus>
References: <20200427212514.11219-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427212514.11219-1-robh@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_085144_444056_DF38410F 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Saravana Kannan <saravanak@google.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 John Stultz <john.stultz@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 04:25:14PM -0500, Rob Herring wrote:
> If amba bus devices defer when adding, the amba bus code simply retries
> adding the devices every 5 seconds. This doesn't work well as it
> completely unsynchronized with starting the init process which can
> happen in less than 5 secs. Add a retry during late_initcall. If the
> amba devices are added, then deferred probe takes over. If the
> dependencies have not probed at this point, then there's no improvement
> over previous behavior. To completely solve this, we'd need to retry
> after every successful probe as deferred probe does.
>
> The list_empty() check now happens outside the mutex, but the mutex
> wasn't necessary in the first place.
>
> This needed to use deferred probe instead of fragile initcall ordering
> on 32-bit VExpress systems where the apb_pclk has a number of probe
> dependencies (vexpress-sysregs, vexpress-config).
>
> Cc: John Stultz <john.stultz@linaro.org>
> Cc: Saravana Kannan <saravanak@google.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Sudeep Holla <sudeep.holla@arm.com>

The change makes sense to me,
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

This also fixed the issue I reported @[1] is fixed with this patch, so:
Tested-by: Sudeep Holla <sudeep.holla@arm.com>

--
Regards,
Sudeep

[1] https://lore.kernel.org/linux-arm-kernel/20200423133342.GA10628@bogus/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
