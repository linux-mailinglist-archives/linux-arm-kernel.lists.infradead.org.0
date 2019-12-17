Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60DBC122EB4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 15:28:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IYtgduzse7hN6VRg3VKP/YW4/LliTt33zcfctO+QB9c=; b=hfnWkEQ3FvggHu
	/U0o6fTSeaE6zFyYdn83/gdCVALUzo1ZSJ9EmZG/OtyWK6UWbL1rYtD+c8mp7xo/ai5jwzCtuidZu
	FyuKhttiuTEX1LWOtXOWY++3ENtbi0wh7LxAE497ritNy0qYLJMSoc+JmXySpjuyyt+QEE5vt+J8d
	JlL3BNPV7DMZZ9y+83dhyRsWssJjF7Hx6C95+UGgHR3RePuFHiVtJWH4VvNGfDg2Vcj5PxD4cFYkY
	6+JMOQV2vLuekbb8z5BjPIXLLKpQwWfF/f94rgXWcUymUbujOe0MLshGzk3LAIwM9lTEWaetDduTh
	Kx2TnV6eL3Kks3RL5A1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihDqA-0006uV-Up; Tue, 17 Dec 2019 14:28:46 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihDpw-0006p1-SX; Tue, 17 Dec 2019 14:28:35 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 07CD61EAE;
 Tue, 17 Dec 2019 09:28:24 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 17 Dec 2019 09:28:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=o7MJ2oxooSAZLrE4IgKBFIHl/Fq
 uvlsScI7dDq2S0Lo=; b=hzl3RxcCTOf/6vakmast5z/ssSN6fGEGQslELZEROQ3
 Frk7iXOG9tka5Q9WYrFjC/s8fkuSuROpKxvkLx9TkuD5AA15EFHmVBNUFH4nC7KO
 czKIYqDJ2IfAm2CD5mEzM2hw0F9A35p63gDQUDV7MC+ms9U9Ja13sXsvttjKpy0G
 mpcZ/WgegUv4YSjDtIcpHYFwCUyqWvprtkA/bOCzwqx4fh0VGv3Dwdir50dq2ScV
 kvntqKv26XwNpqLNCm+TJ+ZsfdrKqv2ZJd3q7B4+vFXuBRb3jsgzFbuQdJFmv5je
 +dCwtpPwEmYgBLmiRxUZemO1gqL1JcREZyFU8/Kevrw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=o7MJ2o
 xooSAZLrE4IgKBFIHl/FquvlsScI7dDq2S0Lo=; b=Pj8zWa8SuQBOs6JWhrGdUr
 w5dAZH6vBwr25rTvG16U+YHnDjv6UhrVdGT7wvlHKzLbuZHb41bwqZMlxBw1sbQO
 KqIZrUUfSJC53mtKc85UqL3vw3YLIP9qFEFMgTHiTJKgCtbu+guYOiTyKBMUq3PE
 Tpo4ZrxZ1YwrbTomSpOx+jfMJ9slBwWc3nfl+OQdar6R8ZdqgMsbxkry+rLjNTer
 1Iax9QpBMSlGZq/KKF6cUC81qSIrvlWH4nQKjMkiSEZTqe9N15FjvQ7LJAp+nwyL
 CxZYQZZnLzGVRQh8VE/3P431BVGieKHdTEfT08sdqmJPtxLbWecRYPuNU6YklynQ
 ==
X-ME-Sender: <xms:B-b4XaxYogkGZ-VkhbmZAG8ZW-NeQdkGcAS8s1TZJWAEIkLrLEMZrQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddtjedgieegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggv
 rhhnohdrthgvtghhnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:B-b4XXUAC8RJFDB70axFrRUjezaNbOEDUp4OeYRUgBeVlokkhlNd3g>
 <xmx:B-b4XfQkfHMZglJ4EjBq084hYFss1JXRAvMRoQ_r3bCpqSiYZXp04w>
 <xmx:B-b4XeM52bBJz35B3keMx4xLX-ahcscnJRrJlGeUlMda_qbJwUo1Qw>
 <xmx:COb4XYoVYHxDAt4SzjQwApM83lGLo5BlzAgc4Dj9NSlurRM0FrE-Nw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 922EA80066;
 Tue, 17 Dec 2019 09:28:22 -0500 (EST)
Date: Tue, 17 Dec 2019 15:28:21 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH v21 1/2] Documentation: bridge: Add documentation for
 ps8640 DT properties
Message-ID: <20191217142821.xitumpvfg52heb4t@gilmour.lan>
References: <20191216135834.27775-1-enric.balletbo@collabora.com>
 <20191216135834.27775-2-enric.balletbo@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216135834.27775-2-enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_062833_087850_5EB9718A 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulrich Hecht <uli@fpond.eu>,
 drinkcat@chromium.org, Jitao Shi <jitao.shi@mediatek.com>,
 devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 hsinyi@chromium.org, matthias.bgg@gmail.com,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 02:58:33PM +0100, Enric Balletbo i Serra wrote:
> From: Jitao Shi <jitao.shi@mediatek.com>
>
> Add documentation for DT properties supported by
> ps8640 DSI-eDP converter.
>
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> Acked-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Ulrich Hecht <uli@fpond.eu>
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---
>
> Changes in v21: None
> Changes in v19: None
> Changes in v18: None
> Changes in v17: None
> Changes in v16: None
> Changes in v15: None
> Changes in v14: None
> Changes in v13: None
> Changes in v12: None
> Changes in v11: None
>
>  .../bindings/display/bridge/ps8640.txt        | 44 +++++++++++++++++++
>  1 file changed, 44 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/ps8640.txt
>
> diff --git a/Documentation/devicetree/bindings/display/bridge/ps8640.txt b/Documentation/devicetree/bindings/display/bridge/ps8640.txt
> new file mode 100644
> index 000000000000..7b13f92f7359
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/ps8640.txt
> @@ -0,0 +1,44 @@
> +ps8640-bridge bindings
> +
> +Required properties:
> +	- compatible: "parade,ps8640"
> +	- reg: first page address of the bridge.
> +	- sleep-gpios: OF device-tree gpio specification for PD pin.
> +	- reset-gpios: OF device-tree gpio specification for reset pin.
> +	- vdd12-supply: OF device-tree regulator specification for 1.2V power.
> +	- vdd33-supply: OF device-tree regulator specification for 3.3V power.
> +	- ports: The device node can contain video interface port nodes per
> +		 the video-interfaces bind[1]. For port@0,set the reg = <0> as
> +		 ps8640 dsi in and port@1,set the reg = <1> as ps8640 eDP out.
> +
> +Optional properties:
> +	- mode-sel-gpios: OF device-tree gpio specification for mode-sel pin.
> +[1]: Documentation/devicetree/bindings/media/video-interfaces.txt
> +
> +Example:
> +	edp-bridge@18 {
> +		compatible = "parade,ps8640";
> +		reg = <0x18>;
> +		sleep-gpios = <&pio 116 GPIO_ACTIVE_LOW>;
> +		reset-gpios = <&pio 115 GPIO_ACTIVE_LOW>;
> +		mode-sel-gpios = <&pio 92 GPIO_ACTIVE_HIGH>;
> +		vdd12-supply = <&ps8640_fixed_1v2>;
> +		vdd33-supply = <&mt6397_vgp2_reg>;
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			port@0 {
> +				reg = <0>;
> +				ps8640_in: endpoint {
> +					remote-endpoint = <&dsi0_out>;
> +				};
> +			};
> +			port@1 {
> +				reg = <1>;
> +				ps8640_out: endpoint {
> +					remote-endpoint = <&panel_in>;
> +				};
> +			};
> +		};
> +	};

It's not really fair to ask this after the rough history of this
patchset apparently, but bindings should be submitted in the YAML
format now.

This wouldn't be nice to stop it from going in just because of this,
so can you send a subsequent patch fixing this?

Thanks!
Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
