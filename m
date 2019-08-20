Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B4195939
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 10:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3mf0GvdQUAUqoEmjDxajD9GWyIt8pDT38YOzO1c5dzM=; b=cVCELw2pUdQfKM
	CyPduWBGI0GarOCuNdoEgfbJKj1QEyTJCPvPR2cAPwuxNarz8rSS6NuVFUBHGehJ8jvhT0sKQQcjA
	7lyKckuIZNeYQpCcNVBx2uQNXcm/t00nIYth5sDrkt8VF0GjSFisVzDD9hlxFrNJROu//LdPZbwgu
	GwDXooUeZZId5TJpk3IHlbvNixgH03nolXwY60+r+Iau97K4aZadZjRosBK8Xl02CPm7bVx+3APqe
	pgecCEcEdZHPplX435Ep+C37gdddxUqhl8XaTJ5ILRjcKKIoqbwcRnPHRHvQbtQVr/FPKmqcaO3Sz
	A8D30zMjY+Ik/o1963IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzzJG-0001X3-V2; Tue, 20 Aug 2019 08:16:07 +0000
Received: from gofer.mess.org ([2a02:8011:d000:212::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzzIn-0001KR-7U
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 08:15:39 +0000
Received: by gofer.mess.org (Postfix, from userid 1000)
 id 1ECE861074; Tue, 20 Aug 2019 09:15:26 +0100 (BST)
Date: Tue, 20 Aug 2019 09:15:26 +0100
From: Sean Young <sean@mess.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: media: Add YAML schemas for the
 generic RC bindings
Message-ID: <20190820081525.celdosrgcvwoq6e7@gofer.mess.org>
References: <20190819182619.29065-1-mripard@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819182619.29065-1-mripard@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_011537_552888_9483CCC3 
X-CRM114-Status: GOOD (  17.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, mchehab@kernel.org,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 08:26:18PM +0200, Maxime Ripard wrote:
> From: Maxime Ripard <maxime.ripard@bootlin.com>
> 
> The RC controllers have a bunch of generic properties that are needed in a
> device tree. Add a YAML schemas for those.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

For the series (both 1/2 and 2.2):

Reviewed-by: Sean Young <sean@mess.org>

How's tree should this go through?

Thanks
Sean

> 
> ---
> 
> Changes from v1:
>   - Update the list of valid RC map name
> ---
>  .../devicetree/bindings/media/rc.txt          | 118 +-------------
>  .../devicetree/bindings/media/rc.yaml         | 145 ++++++++++++++++++
>  2 files changed, 146 insertions(+), 117 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/media/rc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/rc.txt b/Documentation/devicetree/bindings/media/rc.txt
> index d3e7a012bfda..be629f7fa77e 100644
> --- a/Documentation/devicetree/bindings/media/rc.txt
> +++ b/Documentation/devicetree/bindings/media/rc.txt
> @@ -1,117 +1 @@
> -The following properties are common to the infrared remote controllers:
> -
> -- linux,rc-map-name: string, specifies the scancode/key mapping table
> -  defined in-kernel for the remote controller. Support values are:
> -  * "rc-adstech-dvb-t-pci"
> -  * "rc-alink-dtu-m"
> -  * "rc-anysee"
> -  * "rc-apac-viewcomp"
> -  * "rc-asus-pc39"
> -  * "rc-asus-ps3-100"
> -  * "rc-ati-tv-wonder-hd-600"
> -  * "rc-ati-x10"
> -  * "rc-avermedia-a16d"
> -  * "rc-avermedia-cardbus"
> -  * "rc-avermedia-dvbt"
> -  * "rc-avermedia-m135a"
> -  * "rc-avermedia-m733a-rm-k6"
> -  * "rc-avermedia-rm-ks"
> -  * "rc-avermedia"
> -  * "rc-avertv-303"
> -  * "rc-azurewave-ad-tu700"
> -  * "rc-behold-columbus"
> -  * "rc-behold"
> -  * "rc-budget-ci-old"
> -  * "rc-cec"
> -  * "rc-cinergy-1400"
> -  * "rc-cinergy"
> -  * "rc-delock-61959"
> -  * "rc-dib0700-nec"
> -  * "rc-dib0700-rc5"
> -  * "rc-digitalnow-tinytwin"
> -  * "rc-digittrade"
> -  * "rc-dm1105-nec"
> -  * "rc-dntv-live-dvbt-pro"
> -  * "rc-dntv-live-dvb-t"
> -  * "rc-dtt200u"
> -  * "rc-dvbsky"
> -  * "rc-empty"
> -  * "rc-em-terratec"
> -  * "rc-encore-enltv2"
> -  * "rc-encore-enltv-fm53"
> -  * "rc-encore-enltv"
> -  * "rc-evga-indtube"
> -  * "rc-eztv"
> -  * "rc-flydvb"
> -  * "rc-flyvideo"
> -  * "rc-fusionhdtv-mce"
> -  * "rc-gadmei-rm008z"
> -  * "rc-geekbox"
> -  * "rc-genius-tvgo-a11mce"
> -  * "rc-gotview7135"
> -  * "rc-hauppauge"
> -  * "rc-imon-mce"
> -  * "rc-imon-pad"
> -  * "rc-iodata-bctv7e"
> -  * "rc-it913x-v1"
> -  * "rc-it913x-v2"
> -  * "rc-kaiomy"
> -  * "rc-kworld-315u"
> -  * "rc-kworld-pc150u"
> -  * "rc-kworld-plus-tv-analog"
> -  * "rc-leadtek-y04g0051"
> -  * "rc-lirc"
> -  * "rc-lme2510"
> -  * "rc-manli"
> -  * "rc-medion-x10"
> -  * "rc-medion-x10-digitainer"
> -  * "rc-medion-x10-or2x"
> -  * "rc-msi-digivox-ii"
> -  * "rc-msi-digivox-iii"
> -  * "rc-msi-tvanywhere-plus"
> -  * "rc-msi-tvanywhere"
> -  * "rc-nebula"
> -  * "rc-nec-terratec-cinergy-xs"
> -  * "rc-norwood"
> -  * "rc-npgtech"
> -  * "rc-pctv-sedna"
> -  * "rc-pinnacle-color"
> -  * "rc-pinnacle-grey"
> -  * "rc-pinnacle-pctv-hd"
> -  * "rc-pixelview-new"
> -  * "rc-pixelview"
> -  * "rc-pixelview-002t"
> -  * "rc-pixelview-mk12"
> -  * "rc-powercolor-real-angel"
> -  * "rc-proteus-2309"
> -  * "rc-purpletv"
> -  * "rc-pv951"
> -  * "rc-hauppauge"
> -  * "rc-rc5-tv"
> -  * "rc-rc6-mce"
> -  * "rc-real-audio-220-32-keys"
> -  * "rc-reddo"
> -  * "rc-snapstream-firefly"
> -  * "rc-streamzap"
> -  * "rc-tbs-nec"
> -  * "rc-technisat-ts35"
> -  * "rc-technisat-usb2"
> -  * "rc-terratec-cinergy-c-pci"
> -  * "rc-terratec-cinergy-s2-hd"
> -  * "rc-terratec-cinergy-xs"
> -  * "rc-terratec-slim"
> -  * "rc-terratec-slim-2"
> -  * "rc-tevii-nec"
> -  * "rc-tivo"
> -  * "rc-total-media-in-hand"
> -  * "rc-total-media-in-hand-02"
> -  * "rc-trekstor"
> -  * "rc-tt-1500"
> -  * "rc-twinhan-dtv-cab-ci"
> -  * "rc-twinhan1027"
> -  * "rc-videomate-k100"
> -  * "rc-videomate-s350"
> -  * "rc-videomate-tv-pvr"
> -  * "rc-winfast"
> -  * "rc-winfast-usbii-deluxe"
> -  * "rc-su3000"
> +This file has been moved to rc.yaml.
> diff --git a/Documentation/devicetree/bindings/media/rc.yaml b/Documentation/devicetree/bindings/media/rc.yaml
> new file mode 100644
> index 000000000000..3d5c154fd230
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/rc.yaml
> @@ -0,0 +1,145 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/rc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Generic Infrared Remote Controller Device Tree Bindings
> +
> +maintainers:
> +  - Mauro Carvalho Chehab <mchehab@kernel.org>
> +  - Sean Young <sean@mess.org>
> +
> +properties:
> +  $nodename:
> +    pattern: "^ir(@[a-f0-9]+)?$"
> +
> +  linux,rc-map-name:
> +    description:
> +      Specifies the scancode/key mapping table defined in-kernel for
> +      the remote controller.
> +    allOf:
> +      - $ref: '/schemas/types.yaml#/definitions/string'
> +      - enum:
> +          - rc-adstech-dvb-t-pci
> +          - rc-alink-dtu-m
> +          - rc-anysee
> +          - rc-apac-viewcomp
> +          - rc-astrometa-t2hybrid
> +          - rc-asus-pc39
> +          - rc-asus-ps3-100
> +          - rc-ati-tv-wonder-hd-600
> +          - rc-ati-x10
> +          - rc-avermedia
> +          - rc-avermedia-a16d
> +          - rc-avermedia-cardbus
> +          - rc-avermedia-dvbt
> +          - rc-avermedia-m135a
> +          - rc-avermedia-m733a-rm-k6
> +          - rc-avermedia-rm-ks
> +          - rc-avertv-303
> +          - rc-azurewave-ad-tu700
> +          - rc-behold
> +          - rc-behold-columbus
> +          - rc-budget-ci-old
> +          - rc-cec
> +          - rc-cinergy
> +          - rc-cinergy-1400
> +          - rc-d680-dmb
> +          - rc-delock-61959
> +          - rc-dib0700-nec
> +          - rc-dib0700-rc5
> +          - rc-digitalnow-tinytwin
> +          - rc-digittrade
> +          - rc-dm1105-nec
> +          - rc-dntv-live-dvb-t
> +          - rc-dntv-live-dvbt-pro
> +          - rc-dtt200u
> +          - rc-dvbsky
> +          - rc-dvico-mce
> +          - rc-dvico-portable
> +          - rc-em-terratec
> +          - rc-empty
> +          - rc-encore-enltv
> +          - rc-encore-enltv-fm53
> +          - rc-encore-enltv2
> +          - rc-evga-indtube
> +          - rc-eztv
> +          - rc-flydvb
> +          - rc-flyvideo
> +          - rc-fusionhdtv-mce
> +          - rc-gadmei-rm008z
> +          - rc-geekbox
> +          - rc-genius-tvgo-a11mce
> +          - rc-gotview7135
> +          - rc-hauppauge
> +          - rc-hauppauge
> +          - rc-hisi-poplar
> +          - rc-hisi-tv-demo
> +          - rc-imon-mce
> +          - rc-imon-pad
> +          - rc-imon-rsc
> +          - rc-iodata-bctv7e
> +          - rc-it913x-v1
> +          - rc-it913x-v2
> +          - rc-kaiomy
> +          - rc-kworld-315u
> +          - rc-kworld-pc150u
> +          - rc-kworld-plus-tv-analog
> +          - rc-leadtek-y04g0051
> +          - rc-lme2510
> +          - rc-manli
> +          - rc-medion-x10
> +          - rc-medion-x10-digitainer
> +          - rc-medion-x10-or2x
> +          - rc-msi-digivox-ii
> +          - rc-msi-digivox-iii
> +          - rc-msi-tvanywhere
> +          - rc-msi-tvanywhere-plus
> +          - rc-nebula
> +          - rc-nec-terratec-cinergy-xs
> +          - rc-norwood
> +          - rc-npgtech
> +          - rc-pctv-sedna
> +          - rc-pinnacle-color
> +          - rc-pinnacle-grey
> +          - rc-pinnacle-pctv-hd
> +          - rc-pixelview
> +          - rc-pixelview-002t
> +          - rc-pixelview-mk12
> +          - rc-pixelview-new
> +          - rc-powercolor-real-angel
> +          - rc-proteus-2309
> +          - rc-purpletv
> +          - rc-pv951
> +          - rc-rc5-tv
> +          - rc-rc6-mce
> +          - rc-real-audio-220-32-keys
> +          - rc-reddo
> +          - rc-snapstream-firefly
> +          - rc-streamzap
> +          - rc-su3000
> +          - rc-tango
> +          - rc-tbs-nec
> +          - rc-technisat-ts35
> +          - rc-technisat-usb2
> +          - rc-terratec-cinergy-c-pci
> +          - rc-terratec-cinergy-s2-hd
> +          - rc-terratec-cinergy-xs
> +          - rc-terratec-slim
> +          - rc-terratec-slim-2
> +          - rc-tevii-nec
> +          - rc-tivo
> +          - rc-total-media-in-hand
> +          - rc-total-media-in-hand-02
> +          - rc-trekstor
> +          - rc-tt-1500
> +          - rc-twinhan-dtv-cab-ci
> +          - rc-twinhan1027
> +          - rc-videomate-k100
> +          - rc-videomate-s350
> +          - rc-videomate-tv-pvr
> +          - rc-winfast
> +          - rc-winfast-usbii-deluxe
> +          - rc-xbox-dvd
> +          - rc-zx-irdec
> -- 
> 2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
