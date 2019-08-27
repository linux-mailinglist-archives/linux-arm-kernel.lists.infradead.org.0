Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DFF9F0B4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 18:50:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E4yLjPV7LX9l+EaBm+6xoP3i94xlhm2P5jbysKo5nqw=; b=vCoYL1iduMn76r
	GQ6xXO5hQjWXDlYEFvNXUER0NH1LRkfQ1+xRxUVevu9Sz0zYh8kqz5lKTx9FcfZxPbF3m5dd7X7mQ
	8Eq82KLs7fr/3snt2mXo7sjPgblHX2DyZZ0inoxX7Ju+6jc3KjyZzVqLnoC2nGOky6VkxaVq/kQtU
	LorEoLA4PnUsqZIArYvADFqXzK0tPnWmSm8n7b0mwpnqNY2cjDlpIfsDXC6uk7XxG6m84Kd64P5Xo
	8K2JnOPLICxbe+AzHCQzIjGSGYycLqDz5Dzm7AfVRgdLo0OMD4O8xuemwhBsR7Sy8hkB1SNtAqQqo
	MDywnXuSk2F4k+0CsL8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2efP-0002XK-B9; Tue, 27 Aug 2019 16:49:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2efG-0002X0-W4
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 16:49:52 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A4F5520679;
 Tue, 27 Aug 2019 16:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566924590;
 bh=KvzBTG9CgVV2a5Ym2OWJVcERA0TciMKLZNG6zroGAXQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AcPbswQWM0hhqf/9z3kiqbqFbi1e9BBDDADkhSVbaXqc5wh6cPHjVf0uiDlh+VQ9O
 yei+JeZ6/awaeJcI5N94nSadu1nmIR07E/LsatEpW2Ihs6sD49HbpgSiPQns/B+Qt8
 AbnGkdi3/FxNsV7CNl0vA0ZIgd74NddQUdqDM4p4=
Date: Tue, 27 Aug 2019 17:49:45 +0100
From: Will Deacon <will@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v3 0/5] arm64: avoid out-of-line ll/sc atomics
Message-ID: <20190827164944.qxk32uas7hx5pjgz@willie-the-truck>
References: <20190812143625.42745-1-andrew.murray@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812143625.42745-1-andrew.murray@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_094951_052896_C3198E5F 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Boqun Feng <boqun.feng@gmail.com>,
 Will Deacon <will.deacon@arm.com>, Ard.Biesheuvel@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On Mon, Aug 12, 2019 at 03:36:20PM +0100, Andrew Murray wrote:
> When building for LSE atomics (CONFIG_ARM64_LSE_ATOMICS), if the hardware
> or toolchain doesn't support it the existing code will fallback to ll/sc
> atomics. It achieves this by branching from inline assembly to a function
> that is built with specical compile flags. Further this results in the
> clobbering of registers even when the fallback isn't used increasing
> register pressure.
> 
> Let's improve this by providing inline implementatins of both LSE and
> ll/sc and use a static key to select between them. This allows for the
> compiler to generate better atomics code.
> 
> Whilst it may be difficult to understand the performance impact, we gain
> improved code readability, ability to use Clang, and improved backtrace
> reliability.
> 
> Build and boot tested, along with atomic_64_test.

I think this series is really close now and I was hoping to get something
queued for 5.4. Would you be able to respin, addressing Mark's comments
please? It would be a shame for this to miss another release.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
