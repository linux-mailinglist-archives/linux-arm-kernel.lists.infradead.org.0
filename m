Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF43A41ED9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 10:17:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cFw0UHZh2kMjV/vYAaYBFjRPO4rJfpaf8EoDiQtTQo0=; b=QQ2/tDQxZHc/jW
	GUiLZLOwOBVTvi6ahFTpzW3U02IPCooLjh9UWdcZZiA6QZLdik2Riu9EhI4pn2/G9R19jcL8rzqZ2
	8cpxNlDC8hQO7wrPXWGOaTz5+ZsDJ/xaJCE2ka8sP3gx78o82IKqdvKUK7NIqrIHT72qxdaSiMiGB
	4BTBwi1Awd2jz6KMw1JHdygGeAQBKkk9T260kTEc1m1IIsjkVyx4bAYHj+Uucw5zPhLqEaDuqtZuI
	N1XOGQOWhTGF0rabB/dYBgH3z87xQCZ6BOFwqXA7fIVkt2AxlDny2hQAYEFFrJDJkDj2m+ddhfLdX
	CJlBjZPMIjfhLFOy/jrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hayRO-00080O-N2; Wed, 12 Jun 2019 08:17:06 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hayR0-0007uc-QY
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 08:16:45 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190612081640euoutp0217944e240ecd39d239d5d743ef459b75~nZYD7U1Vi0233002330euoutp023
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 08:16:40 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190612081640euoutp0217944e240ecd39d239d5d743ef459b75~nZYD7U1Vi0233002330euoutp023
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1560327400;
 bh=PWdb377o0rER7E11sck9S6AwPDJeCROTCX+Ce5iaBhg=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=rqqV6hwRtsZr3pMKSHZLKMOzb69tEi2HDVq0T/SileIHlwTTeaxoILHgNsK5t5AhC
 sPh25ynt/cAcLHl6zwbf/5kN1PeO8jQxODkA4GoDejvKd7FSwyVBaWvy/m0vU7R0aS
 SJLwbFDpH5BWS4xFjZIIk4aaRjmC4ah/kRGzuqms=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190612081639eucas1p13c5abc807f9673acb6e5e6bcb9e0a729~nZYDQXeWy0358603586eucas1p1s;
 Wed, 12 Jun 2019 08:16:39 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 76.23.04377.7E4B00D5; Wed, 12
 Jun 2019 09:16:39 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190612081639eucas1p142d77338598e9f08936f2cd7cd789ec5~nZYChiO7s0358603586eucas1p1r;
 Wed, 12 Jun 2019 08:16:39 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190612081638eusmtrp163fe6b8fce83e69a682fce03661d98e8~nZYCSimvv0940709407eusmtrp1D;
 Wed, 12 Jun 2019 08:16:38 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-c2-5d00b4e7dccc
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 54.CD.04140.6E4B00D5; Wed, 12
 Jun 2019 09:16:38 +0100 (BST)
Received: from [106.120.51.74] (unknown [106.120.51.74]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190612081638eusmtip29b466797963a373670843704ae62f10e~nZYBjrKm01710717107eusmtip2i;
 Wed, 12 Jun 2019 08:16:37 +0000 (GMT)
Subject: Re: [PATCH v2 6/7] dt-bindings: Add ANX6345 DP/eDP transmitter binding
To: Torsten Duwe <duwe@lst.de>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Thierry Reding <thierry.reding@gmail.com>, David
 Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>, Icenowy Zheng <icenowy@aosc.io>, Sean
 Paul <seanpaul@chromium.org>, Vasily Khoruzhick <anarsoul@gmail.com>, Harald
 Geyer <harald@ccbib.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>
From: Andrzej Hajda <a.hajda@samsung.com>
Message-ID: <354de37d-57bb-6b06-c81a-a2081ea4f222@samsung.com>
Date: Wed, 12 Jun 2019 10:16:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190604122305.07B9068B05@newverein.lst.de>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0iTYRj1/W77lGbvZuWDJdXKHxlpRcEbWST140O6WNGFTGrlh0rbik3t
 TnaxvFKaYc40UyOxhTYvy3VXaZk5s+xiUa6yOxalCQtzOb9J/jvnPOd5n3Pg5WllIRfAx+sS
 RL1OrVFxPkzdPWfbrE81XtGzL9+YQrLszRRJufcREVddNk3ON9lZ0vH7B0f6Ox5Q5GhpJUdq
 rK0s6b3whiJp2WUyYn7/jCVPrOc4cvF5O0UcX24jknKzSUZeV7UiUm0+QxOntYghzoY2aomf
 UOocpARTkQkJRab9wofGbzKhILmdEareXWaFm/3FjFBvfD2kpeazgrkijRO+2+0ywdLvYIXb
 hSaZ0JVho4TqskPC9c5kLlKxyScsRtTEJ4n60MVbfeIcV0uoXXfH7znsLGKTkQunI28e8Dxw
 lvyk0pEPr8TlCJpKXUgifQgGMjM8pBeB69cHemQl/e4Xz8olBPnNaZxEehBkPWxBbpcfXg2X
 mh/K3INxuJGB3JMPWDehcQqC4upexu3i8Az4W93JubEcLwbTjyvDOoODoOD+s2F9PN4IffVm
 JHkU0JzfPeTheW+8AJ6+i3fLNJ4Mlp5ztIT94WX3eUqK+oKH2s+hEl4GFw5f9+h+8NVWI5Pw
 JGg5nclI+BB0lR+j3TkBpyKorar3dF4IjbZ21n2XHspcafW8GQ6vjj4dlgH7wosehRTBF3Lq
 8mhJlkPqcaXkngpdrbWeB/3h4qPf3CmkMo7qZRxVxjiqjPH/3WLEVCB/MdGgjRUNc3Xi7hCD
 WmtI1MWGbN+pNaOhT9syaOu7hqwD2xoQ5pFqjPxOnmuzklUnGfZqGxDwtGqcfO4Or2ilPEa9
 d5+o37lFn6gRDQ1oIs+o/OX7vRxRShyrThB3iOIuUT8ypXjvgGTEz1oYsihMV1VesZw6lbQ8
 qjIwMxfHjO1ozOl20XGbEsM73h4ZiJy/0vKnUNFtiyh5daJpzczggNC3RxzR675Pt6YGzvDK
 nR3U+mTJHkuepfjs2qUHxQ1lN/hV2LjlsSai62WJvS0jWHFrdVZdUEqU5vOB6WGftCvWTHCt
 T28rLcuZpmIMceo5wbTeoP4H7/wXZbADAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHfc9tR3N22rS9CGGMwhI6tpn5LtSiqA4ZZfSh8oId9ORE52pn
 WhbhVIRcBu1DVLPmncAWmVqWUuYUTfOSZZZdzEqDISpRSQPTNlfgtx//5/d/4IGHxmX1ZDCd
 kW0UDNl8lpLyI54vdI9t+tbkk7x54SeLLg30YKi46xtAiw8sOCrvHCDR8K9ZCs0N92KoqPou
 hZpa+kn0o3IMQyWWGglq+DpColctNyhU+2YIQ+PONoCKH3dK0Mf6foAaG67gyNViI5DLMYjt
 kHPVrgWMs9vsgLPZz3GTHVMSrsw0RHD1X26T3OO5CoJ7ZP3ozi5cJ7mGuhKKmxkYkHDNc+Mk
 13bTLuE+XezGuMaafK511ETFr0pgow36HKOwVqsXjTHKRBVSsyoNYtVbNKwqIip5mzpSGR4b
 nSZkZeQKhvDY46x2/F4VdrI96EyBy0aawCJjBr40ZLZAc7sTMwM/WsbUAlhY30V6BwrYWj6N
 e1kO50fMlFeacks225IkZw7BWz19Es8gkOkmoHn22tIqnCkGcL7UKfFYMqYVwNHfcg9TzEb4
 p3GU8rCUiYX22TuEhwlmPSx7NrKUBzFHYVmLifA6q2DP9Qk307Qvo4Gvv2R4YpwJhfO2l7iX
 Q2Dz9I1/rIDvJsqxy0BmXda2LqtYl1WsyyoVgKgDgUKOqEvXiWpW5HViTnY6m6rXNQD3tzzo
 cjU9BOaZww7A0EDpL316dTFJRvK5Yp7OASCNKwOl6kyfZJk0jc87Kxj0KYacLEF0gEj3bRY8
 OChV7/69bGOKKlIVhTSqqIioiK1IqZBeYNqTZEw6bxQyBeGkYPjfw2jfYBNA06OJhvgD6vt3
 via0rwwrUCjWvE1zZn439xXGTuvlyvNxbMJqq84nxLz9YBEfohFPmfYeLn7fu1Pe2vFi39bq
 ibix0tAT+9bdjrF8lj+5ix1TTxY5pTv4Pb2stk4+6O93xLHhTfjusfDodysWayabqq4EnNr/
 odKxK+CQ4J9/2qIkRC2vCsMNIv8X4rr5UkMDAAA=
X-CMS-MailID: 20190612081639eucas1p142d77338598e9f08936f2cd7cd789ec5
X-Msg-Generator: CA
X-RootMTR: 20190604122333epcas2p2f2c750e19a363901c83abb83354f55d4
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190604122333epcas2p2f2c750e19a363901c83abb83354f55d4
References: <20190604122150.29D6468B05@newverein.lst.de>
 <CGME20190604122333epcas2p2f2c750e19a363901c83abb83354f55d4@epcas2p2.samsung.com>
 <20190604122305.07B9068B05@newverein.lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_011643_188955_D6AB9B62 
X-CRM114-Status: GOOD (  21.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04.06.2019 14:23, Torsten Duwe wrote:
> The anx6345 is an ultra-low power DisplayPort/eDP transmitter designed
> for portable devices.
>
> Add a binding document for it.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Torsten Duwe <duwe@suse.de>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  .../devicetree/bindings/display/bridge/anx6345.txt | 57 ++++++++++++++++++++++
>  1 file changed, 57 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/anx6345.txt
>
> diff --git a/Documentation/devicetree/bindings/display/bridge/anx6345.txt b/Documentation/devicetree/bindings/display/bridge/anx6345.txt
> new file mode 100644
> index 000000000000..bd63f6ac107e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/anx6345.txt
> @@ -0,0 +1,57 @@
> +Analogix ANX6345 eDP Transmitter
> +--------------------------------
> +
> +The ANX6345 is an ultra-low power Full-HD eDP transmitter designed for
> +portable devices.
> +
> +Required properties:
> +
> + - compatible		: "analogix,anx6345"
> + - reg			: I2C address of the device
> + - reset-gpios		: Which GPIO to use for reset


You have not specified it's active state, since in driver's code you
named it RESETN I guess it should be active low.


> + - dvdd12-supply	: Regulator for 1.2V digital core power.
> + - dvdd25-supply	: Regulator for 2.5V digital core power.
> + - Video port for LVTTL input, using the DT bindings defined in [1].


Please assign port number for input (I guess 0).


> +
> +Optional properties:
> +
> + - Video port for eDP output (panel or connector) using the DT bindings
> +   defined in [1].


Shouldn't it be also required?


Regards

Andrzej


> +
> +[1]: Documentation/devicetree/bindings/media/video-interfaces.txt
> +
> +Example:
> +
> +anx6345: anx6345@38 {
> +	compatible = "analogix,anx6345";
> +	reg = <0x38>;
> +	reset-gpios = <&pio 3 24 GPIO_ACTIVE_LOW>; /* PD24 */
> +	dvdd25-supply = <&reg_dldo2>;
> +	dvdd12-supply = <&reg_fldo1>;
> +
> +	ports {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		anx6345_in: port@0 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0>;
> +			anx6345_in_tcon0: endpoint@0 {
> +				reg = <0>;
> +				remote-endpoint = <&tcon0_out_anx6345>;
> +			};
> +		};
> +
> +		anx6345_out: port@1 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <1>;
> +
> +			anx6345_out_panel: endpoint@0 {
> +				reg = <0>;
> +				remote-endpoint = <&panel_in_edp>;
> +			};
> +		};
> +	};
> +};



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
