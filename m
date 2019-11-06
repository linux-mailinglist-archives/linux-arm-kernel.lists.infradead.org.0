Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32511F183B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 15:16:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0H4JIVB8sASowbpnSWcZyP3dD0ERECSmDO9uuTDwXyw=; b=HQpzvflBBNIEe7
	HtTM/hUG16YdgvBnOS16LFxBC7sP6Fc6tuwtzEsBMzn1ND/HIG7CBfrwE4EM4WXzjyBv/gvUCv3B4
	5i5FVsREMLYbK1v+d9mAbW7+ao0dBfKqpdV0ErBpt2vKja4ocDZSliagsPEdunHgh3ecxPVCrTBwL
	Xul5fQj/oP9TIjniH0QMeIvPEngnv6yk6Hrt98n5ojKnqewMTaebCnQUKpsFgSc2On82f/Mfv78QI
	1cDPn8C9RTu79ZBq4ytx5F2LY/E5pvKgZLi2hnHe/GT1YOhMPg4QvqIxf3yQkACgEp/S3ws0F+uPJ
	J9FqJJBrIvAqtWIxVN5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSM6c-0003g5-OX; Wed, 06 Nov 2019 14:16:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSM5y-00037a-Ez
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 14:15:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2AAD47CD;
 Wed,  6 Nov 2019 06:15:35 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E5A693F6C4;
 Wed,  6 Nov 2019 06:15:32 -0800 (PST)
Date: Wed, 6 Nov 2019 14:15:30 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Amit Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCHv2 1/8] ftrace: add ftrace_init_nop()
Message-ID: <20191106141530.GC50610@lakrids.cambridge.arm.com>
References: <20191029165832.33606-1-mark.rutland@arm.com>
 <20191029165832.33606-2-mark.rutland@arm.com>
 <daad0785-a33f-3cfb-cf0f-657b6c677257@arm.com>
 <20191104133657.GE45140@lakrids.cambridge.arm.com>
 <8e68de1f-f961-752d-9c07-ce41ce624d35@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8e68de1f-f961-752d-9c07-ce41ce624d35@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_061538_576163_EF73F253 
X-CRM114-Status: GOOD (  19.56  )
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
Cc: jthierry@redhat.com, linux-parisc@vger.kernel.org, peterz@infradead.org,
 catalin.marinas@arm.com, deller@gmx.de, jpoimboe@redhat.com,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 James.Bottomley@HansenPartnership.com, takahiro.akashi@linaro.org,
 will@kernel.org, mingo@redhat.com, james.morse@arm.com, jeyu@kernel.org,
 svens@stackframe.org, duwe@suse.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 12:17:26PM +0530, Amit Kachhap wrote:
> On 11/4/19 7:06 PM, Mark Rutland wrote:
> > On Sat, Nov 02, 2019 at 05:49:00PM +0530, Amit Daniel Kachhap wrote:
> > > On 10/29/19 10:28 PM, Mark Rutland wrote:
> > > > +/**
> > > > + * ftrace_init_nop - initialize a nop call site
> > > > + * @mod: module structure if called by module load initialization
> > > > + * @rec: the call site record (e.g. mcount/fentry)
> > > > + *
> > > > + * This is a very sensitive operation and great care needs
> > > > + * to be taken by the arch.  The operation should carefully
> > > > + * read the location, check to see if what is read is indeed
> > > > + * what we expect it to be, and then on success of the compare,
> > > > + * it should write to the location.
> > > > + *
> > > > + * The code segment at @rec->ip should contain the contents created by
> > > > + * the compiler
> > > Nit: Will it be better to write it as "@rec->ip should store the adjusted
> > > ftrace entry address of the call site" or something like that.
> > 
> > This was the specific wording requested by Steve, and it's trying to
> > describe the instructions at rec->ip, rather than the value of rec->ip,
> > so I think it's better to leave this as-is.
> ok Its fine this way too. Actually from the comment, I could not understand
> which one of the compiler contents this points to as in this case there are
> 2 nops.

We can't say what the compiler contents will be. An architecture may use
this callback if it's using mcount, mfentry, patchable-function-entry,
or some other mechanism we're not aware of today. Depending on the
architecture and mechanism, the callsite could contain a number of
distinct things.

All the comment is trying to say is that when ftrace_init_nop() is
called, the callsite has not been modified in any way since being
compiled, so we can expect the contents to be whatever the compiler
generated.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
