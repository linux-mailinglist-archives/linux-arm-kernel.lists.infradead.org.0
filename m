Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC64A63C59
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 22:01:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cnVuupG6YtAjnamuXnSLsfcykSke/daLbYkH/jCsEZc=; b=CgdVV+dNcs+0io
	+Q2Gz4mTka2btBI8lp6xcW2pDt6s4ztqWBS1eVIdKrlZOM0VOL7h7BDF3VNdHvwQlsNy5YSDFPko4
	qiGTAG16jDXyYwzOWLkwRk3g26lCDkOoe1y4XETmM+WrNJTygoxxOln8OLUcIK+2IcxGabfIXbapU
	TWdzLske/L1uFFQmwFDivDP0jI19H8e6ZDsJWgyVdJ7D0JtbLHXpL+SI8Fh6VpbB48zpHR9wu4Zi0
	CZtD+RfBD9ogSZrSQXTOD8ztm+86uT0iL32f2Bs/CSzjzH1PfpbjlQ7K5/MJbijCn14P+9I3bpQkg
	5xeA0StIU/Ohb2eqLZOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkwIz-0003IQ-V4; Tue, 09 Jul 2019 20:01:38 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkwIm-0003Hj-Qs; Tue, 09 Jul 2019 20:01:26 +0000
Received: by mail-io1-f65.google.com with SMTP id q22so24040377iog.4;
 Tue, 09 Jul 2019 13:01:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=B7/QcW7r5MQOGhPEoQO1LbngGWl8Cp/c3zBrZbGmskM=;
 b=oZZQwJ56okiBgLsO5L+Lo7GmDuaDdTF8dvuLO+2okSyiak2Ry7zwsr8WR+KgRvfq2g
 /81NMzmlZoFP8VA6PfdkBdnU06kTNg0FE4tPwtcM4HO0qSCQOHO5aIZrgBIbJQvTkuDJ
 9dvBd1C8jRkcuzKGyJ6IHbMeFro1fPM4TEQsTxyHb3L23sK4BsZKunKDRGdknsH0ZO/9
 29INDGb7NJhxQ7LDeK6RUiqCfaQ8Yubylsdh5Rmdyt7Fqmq+3WATYrxvmq2Z0/k8yOgq
 SqdXxCr6Uh6J0/MqFoU6jBynEnv4i2VTtdMnpb/fHgp0aLCTBaeVGjQM/QnUeovvNXKk
 s0aQ==
X-Gm-Message-State: APjAAAVu8kQqoNcBZ5eAbFuQy33MCZREwEIr6fH1j5e1l+Ny0vWUGKSI
 OZ2/0aM5B5fADmYLwYmhbw==
X-Google-Smtp-Source: APXvYqytSsRPVq3GTbSVDnVsku/qIgTDId3MOrt1dloK9TJz1SnYYCUTN2WCuwk38In8AaLhppOnLQ==
X-Received: by 2002:a02:7f15:: with SMTP id r21mr31288185jac.120.1562702483721; 
 Tue, 09 Jul 2019 13:01:23 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id s2sm15525321ioj.8.2019.07.09.13.01.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 13:01:23 -0700 (PDT)
Date: Tue, 9 Jul 2019 14:01:21 -0600
From: Rob Herring <robh@kernel.org>
To: Cheng-Yi Chiang <cychiang@chromium.org>
Subject: Re: [PATCH 5/7] ASoC: rockchip: rockchip-max98090: Add node for HDMI
Message-ID: <20190709200121.GA19118@bogus>
References: <20190603043251.226549-1-cychiang@chromium.org>
 <20190603043251.226549-6-cychiang@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603043251.226549-6-cychiang@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_130124_874455_CA013D08 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Takashi Iwai <tiwai@suse.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 linux-rockchip@lists.infradead.org, dgreid@chromium.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, tzungbi@chromium.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dianders@chromium.org,
 linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 12:32:49PM +0800, Cheng-Yi Chiang wrote:
> Let user specify HDMI node so machine driver can use it to let codec
> driver register callback on correct hdmi-notifier.
> 
> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> ---
>  Documentation/devicetree/bindings/sound/rockchip-max98090.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/rockchip-max98090.txt b/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
> index a805aa99ad75..dae57c14864e 100644
> --- a/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
> +++ b/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
> @@ -7,6 +7,7 @@ Required properties:
>    connected to the CODEC
>  - rockchip,audio-codec: The phandle of the MAX98090 audio codec
>  - rockchip,headset-codec: The phandle of Ext chip for jack detection
> +- rockchip,hdmi: The phandle of HDMI node for HDMI jack detection
>  
>  Example:
>  
> @@ -16,4 +17,5 @@ sound {
>  	rockchip,i2s-controller = <&i2s>;
>  	rockchip,audio-codec = <&max98090>;
>  	rockchip,headset-codec = <&headsetcodec>;
> +	rockchip,hdmi= <&hdmi>;

space                ^

With that,

Acked-by: Rob Herring <robh@kernel.org>

>  };
> -- 
> 2.22.0.rc1.257.g3120a18244-goog
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
