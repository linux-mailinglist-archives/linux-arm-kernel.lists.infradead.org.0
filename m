Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3052E94CC5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 20:26:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GUBnkBbrigoQUJHYLtcf7Z0PTs1G+/e+PhwkL4Ipajc=; b=STDXq7aWtueKF7
	uPbmGyfEPC1w4zzkRVpI+U2hRSKxiSBgfnVA1Dge3AEhanVbcpIvCDHMZ28dQ2iZnDiGmrSPyvaji
	S+4gtdgA7J3tMU/eIz5CKOV0kZOM9wWKHXj4FTJX+RxpQmjPStXhBmRpnsDooVTV4EPzq4riDeTRU
	DuhnidjnPK99oT/oCtlpWX9jEWk7LV/B0FqBKFeqr9e7zemx2+rTzPN1RJOuvts9ADXG8KK/QPgIG
	5KkaakCrDuSVAjpiArsuVuq4dfOa0Tb/Kw8xKnV+5rkF41wOrlOFEyGx0ph5FrBWVfv8XvMK51U7t
	THapg8IgvRz8nFoZRGXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmMo-0001Jq-Gl; Mon, 19 Aug 2019 18:26:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmMJ-00018S-L9
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 18:26:25 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B1D422CF4;
 Mon, 19 Aug 2019 18:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566239183;
 bh=mozUcucGGwNgrbVi8JK9nVIb5jRxn/xNJi2ONZFCZ2Y=;
 h=From:To:Cc:Subject:Date:From;
 b=ntPMtuI91Gm+vd+WT9IwTrwb/hc5EiZdpBpAV1rgdo9Fx3zA2xSneo4AKT3kqclFi
 ltJQpT13dP0js7xm87Yf2G0bwcZXXAcB/nJyuTiT72xs5ELWBFRDPLyVZl9w8bqSZw
 Uf+MMQrCoKDmeEH3dnk9qEJLuBIKn+suO233lLNw=
From: Maxime Ripard <mripard@kernel.org>
To: mchehab@kernel.org,
	sean@mess.org
Subject: [PATCH v2 1/2] dt-bindings: media: Add YAML schemas for the generic
 RC bindings
Date: Mon, 19 Aug 2019 20:26:18 +0200
Message-Id: <20190819182619.29065-1-mripard@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_112623_762815_D3FC08D5 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

The RC controllers have a bunch of generic properties that are needed in a
device tree. Add a YAML schemas for those.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

Changes from v1:
  - Update the list of valid RC map name
---
 .../devicetree/bindings/media/rc.txt          | 118 +-------------
 .../devicetree/bindings/media/rc.yaml         | 145 ++++++++++++++++++
 2 files changed, 146 insertions(+), 117 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/rc.yaml

diff --git a/Documentation/devicetree/bindings/media/rc.txt b/Documentation/devicetree/bindings/media/rc.txt
index d3e7a012bfda..be629f7fa77e 100644
--- a/Documentation/devicetree/bindings/media/rc.txt
+++ b/Documentation/devicetree/bindings/media/rc.txt
@@ -1,117 +1 @@
-The following properties are common to the infrared remote controllers:
-
-- linux,rc-map-name: string, specifies the scancode/key mapping table
-  defined in-kernel for the remote controller. Support values are:
-  * "rc-adstech-dvb-t-pci"
-  * "rc-alink-dtu-m"
-  * "rc-anysee"
-  * "rc-apac-viewcomp"
-  * "rc-asus-pc39"
-  * "rc-asus-ps3-100"
-  * "rc-ati-tv-wonder-hd-600"
-  * "rc-ati-x10"
-  * "rc-avermedia-a16d"
-  * "rc-avermedia-cardbus"
-  * "rc-avermedia-dvbt"
-  * "rc-avermedia-m135a"
-  * "rc-avermedia-m733a-rm-k6"
-  * "rc-avermedia-rm-ks"
-  * "rc-avermedia"
-  * "rc-avertv-303"
-  * "rc-azurewave-ad-tu700"
-  * "rc-behold-columbus"
-  * "rc-behold"
-  * "rc-budget-ci-old"
-  * "rc-cec"
-  * "rc-cinergy-1400"
-  * "rc-cinergy"
-  * "rc-delock-61959"
-  * "rc-dib0700-nec"
-  * "rc-dib0700-rc5"
-  * "rc-digitalnow-tinytwin"
-  * "rc-digittrade"
-  * "rc-dm1105-nec"
-  * "rc-dntv-live-dvbt-pro"
-  * "rc-dntv-live-dvb-t"
-  * "rc-dtt200u"
-  * "rc-dvbsky"
-  * "rc-empty"
-  * "rc-em-terratec"
-  * "rc-encore-enltv2"
-  * "rc-encore-enltv-fm53"
-  * "rc-encore-enltv"
-  * "rc-evga-indtube"
-  * "rc-eztv"
-  * "rc-flydvb"
-  * "rc-flyvideo"
-  * "rc-fusionhdtv-mce"
-  * "rc-gadmei-rm008z"
-  * "rc-geekbox"
-  * "rc-genius-tvgo-a11mce"
-  * "rc-gotview7135"
-  * "rc-hauppauge"
-  * "rc-imon-mce"
-  * "rc-imon-pad"
-  * "rc-iodata-bctv7e"
-  * "rc-it913x-v1"
-  * "rc-it913x-v2"
-  * "rc-kaiomy"
-  * "rc-kworld-315u"
-  * "rc-kworld-pc150u"
-  * "rc-kworld-plus-tv-analog"
-  * "rc-leadtek-y04g0051"
-  * "rc-lirc"
-  * "rc-lme2510"
-  * "rc-manli"
-  * "rc-medion-x10"
-  * "rc-medion-x10-digitainer"
-  * "rc-medion-x10-or2x"
-  * "rc-msi-digivox-ii"
-  * "rc-msi-digivox-iii"
-  * "rc-msi-tvanywhere-plus"
-  * "rc-msi-tvanywhere"
-  * "rc-nebula"
-  * "rc-nec-terratec-cinergy-xs"
-  * "rc-norwood"
-  * "rc-npgtech"
-  * "rc-pctv-sedna"
-  * "rc-pinnacle-color"
-  * "rc-pinnacle-grey"
-  * "rc-pinnacle-pctv-hd"
-  * "rc-pixelview-new"
-  * "rc-pixelview"
-  * "rc-pixelview-002t"
-  * "rc-pixelview-mk12"
-  * "rc-powercolor-real-angel"
-  * "rc-proteus-2309"
-  * "rc-purpletv"
-  * "rc-pv951"
-  * "rc-hauppauge"
-  * "rc-rc5-tv"
-  * "rc-rc6-mce"
-  * "rc-real-audio-220-32-keys"
-  * "rc-reddo"
-  * "rc-snapstream-firefly"
-  * "rc-streamzap"
-  * "rc-tbs-nec"
-  * "rc-technisat-ts35"
-  * "rc-technisat-usb2"
-  * "rc-terratec-cinergy-c-pci"
-  * "rc-terratec-cinergy-s2-hd"
-  * "rc-terratec-cinergy-xs"
-  * "rc-terratec-slim"
-  * "rc-terratec-slim-2"
-  * "rc-tevii-nec"
-  * "rc-tivo"
-  * "rc-total-media-in-hand"
-  * "rc-total-media-in-hand-02"
-  * "rc-trekstor"
-  * "rc-tt-1500"
-  * "rc-twinhan-dtv-cab-ci"
-  * "rc-twinhan1027"
-  * "rc-videomate-k100"
-  * "rc-videomate-s350"
-  * "rc-videomate-tv-pvr"
-  * "rc-winfast"
-  * "rc-winfast-usbii-deluxe"
-  * "rc-su3000"
+This file has been moved to rc.yaml.
diff --git a/Documentation/devicetree/bindings/media/rc.yaml b/Documentation/devicetree/bindings/media/rc.yaml
new file mode 100644
index 000000000000..3d5c154fd230
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/rc.yaml
@@ -0,0 +1,145 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/rc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Generic Infrared Remote Controller Device Tree Bindings
+
+maintainers:
+  - Mauro Carvalho Chehab <mchehab@kernel.org>
+  - Sean Young <sean@mess.org>
+
+properties:
+  $nodename:
+    pattern: "^ir(@[a-f0-9]+)?$"
+
+  linux,rc-map-name:
+    description:
+      Specifies the scancode/key mapping table defined in-kernel for
+      the remote controller.
+    allOf:
+      - $ref: '/schemas/types.yaml#/definitions/string'
+      - enum:
+          - rc-adstech-dvb-t-pci
+          - rc-alink-dtu-m
+          - rc-anysee
+          - rc-apac-viewcomp
+          - rc-astrometa-t2hybrid
+          - rc-asus-pc39
+          - rc-asus-ps3-100
+          - rc-ati-tv-wonder-hd-600
+          - rc-ati-x10
+          - rc-avermedia
+          - rc-avermedia-a16d
+          - rc-avermedia-cardbus
+          - rc-avermedia-dvbt
+          - rc-avermedia-m135a
+          - rc-avermedia-m733a-rm-k6
+          - rc-avermedia-rm-ks
+          - rc-avertv-303
+          - rc-azurewave-ad-tu700
+          - rc-behold
+          - rc-behold-columbus
+          - rc-budget-ci-old
+          - rc-cec
+          - rc-cinergy
+          - rc-cinergy-1400
+          - rc-d680-dmb
+          - rc-delock-61959
+          - rc-dib0700-nec
+          - rc-dib0700-rc5
+          - rc-digitalnow-tinytwin
+          - rc-digittrade
+          - rc-dm1105-nec
+          - rc-dntv-live-dvb-t
+          - rc-dntv-live-dvbt-pro
+          - rc-dtt200u
+          - rc-dvbsky
+          - rc-dvico-mce
+          - rc-dvico-portable
+          - rc-em-terratec
+          - rc-empty
+          - rc-encore-enltv
+          - rc-encore-enltv-fm53
+          - rc-encore-enltv2
+          - rc-evga-indtube
+          - rc-eztv
+          - rc-flydvb
+          - rc-flyvideo
+          - rc-fusionhdtv-mce
+          - rc-gadmei-rm008z
+          - rc-geekbox
+          - rc-genius-tvgo-a11mce
+          - rc-gotview7135
+          - rc-hauppauge
+          - rc-hauppauge
+          - rc-hisi-poplar
+          - rc-hisi-tv-demo
+          - rc-imon-mce
+          - rc-imon-pad
+          - rc-imon-rsc
+          - rc-iodata-bctv7e
+          - rc-it913x-v1
+          - rc-it913x-v2
+          - rc-kaiomy
+          - rc-kworld-315u
+          - rc-kworld-pc150u
+          - rc-kworld-plus-tv-analog
+          - rc-leadtek-y04g0051
+          - rc-lme2510
+          - rc-manli
+          - rc-medion-x10
+          - rc-medion-x10-digitainer
+          - rc-medion-x10-or2x
+          - rc-msi-digivox-ii
+          - rc-msi-digivox-iii
+          - rc-msi-tvanywhere
+          - rc-msi-tvanywhere-plus
+          - rc-nebula
+          - rc-nec-terratec-cinergy-xs
+          - rc-norwood
+          - rc-npgtech
+          - rc-pctv-sedna
+          - rc-pinnacle-color
+          - rc-pinnacle-grey
+          - rc-pinnacle-pctv-hd
+          - rc-pixelview
+          - rc-pixelview-002t
+          - rc-pixelview-mk12
+          - rc-pixelview-new
+          - rc-powercolor-real-angel
+          - rc-proteus-2309
+          - rc-purpletv
+          - rc-pv951
+          - rc-rc5-tv
+          - rc-rc6-mce
+          - rc-real-audio-220-32-keys
+          - rc-reddo
+          - rc-snapstream-firefly
+          - rc-streamzap
+          - rc-su3000
+          - rc-tango
+          - rc-tbs-nec
+          - rc-technisat-ts35
+          - rc-technisat-usb2
+          - rc-terratec-cinergy-c-pci
+          - rc-terratec-cinergy-s2-hd
+          - rc-terratec-cinergy-xs
+          - rc-terratec-slim
+          - rc-terratec-slim-2
+          - rc-tevii-nec
+          - rc-tivo
+          - rc-total-media-in-hand
+          - rc-total-media-in-hand-02
+          - rc-trekstor
+          - rc-tt-1500
+          - rc-twinhan-dtv-cab-ci
+          - rc-twinhan1027
+          - rc-videomate-k100
+          - rc-videomate-s350
+          - rc-videomate-tv-pvr
+          - rc-winfast
+          - rc-winfast-usbii-deluxe
+          - rc-xbox-dvd
+          - rc-zx-irdec
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
