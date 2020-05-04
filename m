Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C31071C42D5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 19:32:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oiQKcOoSkuKlMLHceKnHmE9gw+XnOMFo/kWEfSv/3qQ=; b=raN3FSdxClPyQc
	srOf/1yzTHe7Bd2LoFJVtMEj4MqASS1wtSG6CES82flKf9wtlLFkAHLpFO3Kb/e+1GyzBdi/EW3M1
	cImUCb7f+haf7wJsF1xMtTK8KZwDGbEozCGy3ZW/lrlQ86zcfSYUCLtVByIumuz3NGGzLY3SSJx04
	gAvuHy8FFRfc91ZaQyzR16Ou3qc46HySFCon8Dr4P73Z4iqmMA9TeorGzswzDKEUd/ApTo/bwRYVv
	yNpGaKbvNxESZS00N30uACkriycBH/CFAAx6G4LFP/qmjihslrq7jcQt2lh8LmGJHtI4Ls4PStqxt
	eic/3W5Qxlwk7PGTz9fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVewr-0007PH-8v; Mon, 04 May 2020 17:32:09 +0000
Received: from smtprelay0130.hostedemail.com ([216.40.44.130]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVewg-0007Ng-IV; Mon, 04 May 2020 17:31:59 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay04.hostedemail.com (Postfix) with ESMTP id 9EFCC180A55F0;
 Mon,  4 May 2020 17:31:56 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:3870:3871:3873:3874:4250:4321:5007:6117:6119:10004:10400:10848:11232:11658:11914:12043:12109:12297:12740:12760:12895:13069:13163:13229:13311:13357:13439:14096:14097:14181:14659:14721:21080:21433:21451:21627:30029:30054:30069:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: twig62_4aee47edd0d24
X-Filterd-Recvd-Size: 1976
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf07.hostedemail.com (Postfix) with ESMTPA;
 Mon,  4 May 2020 17:31:54 +0000 (UTC)
Message-ID: <28790ee42242ecc0b0050943a27f569dd1aeec16.camel@perches.com>
Subject: Re: [PATCH 1/6] dt-bindings: phy: meson8b-usb2: Convert to json-schema
From: Joe Perches <joe@perches.com>
To: hex dump <hexdump0815@gmail.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>
Date: Mon, 04 May 2020 10:31:53 -0700
In-Reply-To: <CAKTihDVy6oSuQe4eP87hWO17tBu3=XZ-PM41YOqLVOtXJ8+YeQ@mail.gmail.com>
References: <20200502114752.1048500-1-martin.blumenstingl@googlemail.com>
 <20200502114752.1048500-2-martin.blumenstingl@googlemail.com>
 <CAKTihDVy6oSuQe4eP87hWO17tBu3=XZ-PM41YOqLVOtXJ8+YeQ@mail.gmail.com>
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_103158_669264_144C903B 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.130 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, narmstrong@baylibre.com,
 linux-kernel@vger.kernel.org, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2020-05-04 at 12:55 +0200, hex dump wrote:
> On Sat, May 2, 2020 at 1:48 PM Martin Blumenstingl
> <martin.blumenstingl@googlemail.com> wrote:
> > Now that we have the DT validation in place, let's convert the device
> > tree bindings for the Amlogic Meson8, Meson8b, Meson8m2 and GXBB USB2
> > PHY over to a YAML schema.
> > 
> > While here, also add the fallback compatible string
> > "amlogic,meson-gxbb-usb2-phy" which is already used in
> > arch/arm/boot/dts/meson{,8,8b}.dtsi.
> > 
> > Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> 
> Tested-by: hexdump <hexdump0815@googlemail.com>

Is the kernel now accepting "Tested-by" lines from robots?

If hexdump0815@googlemail.com is not a robot, can you please use
your full legal name instead?



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
