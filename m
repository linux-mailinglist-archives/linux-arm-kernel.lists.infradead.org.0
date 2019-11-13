Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBAD6FAE1E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 11:09:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8zNspCuwuqQhZPRcSqEowOkh/gR4f/VonZwlIOxyIK8=; b=GdaECx+WlpREuR
	8eMm6mwDzPS8Xcdd2EZffcSsLEJNmy8R955E82NqM/ygA8gnm4XzmaXnaTlVwF2eBt2/pZMBEzNQN
	mPTeEgugoGe0mQJEwDk0odIC5W56ciqOW97lhIxG53FB05oJZoJVG5J0BxE0t0FZomBmG/a2BV8HB
	gqR293GSVNcjg+qnpA06dz7a4JPt8KJAI8kcM/rzSsp50damsUVPWQkXVvopTC5hlCxaKM/1RI+6G
	7+z17XEajiWlpwYSGBJnGc3vNP9zq5ZFWBeOREeSRFBC7iwC+6rlM6rFr52OxixFyQYNfAM234GCA
	cZtAFwLiqczQl+vhRlFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUpas-0004uX-P2; Wed, 13 Nov 2019 10:09:46 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUpaT-0004et-U4
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 10:09:23 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 2E01A201BC;
 Wed, 13 Nov 2019 11:09:17 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id EB88520116;
 Wed, 13 Nov 2019 11:09:16 +0100 (CET)
Subject: Re: why no stack protector for vdso
To: Linfeilong <linfeilong@huawei.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>
References: <9711d978b96f4e18b684f91f90397c13@huawei.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <664634fb-5bc1-dd61-8a49-bff9a3ee32cc@free.fr>
Date: Wed, 13 Nov 2019 11:09:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <9711d978b96f4e18b684f91f90397c13@huawei.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Wed Nov 13 11:09:17 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_020922_166690_8F1F5180 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: Hushiyuan <hushiyuan@huawei.com>, Nathan Lynch <nathanl@linux.ibm.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Nathan Lynch <nathan_lynch@mentor.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/11/2019 10:21, linfeilong wrote:

> Dear Frascino,

[ Cultural note: full names are written in a different order in the "West"
and in the "East". FWIW, his first name is Vincenzo ;-)
cf. https://en.wikipedia.org/wiki/Personal_name#Name_order ]

> Can you help me to know why there is -fno-stack-protector in the Makefile of vdso?
> I wonder if we can delete it, as for safety requirements. 

There appear to be 3 files you might be referring to:

arch/arm/vdso/Makefile:ccflags-y := -fPIC -fno-common -fno-builtin -fno-stack-protector
arch/arm64/kernel/vdso/Makefile:ccflags-y := -fno-common -fno-builtin -fno-stack-protector -ffixed-x18
arch/arm64/kernel/vdso32/Makefile:VDSO_CAFLAGS += -fPIC -fno-builtin -fno-stack-protector

arch/arm/vdso/Makefile : 8512287a8165592466cb9cb347ba94892e9c56a5

Maybe related:
https://lore.kernel.org/patchwork/patch/143610/
https://lwn.net/Articles/318565/

> With -fstack-protector, gcc copies pt_regs into the callee's stack
> frame to put it after the stack canary.  Of course it doesn't copy
> back (as the callee owns the argument) and any change made to pt_regs
> is lost on return.  This is currently worked around by adding
> -fno-stack-protector to any file containing such functions.  We
> really need to teach gcc about the calling convention.

Maybe this is still true? (Although this was on x86_32)

AFAICT, the option was added at this point:

https://lore.kernel.org/linux-arm-kernel/CAASgrz0QfSfnggAf2C0bS7wXbdoPYtVHRhK0UfvT8pykjCowMA@mail.gmail.com/

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
