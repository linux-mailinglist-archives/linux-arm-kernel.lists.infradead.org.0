Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B18713138D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 15:23:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a0nOSqRTmLzU8vpvRWxoJknp6xG6hevYzDFvAIA9hdM=; b=PvoTzUQBuC/5sV
	KMT+HZaNLzGnRTaAYc9rnCNtj7XUIqSC3A5PtkirpFKym8yeah4JwZVYZleMbEORO/WQBXeJMxm9Y
	lzBAkAlXmd2OqHAW/RNVCjCVXgNI5I7FVK+/SIjfCOMs7FtnJK03zlTte7hV/LwRPCsBp4G/CVFTL
	CiN6eZ/OEPsgIlimvNQqIu9FMqD0TddpiEmOrb2L8ZmWk2cU3RqYcEZpA9ony+W2Zk3mhPEl1PS+L
	xIyZ2VQY3WoTlJZNrH6ekqFiXwnZ4VeHOLiZ85KKKaJdGqnqq8wQ33B9cCe8aD4Rnm9GEkrY0VRK6
	dhW+Zmw34F5cK39Lzq8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioTHs-0000zZ-Mc; Mon, 06 Jan 2020 14:23:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioTHd-0000yL-SP; Mon, 06 Jan 2020 14:23:07 +0000
Received: from ip5f5a5f74.dynamic.kabel-deutschland.de ([95.90.95.116]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ioTHc-0005Nq-Ix; Mon, 06 Jan 2020 15:23:04 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix IR on Beelink A1
Date: Mon, 06 Jan 2020 15:23:04 +0100
Message-ID: <12698221.yjhRjYoh56@diego>
In-Reply-To: <3d0f69d5-739a-0566-b1d7-bc3c2f0c8045@arm.com>
References: <44269c08e2a5d75b03ded87d2eb11621762d8249.1577636223.git.robin.murphy@arm.com>
 <30349756.SWxbmzi8ve@phil> <3d0f69d5-739a-0566-b1d7-bc3c2f0c8045@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_062306_061723_2D49376F 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

Am Mittwoch, 1. Januar 2020, 14:01:32 CET schrieb Robin Murphy:
> On 2019-12-31 11:50 am, Heiko Stuebner wrote:
> > Am Sonntag, 29. Dezember 2019, 18:48:05 CET schrieb Robin Murphy:
> >> Apparently I wasn't paying enough attention... And nor is the lazy
> >> test of `cat /dev/lirc0` sufficiently blunder-proof. Oh well, with
> >> the correct polarity, let's also hook up a keymap now that one for
> >> the standard Beelink remote has handily appeared.
> >>
> >> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> >> ---
> > 
> > applied for 5.6
> 
> Thanks Heiko - although if you have any other fixes to send for 5.5 do 
> you think this might be able to sneak in too? Someone mentioned on IRC 
> that unlike mine, their box wouldn't even generate interrupts with the 
> polarity backwards.

I've moved the patch over to a shiny new fixes branch for 5.5 now :-)

Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
