Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A396E5282E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 11:36:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gmIDLKLEYAI+G/f0wLvuJazfzxC2ekO6YkxDvV9208U=; b=PHymp+JMrCTAQE
	VyrtgnLjJhGJmPnI+or/QB3UvmeJW7Oyl/Ek7vzO+IsMuGVVQOBBVvS1kmtJW4VR0bmjzNYcu99qo
	Dz358X8J2yAkYisIWxMQEvXL6r1OvcnHdGfADx3HdUbXw15bSUX7rGZ0v5oMbqZ3iWy2DVCm9VWzP
	GW9gLYmFKYuAeeX4CLn07Lf0NomFwggN3LcWQCylNMEIQsiQLzdh426tOncB7/Rym4FKxcEVcS55N
	BzVODP+88abv8Hd3doHTTQcdd1yBQySRcdmuma5tb7YCMAHaZCvCWXSQTv7Y1wLr6ZoMplrYgiC0P
	GVG46V9jg7sts6evC60w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfhs3-000473-J1; Tue, 25 Jun 2019 09:36:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfhrh-00045p-G1
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 09:35:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 20161360;
 Tue, 25 Jun 2019 02:35:46 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D845D3F71E;
 Tue, 25 Jun 2019 02:35:44 -0700 (PDT)
Date: Tue, 25 Jun 2019 10:35:42 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [RFC PATCH v2 3/8] arm64/fpsimdmacros: Allow the macro "for" to
 be used in more cases
Message-ID: <20190625093540.GW2790@e103592.cambridge.arm.com>
References: <20190613161656.20765-1-julien.grall@arm.com>
 <20190613161656.20765-4-julien.grall@arm.com>
 <20190621153241.GY2790@e103592.cambridge.arm.com>
 <8ba85821-3734-9e3c-5696-bc5e315a28c4@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8ba85821-3734-9e3c-5696-bc5e315a28c4@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_023549_641276_43A950C8 
X-CRM114-Status: GOOD (  23.78  )
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
Cc: Anton.Kirilov@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 oleg@redhat.com, zhang.lei@jp.fujitsu.com, alex.bennee@linaro.org,
 linux-arm-kernel@lists.infradead.org, Daniel.Kiss@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 05:10:02PM +0100, Julien Grall wrote:
> Hi Dave,
> 
> On 6/21/19 4:32 PM, Dave Martin wrote:
> >On Thu, Jun 13, 2019 at 05:16:51PM +0100, Julien Grall wrote:
> >>The current version of the macro "for" is only able to work when the
> >>counter is used to generate registers using mnemonics. This is because
> >
> >[*] Is this backwards?  Previously, we _can't_ substitute register
> >numbers directly into proper instruction mnemonics: we have to use
> >.insn with an expression to generate the opcode directly instead
> >(possibly via a macro).
> 
> Hmm, yes this is backwards. I want to s/only able/not able/.
> 
> >
> >With this change we can paste the _for number straight into human-
> >readable assembler mnemonics.
> >
> >>gas is not able to evaluate the expression generated if used in
> >>registers name (i.e x\n).
> >
> >Nit: maybe: "a register name" or "a register's name"
> 
> Ok.
> 
> >
> >>Gas offers a way to evaluate macro arguments by using % in front of
> >>them under the alternate macro mode [1].
> >
> >This reference is obviously useful to reviewers, but I'm not sure about
> >the life expectancy of such a URL.  It probably belongs after the
> >tearoff line rather than in the commit message.
> 
> Sure.
> 
> >
> >>The implementation of "for" is updated to use the alternate macro mode
> >>and %, so we can use the macro in more cases. As the alternate macro mode
> >>may have side-effect, this is disabled when generating the body.
> >
> >Nit: side-effects
> >
> >Nit: I'd probably say "expanding the body", to be consistent with gas's
> >own terminology.
> >
> >(These are pedantic, and inessential to fix.)
> 
> I have fixed them :).
> 
> >
> >>While it is enough to prefix the argument of the macro "__for_body" with
> >>%, the arguments of "__for" are also prefixed to get a more bearable
> >>value in case of compilation error.
> >>
> >>[1] https://sourceware.org/binutils/docs/as/Altmacro.html
> >>
> >>Suggested-by: Dave Martin <dave.martin@arm.com>
> >>Signed-off-by: Julien Grall <julien.grall@arm.com>
> >>
> >>---
> >>     Changes in v2:
> >>         - Fix typo in the commit message
> >>---
> >>  arch/arm64/include/asm/fpsimdmacros.h | 10 +++++++---
> >>  1 file changed, 7 insertions(+), 3 deletions(-)
> >>
> >>diff --git a/arch/arm64/include/asm/fpsimdmacros.h b/arch/arm64/include/asm/fpsimdmacros.h
> >>index 46843515d77b..e2ab77dd9b4f 100644
> >>--- a/arch/arm64/include/asm/fpsimdmacros.h
> >>+++ b/arch/arm64/include/asm/fpsimdmacros.h
> >>@@ -177,19 +177,23 @@
> >>  .macro __for from:req, to:req
> >>  	.if (\from) == (\to)
> >>-		_for__body \from
> >>+		_for__body %\from
> >>  	.else
> >>-		__for \from, (\from) + ((\to) - (\from)) / 2
> >>-		__for (\from) + ((\to) - (\from)) / 2 + 1, \to
> >>+		__for %\from, %((\from) + ((\to) - (\from)) / 2)
> >>+		__for %((\from) + ((\to) - (\from)) / 2 + 1), %\to
> >>  	.endif
> >>  .endm
> >>  .macro _for var:req, from:req, to:req, insn:vararg
> >>  	.macro _for__body \var:req
> >>+		.noaltmacro
> >>  		\insn
> >>+		.altmacro
> >>  	.endm
> >>+	.altmacro
> >>  	__for \from, \to
> >>+	.noaltmacro
> >>  	.purgem _for__body
> >>  .endm
> >
> >Looks OK to me.  With [*] addressed as appropriate, and modulo others'
> >comments (if any):
> 
> This is the new commit message (I have taken the opportunity to reflow it):
> 
> commit 0dabd72ee773a62ec25fde289a60a9de908bf41b
> Author: Julien Grall <julien.grall@arm.com>
> Date:   Wed Dec 5 14:44:19 2018 +0000
> 
>     arm64/fpsimdmacros: Allow the macro "for" to be used in more cases
> 
>     The current version of the macro "for" is not able to work when the
>     counter is used to generate registers using mnemonics. This is because
>     gas is not able to evaluate the expression generated if used in
>     register's name (i.e x\n).
> 
>     Gas offers a way to evaluate macro arguments by using % in front of
>     them under the alternate macro mode.
> 
>     The implementation of "for" is updated to use the alternate macro mode
>     and %, so we can use the macro in more cases. As the alternate macro
>     mode may have side-effects, this is disabled when expanding the body.
> 
>     While it is enough to prefix the argument of the macro "__for_body"
>     with %, the arguments of "__for" are also prefixed to get a more
>     bearable value in case of compilation error.
> 
>     Suggested-by: Dave Martin <dave.martin@arm.com>
>     Signed-off-by: Julien Grall <julien.grall@arm.com>
> 
>     ---
> 
>      For the alternate macro mode documentation, see:
>        https://sourceware.org/binutils/docs/as/Altmacro.html
> 
> >
> >Reviewed-by: Dave Martin <Dave.Martin@arm.com>

That looks fine to me.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
