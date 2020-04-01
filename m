Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFE419A88F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 11:24:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hE6EtTE3Jq+/2xju7Y5Jm5PZSGV/hV10H8wbPMLR2QI=; b=XX/G/lsTR8YnHP
	Ixl6C09A+Dzq27+z3Rv+RprPw2PbTRmU15PyRJs0LGCvgo9klBTiDM4wT9nqcFqn8g0Yxa8z8lYsj
	7pP+BXj8ge7qMZo0JpwSKPuwWhoRx1ITJ/ehFsScZIdo4ccoCW55uRPWWJU3UkrMAcSDAfQktQqi8
	gsKhf5bpXJA5LdBBZv0BZzZN9rWS3Bgaki2CJ06Z3gI47WbftwraQA/9qwSCzcNiQohhuIGcC4RQC
	qZnDnPO1d1hvwEjkQitsE7sZTwrrb6yrsWayP5qshj+qL/5rk4DKMr27BwNpZi/r9idrZiVwRNdZm
	c8f0sZjcbjYS1FsbZWYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJZbP-0003cn-47; Wed, 01 Apr 2020 09:24:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJZbJ-0003cS-Vm
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 09:23:59 +0000
Received: from mbp (unknown [31.127.148.201])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3233620784;
 Wed,  1 Apr 2020 09:23:55 +0000 (UTC)
Date: Wed, 1 Apr 2020 10:23:52 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] arm64: bring Image header in line with latest Arm brand
 guidelines
Message-ID: <20200401091848.GA9434@mbp>
References: <20200401065636.1751-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401065636.1751-1-ardb@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_022358_044873_78147938 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 01, 2020 at 08:56:36AM +0200, Ard Biesheuvel wrote:
> The Arm brand guidelines are pretty clear when it comes to the way
> the brand name 'arm' should be displayed: it should be all lowercase,
> and there should be sufficient whitespace around it on all sides.
> 
> Let's use the reserved space we have available in the Image header to
> bring it in compliance with this.
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>

Queued for 5.7-rc1. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
