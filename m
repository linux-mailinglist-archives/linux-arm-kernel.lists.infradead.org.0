Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F40811BB437
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 04:54:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MZvoskgDXhtPSOSD3ELfNmYhenoCotyaMyiQ6b/LEgo=; b=JCOaCc6cmWWcB4
	D/m8wNpxXZF9zRtT8IvuUYQmhNjlbPAW4E2Gr8j5m3DS9mWQAR6kzFgallUh2kKGXvWKLHabz+Xsp
	nD/7frAlNmq3r7lpjpySxPhdN7HFNqz5KcxTpG7Yg9eWQrHyllUhjFqyg7nv3EJZMbpL0263d/+A4
	TJs5cB+YYUEARC96ACbQ//wBmvy98ZImhFPAELd+9tzxHyUeWhR5kjvetAJfcikWvnkMyr/sw2Sxr
	AWDUCVYj6YnHSJz8JOFo7l8mQh17iDnM2sgkCIXVK5UQs17dLPVKzRMvUqlD/U/VEhg7LE0no/pgp
	CFepcB7730r8ag3qaaAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTGO1-0001r5-Ch; Tue, 28 Apr 2020 02:54:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTGNu-0001p4-5O
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 02:54:11 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 66323206E2;
 Tue, 28 Apr 2020 02:54:08 +0000 (UTC)
Date: Mon, 27 Apr 2020 22:54:06 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH] arm64/mm: Reject invalid NUMA option
Message-ID: <20200427225406.7cacc796@gandalf.local.home>
In-Reply-To: <f83c0ce1-b1b2-31f4-60c8-15567b87a8ff@redhat.com>
References: <20200424045314.16017-1-gshan@redhat.com>
 <20200424101132.GC1167@C02TD0UTHF1T.local>
 <f83c0ce1-b1b2-31f4-60c8-15567b87a8ff@redhat.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_195410_244749_8F89D5A6 
X-CRM114-Status: GOOD (  27.70  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, shan.gavin@gmail.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 Apr 2020 10:59:14 +1000
Gavin Shan <gshan@redhat.com> wrote:

> Hi Mark,
> 
> On 4/24/20 8:11 PM, Mark Rutland wrote:
> > [Adding Steve, who added str_has_prefix()]
> > 
> > On Fri, Apr 24, 2020 at 02:53:14PM +1000, Gavin Shan wrote:  
> >> The NUMA option is parsed by str_has_prefix() and the invalid option
> >> like "numa=o" can be regarded as "numa=off" wrongly.  
> > 
> > Are you certain that can pass? If that can happen, str_has_prefix() is
> > misnamed and does not seem to do what its kerneldoc says it does, as
> > "off" is not a prefix of "o".
> >   
> 
> Yes, It's possible. str_has_prefix() depends on strncmp(). In this particular
> case, it's equal to the snippet of code as below: strncmp() returns zero.
> str_has_prefix() returns 3.

Wait! strncmp("o", "off", 3) returns zero?

That to me looks like a bug!

This means str_has_prefix() is broken in other areas as well.


> 
> int strncmp(const char *cs, const char *ct, size_t count)
> {
>          unsigned char c1, c2;
> 
>          while (count) {
>                  c1 = *cs++;
>                  c2 = *ct++;
>                  if (c1 != c2)
>                          return c1 < c2 ? -1 : 1;
>                  if (!c1)                             /* break after first character is compared */

Crap! That is totally wrong!

/me goes to fix...

-- Steve

>                          break;
>                  count--;
>          }
>          return 0;                                    /* 0 returned */
> }
> 
> static __always_inline size_t str_has_prefix(const char *str, const char *prefix)
> {
>          size_t len = strlen("o");
>          return strncmp("o", "off", 1) == 0 ? len : 0;
> }
> 
> >> This fixes the issue with sysfs_streq(), which have more sanity checks,
> >> to avoid accepting the invalid options.  
> > 
> > That doesn't sound immediately right, since this is an early parameter,
> > which has nothing to do with sysfs. Perhaps that's just a misleading
> > name?
> >   
> 
> sysfs_streq() was introduced to compare the parameters received from sysfs
> entry, but I don't think it has to be necessarily tied with sysfs entry.
> So the name is bit misleading. Alternatively, we also can fix it in another
> way (as below) if we try to avoid using sysfs_streq().
> 
> diff --git a/arch/arm64/mm/numa.c b/arch/arm64/mm/numa.c
> index 4decf1659700..b0c1ec78f50f 100644
> --- a/arch/arm64/mm/numa.c
> +++ b/arch/arm64/mm/numa.c
> @@ -29,9 +29,13 @@ static __init int numa_parse_early_param(char *opt)
>   {
>          if (!opt)
>                  return -EINVAL;
> -       if (str_has_prefix(opt, "off"))
> +
> +       if (strlen(opt) >= 3 && str_has_prefix(opt, "off"))
>                  numa_off = true;
> 
> > Thanks,
> > Mark.
> >   
> 
> Thanks,
> Gavin
> 
> >> Signed-off-by: Gavin Shan <gshan@redhat.com>
> >> ---
> >>   arch/arm64/mm/numa.c | 3 ++-
> >>   1 file changed, 2 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/arch/arm64/mm/numa.c b/arch/arm64/mm/numa.c
> >> index 4decf1659700..bd458b28616a 100644
> >> --- a/arch/arm64/mm/numa.c
> >> +++ b/arch/arm64/mm/numa.c
> >> @@ -29,7 +29,8 @@ static __init int numa_parse_early_param(char *opt)
> >>   {
> >>   	if (!opt)
> >>   		return -EINVAL;
> >> -	if (str_has_prefix(opt, "off"))
> >> +
> >> +	if (sysfs_streq(opt, "off"))
> >>   		numa_off = true;
> >>   
> >>   	return 0;
> >> -- 
> >> 2.23.0
> >>  
> > 
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> >   


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
