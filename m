Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6235D2C4B2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 12:47:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cc7YoqmsADDwaDOYHvxYQTvfeTJL/7DJrw+bRl7iwbo=; b=anIrPv9DuV4LtO
	qjTUfJT3Q0bVHg9RtTP2Or1/62SlW2amjGYCZ0fY7NdWv0hSwcB4AEGXY/4IfIUxuaNTwxdFHCCqE
	ORyA9EL/T81fN3w5okNRUgZuLPsMEbTHNawmfbZ3SicayVf1fOfemjDPWgmizd7t9MZ/P4MbjrE5/
	JqeD4XvlUAOog01kCmEHXIaMMGpn4Noo47nSoch1ewXeZqzQaXC35jEkmzCW7TRH63x1E+Rn2YPng
	+r8a64DIrJDZ5bIN9yXbXZmknGEZUVFiUWy1F9cd8u/bKi0/b8rcs8UOEQGlpE7U/BpnrkE+3Z0LQ
	D4WWohFcu9UTtfHFXXoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVZe3-00036E-Dg; Tue, 28 May 2019 10:47:51 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVZdw-00035l-Dt
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 10:47:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8D100341;
 Tue, 28 May 2019 03:47:42 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9388C3F59C;
 Tue, 28 May 2019 03:47:41 -0700 (PDT)
Date: Tue, 28 May 2019 11:47:39 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] arm64: dts: juno: Set the right partition type
Message-ID: <20190528104738.GB15767@e107155-lin>
References: <20190528085813.10413-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528085813.10413-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_034744_476299_67582DA4 
X-CRM114-Status: GOOD (  12.81  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 10:58:13AM +0200, Linus Walleij wrote:
> We do not normally access the flash on the Juno, as this
> will disturb other aspects of the system, but if we choose
> to do so anyways, we should set up the partitions in the
> right way so we will find out what is in the flash.
>
> The ARM Firmware Suite now has its own compatible and
> proper device tree bindings to trigger discovery of the
> flash contents, and Linux supports handling the new type
> of AFS partitions.
>

Applied, thanks.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
