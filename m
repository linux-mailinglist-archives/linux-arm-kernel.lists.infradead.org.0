Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A29551B5FD3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 17:46:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XRuZno9gPblbYqiqQPbFu3H+KfdcHRycvHxQ2BtvK64=; b=KrxJreHNnd6caS
	WAf9qhnefuY2yVZMxuWmAO8TRm7OO+g7YKa2iGbQZhziZUpOm+JtlEqtF22bFm/UdHBxmhAqdiFrC
	+E7K0yqLs9suAv6ZGhrV0R98KFa6fS+7wNR7w43941r0eLaVHHNyGm0yiRQH1jBTJkKr+J7KPkyvd
	efzeY3Au1Zm8gAIQw3QQ+8zg3zttrsNi0p5FLvazB8RFIxc9PMIJQuMxldfd5AOka0nyyGOuhjvuO
	LhgTBFJrbKPmyE1V+NTW6/5Bm67Zb/C6fxSBu8z3pV6u+gPatLnEIzfKDzWvWsMUqvAtHn/4P3Gmy
	5/EHScHfu2Rsz7dO2VHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRe3o-0004Sj-1Y; Thu, 23 Apr 2020 15:46:44 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRe3W-0004O3-TF
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 15:46:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1587656775;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=ybxxfVp12h/EJrmfUJdRJSGTmKH3W7lZYEApLFlERWY=;
 b=OuYyp3nQxnljd3w+hO5kVajE9K+f4fLEJyCh/FWLDvxPHZHbwhPhS2HJmhnt9Evsb5
 JB71HZNSHYW0lVqUyId3X4zcDucDdX/6JEsTB/XXdU94pa1gejJSAq8WiDmvgKkj1itF
 qS7gu2/xqgcop5COHG/eWwFLXmMi+T5hAadj8UVlH7g6MCYg3plIA3OJvtaZtMDGArij
 HQKVogBhhXGcUc4ciCivo0W01AnCAoeIGfgJnrtAZfbjx9IwtlNq6s/m2Atfg0UDDAU8
 oEP3Cttz5mRuScdlMorSxZEIwzA2nfBjcJolRJpqGMLwPyRqhe24t1XPiPS1NMGVnTsG
 aZig==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBp5hRw/qOxWRk4dCysOfl5tOw33QtdTbGcCRJGxnkq3ByzlXOnoXby"
X-RZG-CLASS-ID: mo00
Received: from [IPv6:2001:16b8:2692:1500:61a3:e550:2224:7950]
 by smtp.strato.de (RZmta 46.6.2 AUTH) with ESMTPSA id R0acebw3NFjv7lw
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Thu, 23 Apr 2020 17:45:57 +0200 (CEST)
Subject: Re: [PATCH v6 00/12] ARM/MIPS: DTS: add child nodes describing the
 PVRSGX GPU present in some OMAP SoC and JZ4780 (and many more)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <43688597-4b99-8f4d-9ad5-548ddff07f52@baylibre.com>
Date: Thu, 23 Apr 2020 17:45:55 +0200
Message-Id: <71F2F964-32C7-41E6-8F1A-A73161EA1BB3@goldelico.com>
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
 <07923B6C-4CCD-4B81-A98F-E19C43412A89@goldelico.com>
 <43688597-4b99-8f4d-9ad5-548ddff07f52@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_084627_543433_5A073082 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:12 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Cercueil <paul@crapouillou.net>, linux-samsung-soc@vger.kernel.org,
 Paul Burton <paulburton@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 David Airlie <airlied@linux.ie>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 =?utf-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <maxime@cerno.tech>,
 linux-omap <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>,
 OpenPVRSGX Linux Driver Group <openpvrsgx-devgroup@letux.org>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Daniel Vetter <daniel@ffwll.ch>, kernel@pyra-handheld.com,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

> Am 23.04.2020 um 17:00 schrieb Neil Armstrong <narmstrong@baylibre.com>:
>> One thing we can learn is that "core" seems to be a de facto standard 
>> for the core clock-name. An alternative "gpu" is used by nvidia,gk20a.txt.
> 
> Usually IPs needs a few clocks:
> - pclk or apb or reg: the clock clocking the "slave" bus to serve the registers
> - axi or bus or ahb: the bus clocking the the "master" bus to get data from system memory
> - core: the actual clock feeding the GPU logic

And the sgx544 seems to have two such clocks.

> Sometimes you have a single clock for slave and master bus.
> 
> But you can also have separate clocks for shader cores, .. this depends on the IP and it's architecture.
> The IP can also have memories with separate clocks, etc...

Indeed.

> But all these clocks can be source by an unique clock on a SoC, but different on another
> SoC, this is why it's important to list them all, even optional.
> 
> You'll certainly have at least a reset signal, and a power domain, these should exist and be optional.

Well, they exist only as hints in block diagrams of some SoC data sheets
(so we do not know if they represent the imagination definitions) and the
current driver code doesn't make use of it. Still the gpu core works.

So I do not see any urgent need to add a complete list to the bindings now.

Unless some special SoC integration makes use of them. Then it is IMHO easier
to extend the bindings by a follow-up patch than now thinking about all
potential options and bloating the bindings with things we (the open source
community) doesn't and can't know.

My goal is to keep the bindings as minimalistic as possible. And reset lines
and power domains are (at least for those we have in the works) not needed
to make working systems.

Therefore, for clocks I also would start with a minimalistic approach for
a single optional GPU core clock and leave out reset and power completely.

BR and thanks,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
