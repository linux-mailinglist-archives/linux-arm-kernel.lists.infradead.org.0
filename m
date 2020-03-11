Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B38D218116C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 08:07:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IERw/IlZu/TfZ9kLwGPIZdZs8mEfbRla0khMFv4ZouQ=; b=pe1JJYEuJVzU0p
	ZCZqAVKYrJFyOSl5yIPMATvv4Sy0w0HvbM+gxKKUfDZ4qob5Tvz4PQdD7/iAA96yCD3SkR/jb6Op2
	HWtSa2arAYuSzGAGjI/AbvZEZLKb9H6g9G7vhFkN0aLHPeh+8mkaqlHUV5x7oYTGKW7oExgPV+264
	PvC2B9DnZz1y+DINUORgjhUFyb2uzUR3O/76NYGy8EkyBd3frrzaXXhyMD4EpGHv3GQ3R8CSkaDB0
	7U1DqBQR1VrD6vD4F1LcAqrJFz4DIuQwjLtl/swtcjOc22xwux9BPahOe7PpjX1HiYluudtuR0ezU
	PmrY4bU3aUI3mREsQDlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBvS4-0000ks-7o; Wed, 11 Mar 2020 07:06:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBvRw-0000kY-Az
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 07:06:41 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EE7C22146E;
 Wed, 11 Mar 2020 07:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583910399;
 bh=okOXa54cfB+bdRhXjprIbKZ1MimsKWayO+TfQBcDW3A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZbvB74u1TKShenFO7xEN7ZF9ObHmKzWllnp4Vy3pWjmycniOZBaSprNmoEFugr2Qh
 wJoxC5aEdVFs/uwnvZNuu5eMnbzECX8TSDrhT5lN72ONFsGo4wSxqKjb+WNVy/35c0
 Wn5whSPR9061BXeSHVe+WmPVnqR5cJ1DQWGNPboQ=
Date: Wed, 11 Mar 2020 15:06:33 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH 06/15] arm64: defconfig: Enable NXP/FSL SPI controller
 drivers
Message-ID: <20200311070632.GI29269@dragon>
References: <1582585690-463-1-git-send-email-leoyang.li@nxp.com>
 <1582585690-463-7-git-send-email-leoyang.li@nxp.com>
 <20200311055104.GA29269@dragon>
 <CADRPPNQ-VWmVMdBuEUj9RdXAYvt4dhy+scP-EaYbrXj3McSaVQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADRPPNQ-VWmVMdBuEUj9RdXAYvt4dhy+scP-EaYbrXj3McSaVQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_000640_400456_1F3B15E6 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 01:24:07AM -0500, Li Yang wrote:
> On Wed, Mar 11, 2020 at 12:52 AM Shawn Guo <shawnguo@kernel.org> wrote:
> 
> > On Mon, Feb 24, 2020 at 05:08:01PM -0600, Li Yang wrote:
> > > Enables SPI controller drivers used in various NXP/FSL SoCs.
> > >
> > > Enabled as built-in to load RFS from SPI flash without requiring
> > > initramfs.
> >
> > RootFS on SPI flash?  On which platforms?
> 
> 
> QSPI is fast enough to connect big flash for file system.  It is used to
> connect 512MB NAND flash and 256MB NOR flash on LS1028RDB.  It is used as
> bootsource for other platforms like LS2080ardb too.

Please put this info into commit log.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
