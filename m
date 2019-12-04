Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C29AD11363F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 21:15:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ALfAF7/HlPC9wb7iJpPNt0gIP/eAz2Ok4quSJswVwJU=; b=vCfaQ63iqgmlVG
	qFtepDHVYZB0I+qIHT8UPXz/iEJGis/6ERh0AgxrKzJMREaUdedvjOptd+mSnxIdGNTJzSaDYGQSy
	YXvGI4LIjovpvE4iYeXFgG5L+mj7CUZd03DF5w/KZzNKSzr/vJ1vbwGDJmp67a8TATWdvgJ+6q36/
	zKY0KHHi2V14RZfCmocXsxO5OSVzStdJJPuIMpsHPokfTQpoaaNiZnb+j0r9p2xKleKU0GNsqa4aC
	/dzPgG4ngyhYWiAo00wH4zJJWKbWnfH5v0wzMPjtBHHgmpog2/pJPV4PO7la3iBOc5tM6jndNzFfl
	/vfVZi4kkiduPDrzlfbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icb3J-0007r4-Lj; Wed, 04 Dec 2019 20:15:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icb35-0007pb-DP; Wed, 04 Dec 2019 20:15:00 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1icb2t-0001Zb-KG; Wed, 04 Dec 2019 21:14:47 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 1/5] dt-bindings: arm: rockchip: Add VMARC RK3399Pro
 SOM binding
Date: Wed, 04 Dec 2019 21:14:46 +0100
Message-ID: <5408424.xnnVrITuBQ@diego>
In-Reply-To: <20191204193240.GA6772@bogus>
References: <20191121141445.28712-1-jagan@amarulasolutions.com>
 <20191121141445.28712-2-jagan@amarulasolutions.com>
 <20191204193240.GA6772@bogus>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_121459_600808_9CE241A6 
X-CRM114-Status: GOOD (  18.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tom Cubie <tom@radxa.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Akash Gajjar <akash@openedev.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mittwoch, 4. Dezember 2019, 20:32:40 CET schrieb Rob Herring:
> On Thu, Nov 21, 2019 at 07:44:41PM +0530, Jagan Teki wrote:
> > VMARC RK3399Pro SOM is a standard SMARC SOM design with
> > Rockchip RK3399Pro SoC, which is designed by Vamrs.
> > 
> > Since it is a standard SMARC design, it can be easily
> > mounted on the supporting Carrier board. Radxa has
> > suitable carrier board to mount and use it as a final
> > version board.
> > 
> > Add dt-bindings for it.
> > 
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> > Changes for v2:
> > - none
> > 
> >  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > index 45728fd22af8..51aa458833a9 100644
> > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > @@ -526,4 +526,9 @@ properties:
> >          items:
> >            - const: tronsmart,orion-r68-meta
> >            - const: rockchip,rk3368
> > +
> > +      - description: Vamrs VMARC RK3399Pro SOM
> > +        items:
> > +          - const: vamrs,rk3399pro-vmarc-som
> 
> Why do you need this? You just override it in your dts files, so it is 
> not really used. Perhaps the top-level should have all 3 compatibles? If 
> so, then the schemas are wrong.

In the past we had SOMs that _could_ function alone, but looking at the
announcement for this one [0] suggests that the SOM always needs a carrier
board, so I don't think the SOM actually needs a separate entry but instead
should be part of the carrier-board compatible list, as Rob suggested.

So I guess we should only have (from patch 3):
  - description: Radxa ROCK Pi N10
        items:
          - const: radxa,rockpi-n10
          - const: vamrs,rk3399pro-vmarc-som
          - const: rockchip,rk3399pro


Heiko

[0] https://www.96rocks.com/blog/2019/09/11/introduce-vamrc-rk3399pro-som-and-ficus2-carrier-board/



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
