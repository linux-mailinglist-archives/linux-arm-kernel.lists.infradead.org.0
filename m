Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4546B7E3E7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 22:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kdETCZjLLrdeB48KhCvLi6OtCkg4ihoLBlza/AiNs34=; b=eG3aV5WqfV0i3p
	5vj9rpM8Rp/LZu9ytXQFubxawRXHq5uP2xixZz9EKjpLhy/OdKi8IfE+iCOwot4YyHERUkmn++CXM
	nt3t1WRIFeubw9ohMSdXCH3lkqtWjyMCf+16juKiCttaDLV8kqfHcHp/wADPaLgnI5rcveQW7zJyo
	GyqQ0DIvqDPF/jq1VnflXrC1ckeQzmpMj2rGrT93zoNShpcRqSQcm6xmuaihgnrNknZe7f6DAnzWK
	4i465Lbx90LxHeSOvMK4Fj0OtNFOZakj20tSC1J2G9pIhJErxa7wFZio+GuEukbvVREL3o1xLL8UL
	31h5exo9O33UCt50W8RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htHf6-0001wY-VT; Thu, 01 Aug 2019 20:26:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htHez-0001wB-UP
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 20:26:51 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AF401206A2;
 Thu,  1 Aug 2019 20:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564691209;
 bh=3kiBq6E034Z6N48eibdLMScZtbrZXviKsYJcFJJR76s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uIMkE6Bk0ixbVPKTsDKLp3pFj9NEvlcuDoWx8L8sEmuNAIBeQEIFbZ3PTQEtFI37Y
 wt+1jcd635CXrMs/kSqA1DgMSehVrCd5gNdjd275kU+nMCi5xVR1EqJpRa/8aESXVN
 ZUgQ3UTjJGp8CdFxcS7g5RHmDJOtRH/wbWxn1lXQ=
Date: Thu, 1 Aug 2019 22:26:46 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 1/1] coresight: Fix DEBUG_LOCKS_WARN_ON for uninitialized
 attribute
Message-ID: <20190801202646.GA4654@kroah.com>
References: <20190801172323.18359-1-mathieu.poirier@linaro.org>
 <20190801172323.18359-2-mathieu.poirier@linaro.org>
 <20190801185045.GA31197@kroah.com>
 <CANLsYkxLoWSEaW5k_O=NeQ7BX4t3NSzrUQhJY4U4pcV_AE=izw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkxLoWSEaW5k_O=NeQ7BX4t3NSzrUQhJY4U4pcV_AE=izw@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_132649_998395_83899739 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 02:20:39PM -0600, Mathieu Poirier wrote:
> On Thu, 1 Aug 2019 at 12:50, Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Thu, Aug 01, 2019 at 11:23:23AM -0600, Mathieu Poirier wrote:
> > > From: Suzuki K Poulose <suzuki.poulose@arm.com>
> > >
> > > While running the linux-next with CONFIG_DEBUG_LOCKS_ALLOC enabled,
> > > I get the following splat.
> > >
> > >  BUG: key ffffcb5636929298 has not been registered!
> > >  ------------[ cut here ]------------
> > >  DEBUG_LOCKS_WARN_ON(1)
> > >  WARNING: CPU: 1 PID: 53 at kernel/locking/lockdep.c:3669 lockdep_init_map+0x164/0x1f0
> > >  CPU: 1 PID: 53 Comm: kworker/1:1 Tainted: G        W         5.2.0-next-20190712-00015-g00ad4634222e-dirty #603
> > >  Workqueue: events amba_deferred_retry_func
> > >  pstate: 60c00005 (nZCv daif +PAN +UAO)
> > >  pc : lockdep_init_map+0x164/0x1f0
> > >  lr : lockdep_init_map+0x164/0x1f0
> > >
> > >  [ trimmed ]
> > >
> > >  Call trace:
> > >   lockdep_init_map+0x164/0x1f0
> > >   __kernfs_create_file+0x9c/0x158
> > >   sysfs_add_file_mode_ns+0xa8/0x1d0
> > >   sysfs_add_file_to_group+0x88/0xd8
> > >   etm_perf_add_symlink_sink+0xcc/0x138
> > >   coresight_register+0x110/0x280
> > >   tmc_probe+0x160/0x420
> > >
> > >  [ trimmed ]
> > >
> > >  ---[ end trace ab4cc669615ba1b0 ]---
> > >
> > > Fix this by initialising the dynamically allocated attribute properly.
> > >
> > > Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> > > Fixes: bb8e370bdc141ddf ("coresight: perf: Add "sinks" group to PMU directory")
> >
> > That should be:
> > Fixes: bb8e370bdc14 ("coresight: perf: Add "sinks" group to PMU directory")
> 
> Apologies - I will catch those from hereon.
> 
> >
> > I can go fix it up...
> 
> Or I can, depending on if you're going to pick the patch as a fix for
> 5.3 or you'll wait for the 5.4 cycle.

It's already queued up for my next round of patches to Linus to be
during the 5.3-rc cycle.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
