Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE4F146B7E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 15:41:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UR3W/3fY0pqlk8BbEU82Jtz/9f2fVLjrlmP1pMAiBBM=; b=dm5byw96DbSflM
	Csx9flv70bvrpSiXrUIzMwoC4BekNILCIFhVqzzbC0NO0tjZXWYhdT5QrwCsDyc3dkLBxzqASJf2C
	mAdi0ePU3bJvyV+PxNtGLjKHVLALkcAS2HNamvUSrdLQrESpiD5nuZ1qVC1bzCaEXy87YfQTjgJwA
	b0wL3Fge4AQc2m9jdWOy9SCjQWZDIQXy74phcuTMIMjXb5vlUTbxsx1bZEqPjLmRqvBlMtKoEGY6u
	IMMrN+9Ts7HYS+BVUcZXKO6N8E8dnPKYz+MQsHtDlopbrIMhGjdri2nZeCJ734JZkW8tUTJpHP6aH
	KzSB/k31BnNKsWrrjdOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iudfG-0005I0-Vk; Thu, 23 Jan 2020 14:40:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iudf7-0005HV-AK
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 14:40:50 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE0D120704;
 Thu, 23 Jan 2020 14:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579790449;
 bh=P2ot6B9HVK+z/Tf3oXlZLi5L7qNWLA/fO+9rq7CKF70=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=19unuZ9oUyArs3WUF1iRYaGScpUNfuGPkJsTwuZ/iiZ52x2hJnMmQKEiycvUYdqiF
 mleGx+yEuN1ie/cuq+e+PosUzXCLwJuWF7xX4bWUfsrUGQleBBLCIK9ZVCAf4L09JZ
 evUwYFk79inu6737+5jx4RCmLP6tbonhigFiEaJQ=
Date: Thu, 23 Jan 2020 14:40:44 +0000
From: Will Deacon <will@kernel.org>
To: Julien Thierry <jthierry@redhat.com>
Subject: Re: [RFC v5 47/57] arm64: assembler: Add macro to annotate asm
 function having non standard stack-frame.
Message-ID: <20200123144044.GB19649@willie-the-truck>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200109160300.26150-48-jthierry@redhat.com>
 <20200121103005.GA11154@willie-the-truck>
 <66b1746b-c77b-a4d3-846b-cecdc5a15357@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <66b1746b-c77b-a4d3-846b-cecdc5a15357@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_064049_378341_F10AAE56 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: peterz@infradead.org, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 raphael.gault@arm.com, jpoimboe@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 23, 2020 at 01:45:58PM +0000, Julien Thierry wrote:
> On 1/21/20 10:30 AM, Will Deacon wrote:
> > On Thu, Jan 09, 2020 at 04:02:50PM +0000, Julien Thierry wrote:
> > > From: Raphael Gault <raphael.gault@arm.com>
> > > diff --git a/include/linux/frame.h b/include/linux/frame.h
> > > index 02d3ca2d9598..1e35e58ab259 100644
> > > --- a/include/linux/frame.h
> > > +++ b/include/linux/frame.h
> > > @@ -11,14 +11,31 @@
> > >    *
> > >    * For more information, see tools/objtool/Documentation/stack-validation.txt.
> > >    */
> > > +#ifndef __ASSEMBLY__
> > >   #define STACK_FRAME_NON_STANDARD(func) \
> > >   	static void __used __section(.discard.func_stack_frame_non_standard) \
> > >   		*__func_stack_frame_non_standard_##func = func
> > > +#else
> > > +	/*
> > > +	 * This macro is the arm64 assembler equivalent of the
> > > +	 * macro STACK_FRAME_NON_STANDARD define at
> > > +	 * ~/include/linux/frame.h
> > > +	 */
> > > +	.macro	asm_stack_frame_non_standard	func
> > > +	.pushsection ".discard.func_stack_frame_non_standard"
> > > +	.quad	\func
> > > +	.popsection
> > > +	.endm
> > > 
> > > +#endif /* __ASSEMBLY__ */
> > >   #else /* !CONFIG_STACK_VALIDATION */
> > > 
> > > +#ifndef __ASSEMBLY__
> > >   #define STACK_FRAME_NON_STANDARD(func)
> > > -
> > > +#else
> > > +	.macro	asm_stack_frame_non_standard	func
> > > +	.endm
> > > +#endif /* __ASSEMBLY__ */
> > 
> > Hmm. Given that we're currently going through the exercise of converting
> > a bunch of ENTRY/ENDPROC macros to use the new SYM_{CODE,FUNC}_{START,END}
> > macros, I would much prefer for this to be a new flavour of those.
> > 
> > In fact, can you just use SYM_CODE_* for this?
> > 
> 
> You mean to not introduce the STACK_FRAME_NON_STANDARD() macro and just mark
> the asm callable symbols that don't set up a stackframe as SYM_CODE_* ?

Yes, unless I'm mistaken, SYM_CODE_* is intended for that sort of thing
anyway.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
