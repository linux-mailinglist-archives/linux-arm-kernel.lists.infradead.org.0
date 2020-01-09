Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A792513618A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 21:08:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Mime-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wLA/cp55zrhYNF6rExxJ9+n0imFSSBtXyTPeu1Cd74o=; b=pmHqhnxW5U+vQb
	oN7WGUEGoMLqGMns5NlYy4gpjRp9fRjc/Ys32t2TPiN/fxjgQZbD3d2WIZFObPufSBfSgZqSxGdd4
	fp/IL+fU+tkh/ph+ZTmFD/niefwxE8ZXbz/JoTEM6D+Igy2FBtWMlzXyuqNKQlg8afffqedyS5ctS
	DNKQvNGMj7BXU++Kg9HM4/O6DagY+a0VFLP2cxJcM3vSa/D8LlyqctmLPuE4/qGoWN1p7ZiN6YUXA
	azXAK0ZWa4pyvHs3prWYCTZIfxHTkjPPGr+4EUtB7/eoD0bH+L5lhJ3+3vdnfL6BzvAcfCGjUpJEf
	DlG2gD1MJC8NE2kMfrGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipe6K-0008HJ-5S; Thu, 09 Jan 2020 20:08:16 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipe6C-0008FX-FT
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 20:08:09 +0000
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 009K7ZKP004645;
 Thu, 9 Jan 2020 14:07:35 -0600
Received: (from segher@localhost)
 by gate.crashing.org (8.14.1/8.14.1/Submit) id 009K7XMf004644;
 Thu, 9 Jan 2020 14:07:33 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to
 segher@kernel.crashing.org using -f
Date: Thu, 9 Jan 2020 14:07:33 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: Re: Surprising code generated for vdso_read_begin()
Message-ID: <20200109200733.GS3191@gate.crashing.org>
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
 <bd4557a7-9715-59aa-5d8e-488c5e516a98@c-s.fr>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bd4557a7-9715-59aa-5d8e-488c5e516a98@c-s.fr>
User-Agent: Mutt/1.4.2.3i
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_120808_664022_6CDB70C5 
X-CRM114-Status: UNSURE (   6.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: arnd@arndb.de, Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 x86@kernel.org, linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@samba.org>, luto@kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, tglx@linutronix.de,
 vincenzo.frascino@arm.com, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 05:52:34PM +0000, Christophe Leroy wrote:
> Wondering why we get something so complicated/redundant for 
> vdso_read_begin() <include/vdso/helpers.h>
> 
> static __always_inline u32 vdso_read_begin(const struct vdso_data *vd)
> {
> 	u32 seq;
> 
> 	while ((seq = READ_ONCE(vd->seq)) & 1)
> 		cpu_relax();
> 
> 	smp_rmb();
> 	return seq;
> }
> 
> 
>  6e0:   81 05 00 f0     lwz     r8,240(r5)
>  6e4:   71 09 00 01     andi.   r9,r8,1
>  6e8:   41 82 00 10     beq     6f8 <__c_kernel_clock_gettime+0x158>
>  6ec:   81 05 00 f0     lwz     r8,240(r5)
>  6f0:   71 0a 00 01     andi.   r10,r8,1
>  6f4:   40 82 ff f8     bne     6ec <__c_kernel_clock_gettime+0x14c>
>  6f8:
> 
> r5 being vd pointer
> 
> Why the first triplet, not only the second triplet ? Something wrong 
> with using READ_ONCE() for that ?

It looks like the compiler did loop peeling.  What GCC version is this?
Please try current trunk (to become GCC 10), or at least GCC 9?


Segher

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
