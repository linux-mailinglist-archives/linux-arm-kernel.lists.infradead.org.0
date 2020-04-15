Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 855911AA3B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 15:17:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CUxYvJkE9lqJUqrqdS12s0+4a5Jjb1EuVUW8KA14Mms=; b=c23mqK8X8G+TlR
	QHCPyKD6c4V2wGIkHxVAuFY9aqdbVDhvFA4gT5aey71tizJXmI97DPX8VdPB/yCjbPGrj+TknkRsD
	p86ob7IPLJaHyEvXd/kAKEKFHjShoYTsowqVCOUPQ/REyQiLLMsIeVKnnC67ulAYtzP7UWfUZSUTw
	4ZUpbUED3tY77a3gsHg3MUqHSs4Y/LrEZxlp75jJXEGr9vWkprQwicc1FL8OFBblD+JngS5BCTfDo
	VZxIAfUlLxzXLrPhF/8Ovl6Ct8eMAYpV7Qmd2PQb3gVITPLOHeQJ+0EJhtGG4sgU5wiazcvsrZ4Tq
	0qVV/+LFj8y1iPHufZNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhvC-0007Uj-14; Wed, 15 Apr 2020 13:17:42 +0000
Received: from mo6-p03-ob.smtp.rzone.de ([2a01:238:20a:202:5303::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhv3-0007UM-Kk
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 13:17:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1586956651;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=ggeVHX1ECoHuxb0UgkenFd/4IT/OkoIPA4CW4OSiH4U=;
 b=iWhOPeDPJZtHwRrjzFudl8/9QoPGvj7QqycnI51K/kYMfhqWdK9u+h15zlQ/yoGF9g
 QWMs1SHmuJoTx0bxTxsw088zrcVablKBpEasmJ2aTPSJ7emixWZpBy0F7pVaVJVCaG7f
 Lp7TGaWFGL7u6sM0RHYqsD6iLcxM/DXmBPCHstPqWf+hGeOtp0Hytxu9fLnbaadyWSDX
 YicMpbgZt3DW0Cu+6C1l76EEmllTqh2pCELGBn6oe4C0RFMpzJTV74hod5jBcDo+HI1A
 9/ouyR/UzwyGhv5en8czws56q5EQZDzKJTepPvzb1FDiUmUUS/WEWwBg8ZaXo7wskfBl
 c+9w==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGH/PtwDConyM="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.4.0 DYNA|AUTH)
 with ESMTPSA id 6028a2w3FDHP26i
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Wed, 15 Apr 2020 15:17:25 +0200 (CEST)
Subject: Re: [PATCH v6 01/12] dt-bindings: add img,
 pvrsgx.yaml for Imagination GPUs
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <f4fdca8a-d18c-a8d2-7f51-d1ebbbab3647@baylibre.com>
Date: Wed, 15 Apr 2020 15:17:25 +0200
Message-Id: <535CAEBE-F43E-4BFC-B989-612C81F0D7EF@goldelico.com>
References: <cover.1586939718.git.hns@goldelico.com>
 <06fb6569259bb9183d0a0d0fe70ec4f3033b8aab.1586939718.git.hns@goldelico.com>
 <20200415101251.o3wi5t6xvf56xmhq@gilmour.lan>
 <72919514-0657-4B71-902F-3E775E528F64@goldelico.com>
 <f4fdca8a-d18c-a8d2-7f51-d1ebbbab3647@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_061734_268536_91CE30EE 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5303:0:0:1 listed in]
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
 James Hogan <jhogan@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 linux-samsung-soc@vger.kernel.org, Paul Burton <paulburton@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Tony Lindgren <tony@atomide.com>,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 devicetree@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <maxime@cerno.tech>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 =?utf-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 kernel@pyra-handheld.com, letux-kernel@openphoenux.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

> Am 15.04.2020 um 14:54 schrieb Neil Armstrong <narmstrong@baylibre.com>:
> 
> Hi,
> 
> On 15/04/2020 14:43, H. Nikolaus Schaller wrote:
>> 
>>> Am 15.04.2020 um 12:12 schrieb Maxime Ripard <maxime@cerno.tech>:
>>> 
>>> Hi,
>>> 
>>> On Wed, Apr 15, 2020 at 10:35:08AM +0200, H. Nikolaus Schaller wrote:
>>>> The Imagination PVR/SGX GPU is part of several SoC from
>>>> multiple vendors, e.g. TI OMAP, Ingenic JZ4780, Intel Poulsbo,
>>>> Allwinner A83 and others.
>>>> 
>>>> With this binding, we describe how the SGX processor is
>>>> interfaced to the SoC (registers, interrupt etc.).
>>>> 
>>>> In most cases, Clock, Reset and power management is handled
>>>> by a parent node or elsewhere (e.g. code in the driver).
>>> 
>>> Wouldn't the "code in the driver" still require the clock / reset /
>>> power domain to be set in the DT?
>> 
>> Well, some SoC seem to use existing clocks and have no reset.
>> Or, although not recommended, they may have the io-address range
>> hard-coded.
> 
> The possible clocks and resets should be added, even if optional.
> 
> Please look at the arm utgard, midgard and bifrost bindings.

Interesting to compare to. Maybe we should also add the
$nodename: pattern: '^gpu@[a-f0-9]+$'

But the sgx binding is difficult to grasp here. Some SoC like the
omap series have their own ti,sysc based target modules and the
gpu nodes is a child of it lacking any clock and reset references
for purpose.

The jz4780 and some other need a clocks definition, but no reset.
Having a reset seems to be an option for the SoC designer and
not mandated by img. So is it part of the pvrsgx bindings or the
SoC?

Well we could add clocks and resets as optional but that would
allow to wrongly define omap.

Or delegate them to a parent "simple-pm-bus" node.

I have to study that material more to understand what you seem
to expect.

BR and thanks,
Nikolaus Schaller



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
