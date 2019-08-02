Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A4B7F004
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 11:11:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=568c+Ejz9/iCIv3cfgKbod8n9zqR0HGIy4ugbVja7So=; b=aGAcjhn4veCocq
	YL3Y5xwiCknAfFXLE8ih4Ju03kDaQXH5CWwt939r/49ne3i/H0Zq9MlmhIwfX4NtG7rLLoZjNd1xA
	xAba8Jyd6/pRnxi1aoEB7A3hjMh8634MA8KknF9i0G0aYz2mGt2DhN1xuQ2WYrGdmfnJEudalSTbm
	g7TH/6J2xc2UBtDH8y5evzlvb6toSlykAxB0cKMMvFauRcIWlarvFc8Dk7t7RHYKNrF9DZQw8kbRC
	ZBKbwNqVEQTAKIOdFxw4Z6XgaqEgIBzq4N4qbSmhu5wzuji+/5Y2GeJI32lEG29GfaKtt+B47oCWC
	E2cZGn21H1llBDKAQt2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htTaT-00024d-UB; Fri, 02 Aug 2019 09:10:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htTa5-00024J-Cf
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 09:10:35 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AA3E821783;
 Fri,  2 Aug 2019 09:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564737031;
 bh=en2oSylP6cRO7O7KFL0SwRSisE8H9qAKYUfpBjF1n+4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zYvVPi0SSIRMPjGVWWPJtxTQnKi4QzmcXKusWrJ7Gl7XZVmmA4KIg92jCVLs8XYPk
 HUS+OEb0xsJ9OiMDxb581nc30HOP08C9GM9/4b5sAI5Ds3r3KfAwotBsyLRFzLPvS6
 VMOpwbUPbGKvQ3EMc5J9UDXawYwN+fvwSvHjpRQs=
Date: Fri, 2 Aug 2019 11:10:28 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 0/1] coresight: Fix for v5.3-rc3
Message-ID: <20190802091028.GA14004@kroah.com>
References: <20190801172323.18359-1-mathieu.poirier@linaro.org>
 <20190801181739.GB5048@kroah.com>
 <CANLsYky1vC-=zNPvOmWt1wLd5A4jcD+sh=Hwdq0rwhW=b1cdwQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYky1vC-=zNPvOmWt1wLd5A4jcD+sh=Hwdq0rwhW=b1cdwQ@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_021033_507284_903FCAFC 
X-CRM114-Status: GOOD (  21.96  )
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

On Thu, Aug 01, 2019 at 02:16:46PM -0600, Mathieu Poirier wrote:
> On Thu, 1 Aug 2019 at 12:17, Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Thu, Aug 01, 2019 at 11:23:22AM -0600, Mathieu Poirier wrote:
> > > Good morning Greg,
> > >
> > > Here is a fix I'd like you to consider for this cycle.  Do you think you
> > > could apply it to driver-core-next rather than char-misc-next?
> >
> > All of my -next branches are for 5.4-rc1, not 5.3 (i.e. the "next"
> > kernel).
> >
> > So either one of them isn't going to matter to you for 5.3-final.
> >
> > > My current
> > > coresight branch is based on driver-core-next to pick up Suzuki's
> > > generic device lookup helpers patchset [1]. Applying it to char-misc-next
> > > will create two different signature for the same patch, something that
> > > gives Stephen a hard time when building the linux-next tree.
> >
> > Why would Suzuki's patch matter for 5.3-final?
> 
> There was a similar situation during the 5.2 cycle [1].  Here too we
> can fix a problem that is present in 5.3 rather than wait for 5.4.
> 
> [1]. https://www.spinics.net/lists/arm-kernel/msg736274.html

But that has nothing to do with Suzuki's patch that is in my driver core
tree.  I still fail to see the dependency here.

> > > I also think this patch should go in stable but haven't marked it as such since
> > > it doesn't apply to any of the stable trees.  Once it is part of v5.3 I intend
> > > to send a new version of the patch that does apply cleanly to those trees.  Let
> > > me know if you want me to proceed differently.
> > >
> > > Thanks,
> > > Mathieu
> > >
> > > [1]. https://www.spinics.net/lists/dri-devel/msg219674.html
> > >
> > >
> > > Suzuki K Poulose (1):
> > >   coresight: Fix DEBUG_LOCKS_WARN_ON for uninitialized attribute
> > >
> > >  drivers/hwtracing/coresight/coresight-etm-perf.c | 1 +
> > >  1 file changed, 1 insertion(+)
> >
> > Why would this patch depend on anything in any of my trees?
> 
> I send you patches for inclusion in the next cycle and as such I
> thought it should be the same for fixes in the current cycle.  If that
> is not the case, should I send them directly to Linus?

You can send me fixes to forward on to Linus for this current cycle, if
they are not depending on patches that are only for the -next release.

I always keep 2 branches in my git trees:
	-linus : patches for Linus this release cycle
	-next  : patches for Linus the next release cycle

If you have bugfixes, make them against my -linus branch and send them
on.  Odds are they don't have dependancies other than what is in Linus's
tree, so that's fine.

If you have patches for the next cycle, send them against my -next
branch.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
