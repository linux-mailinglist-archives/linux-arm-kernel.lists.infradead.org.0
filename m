Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82070DD0A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 22:52:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1zWzCj88ARv7Iivi2lirQ9qZilxBhOa3iZ1F77r0yFs=; b=WdqYVEgVWuX4cEsGNy6Yrh38CI
	LRe9MEYiwoWUJ1RMVGh49BuIeOXu43yZqhUCrdCKGtdyGtNSoQdVOWyn3fqMyA8qBi9S4tjYujl69
	BPaiThziOGhtoO7sTHGFuwmF7J9zZLYTPvK22ok+uHu3dM1c6+QtIN3D5Wav7PnKuFSphlmfOa8Af
	ntgWKPJRw/CQjEXQOM1sf7qwOU1BNbRl0ew9PP9vmuBmQ57J69vkUjUGVAbs18GGx1chgmfkSPhDc
	x+zzT0kxvpsWrCPKgA3iR+znqpfzebrk9bGWHxvhnIeAF7IVEL/Dl+lOVgokIWkmgryRTlL4nhRGp
	C2ykgrmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLZEO-0001FT-8U; Fri, 18 Oct 2019 20:52:16 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLZEF-0001Eu-Fm
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 20:52:09 +0000
Received: by mail-wr1-x442.google.com with SMTP id o18so7549295wrv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 13:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=uGEXsE8/NXoRF+D14w+boPYF50JZvz72YuC6YAN3OA0=;
 b=IBXlhzy0RGoAwB2ojEYPz7abKSVVtIzYBJwWK4c2HgNYuYnc1H23Y0feBGiRroGP5j
 JubIc4JzQMtDXZ7uQ2jlmTdmFKQ4Bt4Hz0G5tO902wI3BGWJDjMXjHQyCP4UQrcIkQmy
 OLOi1qgwk8pQzNaoyvNk5TUdcbynJpX0xd/4U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uGEXsE8/NXoRF+D14w+boPYF50JZvz72YuC6YAN3OA0=;
 b=PbZO1JBgNXfPp6W0amS+4ii1m5ZXOlCc4VokBvnueCgOZlZSxHZfWzJpLT6hbvlLWC
 LMTayECDN7Rar3BArrtk4A6Vp3EOqlAkPhJLtUTcOMPlp+w8y8F2swAROMhFKNaBLPFL
 O7McKPywLR8o3Tk6AJeKhEibZOFxKArnixjg6cfht/HAOHbEMKqkbiwkzvxB9kPOrBo8
 BQInj3wx2G6fACvSkVTKJofAsh42GmTxcR7BudZtzBbTByT1wEWF4NXmBrITtteW8kwc
 T5HNYYCv8MewxyFXeLyhfw/+S/Ye+dSdPFHRc9R7XWBT+d282QjlyvKlfpoSHsN2fVZA
 MCGQ==
X-Gm-Message-State: APjAAAVnmjqArw/5m9g26y3pue0gr+xvCFaWAbPBJVDFslhz0ljMuMFO
 hrprxqckgBqKFjkULwlyXIxNIOmQG+bVvda/
X-Google-Smtp-Source: APXvYqz0kY5/OxYYxhR/1u58qGdFKWyMZCctPVLRK43Po/wT6eyex+6FLmeTJjDYNDpKlXaZ7a7AbA==
X-Received: by 2002:adf:9101:: with SMTP id j1mr8966445wrj.71.1571431925821;
 Fri, 18 Oct 2019 13:52:05 -0700 (PDT)
Received: from [192.168.1.149] (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id n15sm8053302wrw.47.2019.10.18.13.52.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 18 Oct 2019 13:52:05 -0700 (PDT)
Subject: Re: [PATCH 0/7] towards QE support on ARM
To: Leo Li <leoyang.li@nxp.com>, Qiang Zhao <qiang.zhao@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, Timur Tabi <timur@kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <VE1PR04MB6687DA0268FAF03D3E77A23B8F6C0@VE1PR04MB6687.eurprd04.prod.outlook.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <e02fa027-9c78-3272-d2d7-7ad2b0ed3ab0@rasmusvillemoes.dk>
Date: Fri, 18 Oct 2019 22:52:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <VE1PR04MB6687DA0268FAF03D3E77A23B8F6C0@VE1PR04MB6687.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_135207_525025_3C5950EE 
X-CRM114-Status: GOOD (  18.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/10/2019 22.16, Leo Li wrote:
> 
>>
>> There have been several attempts in the past few years to allow building the
>> QUICC engine drivers for platforms other than PPC. This is (the beginning of)
>> yet another attempt. I hope I can get someone to pick up these relatively
>> trivial patches (I _think_ they shouldn't change functionality at all), and then
>> I'll continue slowly working towards removing the PPC32 dependency for
>> CONFIG_QUICC_ENGINE.
> 
> Hi Rasmus,
> 
> I don't fully understand the motivation of this work.  As far as I know the QUICC ENGINE is only used on PowerPC based SoCs. 

Hm, you're not the Leo Li that participated in this thread
<https://lore.kernel.org/lkml/AM3PR04MB11857AE8D2B0BE56121B97D391C90@AM3PR04MB1185.eurprd04.prod.outlook.com/T/#u>?


 Can you give an example on how is it used on ARM system?

LS1021A, for example, which is the one I'm aiming for getting fully
supported in mainline.
<https://www.nxp.com/products/processors-and-microcontrollers/arm-processors/layerscape-communication-process/qoriq-layerscape-1021a-dual-core-communications-processor-with-lcd-controller:LS1021A>

The forks at https://github.com/qoriq-open-source/linux.git have various
degrees of support (grep for commits saying stuff like "remove PPCisms"
- some versions can be found on
<https://lore.kernel.org/lkml/?q=remove+ppcisms>). Our current kernel is
based on commits from the now-vanished 4.1 branch, and unfortunately at
least the 4.14 branch (LSDK-18.06-V4.14) trivially doesn't build on ARM,
despite the PPC32 dependency having been removed from CONFIG_QUICC_ENGINE.

>>
>> Tested on an MPC8309-derived board.
> 
> MPC8309 is also PPC based.

True, of course. This is just some first few steps, and I'm not claiming
that this is sufficient to make the QE drivers build on ARM yet. But I
have a customer with both mpc8309-based and ls1021a-based platforms, and
they want to run the same, as-close-to-mainline-as-possible, kernel on
both. So I will take a piecemeal approach, and try to make sure I don't
break the ppc boards in the process (just building and booting one board
is of course not sufficient, but better than nothing). Once I get to
actually build some of the QE drivers for ARM, I'll of course also test
them.

Rasmus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
