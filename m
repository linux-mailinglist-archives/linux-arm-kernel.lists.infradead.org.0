Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CF4272C0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 01:12:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Av1rlBd7gOgFeqgEEvn7fE7vaMlvcwWJqo/+NYzIAE=; b=V606dY2NzeEJL4
	U1nAgcP0ApTAp71VlZd1hmdZ0x2J4ytmIkhkvAZK6MkFTnJzjpoPL5fgUpUclbFgtSeuq/4cMWjsy
	Cw66HYIY6sjBzmbLtos7+xftY+KaXDXnGCJnRZ7ZdwgSYIdIdHgxf6yq8jOmj3870iF/4M7REqq7j
	jNKKF3iYJ8bMGKPtwjAenXYAujpdxgOvYJ0Ri1mjW5v4v7427HCLu8lEkw6P0n0fNNKUXpoLnsZRA
	Gb8kZQdpnDblP8vtTUA26WM5Om23HGDMG2zhUqyAvIwbfegpT0bTDfBhCY9ryn6Z4fbWKEN8FKzDV
	1i5a/ukfH4nfprjZ4OGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTaOr-0001s5-Cv; Wed, 22 May 2019 23:11:57 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTaOj-0001rR-Tz
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 23:11:51 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 14AEA3084294;
 Wed, 22 May 2019 23:11:49 +0000 (UTC)
Received: from treble (ovpn-120-127.rdu2.redhat.com [10.10.120.127])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 202731001284;
 Wed, 22 May 2019 23:11:47 +0000 (UTC)
Date: Wed, 22 May 2019 18:11:46 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Raphael Gault <Raphael.Gault@arm.com>
Subject: Re: [RFC V2 00/16] objtool: Add support for Arm64
Message-ID: <20190522231146.vw43gkah2npeouj3@treble>
References: <20190516103655.5509-1-raphael.gault@arm.com>
 <20190516142917.nuhh6dmfiufxqzls@treble>
 <26692833-0e5b-cfe0-0ffd-c2c2f0815935@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <26692833-0e5b-cfe0-0ffd-c2c2f0815935@arm.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Wed, 22 May 2019 23:11:49 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_161149_981632_9A616460 
X-CRM114-Status: GOOD (  24.43  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 12:50:57PM +0000, Raphael Gault wrote:
> Hi Josh,
> 
> Thanks for offering your help and sorry for the late answer.
> 
> My understanding is that a table of offsets is built by GCC, those
> offsets being scaled by 4 before adding them to the base label.
> I believe the offsets are stored in the .rodata section. To find the
> size of that table, it is needed to find a comparison, which can be
> optimized out apprently. In that case the end of the array can be found
> by locating labels pointing to data behind it (which is not 100% safe).
> 
> On 5/16/19 3:29 PM, Josh Poimboeuf wrote:
> > On Thu, May 16, 2019 at 11:36:39AM +0100, Raphael Gault wrote:
> >> Noteworthy points:
> >> * I still haven't figured out how to detect switch-tables on arm64. I
> >> have a better understanding of them but still haven't implemented checks
> >> as it doesn't look trivial at all.
> >
> > Switch tables were tricky to get right on x86.  If you share an example
> > (or even just a .o file) I can take a look.  Hopefully they're somewhat
> > similar to x86 switch tables.  Otherwise we may want to consider a
> > different approach (for example maybe a GCC plugin could help annotate
> > them).
> >
> 
> The case which made me realize the issue is the one of
> arch/arm64/kernel/module.o:apply_relocate_add:
> 
> ```
> What seems to happen in the case of module.o is:
>   334:   90000015        adrp    x21, 0 <do_reloc>
> which retrieves the location of an offset in the rodata section, and a
> bit later we do some extra computation with it in order to compute the
> jump destination:
>   3e0:   78625aa0        ldrh    w0, [x21, w2, uxtw #1]
>   3e4:   10000061        adr     x1, 3f0 <apply_relocate_add+0xf8>
>   3e8:   8b20a820        add     x0, x1, w0, sxth #2
>   3ec:   d61f0000        br      x0
> ```
> 
> Please keep in mind that the actual offsets might vary.
> 
> I'm happy to provide more details about what I have identified if you
> want me to.

Thanks.  I'll try to take a deeper look.

Were these patches based on tip/master?  There were some minor conflicts
in arch/arm64/Kconfig and arch/arm64/kernel/Makefile.

I'm also getting a build failure on arm64:

  make[4]: *** No rule to make target '/root/linux/tools/objtool/arch/arm64/arch_special.o', needed by '/root/linux/tools/objtool/arch/arm64/objtool-in.o'.  Stop

It looks like arch/arm64/Build and arch/x86/Build are trying to build
from arch_special.c which doesn't exist.

-- 
Josh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
