Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 108CB1F3DC2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 16:16:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=72UnHvt5nyJtXWaXr/K0blbm59myyYkBZPJJlElrihw=; b=PADQXqD9HJvJBr
	m3STZfse5BLxmxOHc5aTic8xo3GiH2iglJgm9qg4qmSAnYRwAm1QkW3jiriwZ4jPkT176KQ6QQZ1q
	fTrLz2kR9vMtpZj/VUJfLOWyeakJi9Gafp2C48sdqN77UnrPnlSvU2xOcHy1ViDZNurrtHttyTK/e
	JbXKwsgjMkPhnI6e6IO4BQCW+r8ny7osB8Sy80hfq62WICciijn3g4qWQzeKb+a1XKahyxN+2xPC3
	jvPlWIkYiz2HKx++MZrr7eN0/LiOGGkHVj8Ye/0LyAJrc92nA64gaszZvm1xr1EHapviekTw8h70A
	8A2+fGJQmxU/1aakOgJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jif3Q-0003aw-LY; Tue, 09 Jun 2020 14:16:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jif3B-0003aM-4J
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 14:16:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 01A661FB;
 Tue,  9 Jun 2020 07:16:24 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BD27A3F66F;
 Tue,  9 Jun 2020 07:16:22 -0700 (PDT)
Date: Tue, 9 Jun 2020 15:16:20 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH v2 5/6] prctl.2: Add PR_PAC_RESET_KEYS (arm64)
Message-ID: <20200609141620.GC25945@arm.com>
References: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
 <1590614258-24728-6-git-send-email-Dave.Martin@arm.com>
 <1084d017-54f3-475c-be1b-aabc801d9a71@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1084d017-54f3-475c-be1b-aabc801d9a71@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_071625_264205_EC978669 
X-CRM114-Status: GOOD (  18.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 09, 2020 at 01:36:42PM +0200, Michael Kerrisk (man-pages) wrote:
> Hello Dave,
> 
> I've applied this patch (manually, because 4/6 is not yet applied).
> I have a question below.
> 
> On 5/27/20 11:17 PM, Dave Martin wrote:
> > Add documentation for the PR_PAC_RESET_KEYS ioctl added in Linux
> > 5.0 for arm64.
> > 
> > Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Amit Daniel Kachhap <amit.kachhap@arm.com>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > 
> > ---
> > 
> > Since v1:
> > 
> >  * Clarify explicitly that PR_PAC_RESET_KEYS is redundant when combined
> >    with execve().
> > 
> >  * Move error condition details into the prctl description, to avoid
> >    excessive duplication while keeping keeping related pieces of text
> >    closer together.
> > 
> >  * In lieu of having a separate man page to cross reference for detailed
> >    guidance, cross-reference the kernel documentation.
> > 
> >  * Add safety warning.  This is deliberately vague, pending ongoing
> >    discussions with libc folks.
> > ---
> >  man2/prctl.2 | 80 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 80 insertions(+)
> > 
> 
> [...]
> 
> > +.IP
> > +.B Warning:
> > +Because the compiler or run-time environment
> > +may be using some or all of the keys,
> > +a successful
> 
> Things got a bit garbled here. I think the next few lines should have been 
> at the end.
> > +.IP
> > +For more information, see the kernel source file
> > +.I Documentation/arm64/pointer\-authentication.rst
> > +.\"commit b693d0b372afb39432e1c49ad7b3454855bc6bed
> > +(or
> > +.I Documentation/arm64/pointer\-authentication.txt
> > +before Linux 5.3).
> > +.B PR_PAC_RESET_KEYS
> > +may crash the calling process.
> > +The conditions for using it safely are complex and system-dependent.
> > +Don't use it unless you know what you are doing.
> 
> I applied the following change after your patch; is it okay?
> 
>  .IP
>  .B Warning:
>  Because the compiler or run-time environment
>  may be using some or all of the keys,
>  a successful

Looks fine, execpt that I think you need to move the

	.B PR_PAC_RESET_KEYS

line here also.

Thanks
---Dave

> +may crash the calling process.
> +The conditions for using it safely are complex and system-dependent.
> +Don't use it unless you know what you are doing.
>  .IP
>  For more information, see the kernel source file
>  .I Documentation/arm64/pointer\-authentication.rst
> @@ -1020,9 +1023,6 @@ For more information, see the kernel source file
>  .I Documentation/arm64/pointer\-authentication.txt
>  before Linux 5.3).
>  .B PR_PAC_RESET_KEYS
> -may crash the calling process.
> -The conditions for using it safely are complex and system-dependent.
> -Don't use it unless you know what you are doing.
>  .\" prctl PR_SET_PDEATHSIG
>  .TP
>  .BR PR_SET_PDEATHSIG " (since Linux 2.1.57)"
> 

[...]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
