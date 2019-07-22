Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CB9708EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 20:52:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H1FIDw3HYpaHDSMGhDfl0yHPiUcpUFbKw6RFM/Ozdh8=; b=Kv5m7PgkCVnC6j
	hFv4UK7ZEHbgF4kSWNHn/DoTZD8Pl3GiXwXGwzldhv8Ap9gr56jICG57+TQS1wvuLprGjdlCRxq0s
	yUBfDd//0f/M+MRaNCP/wW3oG3V1Io3ZtTo7NwfLVbuJujQiqK1M5y3ITrQl/92XVS1pFP/0gPnZt
	PrR5jLeIem7WLHQ8qVdk7Tx9Kn0KPISAxp5h+CeRvMH3QVbrBYbks0Wi7a3jXXXJIZh5aUDYlUdAk
	LlZnvxmQDnPBFpDTBaBbRLizXVHg9iaBUrJzjtprkNLBMW6McEAoOxEHhmT0Su3BogHk2GglDCXgS
	JlDDoKAICduhNVp00KTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpdPm-0003kl-8u; Mon, 22 Jul 2019 18:52:02 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpdPW-0003kD-Jx
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 18:51:48 +0000
Received: by mail-ot1-x341.google.com with SMTP id n5so41380335otk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 11:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xjJupYIc6xWc8gLFfPCwhmNtFxBF1s29Cj+SrhBx5Is=;
 b=bm8hR45ywmygZ8NW0eNp6YDk/NoCpAjuyMaoMf5JVUbHHpaC7V+k2GEyK/Sxbub2Io
 10P9Eqp7mwTpApV9roRtHUIppuq9fRxcVehIInvSLpuWNk3JdidqKDG7RO5zsMfYiz04
 M2CRABNHRuqfxifSuEgV7kO5xBzUcuv5s0n3ma/hI9X3iO+XsAlF6LZjgFeAQMq1mlNZ
 q7C/CD1aTbdIdyP0ZkBhU+q765+neevpRfJfRG/X7YJSC3P2MuuwZ/Ulup6VUHuwLSEi
 JMn8Jt2ACGXiSOJ6H/2giqHKf7zjFeZtRoF1Fw7MhYblXHt0DLaYrP42uXq1SO9Rz01j
 qpYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xjJupYIc6xWc8gLFfPCwhmNtFxBF1s29Cj+SrhBx5Is=;
 b=ZERadcb6n0ail0RX4Q2yG0lQtzM4fUPiVtdNwWLtnO7SnAeNazqI9kT3WuNb3dNwyN
 +GPm8W/KzOLfj08EkWcwkaZtILnFtkj+1MmxfDaWnYfpeVAt7pYMhByL2gWjemuvmoS5
 QxdSL6O0pnzh8snOl8TDj5U1xWDi1dSf82dbYmT4NG+I1r80g5X8fCg8qMLecWdltraU
 iU/izleb/Slt10qNVhLDs/xiUYYH2twED9d/eG3QSKXHuHVvUubXDs74umY4E3ol/bTA
 HyWprW255GftN4+IwqZH32c4L76m209s5uEkAs+/zuCDnC5foYihjQI4Abbf81j1VvNH
 CUBw==
X-Gm-Message-State: APjAAAVkfVWET7z2RAgXj+h0LjYJ5rciCeJSjXq5cmdZob9jyYHuwH89
 4UR+gOfTiqDpQJcMRt5/A27lPSblxztqpiqkYJQ=
X-Google-Smtp-Source: APXvYqxJ1cmuAUD5O0KF/ePYZbRJdJ5aTWAG9K+yO/+94qQbz28EEpCc4OtsYtwRR4vQw7JKfy3sOGJoQP+tXdUEhp8=
X-Received: by 2002:a9d:4b02:: with SMTP id q2mr16501766otf.312.1563821505561; 
 Mon, 22 Jul 2019 11:51:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190722151202.5506768B20@verein.lst.de>
In-Reply-To: <20190722151202.5506768B20@verein.lst.de>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Mon, 22 Jul 2019 11:51:36 -0700
Message-ID: <CA+E=qVdu3Hf7ufst-t_CiWkquximGFX8B2RcoQ1x0m++cc8n8Q@mail.gmail.com>
Subject: Re: [PATCH v3 6/7] dt-bindings: Add ANX6345 DP/eDP transmitter binding
To: Torsten Duwe <duwe@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_115146_666123_DD7E476F 
X-CRM114-Status: GOOD (  18.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 devicetree <devicetree@vger.kernel.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 8:12 AM Torsten Duwe <duwe@lst.de> wrote:
>
> The anx6345 is an ultra-low power DisplayPort/eDP transmitter designed
> for portable devices.
>
> Add a binding document for it.

I believe you'll have to convert it to yaml format.

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
> index 000000000000..0af092d101c5
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
> + - compatible          : "analogix,anx6345"
> + - reg                 : I2C address of the device
> + - reset-gpios         : Which GPIO to use for reset (active low)
> + - dvdd12-supply       : Regulator for 1.2V digital core power.
> + - dvdd25-supply       : Regulator for 2.5V digital core power.
> + - Video port 0 for LVTTL input, using the DT bindings defined in [1].
> +
> +Optional properties:
> +
> + - Video port 1 for eDP output (panel or connector) using the DT bindings
> +   defined in [1].
> +
> +[1]: Documentation/devicetree/bindings/media/video-interfaces.txt
> +
> +Example:
> +
> +anx6345: anx6345@38 {
> +       compatible = "analogix,anx6345";
> +       reg = <0x38>;
> +       reset-gpios = <&pio 3 24 GPIO_ACTIVE_LOW>; /* PD24 */
> +       dvdd25-supply = <&reg_dldo2>;
> +       dvdd12-supply = <&reg_fldo1>;
> +
> +       ports {
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +
> +               anx6345_in: port@0 {
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +                       reg = <0>;
> +                       anx6345_in_tcon0: endpoint@0 {
> +                               reg = <0>;
> +                               remote-endpoint = <&tcon0_out_anx6345>;
> +                       };
> +               };
> +
> +               anx6345_out: port@1 {
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +                       reg = <1>;
> +
> +                       anx6345_out_panel: endpoint@0 {
> +                               reg = <0>;
> +                               remote-endpoint = <&panel_in_edp>;
> +                       };
> +               };
> +       };
> +};
> --
> 2.16.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
