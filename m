Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FBE553A7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 17:43:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hUCKKxSdb+xwvdWrHjoTU4GG/H4tQio7zXUc6+QdK9U=; b=ch174aVXAnKCFK
	1FfDG4h/Lis3JW95X7Iu08MHX7ju82HK7voLNo6ESSW88M9jfj0B+/a/lMQ4NW/wsq1MdiTvN5PTU
	56wLklZnCV8U0HA4C+j+ek8Ab9tCWqBaXBLWQ36Gu4sgxPL9Th5Nk4rVdHF9Ds31/QgS6SmjumL1n
	1+Zzp+24QHvkwpZURD5CqVAFqu3zSNBcyHiRiR9DUL8HKO2D1igv/LaM9BtuNngvh6WnXaimD4wyW
	1oD42g+tv8kjgLGuhRjR0tmUoFsBMCnwxFHsTv+Oeddi5Hzrp3076E2WFqL4p2v6v2itzTEKi8F+n
	SeAF2mV7MXW9JO7i+LsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfnbe-0004VW-TF; Tue, 25 Jun 2019 15:43:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfnbS-0004UZ-IH
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 15:43:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DEF7B2B;
 Tue, 25 Jun 2019 08:43:25 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 002003F718; Tue, 25 Jun 2019 08:43:24 -0700 (PDT)
Date: Tue, 25 Jun 2019 16:43:22 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Subject: Re: [PATCH v2 1/2] arm64: Improve parking of stopped CPUs
Message-ID: <20190625154322.GB53763@arrakis.emea.arm.com>
References: <20190617203519.328-1-aaro.koskinen@iki.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617203519.328-1-aaro.koskinen@iki.fi>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_084326_643750_96DC53F2 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: James Morse <james.morse@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org,
 Aaro Koskinen <aaro.koskinen@nokia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 11:35:18PM +0300, Aaro Koskinen wrote:
> From: Jayachandran C <jnair@caviumnetworks.com>
> 
> The current code puts the stopped cpus in an 'yield' instruction loop.
> Using a busy loop here is unnecessary, we can use the cpu_park_loop()
> function here to do a wfi/wfe.
> 
> Signed-off-by: Jayachandran C <jnair@caviumnetworks.com>
> Signed-off-by: Aaro Koskinen <aaro.koskinen@nokia.com>
> Acked-by: Will Deacon <will.deacon@arm.com>

Both patches queued for 5.3. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
