Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF79E1B49C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 18:09:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3SNxC+7+pygbDQ2ZaismJhUno8qQoRt1QF6WzVr401I=; b=XsYP1ZCy7w3+Ji
	BAmQNddom14EvxxSbygQ0N/aczp7bz0VlsNPZBpui0sZo9NoVWlyBPBzaeCot7/qs4ar4+cwkyphU
	9OI8RK5G1vBM7EuMTRJPbDjh4ID8mDvOsnMNWepCY38Xzoql2jTpvHI3oQpj0RJI+wAK+ey/Pq+fV
	kdTwUsetQcBLSve5arh9gOs9S++yYdpGfs36Ya475pxrSlCQCRTyJNU6LzopgUHNHuksJ3/5z/w/Q
	gRitaAKIOZ0s1iLyEtKUB1BFAVB+hPChvjH26DyG9GQ7EI0OBCU9IUYV8M9uEiScS5mK/22BElgfR
	jRehnjP1V6laNBAs9zhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRHw8-0005FM-KP; Wed, 22 Apr 2020 16:09:20 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRHvy-0005Co-Aq
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 16:09:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1587571746;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=ceaM0Q57EWu8SAKxL8w74OvIguml9sO5tkQvRprE6B8=;
 b=DjQJGhIsgGChhvGfu9meyBGMUZTSQ7M7HPpDCrz4uj4dpwYQPz2avzOQ6DcBSxY8HK
 HZR7LikZh6FlvTSTEDyPKshBBw0b+cLzi0/+W/58IJadrgrtI5MnZA1Mq9vzmfyRsULx
 3b3pXRAGaZJk2RyDyBuKVwqo85nHKBXvzDoCo/ajUwPB2ulcf4jGzRBYhv+lagqwhwj2
 NzSQ4ZiCOo0mc0EpJ/QOR9kbTS/39IA4EsEIwAO0S8VeHtOD6XmaW/TMPqIfSTGrczju
 BLg/l03WNB4TYygiypVd2hnRw6fhFtQk+cKxURj2SlssctezQnNBvK9gUGfvwTEdjWsj
 k9wA==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj4Qpw9iZeHmMiw43tskc="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.6.2 DYNA|AUTH)
 with ESMTPSA id R0acebw3MG923NL
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Wed, 22 Apr 2020 18:09:02 +0200 (CEST)
Subject: Re: [PATCH v6 00/12] ARM/MIPS: DTS: add child nodes describing the
 PVRSGX GPU present in some OMAP SoC and JZ4780 (and many more)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <20200422151328.2oyqz7gqkbunmd6o@gilmour.lan>
Date: Wed, 22 Apr 2020 18:09:01 +0200
Message-Id: <07923B6C-4CCD-4B81-A98F-E19C43412A89@goldelico.com>
References: <20200415130233.rgn7xrtwqicptke2@gilmour.lan>
 <C589D06E-435E-4316-AD0A-8498325039E3@goldelico.com>
 <10969e64-fe1f-d692-4984-4ba916bd2161@gmail.com>
 <20200420073842.nx4xb3zqvu23arkc@gilmour.lan>
 <b5a06c19-7a3e-bcb8-5ae3-76901b9c6c35@gmail.com>
 <20200421112129.zjmkmzo3aftksgka@gilmour.lan>
 <20200421141543.GU37466@atomide.com>
 <D9D4D057-A73D-485F-898D-5C05E89C16B7@goldelico.com>
 <20200422065859.quy6ane5v7vsy5tf@gilmour.lan>
 <1AA57A0C-48E6-49BB-BB9A-2AAFFB371BCD@goldelico.com>
 <20200422151328.2oyqz7gqkbunmd6o@gilmour.lan>
To: Maxime Ripard <maxime@cerno.tech>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_090910_969265_33428728 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:6 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Tony Lindgren <tony@atomide.com>,
 James Hogan <jhogan@kernel.org>, Jonathan Bakker <xc-racer2@live.ca>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-mips@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 linux-samsung-soc@vger.kernel.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Paul Burton <paulburton@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 David Airlie <airlied@linux.ie>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, linux-omap <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>,
 OpenPVRSGX Linux Driver Group <openpvrsgx-devgroup@letux.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>,
 =?utf-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

> Am 22.04.2020 um 17:13 schrieb Maxime Ripard <maxime@cerno.tech>:
> 
> On Wed, Apr 22, 2020 at 09:10:57AM +0200, H. Nikolaus Schaller wrote:
>>> Am 22.04.2020 um 08:58 schrieb Maxime Ripard <maxime@cerno.tech>:
>>>> 
>>>> It also allows to handle different number of clocks (A31 seems to
>>>> need 4, Samsung, A83 and JZ4780 one) without changing the sgx bindings
>>>> or making big lists of conditionals. This variance would be handled
>>>> outside the sgx core bindings and driver.
>>> 
>>> I disagree. Every other GPU binding and driver is handling that just fine, and
>>> the SGX is not special in any case here.
>> 
>> Can you please better explain this? With example or a description
>> or a proposal?
> 
> I can't, I don't have any knowledge about this GPU.

Hm. Now I am fully puzzled.
You have no knowledge about this GPU but disagree with our proposal?
Is it just gut feeling?

Anyways, we need to find a solution. Together.

> 
>> I simply do not have your experience with "every other GPU" as you have.
>> And I admit that I can't read from your statement what we should do
>> to bring this topic forward.
>> 
>> So please make a proposal how it should be in your view.
> 
> If you need some inspiration, I guess you could look at the mali and vivante
> bindings once you have an idea of what the GPU needs across the SoCs it's
> integrated in.

Well, I do not need inspiration, we need to come to an agreement about
img,pvrsgx.yaml and we need some maintainer to finally pick it up.

I wonder how we can come to this stage.

If I look at vivante,gc.yaml or arm,mali-utgard.yaml I don't
see big differences to what we propose and those I see seem to come
from technical differences between sgx, vivante, mali etc. So there
is no single scheme that fits all different gpu types.

One thing we can learn is that "core" seems to be a de facto standard 
for the core clock-name. An alternative "gpu" is used by nvidia,gk20a.txt.

BR and thanks,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
