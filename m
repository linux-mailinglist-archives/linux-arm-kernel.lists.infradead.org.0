Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F76E195F92
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 21:22:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DLrzsA9RS1Mytv5BMr6FR/FXMdniiJSl28oBvkAk6gw=; b=bTGIvklsPZl00I
	qHNutvLfbYGkw47Oyu30l0r8icjwteVgxIim+R3qnVzS0CCKjlLdCXM9HWl1+d087tiXXYa9ptmVe
	DmlA6JqERbl2+M7gvY7DZJ/k4omnfro/kaH/iIr6sHQpG2nks2PZr6kDfmLJloyOR7+hIwOymuM4h
	mJdbaSARQUAfF3ARZn3xJRHxw3xA9AKwQMhBtrUmTyQ5Iw4+O/1IXBQdFWPPozr2gWnzymAdxhVM6
	/ZDCovvrC9eky25xfDFY6Cyq8XbXXowBc70JzuuPdoiLCyCY7lnMbEf/C+cPSzZc1HzU8rnXBt6sR
	X4EGMW0Rz3ErOlltcPgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHvUu-0007v8-MM; Fri, 27 Mar 2020 20:22:32 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHvUf-0007tO-J6; Fri, 27 Mar 2020 20:22:21 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 14C2B804E5;
 Fri, 27 Mar 2020 21:22:01 +0100 (CET)
Date: Fri, 27 Mar 2020 21:21:59 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: iio/accel: Drop duplicate adi,
 adxl345/6 from trivial-devices.yaml
Message-ID: <20200327202159.GA12749@ravnborg.org>
References: <20200325220542.19189-1-robh@kernel.org>
 <20200325220542.19189-2-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325220542.19189-2-robh@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=XpTUx2N9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=gAnH3GRIAAAA:8
 a=VwQbUJbxAAAA:8 a=DN42nk9sAAAA:8 a=e5mUnYsNAAAA:8 a=KWDWuRJ9IF3UujpQpV0A:9
 a=CjuIK1q_8ugA:10 a=oVHKYsEdi7-vN-J5QA_j:22 a=AjGcO6oz07-iQ99wixmX:22
 a=ee1JA_unvF1TMR62yWF-:22 a=Vxmtnl_E_bksehYqCbjh:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_132218_010914_E174D557 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, linux-iio@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Guillaume La Roque <glaroque@baylibre.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Lee Jones <lee.jones@linaro.org>,
 linux-clk@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Zhang Rui <rui.zhang@intel.com>, Brian Masney <masneyb@onstation.org>,
 devicetree@vger.kernel.org, Michael Hennerich <michael.hennerich@analog.com>,
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-gpio@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 linux-amlogic@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Liam Girdwood <lgirdwood@gmail.com>,
 Stephen Boyd <sboyd@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Hartmut Knaack <knaack.h@gmx.de>,
 linux-media@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob.

On Wed, Mar 25, 2020 at 04:05:38PM -0600, Rob Herring wrote:
> The 'adi,adxl345' definition is a duplicate as there's a full binding in:
> Documentation/devicetree/bindings/iio/accel/adi,adxl345.yaml
> 
> The trivial-devices binding doesn't capture that 'adi,adxl346' has a
> fallback compatible 'adi,adxl345', so let's add it to adi,adxl345.yaml.
> 
> Cc: Michael Hennerich <michael.hennerich@analog.com>
> Cc: Jonathan Cameron <jic23@kernel.org>
> Cc: Hartmut Knaack <knaack.h@gmx.de>
> Cc: Lars-Peter Clausen <lars@metafoo.de>
> Cc: Peter Meerwald-Stadler <pmeerw@pmeerw.net>
> Cc: linux-iio@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/iio/accel/adi,adxl345.yaml     | 10 +++++++---
>  Documentation/devicetree/bindings/trivial-devices.yaml |  4 ----
>  2 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/accel/adi,adxl345.yaml b/Documentation/devicetree/bindings/iio/accel/adi,adxl345.yaml
> index c602b6fe1c0c..d124eba1ce54 100644
> --- a/Documentation/devicetree/bindings/iio/accel/adi,adxl345.yaml
> +++ b/Documentation/devicetree/bindings/iio/accel/adi,adxl345.yaml
> @@ -17,9 +17,13 @@ description: |
>  
>  properties:
>    compatible:
> -    enum:
> -      - adi,adxl345
> -      - adi,adxl375
> +    oneOf:
> +      - items:
> +          - const: adi,adxl346
> +          - const: adi,adxl345
> +      - enum:
> +          - adi,adxl345
> +          - adi,adxl375

I assume it is my schema understanding that is poor.
But I cannot parse the above.

The mix of items, enum and const confuses me.

I guess that if I am confused then others may end in the same situation.
Can we improve readability here or amybe add a comment?

	Sam

>  
>    reg:
>      maxItems: 1
> diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
> index 978de7d37c66..51d1f6e43c02 100644
> --- a/Documentation/devicetree/bindings/trivial-devices.yaml
> +++ b/Documentation/devicetree/bindings/trivial-devices.yaml
> @@ -42,10 +42,6 @@ properties:
>            - adi,adt7476
>              # +/-1C TDM Extended Temp Range I.C
>            - adi,adt7490
> -            # Three-Axis Digital Accelerometer
> -          - adi,adxl345
> -            # Three-Axis Digital Accelerometer (backward-compatibility value "adi,adxl345" must be listed too)
> -          - adi,adxl346
>              # AMS iAQ-Core VOC Sensor
>            - ams,iaq-core
>              # i2c serial eeprom  (24cxx)
> -- 
> 2.20.1
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
