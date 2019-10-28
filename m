Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C86E7133
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 13:18:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2FtVOGDmo210gVQKrnmsoeg/xV4GjPmFXxUaLSLCeJE=; b=c4wsnSmGg0NrCc
	lORdpzKnH/mPxBvyyP/5KbogyQ83jpaMv8DbN39NOk7YFsgtwBTjS88e4ftTlX84/WZBQocmSadFV
	WYFEfFlqZvFdIM+XIZdgV8QHH3+h7QyM+3/hknRC4G8rv10sa8CDkUoCy5hgKKCUW2fTqJAassjuw
	NJ/1g7twyb95iufKAGutm5QhRPsQHrZpEUrrNvwql/NLqAHGTALe9iRA3t9uckrpWWsjZlMaX8xD8
	svIX30OWaXmicGBMY8k9Rzeat94Z+KCfPAWPnvVjZi7M++s0KUy8wCBchRO2tk6egkp+uXlMt49+O
	5taKZG1X7uA+WJHJdymQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP3yg-0001kz-2A; Mon, 28 Oct 2019 12:18:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP3yU-0001iG-0P
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 12:18:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 03A7F1F1;
 Mon, 28 Oct 2019 05:18:17 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 1AE893F6C4; Mon, 28 Oct 2019 05:18:15 -0700 (PDT)
Date: Mon, 28 Oct 2019 12:18:14 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH v2 0/7] arm64: Convert entry.S synchronous exception
 handling to C
Message-ID: <20191028121813.GD16739@arrakis.emea.arm.com>
References: <20191025164216.53626-1-james.morse@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025164216.53626-1-james.morse@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_051818_098333_59D9A20C 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
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
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 05:42:09PM +0100, James Morse wrote:
> James Morse (4):
>   arm64: remove __exception annotations
>   arm64: Add prototypes for functions called by entry.S
>   arm64: Remove asmlinkage from updated functions
>   arm64: entry-common: don't touch daif before bp-hardening
> 
> Mark Rutland (3):
>   arm64: add local_daif_inherit()
>   arm64: entry: convert el1_sync to C
>   arm64: entry: convert el0_sync to C

Queued for 5.5. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
