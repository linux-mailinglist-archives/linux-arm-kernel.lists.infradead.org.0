Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0BE31D02DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 01:06:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0VW+RmO2gIRNfhwPhjhJb/VHoLjo4TPyRz7ieEj0Kz8=; b=NB6FxTQ0mQGDmT
	JwUFzECv66I4FqpPKS3heATXwIG0BnGSBb+eixZsr9soGDv4UOp7VM9fvqY7ONLTXK/67ngJ/XqaM
	9NcRHGrkfB5zhF4ZZ5tsu0WixOyNhPnHeE7somwXmJfZhFpyreiX5Jyqa2CUUkq9ymFiTbdH83yv6
	uyKwfOhs+G1SRGY9uT3YSCXYj1qKky/fzPSUXmiUCIB72L8nTpCaoBaSAt0jMaad6ybIBcwDuQkB0
	7DXvyHre4XRTsVCz3RistL+juL7uc9alRPUxAUf0N9WWVkuwV5NJDaSttEgCkvDBhbmS6Zo7twwQG
	/dbUXqgLXn+g46Oj6V3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYdyS-0008KA-8w; Tue, 12 May 2020 23:06:08 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYdyJ-0008GI-DX
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 23:06:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1589324757; bh=blZoiLTu+A/avnSXLStZACMQViZsw7dUh1Z6i4t2+kc=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=MbiVsmNqQbA3s6tCEZDKId9/06UVSeWvW3s2p5J+RiuGPnl2vmJ23ft11kWJu1pe3
 9j9B+V77r87Y6tThPEuo6W7svzgEbvQaZcoaRMYtWwj9aHdsEfiTByqxM6d3r+D5xJ
 fK5AiiQOLtJPtWhlb3tG0auFZF432GWb7dAZwNd4=
Date: Wed, 13 May 2020 01:05:57 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: input: gpio-vibrator: Don't require
 enable-gpios
Message-ID: <20200512230557.zvdgwhbqygc2fufv@core.my.home>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Luca Weiss <luca@z3ntu.xyz>, Tomas Novotny <tomas@novotny.cz>,
 linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>
References: <20200512222205.1456300-1-megous@megous.com>
 <20200512222205.1456300-2-megous@megous.com>
 <20200512225212.GE89269@dtor-ws>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512225212.GE89269@dtor-ws>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_160559_775321_E334DD14 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 Luca Weiss <luca@z3ntu.xyz>, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, Tomas Novotny <tomas@novotny.cz>,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 03:52:12PM -0700, Dmitry Torokhov wrote:
> On Wed, May 13, 2020 at 12:22:02AM +0200, Ondrej Jirman wrote:
> > It is possible to turn the motor on/off just by enabling/disabling
> > the vcc-supply.
> > 
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > Acked-by: Rob Herring <robh@kernel.org>
> > ---
> >  Documentation/devicetree/bindings/input/gpio-vibrator.yaml | 1 -
> >  1 file changed, 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/input/gpio-vibrator.yaml b/Documentation/devicetree/bindings/input/gpio-vibrator.yaml
> > index 2384465eaa19..c700b640bd53 100644
> > --- a/Documentation/devicetree/bindings/input/gpio-vibrator.yaml
> > +++ b/Documentation/devicetree/bindings/input/gpio-vibrator.yaml
> > @@ -24,7 +24,6 @@ properties:
> >  
> >  required:
> >    - compatible
> > -  - enable-gpios
> 
> Hmm we need at least one of the 2 (gpio and supply). Should we encode it
> in the binding?

Not sure how to encode either one or the other property being required, but
not both at once.

Maybe I can add a supply-vibrator compatible to the driver and binding and
make requirements dependent on the compatible?

> Also, in the dirver code, I guess we need to switch to have regulator
> optional (so we are not given the dummy one) and bail if neither
> regulator nor GPIO is found.

Though nothing bad will happen in the driver if binding will lack both
of these. The driver will just not control any HW, so at least it's
failsafe as is.

regards,
	o.

> Thanks.
> 
> -- 
> Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
