Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5F81D9C1E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 18:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+4EEG+eDROOLaVZWgivVrgsZ7xAwWLndhZ5kddAb7Ww=; b=DYd0BU0jlF8Ef+
	mIwgXP/zrMMgsmSaE8XvS1VCikyA6CBhNTqQX1ds37Chwv9NzvqClgxo03utHxP+J5NKaT8IiIKe0
	vuuSTaR9HmNcsyZPCWabqQ0ZLJ6uFGbjrM3jD2vwejBanJblh01LH6pWlZn4FWNKN0VwINvxtIt2k
	AucKQ2ZxwM7FHkcdFNYwTx63A3pcAx9e3ClM5eeNcTMtMHwwuO6a+QMIROrH8lZtP4sekNUvjhAYV
	+q/tu72JfqPvn/DC/dclg/e+fuG8wNlTV/6tGRSgwmagsyzg71wEoLBV1CJxtD6eFQYLrDwJkL7br
	CG7X3Ks9HMm5DIi/3YpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb4pl-0007KH-Hh; Tue, 19 May 2020 16:11:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb4pb-0007Fa-Eq
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 16:11:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6BCB830E;
 Tue, 19 May 2020 09:11:02 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 60C603F305;
 Tue, 19 May 2020 09:11:00 -0700 (PDT)
Date: Tue, 19 May 2020 17:10:58 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Luis Machado <luis.machado@linaro.org>
Subject: Re: [PATCH v3 19/23] arm64: mte: Add PTRACE_{PEEK,POKE}MTETAGS support
Message-ID: <20200519161057.GE20313@gaia>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-20-catalin.marinas@arm.com>
 <a7569985-eb85-497b-e3b2-5dce0acb1332@linaro.org>
 <20200513104849.GC2719@gaia>
 <3d2621ac-9d08-53ea-6c22-c62532911377@linaro.org>
 <20200513141147.GD2719@gaia>
 <eec9ddae-8aa0-6cd1-9a23-16b06bb457c5@linaro.org>
 <e7f995d6-d48b-1ea2-c9e6-d2533e8eadd5@linaro.org>
 <20200518164723.GA5031@arm.com>
 <55fe4d37-23ae-a6b7-8db1-884aaf4a9b9c@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <55fe4d37-23ae-a6b7-8db1-884aaf4a9b9c@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_091103_550044_7FAAC918 
X-CRM114-Status: GOOD (  16.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Omair Javaid <omair.javaid@linaro.org>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Alan Hayward <Alan.Hayward@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 02:12:24PM -0300, Luis Machado wrote:
> On 5/18/20 1:47 PM, Dave Martin wrote:
> > Wrinkle: just because MTE is "off", pages might still be mapped with
> > PROT_MTE and have arbitrary tags set on them, and the debugger perhaps
> > needs a way to know that.  Currently grubbing around in /proc is the
> > only way to discover that.  Dunno whether it matters.
> 
> That is the sort of thing that may confused the debugger.
> 
> If MTE is "off" (and thus the debugger doesn't need to validate tags), then
> the pages mapped with PROT_MTE that show up in /proc/<pid>/smaps should be
> ignored?

There is no such thing as global MTE "off". If the HWCAP is present, a
user program can map an address with PROT_MTE and access tags. Maybe it
uses it for extra storage, you never know, doesn't have to be heap
allocation related.

> I'm looking for a precise way to tell if MTE is being used or not for a
> particular process/thread. This, in turn, will tell debuggers when to look
> for PROT_MTE mappings in /proc/<pid>/smaps and when to validate tagged
> addresses.
> 
> So far my assumption was that MTE will always be "on" when HWCAP2_MTE is
> present. So having HWCAP2_MTE means we have the NT_ARM_MTE regset and that
> PROT_MTE pages have to be checked.

Yes. I haven't figured out what to put in the regset yet, most likely
the prctl value as it has other software-only controls like the tagged
address ABI.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
