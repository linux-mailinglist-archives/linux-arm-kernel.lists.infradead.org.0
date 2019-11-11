Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B72E7F818B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 21:50:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3a3VgR7l4lS/1ooGu4Brsn8ytP4dbYZpAht54wna9w=; b=Sfrsxe3Iri3v4g
	APXr7WSX6jyHwDMGqqwIOu2T7d2fYKOTsE/a3yvJ2wL81y/VwxsqVXpzZprrY+qQQsoZsQpXt4O7K
	OaXxIls3qAtmBkPIG7T+feYYEVOnanjrHcFzWjaFg9qKVWaYht0Le1Asrv8kQ2kjdV1lE/6P1F+I/
	NHoRFFOh8XTYsgmQMxVAKKqX149TK/2/sY7+gdGjKdul1gZhTLmN5TEQgvK+ORuWFb8dig+2UDx2v
	aOrOrLEFepDL4psD3wT8mIiQ/rcBAhl6uzeVQUt3j16D1zS1Y2FhA6egiubYN5CpI0XlrBpb+tGcK
	XT/O0hJvRRPYhYi/YdLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUGdT-0000WV-AX; Mon, 11 Nov 2019 20:50:07 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUGdG-0000WC-4C
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 20:49:55 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 3C2F48047;
 Mon, 11 Nov 2019 20:50:30 +0000 (UTC)
Date: Mon, 11 Nov 2019 12:49:50 -0800
From: Tony Lindgren <tony@atomide.com>
To: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
Subject: Re: [PATCH] OMAP2: fixup doc comments in omap_device
Message-ID: <20191111204950.GZ5610@atomide.com>
References: <20191106115945.4298-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106115945.4298-1-ben.dooks@codethink.co.uk>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_124954_205870_6CFCFABE 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: linux-kernel@lists.codethink.co.uk, linux-omap@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Ben Dooks (Codethink) <ben.dooks@codethink.co.uk> [191106 04:00]:
> The documentation comments in this file are out of
> date with the code, so fix this to avoid the
> following warnings:
> 
> arch/arm/mach-omap2/omap_device.c:133: warning: Function parameter or member 'pdev' not described in 'omap_device_build_from_dt'
> arch/arm/mach-omap2/omap_device.c:133: warning: Excess function parameter 'pdev_name' description in 'omap_device_build_from_dt'
> arch/arm/mach-omap2/omap_device.c:133: warning: Excess function parameter 'pdev_id' description in 'omap_device_build_from_dt'
> arch/arm/mach-omap2/omap_device.c:133: warning: Excess function parameter 'oh' description in 'omap_device_build_from_dt'
> arch/arm/mach-omap2/omap_device.c:133: warning: Excess function parameter 'pdata' description in 'omap_device_build_from_dt'
> arch/arm/mach-omap2/omap_device.c:133: warning: Excess function parameter 'pdata_len' description in 'omap_device_build_from_dt'
> arch/arm/mach-omap2/omap_device.c:309: warning: Function parameter or member 'pdev' not described in 'omap_device_get_context_loss_count'
> arch/arm/mach-omap2/omap_device.c:309: warning: Excess function parameter 'od' description in 'omap_device_get_context_loss_count'
> arch/arm/mach-omap2/omap_device.c:335: warning: Function parameter or member 'ohs' not described in 'omap_device_alloc'
> arch/arm/mach-omap2/omap_device.c:335: warning: Function parameter or member 'oh_cnt' not described in 'omap_device_alloc'
> arch/arm/mach-omap2/omap_device.c:335: warning: Excess function parameter 'oh' description in 'omap_device_alloc'
> arch/arm/mach-omap2/omap_device.c:335: warning: Excess function parameter 'pdata' description in 'omap_device_alloc'
> arch/arm/mach-omap2/omap_device.c:335: warning: Excess function parameter 'pdata_len' description in 'omap_device_alloc'
> arch/arm/mach-omap2/omap_device.c:659: warning: Function parameter or member 'pdev' not described in 'omap_device_register'
> arch/arm/mach-omap2/omap_device.c:659: warning: Excess function parameter 'od' description in 'omap_device_register'
> arch/arm/mach-omap2/omap_device.c:682: warning: Function parameter or member 'pdev' not described in 'omap_device_enable'
> arch/arm/mach-omap2/omap_device.c:682: warning: Excess function parameter 'od' description in 'omap_device_enable'
> arch/arm/mach-omap2/omap_device.c:713: warning: Function parameter or member 'pdev' not described in 'omap_device_idle'
> arch/arm/mach-omap2/omap_device.c:713: warning: Excess function parameter 'od' description in 'omap_device_idle'

Thanks applying into omap-for-v5.5/soc.

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
