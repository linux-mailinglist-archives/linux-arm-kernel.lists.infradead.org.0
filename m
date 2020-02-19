Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10BFE163F29
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 09:31:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dfA7eKxN3BMryKDeOFQWUwzzPARtlVHeGMovHP+A394=; b=EpmkGemorA4/hn
	Q2hXCgVEF1mBElIW//hnJZFHM171gqFjSz2/vKUR3AtR9w/kJ5cIhQUEqX9XkGWYXugrxwiIJqMqN
	uUAZvP4KCoJoTLflrMFfmassBNE83FFHQLdI1nWCiGHAm3EaXwggOaPBSiJfD4nPcJrq4GLmwxs89
	KFgIAKzdpOiDkW4PWFSxlTpeN54P+Dog6Qn4pja5b1xlO3pIBy97VCZCrTl3BpnhogdCpbTn3bDKk
	AJtE5qUitaQhfRE/Ad0g6dV09x/aepc5+2ZgO44QEfsa05wBUcnUqADop/8ztaeAPGwHPsdwMAT68
	MZOANAXpmFsdCoJlGLxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4KlQ-0005o0-Mj; Wed, 19 Feb 2020 08:31:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4KlJ-0005n6-69
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 08:31:18 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9C18E24670;
 Wed, 19 Feb 2020 08:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582101076;
 bh=i3TyNOTPlwUgQ2zrp0/J0S01719ExgPLRhhpnXueBZg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=1Qip8m9VnXPVU32STZWjEHdDATYQvVfdGRLSNUyfj55jG7wsEUPJmn+Pz3YvHZpDZ
 /aJ3tWgoCyAh68y/4BSytZ+qW8e/EkW6FBMaW8hMmce5Boh7E3QRxbR6IuIea8fCiR
 fax5q+6FqJXWmAyYZ8tb149KKfEJU7WcCSZRFbfE=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j4KlG-006SQy-Ti; Wed, 19 Feb 2020 08:31:15 +0000
Date: Wed, 19 Feb 2020 08:31:13 +0000
From: Marc Zyngier <maz@kernel.org>
To: Daniel Golle <daniel@makrotopia.org>
Subject: Re: [RFC PATCH 0/5] Removing support for 32bit KVM/arm host
Message-ID: <20200219083113.52c1a8fb@why>
In-Reply-To: <20200218213712.GD1382@makrotopia.org>
References: <mailman.29637.1581344013.2486.linux-arm-kernel@lists.infradead.org>
 <20200218213712.GD1382@makrotopia.org>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: daniel@makrotopia.org, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_003117_268434_2CC2E8DE 
X-CRM114-Status: GOOD (  22.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 18 Feb 2020 22:37:12 +0100
Daniel Golle <daniel@makrotopia.org> wrote:

Daniel,

Please keep people on cc, it helps with the discussion.

> > Message-ID: <20200210141324.21090-1-maz@kernel.org>
> > 
> > KVM/arm was merged just over 7 years ago, and has lived a very quiet
> > life so far. It mostly works if you're prepared to deal with its
> > limitations, it has been a good prototype for the arm64 version,
> > but it suffers a few problems:
> > 
> > - It is incomplete (no debug support, no PMU)
> > - It hasn't followed any of the architectural evolutions
> > - It has zero users (I don't count myself here)  
> 
> Not true. At least I'm using KVM on CortexA7 (sun7i aka. Allwinner A20)
> and it has been quite useful until now (running low memory footprint
> OpenWrt-based guests on yocto/OpenEmbedded host)

OK, so we have a user!

> > - It is more and more getting in the way of new arm64 developments  
> 
> Can you elaborate more on how it is getting in the way? Just in terms
> of effort to maintain the necessary abstractions or does something
> really block ARM64 KVM support?

Useless abstractions are indeed one of the problems. Essentially,
KVM/arm has become a pile of empty stubs that are added to make the
thing compile. This doesn't bode well for the future.

The other aspect is that new features appearing on arm64 (nested virt,
enclaves, and potentially some more) are tearing the code-base apart,
and doing so while keeping 32bit alive and kicking would be a
challenge. I'm not saying it is impossible, just that it is hard, and
for very little gain, specially given that *nobody* contributes to the
port.

> > So here it is: unless someone screams and shows that they rely on
> > KVM/arm to be maintained upsteam, I'll remove 32bit host support
> > form the tree. One of the reasons that makes me confident nobody is
> > using it is that I never receive *any* bug report. Yes, it is perfect.
> > But if you depend on KVM/arm being available in mainline, please shout.  
> 
> I cetainly don't depend on it, meaning I'd have to replace hardware
> worth less than $100 in the near future, that's not too bad.
> And yes, it has just been working perfectly ;)

I'm really glad it works well. Note that it isn't like we are taking it
away from you. 5.6 will still have it, and I will still maintain it as
part of the stable tree. It is just that I've come to the sad
conclusion that as a community, we need to move on.

	M.

PS: and if you find a decent, reliable machine to replace your A20,
please let me know. All the arm64 SBCs I've seen are utter crap
compared to my Cubietruck...
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
