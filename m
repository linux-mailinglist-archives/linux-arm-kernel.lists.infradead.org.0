Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 553F81B2E58
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 19:30:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VMHEfIQpDeuCq7/OoN9HN3ckytkkGbGyN5ra/bF1ga4=; b=LC7wkUrlhCrRX4
	imUnbmE0TVtilMWryC1D0xyUNknjF8XfBz3HFIEM7I6es+ztpTdOT6yvxkaI6e1ywQ9PwqwxQtoDb
	6e7xhG9w39/qjzDIXHNXbCTa+ODbqBJEdg9rcXJ8Mrf1zJR8Ixc/DHDKayi+gsatAEix1BuT+VKX/
	Nd3lB6qS9SetjlJtStKfLWG1A3MBjbexGFNwwYuU4q14h/uEsG8+cF9Ga1a0ua/94UGweze/n8Rdb
	HgqZNsjwVyxp15ZTqGxmBuPOgURkELsLatcMf9p4njji/a0T6nculGToDvUJwk8QpoxOJgNDKVkB5
	HqLP0wgh6GkSFqg+Vorw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQwj9-0007Pp-Ve; Tue, 21 Apr 2020 17:30:31 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQwia-0007JL-UI
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 17:29:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1587490184;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=HikqoAbRox/lVm/oJtuVUkcBJdcoi2Fs9oSIyzhVSWA=;
 b=Pg9YwJFO1TrZc1HoKVLp+KisvfFo3jvR2aZIA2gTrwed5yjlQidnWz22+30HKd7TjZ
 3KQi+EJArNdoyYx5JQQpKjZArFZaZNt6xZuMU2PFGnKO2j0eLZUfGSN/P4Ilolqa1u9z
 y6TvyVljTmg1SFLBUlBFiDN5ADVus0GGfH8fnhOfhJJ3ZDnwY9Wz5GmTAiA5ldxnf3Tm
 xFYjzEOhQMSlMgYcJgMgTPFLjrxZOvKTqZYjywYkalTKzh1k3IyGx0V/lrHY4tftVNjx
 572uwXcSC3hDkutWjYeoyLqCcBKp5Yw5HuuKT1F6xDtpPNPRiPbo+Tstaczz1LXqxhgi
 vsuw==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj4Qpw9iZeHmAiw43oXkQ="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.5.0 DYNA|AUTH)
 with ESMTPSA id g06d2dw3LHTXJfm
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Tue, 21 Apr 2020 19:29:33 +0200 (CEST)
Subject: Re: [PATCH v6 00/12] ARM/MIPS: DTS: add child nodes describing the
 PVRSGX GPU present in some OMAP SoC and JZ4780 (and many more)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <20200421141543.GU37466@atomide.com>
Date: Tue, 21 Apr 2020 19:29:32 +0200
Message-Id: <D9D4D057-A73D-485F-898D-5C05E89C16B7@goldelico.com>
References: <cover.1586939718.git.hns@goldelico.com>
 <20200415101008.zxzxca2vlfsefpdv@gilmour.lan>
 <2E3401F1-A106-4396-8FE6-51CAB72926A4@goldelico.com>
 <20200415130233.rgn7xrtwqicptke2@gilmour.lan>
 <C589D06E-435E-4316-AD0A-8498325039E3@goldelico.com>
 <10969e64-fe1f-d692-4984-4ba916bd2161@gmail.com>
 <20200420073842.nx4xb3zqvu23arkc@gilmour.lan>
 <b5a06c19-7a3e-bcb8-5ae3-76901b9c6c35@gmail.com>
 <20200421112129.zjmkmzo3aftksgka@gilmour.lan>
 <20200421141543.GU37466@atomide.com>
To: Tony Lindgren <tony@atomide.com>, Maxime Ripard <maxime@cerno.tech>,
 Philipp Rossak <embed3d@gmail.com>, Jonathan Bakker <xc-racer2@live.ca>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_102957_574566_7D6A48A2 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:9 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 James Hogan <jhogan@kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-mips@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Paul Burton <paulburton@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-samsung-soc@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 =?utf-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-omap <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 OpenPVRSGX Linux Driver Group <openpvrsgx-devgroup@letux.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Daniel Vetter <daniel@ffwll.ch>,
 kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Am 21.04.2020 um 16:15 schrieb Tony Lindgren <tony@atomide.com>:
> 
> * Maxime Ripard <maxime@cerno.tech> [200421 11:22]:
>> On Tue, Apr 21, 2020 at 11:57:33AM +0200, Philipp Rossak wrote:
>>> I had a look on genpd and I'm not really sure if that fits.
>>> 
>>> It is basically some bit that verify that the clocks should be enabled or
>>> disabled.
>> 
>> No, it can do much more than that. It's a framework to control the SoCs power
>> domains, so clocks might be a part of it, but most of the time it's going to be
>> about powering up a particular device.
> 
> Note that on omaps there are actually SoC module specific registers.

Ah, I see. This is of course a difference that the TI glue logic has
its own registers in the same address range as the sgx and this can't
be easily handled by a common sgx driver.

This indeed seems to be unique with omap.

> And there can be multiple devices within a single target module on
> omaps. So the extra dts node and device is justified there.
> 
> For other SoCs, the SGX clocks are probably best handled directly
> in pvr-drv.c PM runtime functions unless a custom hardware wrapper
> with SoC specific registers exists.

That is why we need to evaluate what the better strategy is.

So we have
a) omap which has a custom wrapper around the sgx
b) others without, i.e. an empty (or pass-through) wrapper

Which one do we make the "standard" and which one the "exception"?
What are good reasons for either one?


I am currently in strong favour of a) being standard because it
makes the pvr-drv.c simpler and really generic (independent of
wrapping into any SoC).

This will likely avoid problems if we find more SoC with yet another
scheme how the SGX clocks are wrapped.

It also allows to handle different number of clocks (A31 seems to
need 4, Samsung, A83 and JZ4780 one) without changing the sgx bindings
or making big lists of conditionals. This variance would be handled
outside the sgx core bindings and driver.

So instead of an img+omap.yaml and an img+a81.yaml and an img+a31.yaml
etc. we have a single img,pvrsgx.yaml and individual wrappers (the omap
one already exists as bindings/bus/ti-sysc.txt).

The only drawback is that we need this "pass-through" wrapper in DTS
and driver code to handle clocks, power etc.


The second best solution in my view is to make b) the standard
and allow the clock(s) to be optional to cover the omap case.
And conditionals are added to properly describe the variance of
how the sgx is wrapped/integrated.


IMHO this is a decision which can not be easily revised later.
It is an architectural decision. So we should base it on strategic
goals.

> 
> 
> Regards,
> 
> Tony
> 

BR and thanks for clarification,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
