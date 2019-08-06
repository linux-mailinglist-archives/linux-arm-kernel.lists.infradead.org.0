Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B35D83A38
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 22:25:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Content-ID:MIME-Version
	:References:In-reply-to:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UeJjenQu9ROsB3iXnjpJr2fqeq9IeVvu8OGVhyjdhqk=; b=C17ahsGIREDorA
	Xq6ZF3So4Ly/VFPIYcPvVGrHq3sB5drQvPvhpL3e4RNRisMvw+uixABMl6Fe4GeSTjvuhsrl6jOnE
	Kkicjd15xIG0pQ56lPQaW7P6slV5sbxbLflQDaPxZKhBqsW353sALqHCt58aW9XJOR/X2QYObjYvy
	hF1GptL1HoOO82R84ek1YM9jOw0KW4XFE/5uy7tjxokj0Xol5/vttCh/Tv3+pP2mAlZ1uISuKbsI+
	VtrERAVzpkb2mt2YVu7xM8atWwTsmICcfJAj5+wTgzaUsnnYYcpvG5wluLB6ASsguP3TbRKQcrbAQ
	UGa6HVqH1Lpu9oAIE3OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv60y-0002l4-Cn; Tue, 06 Aug 2019 20:25:00 +0000
Received: from mail.cosmopool.net ([2a01:4f8:160:20c1::10:107])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hv60m-0002ke-6L
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 20:24:49 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.cosmopool.net (Postfix) with ESMTP id 99B499016E9;
 Tue,  6 Aug 2019 22:19:29 +0200 (CEST)
Received: from mail.cosmopool.net ([127.0.0.1])
 by localhost (mail.b.radempa.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OX_YX0ogUjWU; Tue,  6 Aug 2019 22:19:29 +0200 (CEST)
Received: from stardust.g4.wien.funkfeuer.at
 (77.117.195.156.wireless.dyn.drei.com [77.117.195.156])
 by mail.cosmopool.net (Postfix) with ESMTPSA id 8F56D900A78;
 Tue,  6 Aug 2019 22:19:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ccbib.org; s=201902;
 t=1565122768; bh=H7xzku4e2YLqN3SBuk3ijWPNxtTPJhCKGCVBeLEo550=;
 h=From:To:cc:Subject:In-reply-to:References:Date:From;
 b=sXQsEfz/hR7dMhL9l3zWhcHlBiI0vpU230ZFjRbEq9fCaJE4D1bbyhGfswaxBiLU3
 KTVAMd3VBRaM/CCfwAGjFnjs4qCaOfGUJXhAZOJ+gw/B9Mgc0R9m1aqK3J63hvrJIi
 mGd9od4wtzOna19U0rr0ZnqVuKP6puqE3D4ds+BM=
Received: from lambda by stardust.g4.wien.funkfeuer.at with local (Exim 4.89)
 (envelope-from <harald@ccbib.org>)
 id 1hv5vZ-0000jN-M8; Tue, 06 Aug 2019 22:19:25 +0200
From: Harald Geyer <harald@ccbib.org>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
In-reply-to: <CA+E=qVfh7mirJhRsDTeuAVgG55ia936uFSFVKR0N5Pn4GCF1UA@mail.gmail.com>
References: <20190806140135.4739-1-anarsoul@gmail.com>
 <89402d22-d432-9551-e787-c8ede16dbe5f@arm.com>
 <CA+E=qVfh7mirJhRsDTeuAVgG55ia936uFSFVKR0N5Pn4GCF1UA@mail.gmail.com>
Comments: In-reply-to Vasily Khoruzhick <anarsoul@gmail.com>
 message dated "Tue, 06 Aug 2019 07:45:21 -0700."
MIME-Version: 1.0
Content-ID: <2811.1565122765.1@stardust.g4.wien.funkfeuer.at>
Date: Tue, 06 Aug 2019 22:19:25 +0200
Message-Id: <E1hv5vZ-0000jN-M8@stardust.g4.wien.funkfeuer.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_132448_441811_4C45170F 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 "Jared D . McNeill" <jmcneill@netbsd.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Vasily Khoruzhick writes:
> On Tue, Aug 6, 2019 at 7:35 AM Robin Murphy <robin.murphy@arm.com> wrote:
> >
> > On 06/08/2019 15:01, Vasily Khoruzhick wrote:
> > > Looks like PMU in A64 is broken, it generates no interrupts at all and
> > > as result 'perf top' shows no events.
> >
> > Does something like 'perf stat sleep 1' at least count cycles correctly?
> > It could well just be that the interrupt numbers are wrong...
> 
> Looks like it does, at least result looks plausible:

I'm using perf stat regularly (cache benchmarks) and it works fine.

Unfortunately I wasn't aware that perf stat is a poor test for
the interrupts part of the node, when I added it. So I'm not too
surprised I got it wrong.

However, it would be unfortunate if the node got removed completely,
because perf stat would not work anymore. Maybe we can only remove
the interrupts or just fix them even if the HW doesn't work?

Harald

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
