Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 522A51C2D2E
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 17:02:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MMa6ApGF9Xvc7wpNCfY68REdP927uNQiHHPu2QzAN/c=; b=IuTiO9kgCxOv1D
	TUxMY8u2XInsYPfPQDiQGD7O2tBQzEn3TVF3erYZVy2izhhAzRXu5Qmk6qtjoXlzRSL01Vc69f0Kh
	avgm4SmNRTfqDol6tuMw4juIXEE2VMpyBXebUn/eULtIblErJKVnsjHd6jkxOE+ITC2U46LyrGKky
	U5HBs51mE28/Ah0KAllnaLx8Dy53OX71blGNrIMi6MkM4W0XiTOw6Kq7TpgKyDQP9kSWJ98Gr1kRP
	dQ6+RwsCTDTfEx2DbiXwB/TvsdCVbzyaxZxxz0iGQUP/zGHSvCTV4kUmg5Z/5LcXD/zLKHOSXAhZK
	FSmuM/Sfj2+OTXAmWIRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVG81-00025a-Bc; Sun, 03 May 2020 15:02:01 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVG7r-000244-Hn
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 15:01:53 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 5955480BF;
 Sun,  3 May 2020 15:02:34 +0000 (UTC)
Date: Sun, 3 May 2020 08:01:43 -0700
From: Tony Lindgren <tony@atomide.com>
To: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH v7 01/12] dt-bindings: add img,pvrsgx.yaml for
 Imagination GPUs
Message-ID: <20200503150143.GG37466@atomide.com>
References: <cover.1587760454.git.hns@goldelico.com>
 <3a451e360fed84bc40287678b4d6be13821cfbc0.1587760454.git.hns@goldelico.com>
 <NMCE9Q.LWG45P20NBVJ@crapouillou.net>
 <28138EC0-0FA5-4F97-B528-3442BF087C7A@goldelico.com>
 <TEAR9Q.6HI5DFRO5U0I3@crapouillou.net>
 <3D8B59D6-83E3-4FE6-9C99-E2E5616A8139@goldelico.com>
 <8EER9Q.C206SXNSICP7@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8EER9Q.C206SXNSICP7@crapouillou.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_080151_626894_448BABD8 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Jonathan Bakker <xc-racer2@live.ca>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, letux-kernel@openphoenux.org,
 Paul Burton <paulburton@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-samsung-soc@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, James Hogan <jhogan@kernel.org>,
 devicetree@vger.kernel.org,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Daniel Vetter <daniel@ffwll.ch>, kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Paul Cercueil <paul@crapouillou.net> [200503 14:19]:
> You have a new SoC with a SGX, and you only need to enable one clock to get
> it to work. So you create a devicetree node which receives only one clock.
> 
> Turns out, that the bootloader was enabling the other 3 clocks, and since
> the last release, it doesn't anymore. You're left with having to support a
> broken devicetree.
> 
> That's the kind of problem that can be easily avoided by enforcing the
> number of clocks that have to be provided.

The number of clocks depends on how it's wired for the SoC.

On omaps, there's are no controls for additinoal SGX clocks. Sure some
of the clocks may be routed to multple places internally by the wrapper
module. But we have no control over that.

If we wanted to specify just the "fck" clock on omaps, then we can
do it with something like this:

allOf:
  - if:
    properites:
      compatible:
        enum:
	  - "ti,omap4-sgx544-112"
	  - "ti,omap5-sgx544-116"
	  - "ti,dra7-sgx544-116"
    then:
      properties:
        clocks:
	  minItems: 1
	  maxItems: 1

        clock-names:
	  const: fck

    required:
      - clocks
      - clock-names

There's no need for the SGX driver to toggle the "fck" here, it's
all done by PM runtime alreaedy so we would be just tweaking
the usage count for it. But hey, showing the clock rate might
be nice. Or maybe we want to at some point scale it, so no problem
specifying it.

For omap3, we should then specify "fck" and "ick". On omap4 and
later, there's no separate control over the "ick".

Then for the other SoCs, you can specify whatever clocks you need
there.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
