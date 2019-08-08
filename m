Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE29B860DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 13:31:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fP39+fWUjLJNjYwmmrRUV4XQs+sSRD36fRx6RS2QEug=; b=OTnuMTMguuVo0f
	qBMfHwogo9dWVf7NvmYbYFe27irr0OY+Aa5I9hadyhDnbfQX5jPWnnb+e5wZQgePNTwDM0CNGqv2q
	kCNKeKx+artLrQp632QJvCV/+PAsF4z6Lo1PZA5gjZ5WYIaVk55Iv2lDxCEH05uIQoRyR5vfxlwwO
	WneSjWKmsv83YkKJP9/SaR7iOzHI4dp4/LdilbVrlVCGwc3U4MOjFKogH5sAKCp54rLNPLP/Jntig
	fBssYDwU6uwH6dqd8OO2CRC5134kijhDOgSBQ0DnomKVnV5lXvxx44tccEDL0Ndtu+6q0s73JwehC
	zoH4k8tP4tJop1m0+/bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvgdh-00078P-9X; Thu, 08 Aug 2019 11:31:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvgdU-000786-AB
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 11:31:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 51D0B1597;
 Thu,  8 Aug 2019 04:31:11 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 691A33F694;
 Thu,  8 Aug 2019 04:31:10 -0700 (PDT)
Date: Thu, 8 Aug 2019 12:31:08 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Stefan Agner <stefan@agner.ch>
Subject: Re: Detecting AArch32 support from a AArch64 process in user space
Message-ID: <20190808113107.GI10425@arm.com>
References: <ffbb92107af81971c03ec832cf25116c@agner.ch>
 <7bfc8611-0b2c-9d6d-0348-afd580e2a403@arm.com>
 <2adcb1ed626fb7829481b2b8d0ff54d1@agner.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2adcb1ed626fb7829481b2b8d0ff54d1@agner.ch>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_043112_400556_AB5198D4 
X-CRM114-Status: GOOD (  11.25  )
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, ynorov@caviumnetworks.com,
 will.deacon@arm.com, linux-arm-kernel@lists.infradead.org,
 suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 12:17:26PM +0200, Stefan Agner wrote:
> On 2019-08-08 11:04, Marc Zyngier wrote:

[...]

> > Hey, you could create a VM, a vcpu and dump the ID registers by issuing
> > a set of KVM_GET_ONE_REG ioctls. Not necessarily recommended... ;-)
> 
> I see, no no, I think I leave that exercise for somebody else to try :)

I think KVM guest AArch32 support can exist even when compat is
configured out though.  So just because it works in a guest doesn't mean
that the host kernel supports it for userspace, IIUC.

Otherwise, this would be a fun hack ;)

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
