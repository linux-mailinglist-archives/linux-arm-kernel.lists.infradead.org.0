Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C12143DB3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 14:11:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N8zbrzLj1A4dkMMy3wYXV+/LhjDMXRNQh+VgCmrqiTQ=; b=tqcXBM8y2YI4Mw
	X076InKEWi0kgezq4wCAWUqUjzcs421/jwJ5mbHmYqmwwY8I0ntWHctNVxSO+6PJ3tS19ZA5PZ8Xv
	7HhzAg2fngw5IkB8DkKqJjzKt56ogYCsoHMsQyZbqtenmE3QwB/GXqvucr/B9ICbE9paMvtoDFRyj
	xz0AC/bHRc9WBF/bQ7mBZUVEqeTYDZit8ud76cfmz/DaPz0vv2H1sAePBf/Gtq8Od0GK2ZRTMpVa5
	LnhVBY8qtm3y7ppbg4zUf97iwaIGSzG3IPdP2RyGARx9Pm8C9hgfwjSaPfxCfOXql+M9rKkf1guMX
	rzCYBgam+B3Q9+6TWfvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ittJQ-0005kg-Jc; Tue, 21 Jan 2020 13:11:20 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ittJD-0005jB-4Z; Tue, 21 Jan 2020 13:11:11 +0000
Received: by mail-wr1-x443.google.com with SMTP id y11so3123341wrt.6;
 Tue, 21 Jan 2020 05:11:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=mhGneesRMqca+G49CZkv9yFBdFGx22i2fZyrgZ2cdGw=;
 b=RwdomRqhuMOj43ismwGzp1Fn9myxOX4PmSiivmXLjE759KnCPFdq6kSqbtUq4Gb1AV
 LRL36IqyVwak5YFseCmqvX1cXovudgDifBWbdGBXO2YLke3b0GYT4zp8gEsBw6QpUfJ/
 DlMozGPqDqQ+MaMKCcTQEbZNYQzlN5/CgjtFvuxYmE8bC09gaNISw6vxB+5tVBqE8mjl
 SQtzYLvvE4H3yCHZaX6SrOVQJMN38MN56JqjVT68LiNpghq6pn0ld7PIIK9pnNyTVRgY
 gfsMi+JTRAwXAPvAwE30zKb5MpaT8pzvRO+ZglfQ1Xua3J4xULANYKk11lL2b9TOzFqb
 vqAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mhGneesRMqca+G49CZkv9yFBdFGx22i2fZyrgZ2cdGw=;
 b=OzYKpFWUPOsczpMq9hYRoc2X7ON9KzfToA3rAuF2++Q4sGCFhRIkvQ9zlgEko0jbj2
 A9s0+lu9JyUmSbJIaU0UiO2TmDYQx94+ujAIw/tizr1WKI55IYAqfFs2LnsNjukz5BrO
 bvzM7WXC1Fsz7C1xcHMG9T4yH44+0VUkz9zKB+ffnKqEvcDlzgnKCd1MjS7nrcvb8a66
 Uufxzgl/2/qi0fNnGsl8NgnSXWwEeZoVVWwRz/CBeT7MEwiKtmIQFRelfQKBhel1Sswe
 nEUHBIWrwQRjZp7j9WuMz9wlJxgHK4lChwX3L7t/JP+9jV3Pqtg0Rrg3vxSVMb9GQl+E
 0llw==
X-Gm-Message-State: APjAAAUGDxVDS4yx+cJzGtPyE6NKOawNi6pojiEIdHH5+a6kGBAiihgV
 6vo3uLNfyvJ9RZbTu25sQEY=
X-Google-Smtp-Source: APXvYqy7hlBDQUa9WHN965x6FyXWEPReEs8xegXUSVTD5onpjUdQNV4o3/tnfrFGE4I4NWSoKssCgw==
X-Received: by 2002:adf:fe86:: with SMTP id l6mr5353879wrr.252.1579612265353; 
 Tue, 21 Jan 2020 05:11:05 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id c17sm52327271wrr.87.2020.01.21.05.11.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jan 2020 05:11:04 -0800 (PST)
To: dafna.hirschfeld@collabora.com
References: <20200121123445.29774-1-dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v2] dt-bindings: convert rockchip-drm.txt to
 rockchip-drm.yaml
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <dccee12a-71cd-efac-02ca-3668d10434c7@gmail.com>
Date: Tue, 21 Jan 2020 14:11:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200121123445.29774-1-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_051107_177535_89EAAC33 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 airlied@linux.ie, dafna3@gmail.com, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, robh+dt@kernel.org, daniel@ffwll.ch,
 kernel@collabora.com, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dafna,

You are checking at the wrong platforms.
Maintainers incomplete. ">" is missing.
Recheck please.

Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml:
ignoring, error in schema: maintainers: 0

make ARCH=arm CROSS_COMPILE=/usr/bin/arm-linux-gnueabi- menuconfig
# change in menuconfig to Rockchip system

make ARCH=arm dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml

make ARCH=arm64 defconfig

make ARCH=arm64 menuconfig
# change in menuconfig to Rockchip platform

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml

> From: Dafna Hirschfeld <dafna.hirschfeld at gmail.com>
> 
> convert the binding file rockchip-drm.txt to yaml format.
> This was tested and verified with:
> make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld at gmail.com>
> ---
>  .../display/rockchip/rockchip-drm.txt         | 19 ----------
>  .../display/rockchip/rockchip-drm.yaml        | 38 +++++++++++++++++++
>  2 files changed, 38 insertions(+), 19 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt b/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt
> deleted file mode 100644
> index 5707af89319d..000000000000
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt
> +++ /dev/null
> @@ -1,19 +0,0 @@
> -Rockchip DRM master device
> -================================
> -
> -The Rockchip DRM master device is a virtual device needed to list all
> -vop devices or other display interface nodes that comprise the
> -graphics subsystem.
> -
> -Required properties:
> -- compatible: Should be "rockchip,display-subsystem"
> -- ports: Should contain a list of phandles pointing to display interface port
> -  of vop devices. vop definitions as defined in
> -  Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
> -
> -example:
> -
> -display-subsystem {
> -	compatible = "rockchip,display-subsystem";
> -	ports = <&vopl_out>, <&vopb_out>;
> -};
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> new file mode 100644
> index 000000000000..e4ef1a02196d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> @@ -0,0 +1,38 @@
> +# SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/rockchip-drm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip DRM master device
> +
> +maintainers:

> +  - Sandy Huang <hjc at rock-chips.com

Add extra ">"

> +  - Heiko Stuebner <heiko at sntech.de>
> +
> +description: |
> +  The Rockchip DRM master device is a virtual device needed to list all
> +  vop devices or other display interface nodes that comprise the
> +  graphics subsystem.
> +
> +properties:
> +  compatible:
> +    const: rockchip,display-subsystem
> +
> +  ports:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description: |
> +      Should contain a list of phandles pointing to display interface port
> +      of vop devices. vop definitions as defined in
> +      Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
> +
> +required:
> +  - compatible
> +  - ports
> +
> +examples:
> +  - |
> +    display-subsystem {
> +        compatible = "rockchip,display-subsystem";
> +        ports = <&vopl_out>, <&vopb_out>;
> +    };
> -- 
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
