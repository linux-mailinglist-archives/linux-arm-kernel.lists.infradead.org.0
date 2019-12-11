Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DA411AE63
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 15:53:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6DEIRqUh2LNKjxDa6OBbCwOKSVm3EGLAJEwkmSwWnxU=; b=I39C0Bu0gTA9Uc
	SMBluoVd1/CQ5+862KHysKHsk8DRcBgccHi/rB5BTvPAqmqJoHNfPjwbOe26YvZ2KKRkZSbTdeLld
	WTa0xW3vNId7pJoIzWZRIbu1zzONil2CfIb1bjvFcFPRzkAsfjWQ8fVYNhpomVavuvwsd5hA3DB6Z
	k8WcnRjm391RLlVK9lfSHR3PNeC+630MoOLTyH3j2mBA23C5OqqPcAb3cz3oX4kpK2Ks4NphZIfWt
	eBwdF6iI5YdHawTI7pEn5N+349fjGPo/iGZjRWILzIluqCBH9dypSO9zkrtasZhnwehWfMfdhBCBP
	XD/GSkQEnWf2293g5axw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if3MU-00084X-7G; Wed, 11 Dec 2019 14:53:10 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if3Lv-0007eE-T8
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 14:52:37 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id BBDABAE8C;
 Wed, 11 Dec 2019 14:52:33 +0000 (UTC)
From: Thomas Renninger <trenn@suse.de>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 2/3] x86 cpuinfo: implement sysfs nodes for x86
Date: Wed, 11 Dec 2019 15:52:33 +0100
Message-ID: <2139491.Komy7AgBfX@skinner.arch.suse.de>
In-Reply-To: <20191211142647.GB605616@kroah.com>
References: <20191206162421.15050-1-trenn@suse.de>
 <22533595.7ohjOCJ8As@skinner.arch.suse.de>
 <20191211142647.GB605616@kroah.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_065236_119530_357C4C6F 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Felix Schnizlein <fschnizlein@suse.de>,
 Felix Schnizlein <fschnizlein@suse.com>, x86@kernel.org, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wednesday, December 11, 2019 3:26:47 PM CET Greg KH wrote:
> On Wed, Dec 11, 2019 at 03:12:51PM +0100, Thomas Renninger wrote:
> > On Wednesday, December 11, 2019 2:56:19 PM CET Greg KH wrote:
> > > On Wed, Dec 11, 2019 at 11:42:35AM +0100, Thomas Renninger wrote:

...

> > I hope it is agreed that this info is worth exporting via sysfs.
> 
> I don't think anyone is saying it is worth exporting this information
> via sysfs at all here.

Ok. I go for cpuid userspace tool then.

I'd still say general files like:
cpu/info/{name,vendor}
make sense, so that if exported by an arch like in cpuinfo, it should show up 
in the same file.
Every cpu has a model name and a vendor and cpuid is x86 only.

If there should be need for /sys/devices/cpu/cpu0.. info/feature/name
whatever in the future..., let me know ;)

   Thomas



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
