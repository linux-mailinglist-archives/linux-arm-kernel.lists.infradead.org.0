Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB4D276F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 09:32:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U7L23x7JoSsGDXLVx74by0nHzXqS8dPeGPh+AVhWkH4=; b=WgZeIlklumusUz
	VxMoKPV0ryaGLNwCH2fZkWyiax3/CwiaweRpxuPWj4q9lZIpjHE4TY+Q2AKNCZElOT5zpB+yboURL
	MgwdZu3nglxMHOjcvTPfpfRT31zLIqrHnJjw/P0w0zFM2xm4tk7OVOZBCLdLdjs4hDB3z/EFzVvY5
	GNNJQNlUExbFgLxq75wWGuqF3zmDxhd+0qJgAnskeSfip2F3Zw5OSYfydTVIge1kwWvUA+t0cCYnM
	ah8E3Ih5e0rML/drsS9396gHjlNU/X4Wf48842NBsDIGFMyC731TumXWYiDsSCQ0J70pMCFW4Om6P
	tCDLZd9HEmoG0RvZfRUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTiDB-0003wf-VL; Thu, 23 May 2019 07:32:25 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTiD4-0003vU-Do
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 07:32:20 +0000
Received: from pendragon.ideasonboard.com (85-76-106-214-nat.elisa-mobile.fi
 [85.76.106.214])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9139B337;
 Thu, 23 May 2019 09:32:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1558596722;
 bh=/W2SCMLQvihCKvM7mxR3BE+Y239YuZ1nvKLwS2lS22s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=b6vY6YIDsBJ6mfZ1r7Cjz+6RS7YWDC4UqQv/GhyPYWnwLaqWsHk4FioMivLW63tzk
 cr3JIVwoKX+zuCtO47ebgD+Lo5+6DQctzjSOf0UjhryORcxtcJ/jenCG8PBz3Y3v+N
 RFtQvviCFCcE6TLV0l9RHjyP2CIv6RzPEGaxsvFk=
Date: Thu, 23 May 2019 10:31:41 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Torsten Duwe <duwe@lst.de>
Subject: Re: [PATCH 5/6] dt-bindings: Add ANX6345 DP/eDP transmitter binding
Message-ID: <20190523073141.GB4745@pendragon.ideasonboard.com>
References: <20190523065013.2719D68B05@newverein.lst.de>
 <20190523065400.BD9EB68B05@newverein.lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523065400.BD9EB68B05@newverein.lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_003218_779601_508A276B 
X-CRM114-Status: GOOD (  18.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Andrzej Hajda <a.hajda@samsung.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Harald Geyer <harald@ccbib.org>, Sean Paul <seanpaul@chromium.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Torsten,

Thank you for the patch.

On Thu, May 23, 2019 at 08:54:00AM +0200, Torsten Duwe wrote:
> From: Icenowy Zheng <icenowy@aosc.io>
> 
> The anx6345 is an ultra-low power DisplayPort/eDP transmitter designed
> for portable devices.
> 
> Add a binding document for it.
> 
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Torsten Duwe <duwe@suse.de>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  .../bindings/display/bridge/anx6345.txt       | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/anx6345.txt
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/anx6345.txt b/Documentation/devicetree/bindings/display/bridge/anx6345.txt
> new file mode 100644
> index 000000000000..e79a11348d11
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/anx6345.txt
> @@ -0,0 +1,56 @@
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
> + - dvdd12-supply	: Regulator for 1.2V digital core power.
> + - dvdd25-supply	: Regulator for 2.5V digital core power.
> +
> +Optional properties:
> +
> + - Video ports for RGB input and eDP output using the DT bindings
> +   defined in [1]
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

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
