Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE094102A98
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 18:15:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kl5MrhjFbbSEiXLAAWmIsd576S9oIGRyFWpQenejHRA=; b=DZ+CWKPlYB16Mr
	FGHNbt8msm5BRrvSlsRt+hOW7HrTYT4WbAr9Y8/fOOh2lZxuyBux0g2iuDEbLIjhBgMCcrWgggnyG
	5FiwmXDmkjaNpQPkZMd3uQX3Utd18NivSI36dDlluNM0JDPMjcIbSFXJK9lhz2+3zce+76hqblI1n
	+OuM0zOm1TrOm9FC1TQTO9BIyqUkx3TMmny+wbmzAUTyNbDfZST9w1NmHmtmhwwvIo5FekTTL4gbS
	Hkjc5WLzycd+8uHs0vU59Q24mi/b05ezhkNcjKySsRSzHVYjua7/3Oy77BBm9QyS0UDBdRqP2TJL/
	4HuYoehGLXZwWs7+C5DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX75z-0001nf-U6; Tue, 19 Nov 2019 17:15:19 +0000
Received: from smtprelay0223.hostedemail.com ([216.40.44.223]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX75s-0001SR-9B
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 17:15:13 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id B6DE8182CED2A;
 Tue, 19 Nov 2019 17:15:00 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::::::,
 RULES_HIT:41:355:379:599:800:960:967:973:988:989:1260:1263:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2525:2561:2564:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3352:3622:3867:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4659:5007:7809:7903:9025:10004:10400:10848:11232:11658:11914:12297:12555:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:14764:21080:21451:21627:21691:30003:30054:30070:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: hose89_65b5758ac5c31
X-Filterd-Recvd-Size: 2134
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf04.hostedemail.com (Postfix) with ESMTPA;
 Tue, 19 Nov 2019 17:14:58 +0000 (UTC)
Message-ID: <64ace55545c028bc39b08370074aafd32e8fc5f5.camel@perches.com>
Subject: Re: [PATCH 2/2] MAINTAINERS: Switch to Marvell addresses
From: Joe Perches <joe@perches.com>
To: Robert Richter <rrichter@marvell.com>, Arnd Bergmann <arnd@arndb.de>, 
 arm soc <arm@kernel.org>
Date: Tue, 19 Nov 2019 09:14:36 -0800
In-Reply-To: <20191119165549.14570-4-rrichter@marvell.com>
References: <20191119165549.14570-1-rrichter@marvell.com>
 <20191119165549.14570-4-rrichter@marvell.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_091512_388076_644489EE 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.223 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jan Glauber <jglauber@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "soc@kernel.org" <soc@kernel.org>, George Cherian <gcherian@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Will Deacon <will@kernel.org>, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-11-19 at 16:56 +0000, Robert Richter wrote:
> Switch all addresses from @cavium.com to @marvell.com.
> 
> On that occasion, switching also to my Marvell address for all my
> Cavium/Marvell entries.
[]
> diff --git a/MAINTAINERS b/MAINTAINERS
[]
> @@ -3727,14 +3727,14 @@ S:	Supported
>  F:	drivers/mmc/host/cavium*
>  
>  CAVIUM OCTEON-TX CRYPTO DRIVER
> -M:	George Cherian <george.cherian@cavium.com>
> +M:	George Cherian <gcherian@marvell.com>
>  L:	linux-crypto@vger.kernel.org
>  W:	http://www.cavium.com

Might want to change these W: links too

> @@ -17911,7 +17911,7 @@ S:	Supported
>  F:	drivers/char/xillybus/
>  
>  XLP9XX I2C DRIVER
> -M:	George Cherian <george.cherian@cavium.com>
> +M:	George Cherian <gcherian@marvell.com>
>  L:	linux-i2c@vger.kernel.org
>  W:	http://www.cavium.com

etc...

>  S:	Supported


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
