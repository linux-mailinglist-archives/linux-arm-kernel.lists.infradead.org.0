Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EEB0163531
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 22:37:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kB1IzNSKvGCIdjoHF7x0kdcLFb1EUhDn9LKeuAu1trI=; b=q5SaBTsUsi87/K
	cqQiRR15n2cDng33WcTiFd89B4U2m7DVceBayUHgbnCZ5naH8gVGwx2Rg19h0od8xD3ITrr/OOjFF
	J0AKl8GcSc7nP0cznh8uylrXo7fCzOsBPXE7S5l3ik+a9a70n++RYHaOOQwFtPjXf7tRPtHYjyyqC
	TwwQudQ1YwyXu7RuWOf++iBadohmQJw7vTUTq3QXP2Yg6Jiu3LuTldQ7J3M6toinmWqXEjK3Ha8c1
	+Bgrd/XqexfWetE50ctkJi4T9vwekqmyNZs+ImJFiZNnGBTr4qAMRqvxEafT7R6XGwoJ3QsZSIVoC
	xiAhih0Fe35JEwAvquGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4AYw-0003ET-3R; Tue, 18 Feb 2020 21:37:50 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4AYf-00032n-A5
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 21:37:35 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1j4AYQ-0004QN-Fo
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 22:37:19 +0100
Date: Tue, 18 Feb 2020 22:37:12 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: linux-arm-kernel@lists.infradead.org
Subject: Re: [RFC PATCH 0/5] Removing support for 32bit KVM/arm host
Message-ID: <20200218213712.GD1382@makrotopia.org>
References: <mailman.29637.1581344013.2486.linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mailman.29637.1581344013.2486.linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_133733_347024_EBA31AA4 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Message-ID: <20200210141324.21090-1-maz@kernel.org>
> 
> KVM/arm was merged just over 7 years ago, and has lived a very quiet
> life so far. It mostly works if you're prepared to deal with its
> limitations, it has been a good prototype for the arm64 version,
> but it suffers a few problems:
> 
> - It is incomplete (no debug support, no PMU)
> - It hasn't followed any of the architectural evolutions
> - It has zero users (I don't count myself here)

Not true. At least I'm using KVM on CortexA7 (sun7i aka. Allwinner A20)
and it has been quite useful until now (running low memory footprint
OpenWrt-based guests on yocto/OpenEmbedded host)

> - It is more and more getting in the way of new arm64 developments

Can you elaborate more on how it is getting in the way? Just in terms
of effort to maintain the necessary abstractions or does something
really block ARM64 KVM support?

> 
> So here it is: unless someone screams and shows that they rely on
> KVM/arm to be maintained upsteam, I'll remove 32bit host support
> form the tree. One of the reasons that makes me confident nobody is
> using it is that I never receive *any* bug report. Yes, it is perfect.
> But if you depend on KVM/arm being available in mainline, please shout.

I cetainly don't depend on it, meaning I'd have to replace hardware
worth less than $100 in the near future, that's not too bad.
And yes, it has just been working perfectly ;)


Cheers


Daniel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
