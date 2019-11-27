Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9739A10B22E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 16:14:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HenJptKSu9TfHOucxqkA1BX8/0BsMso+SRpjEQDsu58=; b=WTmyq/zDn6E21I
	8pXkhkaI4p92SUUyhnywr1JOqISqLG/xBwSxrtS+riuQKxAxZ9xbA02qHTfW5W7Zj41GBaDIVu1im
	3DpwcyCRiHERnpPpskKPraLY1VtIC3048zkf5y5ge7H5c3j5vcnWF5EgXWSwuPDaayP5yEUvlAIPT
	WE2FLxk10FBqXmsW2IgjYkXpCSrz42tWQUXdAOTu2jOrUWSOvihQA7WzUl2oT9aZFbbvt7dwoEhfb
	xeVSWC43FEHBjkSkdn9J76jcha+YffXoakJenU984Qikw99KPxKk1OQQZR9fVPXfETwpGrhoud7/g
	/wzscSiEqJnhQAT8UoEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZz1Z-0001qh-1j; Wed, 27 Nov 2019 15:14:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZz1R-0001qC-9m
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 15:14:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 158B0328;
 Wed, 27 Nov 2019 07:14:28 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 544BC3F68E;
 Wed, 27 Nov 2019 07:14:25 -0800 (PST)
Date: Wed, 27 Nov 2019 15:14:23 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [PATCH v2 2/3] arm64: remove uaccess_ttbr0 asm macros from cache
 functions
Message-ID: <20191127151423.GD51937@lakrids.cambridge.arm.com>
References: <20191122022406.590141-1-pasha.tatashin@soleen.com>
 <20191122022406.590141-3-pasha.tatashin@soleen.com>
 <20191127150137.GB51937@lakrids.cambridge.arm.com>
 <CA+CK2bBvgDe5zVur7EYJgYhoZesuQkZVeyRxPCBSySqsR=-YPQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+CK2bBvgDe5zVur7EYJgYhoZesuQkZVeyRxPCBSySqsR=-YPQ@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_071429_388337_C2E8548F 
X-CRM114-Status: GOOD (  14.09  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Stefan Agner <stefan@agner.ch>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Will Deacon <will@kernel.org>,
 boris.ostrovsky@oracle.com, Sasha Levin <sashal@kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>, James Morris <jmorris@namei.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 xen-devel@lists.xenproject.org, Vladimir Murzin <vladimir.murzin@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, alexios.zavras@intel.com,
 Thomas Gleixner <tglx@linutronix.de>, allison@lohutok.net, jgross@suse.com,
 steve.capper@arm.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morse <james.morse@arm.com>,
 info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 10:10:07AM -0500, Pavel Tatashin wrote:
> Hi Mark,
> 
> Thank you for reviewing this work.
 
> > The 'arch_' prefix should probably be 'asm_' (or have an '_asm' suffix),
> > since this is entirely local to the arch code, and even then should only
> > be called from the C wrappers.
> 
> Sure, I can change it to asm_*, I was using arch_* to be consistent
> with __arch_copy_from_user() and friends.

FWIW, that naming was from before the common uaccess code took on the
raw_* anming for the arch functions, and I was expecting that the arch_*
functions would end up being called from core code.

For now it's probably too churny to change that existing case.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
