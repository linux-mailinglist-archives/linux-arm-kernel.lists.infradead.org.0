Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEFE7635D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 12:19:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7LsJoDwvQq0Uo6N/9Tw4agwdO0RZmn3h9IL1ECQ+Pao=; b=sPjcikJJDrCUJB
	bBGXLkl05/FlMctnNn5fs3tjeqE2W34PzXa882rdetV+sdep5PBmtYdJs5WA2DrBHeW3YsU/TPe0j
	1+NHwnuZyfdcIc3xXYK6/zkylMB8GmaIymzjl+xA9LA7/yqeA6narxSCp0q45hiTJUUwSxLPGCtMY
	89erLWqN6+ND0lzf670S/Iq6EkNt6yhILc4Qw9lqMuH092Puj2tNy87SNdf5E2N4j/Fjo4Ll6SLiL
	nqSHZ7bFBGI+zG4pHDQSMZISFXNW2+nmPPZH1dHxm57exkXGq7XcAJo8j2n2ETmoXX48BOYYXAZ4p
	4g7wEJGRh43X/mV9JhTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqxKA-0000xy-P8; Fri, 26 Jul 2019 10:19:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqxJw-0000xT-Ec
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 10:19:29 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 89186229F9;
 Fri, 26 Jul 2019 10:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564136368;
 bh=rnzZTI3R4YtevXWLIMuEjKk8X83MUvmSjfijAT5kr/U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1we1DI8LpBv9/chtOSAbouY4rmVorOqsSHMGGPjxkJxt7btRY+Q4o55aFtMwoAAsi
 cRrgHskOaAglnpzfunZqY5pUd3/99JHsKEyPFGKlniwvrfet6Oe42JwlKLhCwtpi1d
 76w3RRINTAdfi6dJKljuLT9YmFJLSfm1W5D9tHB4=
Date: Fri, 26 Jul 2019 12:19:25 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [Regression] Missing device nodes for ETR, ETF and STM after
 CONFIG_UEVENT_HELPER=n
Message-ID: <20190726101925.GA22476@kroah.com>
References: <cfe09a46-462f-633a-37c2-52f8bfc0ffb2@codeaurora.org>
 <20190726070429.GA15714@kroah.com>
 <165028a7-ff12-dd28-cc4c-57a3961dbb40@codeaurora.org>
 <20190726084127.GA28470@kroah.com>
 <097942a1-6914-2542-450f-65a6147dc7aa@codeaurora.org>
 <6d48f996-6297-dc69-250b-790be6d2670c@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6d48f996-6297-dc69-250b-790be6d2670c@codeaurora.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_031928_524438_DC7BFF81 
X-CRM114-Status: GOOD (  25.89  )
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 03:44:40PM +0530, Sai Prakash Ranjan wrote:
> On 7/26/2019 3:14 PM, Sai Prakash Ranjan wrote:
> > On 7/26/2019 2:11 PM, Greg Kroah-Hartman wrote:
> > > On Fri, Jul 26, 2019 at 01:50:27PM +0530, Sai Prakash Ranjan wrote:
> > > > On 7/26/2019 12:34 PM, Greg Kroah-Hartman wrote:
> > > > > On Fri, Jul 26, 2019 at 11:49:19AM +0530, Sai Prakash Ranjan wrot=
e:
> > > > > > Hi,
> > > > > > =

> > > > > > When trying to test my coresight patches, I found that etr,etf =
and stm
> > > > > > device nodes are missing from /dev.
> > > > > =

> > > > > I have no idea what those device nodes are.
> > > > > =

> > > > > > Bisection gives this as the bad commit.
> > > > > > =

> > > > > > 1be01d4a57142ded23bdb9e0c8d9369e693b26cc is the first bad commit
> > > > > > commit 1be01d4a57142ded23bdb9e0c8d9369e693b26cc
> > > > > > Author: Geert Uytterhoeven <geert+renesas@glider.be>
> > > > > > Date:=A0=A0 Thu Mar 14 12:13:50 2019 +0100
> > > > > > =

> > > > > > =A0=A0=A0=A0=A0 driver: base: Disable CONFIG_UEVENT_HELPER by d=
efault
> > > > > > =

> > > > > > =A0=A0=A0=A0=A0 Since commit 7934779a69f1184f ("Driver-Core:
> > > > > > disable /sbin/hotplug by
> > > > > > =A0=A0=A0=A0=A0 default"), the help text for the /sbin/hotplug =
fork-bomb says
> > > > > > =A0=A0=A0=A0=A0 "This should not be used today [...] creates a
> > > > > > high system load, or
> > > > > > =A0=A0=A0=A0=A0 [...] out-of-memory situations during bootup".=
=A0
> > > > > > The rationale for this
> > > > > > =A0=A0=A0=A0=A0 was that no recent mainstream system used this
> > > > > > anymore (in 2010!).
> > > > > > =

> > > > > > =A0=A0=A0=A0=A0 A few years later, the complete uevent helper
> > > > > > support was made optional
> > > > > > =A0=A0=A0=A0=A0 in commit 86d56134f1b67d0c ("kobject: Make supp=
ort
> > > > > > for uevent_helper
> > > > > > =A0=A0=A0=A0=A0 optional.").=A0 However, if was still left enab=
led
> > > > > > by default, to support
> > > > > > =A0=A0=A0=A0=A0 ancient userland.
> > > > > > =

> > > > > > =A0=A0=A0=A0=A0 Time passed by, and nothing should use this
> > > > > > anymore, so it can be
> > > > > > =A0=A0=A0=A0=A0 disabled by default.
> > > > > > =

> > > > > > =A0=A0=A0=A0=A0 Signed-off-by: Geert Uytterhoeven <geert+renesa=
s@glider.be>
> > > > > > =A0=A0=A0=A0=A0 Signed-off-by: Greg Kroah-Hartman <gregkh@linux=
foundation.org>
> > > > > > =

> > > > > > =A0=A0 drivers/base/Kconfig | 1 -
> > > > > > =A0=A0 1 file changed, 1 deletion(-)
> > > > > > =

> > > > > > =

> > > > > > Any idea on this?
> > > > > =

> > > > > That means that who ever created those device nodes is relying on=
 udev
> > > > > to do this, and is not doing the correct thing within the kernel =
and
> > > > > using devtmpfs.
> > > > > =

> > > > > Any pointers to where in the kernel those devices are trying to be
> > > > > created?
> > > > > =

> > > > =

> > > > Somewhere in drivers/hwtracing/coresight/* probably. I am not sure,
> > > > Mathieu/Suzuki would be able to point you to the exact code.
> > > > =

> > > > Also just to add on some more details, I am using *initramfs*
> > > =

> > > Are you using devtmpfs for your /dev/ mount?
> > > =

> > =

> > I am not mounting devtmpfs. However
> > =

> >  =A0CONFIG_DEVTMPFS=3Dy
> >  =A0CONFIG_DEVTMPFS_MOUNT=3Dy
> > =

> =

> Ok my initramfs is using mdev:
> =

> */sbin/mdev -s*
> =

> This somehow is not mounting etr, etf, stm devices when uevent-helper is
> disabled. Anyways as Suzuki mentioned, using devtmpfs does fix the issue.

Last I looked (many years ago) mdev requires uevent-helper in order for
it to work.  I recommend that if you rely on mdev to keep that option
enabled, or to just use devtmpfs and udev :)

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
