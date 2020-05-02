Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 668EB1C25EE
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 15:47:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aTOvZXXY5bC3MWaoRLBOY1WOgz0YmQSZiwZAqSjrH1c=; b=QyT3RgE1kKJGAQwghxfTURhft
	pBFVKaMHTQNx+cIc7iQdncf8Ny0VViTVHifx0wsd/XuVhZzSqcwVgE7vSlN5OHjQ1sgJKIpJ0bpEa
	w3WIScEA/zgxi04DqJh9UgHM2HftoAIIVmBaMVEABpD2D1/z7bDUuJK5aZKEmvQackFNgh8b2RXqw
	JSPVYabAHqkbd0/y5s4yNkzN986tu3p5rR+pkrayl0N16h2oeY2yGPMEfCPsllcaV+hDf46mPkdYi
	wW5UVbzDs/Iuo2AlAerq3Q8DMK2KKHNwvhAVQ3DZRzwPbTERAPtp/a6NinPV5n4u1BfPilB4m1/LQ
	DDVbpxnkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUsUP-0008SA-Pj; Sat, 02 May 2020 13:47:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUsUG-0008Qn-0V; Sat, 02 May 2020 13:47:25 +0000
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A95112071E;
 Sat,  2 May 2020 13:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588427242;
 bh=73TIjw9O6dK2fAlfdODYkB/VFm8uvKuFeW5svJp5uFA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MC4T9yrNMAJ94kM2+SXcWdp6i2eKFYOzXDawiBEHaYHb2biJ9zHC2GbFujl40NAYf
 5pVS6ClrEJRxbfN+WfsKaVEAKrj99uQ/bXcD/zBYaQ+LgxWhVQXqpH/5w2f9MxyKOB
 EhdNt8MV9yshaw+3oRvYnAyj42Wi+lS4OFNVH0EU=
Date: Sat, 2 May 2020 09:47:21 -0400
From: Sasha Levin <sashal@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: stable-rc/linux-5.4.y bisection: baseline.dmesg.alert on
 meson-g12a-x96-max
Message-ID: <20200502134721.GH13035@sasha-vm>
References: <5eabecbf.1c69fb81.2c617.628f@mx.google.com>
 <cc10812b-19bd-6bd1-75da-32082241640a@collabora.com>
 <20200501122536.GA38314@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501122536.GA38314@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_064724_073232_8DE26B37 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Guillaume Tucker <guillaume.tucker@collabora.com>,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 stable@vger.kernel.org, kernelci@groups.io,
 Kevin Hilman <khilman@baylibre.com>, linux-amlogic@lists.infradead.org,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 01:25:36PM +0100, Mark Brown wrote:
>On Fri, May 01, 2020 at 12:57:27PM +0100, Guillaume Tucker wrote:
>
>> The call stack is not the same as in the commit message found by
>> the bisection, so maybe it only fixed part of the problem:
>
>No, it is a backport which was fixing an issue that wasn't present in
>v5.4.
>
>> >   Result:     09f4294793bd3 ASoC: meson: axg-card: fix codec-to-codec link setup
>
>As I said in reply to the AUTOSEL mail:
>
>| > Since the addition of commit 9b5db059366a ("ASoC: soc-pcm: dpcm: Only allow
>| > playback/capture if supported"), meson-axg cards which have codec-to-codec
>| > links fail to init and Oops:
>
>| This clearly describes the issue as only being present after the above
>| commit which is not in v5.6.
>
>Probably best that this not be backported.

Hrm... But I never queued that commit... I wonder what's up.

-- 
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
