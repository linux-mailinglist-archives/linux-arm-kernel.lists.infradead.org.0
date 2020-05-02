Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4C01C2601
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 16:09:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JuL1ub5dPIjUwDFwx6zt1EzMJK+lRbnV2zEwKv95+yI=; b=TTaqVDveRElzv7
	QQf8xXrFTur3RKK00M8fA3PTc2VMyYwsxcWz82irBSpXLMoeAJgJZbPrmT/PG5l2GEteLNaqwvzz1
	u0BUrcSKK6/iHtfGE28PpQFkLYpskQocY5FuSgIiA4S3Q3hbi/YrGmvSV/1xk3QJzy6smfVkEvVbM
	pIoS01Bg2LDoeF2IBDoWP8EgzvU1/F+/HF1+awKPU9TXcyjAcFmWDFQiOhCPkcoO5z+ruCnLt7LDM
	VJ8uY6y9kFaDIJRyYDrlhu3Cg1OjiLkGb4JLcwl2yhbbZZ7zpznQJOWRJe5t5fXN3j//d3ZZA8gBD
	OrpmKS7TrQ7CQQfas68A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUspT-0004sH-TQ; Sat, 02 May 2020 14:09:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUspN-0004rA-0s; Sat, 02 May 2020 14:09:14 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 438FC21775;
 Sat,  2 May 2020 14:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588428551;
 bh=MDyVjZWnm5EvNAHWJ1mOzIJ83FG+EVxuwwcCWJaro3A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UdYTtL0tJm4pDAJdkk0jA2Pl4wn/Y0pmT0tkl+Ym73e1Y5SeNV26aAoSjnOADOGR3
 Z2CrMXCFV1jj8nOlb7huAU/Y1F0im1D9EjwqYX4t+p9Nh9IovYfLHgnjxvpKzLmFoM
 3enP6QhzvOZpKMji7n7/dc0Sempgkxa07zumwe7Y=
Date: Sat, 2 May 2020 16:09:08 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: stable-rc/linux-5.4.y bisection: baseline.dmesg.alert on
 meson-g12a-x96-max
Message-ID: <20200502140908.GA10998@kroah.com>
References: <5eabecbf.1c69fb81.2c617.628f@mx.google.com>
 <cc10812b-19bd-6bd1-75da-32082241640a@collabora.com>
 <20200501122536.GA38314@sirena.org.uk>
 <20200502134721.GH13035@sasha-vm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200502134721.GH13035@sasha-vm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_070913_082084_BE0D57B6 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Guillaume Tucker <guillaume.tucker@collabora.com>,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 stable@vger.kernel.org, kernelci@groups.io, Mark Brown <broonie@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, linux-amlogic@lists.infradead.org,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 02, 2020 at 09:47:21AM -0400, Sasha Levin wrote:
> On Fri, May 01, 2020 at 01:25:36PM +0100, Mark Brown wrote:
> > On Fri, May 01, 2020 at 12:57:27PM +0100, Guillaume Tucker wrote:
> > 
> > > The call stack is not the same as in the commit message found by
> > > the bisection, so maybe it only fixed part of the problem:
> > 
> > No, it is a backport which was fixing an issue that wasn't present in
> > v5.4.
> > 
> > > >   Result:     09f4294793bd3 ASoC: meson: axg-card: fix codec-to-codec link setup
> > 
> > As I said in reply to the AUTOSEL mail:
> > 
> > | > Since the addition of commit 9b5db059366a ("ASoC: soc-pcm: dpcm: Only allow
> > | > playback/capture if supported"), meson-axg cards which have codec-to-codec
> > | > links fail to init and Oops:
> > 
> > | This clearly describes the issue as only being present after the above
> > | commit which is not in v5.6.
> > 
> > Probably best that this not be backported.
> 
> Hrm... But I never queued that commit... I wonder what's up.

I saw the Fixes: tag, but missed the changelog text.  My fault.

I'll go drop it from everywhere, sorry about that.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
