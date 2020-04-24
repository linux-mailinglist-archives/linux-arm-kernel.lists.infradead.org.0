Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE0F1B7138
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 11:52:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=27Nm6ccO50TqrvkjsDs5ic/bY8tBeQfRcvrPSPB4o4Y=; b=fMIND6fSpvSLLD
	7gd0/yFBa0hmlM0LXzirCN9l6koz82p4XEcoRr8QLJRz+8u4KTYm4NBqooNHcy6mQOlHvCSkrm2Av
	OGfAI8a3b6zqDmiQX7qLMzsqiRGRR9cz3PqF/j2RNgYwQrvEmdJYnQtnOxPD3TGVZN4Rw/Xpz8BjB
	w/F/w8s725mu8jRtN3we9+oiJspwSLwdFoGZuxJvqRNN4JAyzi85UH00xvKEglZzXtiAbaf32lkJE
	JKm76GyomPO8G4A9g1vSX+1FJNOmdMXl+q92Jam+jJ8QwhdzHKAU9xgu0Ew7h+VYv4P/P+YNyfffe
	ZacBA0cous9qXVrHhOfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRv0G-0006DK-R2; Fri, 24 Apr 2020 09:52:12 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRv04-0006Cs-Uh
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 09:52:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1587721918;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=EADzuRL+YsoGCLSE7b2pLcK0IVG9NS9sozBTxA+ffmU=;
 b=EeZyZ9ArpJ5P2k/vVA5YYfdyorM53EK6XxqyAiVeMur3hMVJSZbvuDU9hIXcVKoagi
 kDn8pkYdkV/ejlYYP/M43wGbHkcU0LXhcwWebUu5kAI7t5Dd53TSgTct6Cap/CKRvb6b
 eq+kCa9iOM8vSvrAdKpKzGwYLoDX8/B/h/XHCSokqKmAIXis+reEfP0AmBDc6ctZwCxS
 B3MabxZWD+tZs1CCdgwWq4Y2KcioaSNNxYDQc5Uwh0HnHj+TNwYGZsX3Vfkg+lX5z30K
 Q/5cqgTMIFNg1sULZQx7JYsLjdBnxafJG5cvg4m6/kfkBPjN4Altiwe0/s+jPw7v/VMB
 H5yg==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj5Qpw97WFDlabXA0JT7U="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.6.2 DYNA|AUTH)
 with ESMTPSA id R0acebw3O9pgAHY
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Fri, 24 Apr 2020 11:51:42 +0200 (CEST)
Subject: Re: [PATCH v6 00/12] ARM/MIPS: DTS: add child nodes describing the
 PVRSGX GPU present in some OMAP SoC and JZ4780 (and many more)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <20200423203642.35ms4aarnv65tfp5@gilmour.lan>
Date: Fri, 24 Apr 2020 11:51:42 +0200
Message-Id: <A095F2EA-C6F8-47AD-A333-E19F7073581A@goldelico.com>
References: <b5a06c19-7a3e-bcb8-5ae3-76901b9c6c35@gmail.com>
 <20200421112129.zjmkmzo3aftksgka@gilmour.lan>
 <20200421141543.GU37466@atomide.com>
 <D9D4D057-A73D-485F-898D-5C05E89C16B7@goldelico.com>
 <20200422065859.quy6ane5v7vsy5tf@gilmour.lan>
 <1AA57A0C-48E6-49BB-BB9A-2AAFFB371BCD@goldelico.com>
 <20200422151328.2oyqz7gqkbunmd6o@gilmour.lan>
 <07923B6C-4CCD-4B81-A98F-E19C43412A89@goldelico.com>
 <43688597-4b99-8f4d-9ad5-548ddff07f52@baylibre.com>
 <71F2F964-32C7-41E6-8F1A-A73161EA1BB3@goldelico.com>
 <20200423203642.35ms4aarnv65tfp5@gilmour.lan>
To: Maxime Ripard <maxime@cerno.tech>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_025201_580040_AFCE31B0 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:5 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Tony Lindgren <tony@atomide.com>,
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
 Rob Herring <robh+dt@kernel.org>, linux-omap <linux-omap@vger.kernel.org>,
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

Hi,

> Am 23.04.2020 um 22:36 schrieb Maxime Ripard <maxime@cerno.tech>:
>> My goal is to keep the bindings as minimalistic as possible. And reset
>> lines and power domains are (at least for those we have in the works)
>> not needed to make working systems.
>> 
>> Therefore, for clocks I also would start with a minimalistic approach
>> for a single optional GPU core clock and leave out reset and power
>> completely.
> 
> Like I said above, the DT is considered an ABI and you'll have to
> maintain backward compatibility (ie, newer kernel running with older
> DT).

Generally I fully agree to this rule (although I have experienced
that exceptions happen more often than I like).

But here, we don't have any older DT which define something about SGX.

We introduce SGX for the first time with bindings and DT in parallel.
So they are in sync.

Therefore, newer kernels with SGX support and older DT simply will
skip SGX and not load any drivers. So we can't break older DT and
older DT can't break SGX.

What we introduce is a DT code that is well hung and tested (originating
in vendor kernels). It is cast in a bindings.yaml where not everyone
is happy with for reasons outside the originally proposed DT.

For new SoC not yet supported, I don't see a need to touch the
existing ones.

This is because I only propose to *add* properties to the bindings
for devices that have not been supported with SGX before and are
not sufficiently covered by what exists.

So backward compatibility is a non-problem.

> Therefore, you won't be able to require a new clock, reset or
> power-domain later on for example.
> 
> I guess the question I'm really asking is: since you don't really know
> how the hardware is integrated at the moment,

Like I explained, we do not need to know and model all details about
the hardware integration. The register set of an SoC does not always
provide bits to control all signals we may see in a block diagram or
think they must exist.

We have a set of SoC where it is demonstrated to work without need
for more detailed knowledge about specific hardware integration.

So we know everything of importance for this initial set of SoC to
make it work.

> why should we have that
> discussion *now*. It's really not suprising that you don't know yet, so
> I'm not sure why we need to rush in the bindings.

Because:
* there are people who want to have upstream SGX support for an initial
  set of SoC *now*
* the discussion already lasts ca. 6 months since I posted v1,
  that should be enough and is not a rush
* it is not required to know more details to make a working system
* we will not gain more information by waiting for another year or two
* problems are not solved by postponing them
* there are DTS for some initial SoC, tested to work
* it is no longer possible to submit DT without bindings.yaml (or is it?)
* we just need to define a bindings.yaml for them, not invent something
  completely new
* we can start with a minimal bindings.yaml for the analysed SoC and
  *extend* it in the future if really needed
* we can discuss changes & extensions for the bindings when they are
  really proposed
* having this patch series upstream is a prerequisite for introducing
  the sgx kernel driver to staging

In other words: your suggestion to postpone everything will keep finished
work sitting in front of the door and rotting and blocking unfinished work...

And to be honest, we have postponed SGX support already for too long
time and could be much farther with more and broader community cooperation.
So we should not block ourselves.

So if you can contribute new information or proposals to specifically
improve the proposed bindings.yaml, you are very welcome. But please do
it *now*.

BR and thanks,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
