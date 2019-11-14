Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AEBFFC7E7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 14:39:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6iPGw/H31fsWbBxOLnoSge2xB+sVY+GBpEZpVRox+DA=; b=IqyGLl0Zvew4KV
	epPVuBX9tGoqT+mPMnqhzEAY0W3krSONxXaixXrEu8sskIVWtuxCT3cVIXBxi5L1zrlN3XIV3jDUv
	BEQDaA/SZJFazJtkbpEgy+tpVcmOGhRJQ9N9DabxLJ5FBkP5D7u2QF3Eqx9dX7YGi5yG+5mFyj6rJ
	tPvgj8kU4fenNtdcHb8FBV1z+EZhp+FDfRnYraW4XwYsiLq/m+a2H1T9WTwm0Aut/kDyvTb4hTnK8
	7vyhY0DaT5LttsnDJr/fapP8j0YVj+wXBu69MssJa17KXTGIutQtyIb033M/mriLNlrYwPDGAel1R
	qRE/93+j4RGlh4r5cZ3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVFLh-0006vp-Ou; Thu, 14 Nov 2019 13:39:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVFLX-0006up-Kc
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 13:39:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5A36031B;
 Thu, 14 Nov 2019 05:39:37 -0800 (PST)
Received: from [10.1.32.172] (e121487-lin.cambridge.arm.com [10.1.32.172])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7EB573F52E;
 Thu, 14 Nov 2019 05:39:35 -0800 (PST)
Subject: Re: [kvm-unit-tests PATCH 09/17] arm: gic: Add test for flipping
 GICD_CTLR.DS
To: Alexandru Elisei <alexandru.elisei@arm.com>,
 Andre Przywara <andre.przywara@arm.com>, Andrew Jones <drjones@redhat.com>,
 Paolo Bonzini <pbonzini@redhat.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
 <20191108144240.204202-10-andre.przywara@arm.com>
 <2e14ccd4-89f4-aa90-cc58-bebf0e2eeede@arm.com>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <7ca57a0c-3934-1778-e3f9-a3eee0658002@arm.com>
Date: Thu, 14 Nov 2019 13:39:33 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <2e14ccd4-89f4-aa90-cc58-bebf0e2eeede@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_053939_722912_FA8668DF 
X-CRM114-Status: UNSURE (   7.94  )
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
Cc: Marc Zyngier <maz@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 11/12/19 4:42 PM, Alexandru Elisei wrote:
> Are we not testing KVM? Why are we not treating a behaviour different than what
> KVM should emulate as a fail?

Can kvm-unit-tests be run with qemu TCG?

Cheers
Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
