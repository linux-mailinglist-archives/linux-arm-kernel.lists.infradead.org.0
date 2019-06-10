Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9FF3BACF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 19:16:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=toc4su+YOc/trQWz/c9olGM5wJVxUyVAHAb45nhbZ6o=; b=GRuz/VwG4HvbFd
	an6HkVfopAjmTSA98wlg9NDZI8whEQJwVVZ4Fcm2ASdeLLJlsKuyXrRAdL9FIURtblXvXvQ+Uplba
	NBNlHjRMnEPH6X5w/M/7P1/daxoNnVfwD9ByZpsYFwUXaVY75Ay0Otkwo0m2EQnNMD1rI/NDMzyQ0
	3r2Cl3E28YK3BxcOVdfsWx29f7s2ursTOljU9qTFSX15ONc9CazvmAswPPdhpzYvYh60A10TgCLhP
	cmPoVMG+fD9JqsAJ3ZlbTnOlueQMbTtWp7ojyOF2o+iIw0X829NwWFtyuYVo+XcpHY9fpg6IACXS9
	36z3nVbloualq7uWM67w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haNug-0001jE-Cc; Mon, 10 Jun 2019 17:16:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haNuE-0001YY-BX
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 17:16:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5CF56337;
 Mon, 10 Jun 2019 10:16:25 -0700 (PDT)
Received: from redmoon (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AB4803F246;
 Mon, 10 Jun 2019 10:16:22 -0700 (PDT)
Date: Mon, 10 Jun 2019 18:16:08 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 00/18] ARM/ARM64: Support hierarchical CPU arrangement
 for PSCI
Message-ID: <20190610171557.GA4560@redmoon>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <CAJZ5v0gbK3AFCVC1b9LyXeMOM8fKR1=ECXZwaeSYRSqcK0UgYA@mail.gmail.com>
 <CAPDyKFpU3u248Gi+FnrVdY-EWXJQuu14uNV9d3Xs0W-K-EMEhg@mail.gmail.com>
 <20190607154210.GJ15577@e107155-lin>
 <20190607193407.GB24059@builder>
 <20190610103225.GA26602@e107155-lin>
 <CAPDyKFr31SwmHHAREbR3dWMQ55LzzUyTc4M5FZvNsqWfX7SE8Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFr31SwmHHAREbR3dWMQ55LzzUyTc4M5FZvNsqWfX7SE8Q@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_101626_538413_5EE29F31 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Kevin Hilman <khilman@kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 05:54:39PM +0200, Ulf Hansson wrote:

[...]

> My summary from the earlier ones, is that because the PSCI spec
> includes support for OSI, we should also support it in the kernel (and
> ATF). In a discussion offlist, Lorenzo agreed that it's okay to add,
> without an apple to apple comparison. Maybe Lorenzo can fill in and
> state this publicly, to save us all some time?

The comparison should have been made before even requesting PSCI OSI
mode changes to the specifications, so we have a chip on our shoulders
anyway.

We will enable PSCI OSI but that's not where the problem lies, enabling
PSCI OSI from a firmware perspective should take 10 lines of code,
not:

 drivers/firmware/psci/Makefile                |   2 +-
 drivers/firmware/psci/psci.c                  | 219 ++++++++--
 drivers/firmware/psci/psci.h                  |  29 ++
 drivers/firmware/psci/psci_pm_domain.c        | 403 ++++++++++++++++++

I have some concerns about these changes that I will state in the
relevant patches.

> My final point in regards to the OSI mode support, it's a minor part
> of the series. I don't see how that should hurt from a maintenance
> point of view, or perhaps I am wrong? In any case, I offer my help
> with review/maintenance in any form as you may see need/fit.

I will go through the series but most of this code should move
to core PM code, it has nothing to do with PSCI.

BTW, apologies for the delay, I was away.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
