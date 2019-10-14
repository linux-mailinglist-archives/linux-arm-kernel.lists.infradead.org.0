Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E730D5FC9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 12:08:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sJpFu+lgeXwoBisrAxOKEcOrkFM4iFo3K8FszOBmRSw=; b=Q/9fmN+J/9Kmx0
	kfi9q5mOPyIsncuL8UPj4Gc3lzcMSo0V6OCTULdYcQAXJLz70UFOGqvV40yrKd5EuqLTiN4S62lqK
	vKCcv5ohB3b3DHA+gT7jETdwRStMh7gGRlXs7CJqc/y2ICI0nzrA6PMgOWnoY9sTi9peoj2QxaJo5
	Duto61n1f7YILLCYxbm3OBSF0RBi1l6/+fUT/0InB2jpZ9li+fOQsjehcjPjC4rUshxPXJzbzrY1i
	SZeRhiknQdBaBxMMC7pdptSZmKyACKGNAgZ4Hv7UOzAa38MmUBsOlNnEridQOxWsoKtQitSq+5ng1
	1OnuN51b5L/jiosvfm3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJxHa-0004l0-1b; Mon, 14 Oct 2019 10:08:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJxHQ-0004jP-FV
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 10:08:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E4AF3337;
 Mon, 14 Oct 2019 03:08:38 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DDAAC3F718;
 Mon, 14 Oct 2019 03:08:37 -0700 (PDT)
Date: Mon, 14 Oct 2019 11:07:56 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Stefan Agner <stefan@agner.ch>
Subject: Re: [PATCH] drivers: firmware: psci: use kernel restart handler
 functionality
Message-ID: <20191014100756.GA4028@bogus>
References: <20191012214735.1127009-1-stefan@agner.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191012214735.1127009-1-stefan@agner.ch>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_030844_562440_90A602CA 
X-CRM114-Status: GOOD (  10.93  )
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com,
 Stefan Agner <stefan.agner@toradex.com>, linux-kernel@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 12, 2019 at 11:47:35PM +0200, Stefan Agner wrote:
> From: Stefan Agner <stefan.agner@toradex.com>
> 
> Use the kernels restart handler to register the PSCI system reset
> capability. The restart handler use notifier chains along with
> priorities. This allows to use restart handlers with higher priority
> (in case available) while still supporting PSCI.
> 
> Since the ARM handler had priority over the kernels restart handler
> before this patch, use a slightly elevated priority of 160 to make
> sure PSCI is used before most of the other handlers are called.
> 

There's an attempt(rather pull request[1]) to consolidate these into new
system power/restart handler.

--
Regards,
Sudeep

[1] https://lore.kernel.org/linux-arm-kernel/20191002131228.4085560-1-thierry.reding@gmail.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
