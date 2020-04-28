Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C921BB453
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 05:00:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sqoOfS7MNi6ELxlCWalBd3hb3ki9AV6PsKN8bYRPFW8=; b=Ol0vYtFrs52YNc
	WL+0t5SDJcxjB4rYUN8SAkxhc+EcYLA6tniaKvo4PrhIKBI0ZYSVc5ZXpGasOpIUs10iFqeds/e22
	9nzh64cnEyKE3Q3Cdauq2LVODOgvudB25CQIMnw5z7RZIAiv8RinmlII/bZMir/3efOwKx6uKbJ2E
	DbRXKFUeBg30zzDnhxJ5MHS3jMdyPcLwMHCc8myOTzlmn7z1QPII7n63nfoN95QpXUvGjlV5oRXSu
	xadA1u+q9nqzwd+mf9kJSiC0DG8knbNMVTEGjmjpY0kg5YbAIDh6oFxNAeX1orYUuaqtpui92A07G
	mjXcddilTJGxr5SUg/OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTGTU-000579-7l; Tue, 28 Apr 2020 02:59:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTGTL-00056F-8U
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 02:59:48 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3FE0E206B8;
 Tue, 28 Apr 2020 02:59:46 +0000 (UTC)
Date: Mon, 27 Apr 2020 22:59:44 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH] arm64/mm: Reject invalid NUMA option
Message-ID: <20200427225944.185d4431@gandalf.local.home>
In-Reply-To: <20200427225406.7cacc796@gandalf.local.home>
References: <20200424045314.16017-1-gshan@redhat.com>
 <20200424101132.GC1167@C02TD0UTHF1T.local>
 <f83c0ce1-b1b2-31f4-60c8-15567b87a8ff@redhat.com>
 <20200427225406.7cacc796@gandalf.local.home>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_195947_317370_3888370B 
X-CRM114-Status: GOOD (  16.79  )
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

On Mon, 27 Apr 2020 22:54:06 -0400
Steven Rostedt <rostedt@goodmis.org> wrote:

> On Tue, 28 Apr 2020 10:59:14 +1000
> Gavin Shan <gshan@redhat.com> wrote:
> 
> > Hi Mark,
> > 
> > On 4/24/20 8:11 PM, Mark Rutland wrote:  
> > > [Adding Steve, who added str_has_prefix()]
> > > 
> > > On Fri, Apr 24, 2020 at 02:53:14PM +1000, Gavin Shan wrote:    
> > >> The NUMA option is parsed by str_has_prefix() and the invalid option
> > >> like "numa=o" can be regarded as "numa=off" wrongly.    
> > > 
> > > Are you certain that can pass? If that can happen, str_has_prefix() is
> > > misnamed and does not seem to do what its kerneldoc says it does, as
> > > "off" is not a prefix of "o".
> > >     
> > 
> > Yes, It's possible. str_has_prefix() depends on strncmp(). In this particular
> > case, it's equal to the snippet of code as below: strncmp() returns zero.
> > str_has_prefix() returns 3.  
> 
> Wait! strncmp("o", "off", 3) returns zero?
> 
> That to me looks like a bug!
> 
> This means str_has_prefix() is broken in other areas as well.
> 
> 
> > 
> > int strncmp(const char *cs, const char *ct, size_t count)
> > {
> >          unsigned char c1, c2;
> > 
> >          while (count) {
> >                  c1 = *cs++;
> >                  c2 = *ct++;
> >                  if (c1 != c2)
> >                          return c1 < c2 ? -1 : 1;
> >                  if (!c1)                             /* break after first character is compared */  
> 
> Crap! That is totally wrong!

Looking at this again, it's not wrong. But how did we get here if c2 isn't
zero as well?

-- Steve


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
