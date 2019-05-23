Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE81327A00
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 12:05:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F4Jt6XADduEwPD7ErlszmEAxtPYIPMgEBnFp3BOS26c=; b=N4sowREsQ6Kk1v
	hpTvxLEG1STwgGHB8ExBHBAhzEyx+FTtsCeKIHHlzFxUWYAN37/WKGXizoX6vB3vckOFlGvqPE+DV
	lmrO8cAJkst+u0jLXWkRraKeyMe2Obek+baWM6zmEd9/+1pAgVW4sa/J8mMZzxx2W0FMRwG3HzJYB
	M2RL0d0xBzkFxSvszc93ExF5RDa5bnMLbprSZFZArifzy3C5ZoTHnyG7Cx2uwtmcZg+PHCWZNrf74
	59uiWVQUhbiBpPMyhkkYhnK3RHafTONSNh5WGxI+7bvjRfOnjUEjBm/cs5fgxRvHcdTx5DC7Bzi4M
	guqdlMErV/ZluNbHE4Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTkb2-00045x-I8; Thu, 23 May 2019 10:05:12 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTkav-0003TZ-Na
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 10:05:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BC31A341;
 Thu, 23 May 2019 03:05:04 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 876E73F718;
 Thu, 23 May 2019 03:05:03 -0700 (PDT)
Date: Thu, 23 May 2019 11:05:01 +0100
From: Will Deacon <will.deacon@arm.com>
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Subject: Re: [PATCH] arm64: Improve parking of stopped CPUs
Message-ID: <20190523100501.GF26646@fuggles.cambridge.arm.com>
References: <1485942532-2643-1-git-send-email-jnair@caviumnetworks.com>
 <20190516184452.GE10985@darkstar.musicnaut.iki.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516184452.GE10985@darkstar.musicnaut.iki.fi>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_030505_784378_88B892B4 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Catalin Marinas <catalin.marinas@arm.com>, jnair@marvell.com,
 Jayachandran C <jnair@caviumnetworks.com>,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 09:44:53PM +0300, Aaro Koskinen wrote:
> On Wed, Feb 01, 2017 at 09:48:52AM +0000, Jayachandran C wrote:
> > The current code puts the stopped cpus in an 'yield' instruction loop.
> > Using a busy loop here is unnecessary, we can use the cpu_park_loop()
> > function here to do a wfi/wfe.
> > 
> > Signed-off-by: Jayachandran C <jnair@caviumnetworks.com>
> 
> Looks like this patch has been forgotten?
> 
> I have a system where CPUs need to be put in wfi/wfe for the warm reset
> to work, and using cpu_park_loop() would solve this.

Yikes, that's over two years old. Maybe resend it?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
