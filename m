Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B17814A7DD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 17:13:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CQieirpjMItlH+u/wauXM28m9BqnVpOWBk/1ZCYJbxg=; b=PHK6oZgWHFLwZX
	ETjN5zbtE3kFTA/yTfSiKpunC9RoDW5kdAdz5AOHHXuOZGWjiZ/iIyhCgmpIEuVpN9xWnNR3HxWVh
	Hp44ixuMjM9KOwhVHgXSBeTkXt66+OZbeI8hi0K0qdJhA3invwk1CLDuIkaarhLnDM+xqzCeBTCJn
	0Ks2mW13vTAHRS0xUSibI8IyOu+zG264GQN78TDOJhrPxzI9ncJg9WRoc/FxTIh/BAhy6x5rXDPue
	s7LYzD7dR5umnj1q4y50gdvPEBayY3TscXHfqNXsuU6XYaX42sVbYEs6aCX2Z4YA8mZN7C92+UOur
	0fpwOgfcIH58SncmKEoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw71I-00018K-0G; Mon, 27 Jan 2020 16:13:48 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw714-00017M-F4; Mon, 27 Jan 2020 16:13:35 +0000
Received: by mail-ot1-f68.google.com with SMTP id i6so5014462otr.7;
 Mon, 27 Jan 2020 08:13:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JNhU3ozUFErUx+4UTT5ltSBuP2mFt3zi7r84jg0CNoc=;
 b=t1bncv+m2a1zuWGJ/PEVc+5878OIZnXArIzYZbJhZdJ0GD3eOvWBgJikB/QNEfB0AE
 pdet3YGZDlucE0e+AavsYxr6ivuOsjKn9Fuk7Rw5h3O8bBnrUrKOYxt97RO4BWyinmz5
 SBHQd+GSfrArXAD2GQYZjjBErZFLaaX9Npg67+XR9GvhGWoqgw/1rP9pV7rbcKy+RHTs
 KBKvL8VJlDKP5MWG0xDRxrD/XDK1H4GkWQJNeynU+FnE+1+ACRS/g1CaXm+B6qrH1vF1
 kKgVSyoaMh7dqc8oJIUWaAHk97NnUVGHK1ic/iwmnn+kBca7M6ViOUQCUQ7dAoqQYrvr
 aY6g==
X-Gm-Message-State: APjAAAU480ynmEJjeZj10hEEHx4a6MrlJjkmW3jJmaoOXvBVvlEWzqma
 ZCuUWcicZYUMlSjP8k8hpQ==
X-Google-Smtp-Source: APXvYqx+crNryziVOs9TPZ584wS5oJiSpLsXp+K6NXnR1XqPGiQwSyxOkcd4SFNU/i5Tt2bP+RwJrw==
X-Received: by 2002:a9d:7305:: with SMTP id e5mr12473441otk.64.1580141613803; 
 Mon, 27 Jan 2020 08:13:33 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e6sm5649617otl.12.2020.01.27.08.13.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 08:13:33 -0800 (PST)
Received: (nullmailer pid 20252 invoked by uid 1000);
 Mon, 27 Jan 2020 16:13:31 -0000
Date: Mon, 27 Jan 2020 10:13:31 -0600
From: Rob Herring <robh@kernel.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v3] dt-bindings: convert rockchip-drm.txt to
 rockchip-drm.yaml
Message-ID: <20200127161331.GA20191@bogus>
References: <20200121154314.3444-1-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121154314.3444-1-dafna.hirschfeld@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_081334_501573_1E4167D4 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, airlied@linux.ie,
 dafna3@gmail.com, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 robh+dt@kernel.org, daniel@ffwll.ch, kernel@collabora.com,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 21 Jan 2020 16:43:14 +0100, Dafna Hirschfeld wrote:
> convert the binding file rockchip-drm.txt to yaml format.
> This was tested and verified on ARM and ARM64 with:
> make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
> the detail of the ARM tests:
> export ARCH=arm KBUILD_OUTPUT=../kbuild/arm-test-dtc/ CROSS_COMPILE=arm-linux-gnueabi-
> make menuconfig # set rockchip system
> make clean
> make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> 
> the detail of the ARM64 tests:
> export ARCH=arm64 KBUILD_OUTPUT=../kbuild/arm64-test-dtc/ CROSS_COMPILE=aarch64-linux-gnu-
> make menuconfig # set rockchip system
> make clean
> make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> 
> 
> Changes since v1:
> - fixed worng sign-off
> - fixed the path of the $id property to be the path of the yaml file
> Changes since v2:
> - add a missing ">" sign in maintainers list
> - change the licens to GPL-2.0-only
> - add "additionalProperties: false"
> - change the commit message to conform that it was tested on both ARM and ARM64
> 
> 
>  .../display/rockchip/rockchip-drm.txt         | 19 ---------
>  .../display/rockchip/rockchip-drm.yaml        | 40 +++++++++++++++++++
>  2 files changed, 40 insertions(+), 19 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
