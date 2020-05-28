Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 342EF1E6B92
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 21:48:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AsfxWTUGWbawCEAUA9r9I+mJibgDfIUSl8JiRgP8KS4=; b=UIFaqu62F88Pnk
	1JKnZCEmjAzk5IEbbzu9dWFvLquShDChzdM7PMd+hbHT7l1Th4yR7rQTJMGzBaInNLfrp4DNPZeTr
	pzsDHA8XUYDR8sksK7fdyu8zjomsTh/iURrKvfL657SnPHW2fkK/KjR9dTeUEY2c/QlaFZ7fHp88U
	kmC5csi9RkCta4TQ46UpvVwPs0fSBvXaM/jdwR4VTvXEffM3s2kneUxBfC6Vt23peztGEs8osPzp7
	8Qmen1EITjpe4kIgTJ30qlFfr2MsMW4e0aCmo1bqY5tORyyOH9yRys2cLDOhfaSigTgcvP+dzt+A0
	RuV0HUScYWDcid+scM1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeOWE-0004Vf-W1; Thu, 28 May 2020 19:48:47 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeOW6-0004Ue-Tw
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 19:48:40 +0000
Received: by mail-il1-f196.google.com with SMTP id a14so144300ilk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 12:48:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Go6xO5WoC3zEQRJwVmH9bUe++RxJSEnlCwIRvUl4+dQ=;
 b=eD8Q5wyemmaHaOvvvKq4glXhRO7GcSkZlyl2qKGhnVQjvQdmDdRoQKKWJziT2LnJHS
 BmAL2QZczx3cvcWVvN2IGDrx3WbSnIM2m+f1Uaoe9NJJzkfYKgn82qshMznb4prPCs1t
 3rUEl+xUE/wtufhu4chBEi0vm62TFTM9/HE9+1Daedf/NcLcpvREkJ7pO4HeWdBr1aPD
 6vGsaJz1F1WnQaWofAjMo9KQnQ5Dsx01iSDVBRxkTXtDVEJvIPGpRdpTaX6d+Ms2pB19
 FFBCmQzl2x16K57nRbwYGMhCk2bbcJLdCjfehrf55u+4HWvYtiOlbRyR/flAtTQ1Gb1j
 eYdw==
X-Gm-Message-State: AOAM531n9XqYhmwlxgDYfSJMidXA66msC7mxt2zDQYI5Nt2DBijxWKLT
 z59SXpZnhD8LSAuRstmdHQ==
X-Google-Smtp-Source: ABdhPJxdVc8I3c5Wd+1g7euGl5ed0EkKErorxTkquQmiCvhOLVCyVbgdKy+eSwMN7mVRv2h0Ec4qUQ==
X-Received: by 2002:a92:c809:: with SMTP id v9mr4288575iln.209.1590695318014; 
 Thu, 28 May 2020 12:48:38 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id y13sm2960819iob.51.2020.05.28.12.48.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 12:48:16 -0700 (PDT)
Received: (nullmailer pid 568649 invoked by uid 1000);
 Thu, 28 May 2020 19:48:04 -0000
Date: Thu, 28 May 2020 13:48:04 -0600
From: Rob Herring <robh@kernel.org>
To: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
Subject: Re: [RFC PATCH 1/6] dt-bindings: display/bridge: Add binding for
 input mux bridge
Message-ID: <20200528194804.GA541078@bogus>
References: <cover.1589548223.git.agx@sigxcpu.org>
 <14a44a664f40584ffa25c1764aab5ebf97809c71.1589548223.git.agx@sigxcpu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <14a44a664f40584ffa25c1764aab5ebf97809c71.1589548223.git.agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_124838_962982_FF23FAD1 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sam Ravnborg <sam@ravnborg.org>, Anson Huang <Anson.Huang@nxp.com>,
 David Airlie <airlied@linux.ie>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Lucas Stach <l.stach@pengutronix.de>,
 Robert Chiras <robert.chiras@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 03:12:10PM +0200, Guido G=FCnther wrote:
> The bridge allows to select the input source via a mux controller.
> =

> Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> ---
>  .../display/bridge/mux-input-bridge.yaml      | 123 ++++++++++++++++++
>  1 file changed, 123 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/mux-=
input-bridge.yaml
> =

> diff --git a/Documentation/devicetree/bindings/display/bridge/mux-input-b=
ridge.yaml b/Documentation/devicetree/bindings/display/bridge/mux-input-bri=
dge.yaml
> new file mode 100644
> index 000000000000..4029cf63ee5c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/mux-input-bridge.y=
aml
> @@ -0,0 +1,123 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/mux-input-bridge.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: DRM input source selection via multiplexer

DRM is not a hardware thing.

The graph binding is already designed to support muxing. Generally, =

multiple endpoints on an input node is a mux. So either the device with =

the input ports knows how to select the input, or you just need a =

mux-control property for the port to have some other device implement =

the control.

You could do it like you have below. That would be appropriate if =

there's a separate h/w device controlling the muxing. Say for example =

some board level device controlled by i2c.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
