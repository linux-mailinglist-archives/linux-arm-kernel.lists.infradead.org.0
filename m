Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DA7764B9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 13:43:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DAybIpyiE1q769QZEI+HXfzw6+jE0gW5G45UA3YmZBM=; b=DtWd9+oP5NUEAx
	hbNrMwGvhuWL0qugu+x+tOhIAP1KCyLfFumoNWuOgbHDhNI3/LdAxPXTH8x7QvcIcni1bsz2LXO/P
	xuxxSs3/rhgaZUhcEyDX2EN96Cf2j9cIEkf2YUCZngO1Hhlqt0Vpd5qB8qpBEA8aSvfVmMR1bFJ8Y
	/7g3fxFut5Lw+8PE17TLzTRia/5xh6UIDugiCu+aeJJelB39rWMw/7+hhP3AtF4GcHcsjWOZuxbBX
	KXXk0UHlXXgetzYgNhFtpIz5ENugtRZPKGbpMAxWbpsVFSuCpVV7QKAE6qb1s+x9Vj4HzjF+JjVdn
	jNHYydfW4Um2k9f70SYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqydT-0001Gc-4o; Fri, 26 Jul 2019 11:43:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqydF-0001GE-V7
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 11:43:31 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 69DED229F3;
 Fri, 26 Jul 2019 11:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564141408;
 bh=5yhEY4/CW3iFSx6x2N72Exb83PWgWW4WYbcupxxH+EQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2agoaOv3lpVGYhSQxrkRuDOARn2KEXJcqmDa7xybgtHiM6/IJNjdpLnyRHt7Aubtc
 X8i7PeL0fMglVJ+kGD7HlNNxki0h00bW92TbkewMZwyidxTXpksfKgvJIVrarwrs/f
 4bwd5fiplYiGBI4MZPkaodlW/in25rCAMv7VrmOs=
Date: Fri, 26 Jul 2019 13:43:25 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [Regression] Missing device nodes for ETR, ETF and STM after
 CONFIG_UEVENT_HELPER=n
Message-ID: <20190726114325.GA18727@kroah.com>
References: <cfe09a46-462f-633a-37c2-52f8bfc0ffb2@codeaurora.org>
 <20190726070429.GA15714@kroah.com>
 <165028a7-ff12-dd28-cc4c-57a3961dbb40@codeaurora.org>
 <20190726084127.GA28470@kroah.com>
 <097942a1-6914-2542-450f-65a6147dc7aa@codeaurora.org>
 <6d48f996-6297-dc69-250b-790be6d2670c@codeaurora.org>
 <20190726101925.GA22476@kroah.com>
 <20190726133316.688a43d8@windsurf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726133316.688a43d8@windsurf>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_044330_021685_622966A7 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 01:33:16PM +0200, Thomas Petazzoni wrote:
> Hello,
> 
> On Fri, 26 Jul 2019 12:19:25 +0200
> Greg Kroah-Hartman <gregkh@linuxfoundation.org> wrote:
> 
> > > This somehow is not mounting etr, etf, stm devices when uevent-helper is
> > > disabled. Anyways as Suzuki mentioned, using devtmpfs does fix the issue.  
> > 
> > Last I looked (many years ago) mdev requires uevent-helper in order for
> > it to work.  I recommend that if you rely on mdev to keep that option
> > enabled, or to just use devtmpfs and udev :)
> 
> Since Busybox 1.31.0, mdev has gained a daemon mode. In this mode, mdev
> runs in the background, and receives uevent through a netlink socket.
> So there's been some changes in how Busybox mdev works in recent times.

Ideally mdev should switch to what udev did many many years ago and not
do any device node creations and just leave all of that up to devtmpfs.
Then it can just stick to any symlinks and any specific owner:group
permissions that might be wanted separate from the default ones the
kernel provides.

Makes things much simpler and should save a lot of userspace code,
making mdev even smaller.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
