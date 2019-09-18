Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E83B5F55
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 10:36:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUlVtfIrm+uJURysgQtM2NrL9C3qmiHJPSLUs6KV6nE=; b=SHLgts103QrbBa
	lW2NbRws5FKBSd6tlrnqlX5605j5ptAOs5ApA3kF4Q90s40TftIO5Ogk3rbeFt5u7bRs3CutdnF1q
	ZxbSAmxGotHBTZYdDTDzFZOi5rfWkYrMO7JVnYe+HiCjnEhBHmB9j/k2UvCIuaGMc7fYxndFX5L+K
	PcqLdgHoAYDZH7llJn/RYTCzfa0XgQJ/wX/cFMf9A1NJPQNWbaF6v5MEpTeHDhhF299mqWDK3EyTW
	J1MAWFqc1nFooh1A0f4GxUp2JjcKr9RjMIZ7UyqKMiGLDAgx41+8oQLeDcs2OWxYP7FrI5OR+zYIr
	F4cEF/vMtu5GUhI6tQfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAVRj-0001xj-Dd; Wed, 18 Sep 2019 08:36:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAVRW-0001xJ-8O
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 08:36:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C814F337;
 Wed, 18 Sep 2019 01:36:03 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3E2E03F59C;
 Wed, 18 Sep 2019 01:36:03 -0700 (PDT)
Date: Wed, 18 Sep 2019 09:36:01 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v6 0/3] coresight: etm4x: save/restore ETMv4 context
 across CPU low power states
Message-ID: <20190918083601.GX9720@e119886-lin.cambridge.arm.com>
References: <20190913115312.12943-1-andrew.murray@arm.com>
 <CANLsYkzhB3OBpLTAR54p771OSLxj+NYF8_kE=aMp7SkdNzaxwA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkzhB3OBpLTAR54p771OSLxj+NYF8_kE=aMp7SkdNzaxwA@mail.gmail.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_013606_341813_E87AF18F 
X-CRM114-Status: GOOD (  12.35  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Al Grant <Al.Grant@arm.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Coresight ML <coresight@lists.linaro.org>, Leo Yan <leo.yan@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 01:37:10PM -0600, Mathieu Poirier wrote:
> Hi Andrew,
> 
> On Fri, 13 Sep 2019 at 05:53, Andrew Murray <andrew.murray@arm.com> wrote:
> 
> [...]
> 
> >
> > Andrew Murray (3):
> >   coresight: etm4x: save/restore state across CPU low power states
> >   dt-bindings: arm: coresight: Add support for
> >     coresight-loses-context-with-cpu
> 
> I have picked-up patches 1 and 2.  As per the conversation we had in
> Cambridge where we kept finding ways to break things when dealing with
> an external agent, I have not applied the 3 patch.

Thanks for the picking these up. No worries about patch 3.

Thanks,

Andrew Murray

> 
> Thanks,
> Mathieu
> 
> >   coresight: etm4x: save/restore state for external agents
> >
> >  .../devicetree/bindings/arm/coresight.txt     |   9 +
> >  drivers/hwtracing/coresight/coresight-etm4x.c | 351 +++++++++++++++++-
> >  drivers/hwtracing/coresight/coresight-etm4x.h |  64 ++++
> >  drivers/hwtracing/coresight/coresight.c       |   8 +-
> >  include/linux/coresight.h                     |  13 +
> >  5 files changed, 443 insertions(+), 2 deletions(-)
> >
> > --
> > 2.21.0
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
