Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D5214D26
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 16:49:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Mime-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B5zBEpNpe/LFneSc8ep6E5vCfAf2Ene0DZ583syeSTM=; b=FdK+V4HQM3f1qc
	7qFu0gKimZzrY7BxDOv3XyvozbtwSNFSzFYgm7wi4ApShad4ELmwave2QuCrxT1o0ZT0E07eAsKs9
	RB+B9Y2eKzG3Po2+yES+PbvMIDY0AI5f/sMApInqCth14ArlJk7dM3zS+LdUwviRDFiP35CjpWie9
	W+wS9nbtxGSMtnxfWRTcYAYX6D7o0ESlcQICHwzPXH7qG2h9RY2H2QlQyMHDkD4vfya6jp+4tSfye
	2fN00lYo96Go4q1ObnZg6DPE/HaFs09+zO6u3r3jPdBUOBNg9Ri7JW0VFUcSHgmv+aBGu7d0u/jnG
	IAPie3X0wjcCO5WElPVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNevS-0007ai-PB; Mon, 06 May 2019 14:49:06 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNevL-0007ZK-T3
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 14:49:01 +0000
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x46EmgOD026749;
 Mon, 6 May 2019 09:48:42 -0500
Received: (from segher@localhost)
 by gate.crashing.org (8.14.1/8.14.1/Submit) id x46Emeop026748;
 Mon, 6 May 2019 09:48:40 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to
 segher@kernel.crashing.org using -f
Date: Mon, 6 May 2019 09:48:40 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: [PATCH 00/10] implement DYNAMIC_DEBUG_RELATIVE_POINTERS
Message-ID: <20190506144840.GZ8599@gate.crashing.org>
References: <20190409212517.7321-1-linux@rasmusvillemoes.dk>
 <1afb0702-3cc5-ba4f-2bdd-604d9da2b846@rasmusvillemoes.dk>
 <20190506070544.GA66463@gmail.com>
 <25dfde77-fdad-0b99-75ec-4ba480058970@rasmusvillemoes.dk>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <25dfde77-fdad-0b99-75ec-4ba480058970@rasmusvillemoes.dk>
User-Agent: Mutt/1.4.2.3i
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_074900_091792_D3956108 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: linuxppc-dev@lists.ozlabs.org, Arnd Bergmann <arnd@arndb.de>,
 Nick Desaulniers <ndesaulniers@google.com>, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Nathan Chancellor <natechancellor@gmail.com>, Jason Baron <jbaron@akamai.com>,
 Ingo Molnar <mingo@redhat.com>, Andy Lutomirski <luto@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 06, 2019 at 09:34:55AM +0200, Rasmus Villemoes wrote:
> I _am_ bending the C rules a bit with the "extern some_var; asm
> volatile(".section some_section\nsome_var: blabla");". I should probably
> ask on the gcc list whether this way of defining a local symbol in
> inline assembly and referring to it from C is supposed to work, or it
> just happens to work by chance.

It only works by chance.  There is no way GCC can know the asm needs
that variable.  If you make it (or its address) an input of the asm it
should work as far as I can see?  (Need exact code to analyse it exactly).


Segher

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
