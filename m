Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CA61459A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 17:18:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+y3Lg6XdswI6GUY6wkyW5qJaK/RYgcGKE95DEymorMk=; b=KyYz+2s/wvshjW
	Jc0F0Dbsa2WvsV5X+lwWx/OPbp6W/c0NRfT+yKl/3Lly+beM8N27dPzlD18rTX3MmTyMjYqLnzZMH
	fdiXA49YnzYL/GyCpl2ufVNNIhjQe1JzNhGXACTZay1nXpqRA1ea5o5jK8He/4VhfNIAXOJNtpXcR
	yUc8jL00a02LQVYAMeAtiLPI/cgXDvsdKcCJMsH6VikEy0qKcXZfprjUEGqvZigg+Bkt4Vtm8uGGb
	yLLrquJsiGERr307hK9Vm+0QiCZ3uEJpnjTeWOXWsyyxOfWby3WNXoNPfUbynvn/wsvkMjbAb+mrH
	Ou94tjSAHiWmt1cx+MeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuIhY-0003Bc-On; Wed, 22 Jan 2020 16:17:56 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuIhK-00039f-BK
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 16:17:44 +0000
Received: by mail-wm1-x341.google.com with SMTP id m24so7429950wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Jan 2020 08:17:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FOrOd17IY6UxRCLs7ZuRWcrsAvlH+vzar6yzTjUmF+g=;
 b=bMOg2ktx2ixHb9xoKebAK8305XoXYSAakZUf1DIM6ZkpHKsNMJZ2HeGKPHbM6NS1oP
 gSFIdvoAdexX0AwsqXHAnloUPmL4Cf5yxsjyyHrLusR6DGdWA96myHvjgmEvpdq3t37+
 Ucl5AvDhX1cV1fwOeIRT0nnAbAVS7lWlGTRDSyWFr5j9vtwerZGBvVDSlVP68FUN3f1u
 7EBWbDhHfaufCYwRQb/6e3nY4tsV82sTVF0lXwfMSMQ0J5JxSG2TBbQYST28sXTuR6Bh
 kG4GMNCgT+af5dZNeGrTIOUqbHnSkI+TNHT6luZTJJhE0Oz/CpvakoXY5kIoaw9cm+6i
 LvdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=FOrOd17IY6UxRCLs7ZuRWcrsAvlH+vzar6yzTjUmF+g=;
 b=Bm9QduHoZF20upof77VlKTibkcr2B7GhSdqcwKYYsbMaSHlVqUp03OkLHoohgRlhTv
 YYOW0C7vuUnUlKCjE/1hvHqVmnuCn/SSVvDdfbacnumFLME2Zeaorca9XyFYQ+MQQwqq
 XBqvhj2DvzMEvN7R9Viey9jGjR8NW1EZBbX7bDPSIXhOTdpSEkpVOPN2T2fKxfug+WBX
 tKJBc7a7UOYDzcou09erYziKv5cAEchJ5TYzW+mhUvZZ2OF65TZ7Xt1YBygNqmXEu/m4
 dp6RzlxxsTNNizFv35/VeWYUggCIBhbGC4E4ZtUOniMU/fW6KTk8L0qkebeAF+Z4kwqF
 9IWA==
X-Gm-Message-State: APjAAAVSnmbO9Wzg5JUMSpVQSSpxz7vWpsSwTLrlruc52ppFFJJAbMuH
 ObxIOvJtlIWMT8Z8joko9Ncxjg==
X-Google-Smtp-Source: APXvYqwzcSi2Lr7imlGZSmgk5lwITIo8O/yFeeQB2hzIN5uo5LtaT5GOfczCR364Ip0BiZILhfOqkA==
X-Received: by 2002:a05:600c:21da:: with SMTP id
 x26mr3774940wmj.4.1579709857523; 
 Wed, 22 Jan 2020 08:17:37 -0800 (PST)
Received: from [10.1.2.12] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id d14sm62050681wru.9.2020.01.22.08.17.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Jan 2020 08:17:36 -0800 (PST)
Subject: Re: [PATCH v24 0/2] drm/bridge: PS8640 MIPI-to-eDP bridge
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-kernel@vger.kernel.org
References: <20191230090419.137141-1-enric.balletbo@collabora.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <3dc2bb6d-590c-6b0d-1bac-14891899095e@baylibre.com>
Date: Wed, 22 Jan 2020 17:17:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191230090419.137141-1-enric.balletbo@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_081742_445577_9DD50B67 
X-CRM114-Status: GOOD (  26.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, drinkcat@chromium.org,
 Jitao Shi <jitao.shi@mediatek.com>, Daniel Vetter <daniel@ffwll.ch>,
 Jonas Karlman <jonas@kwiboo.se>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 Ulrich Hecht <uli@fpond.eu>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, hsinyi@chromium.org,
 matthias.bgg@gmail.com, Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/12/2019 10:04, Enric Balletbo i Serra wrote:
> Hi all,
> 
> This is another version of the driver. Note that the driver changed
> significally and is a more simply because now is using the panel_bridge
> helpers. Apart from this, I addressed the comments from Maxime, Laurent
> and Ezequiel.
> 
> This bridge is required to have the embedded display working on an Acer
> Chromebook R13 ("Elm"). Hopefully we are a bit more close to have this
> driver merged. If more changes are required, please let me know and I
> will work on it.
> 
> Note: Along these around 20 revisions of this driver I was unable to
> reconstruct the full changelog history, so I'm skipping this. Sorry
> about that, I promise I'll maintain the changelog for future revisions.
> 
> Thanks,
>  Enric
> 
> Changes in v24:
> - Fix GPIO polarity as all GPIO descriptors should be handled as active high (Laurent Pinchart)
> - Make static ps8640_bridge_attach (Ezequiel Garcia)
> - Use a define for the number of lanes (Ezequiel Garcia)
> 
> Changes in v23:
> - Merge mute/unmute functions into one (Nicolas Boichat)
> - Use enum for ENABLE/DISABLE instead of bool (Ezequiel Garcia)
> - Rename mute/unmute to vdo_control and fix error messages (Nicolas Boichat and Enric)
> - Add space between address and address parameter 'address%02x' (Nicolas Boichat)
> - Add Tested-by Hsin-Yi
> - Added me as author after the refactor
> 
> Changes in v22:
> - Migrate to YAML format (Maxime Ripart)
> - Remove mode-sel property.
> - Rename sleep-gpios to powerdown-gpios.
> - Remove sysfs attributes because are not really used (Enric Balletbo)
> - Use enum for address page offsets (Ezequiel Garcia)
> - Remove enable tracking (Enric Balletbo)
> - Use panel_bridge API (Laurent Pinchart)
> - Do not use kernel-doc format for non kernel-doc formatted commands (Enric Balletbo)
> - Remove verbose message for PAGE1_VSTART command (Ezequiel Garcia)
> - Use time_is_after_jiffies idiom (Ezequiel Garcia)
> - Remove unused macros (Ezequiel Garcia)
> - Fix weird alignment in dsi->mode_flags (Laurent Pinchart)
> - Use drm_of_find_panel_or_bridge helper (Laurent Pinchart)
> - Remove mode-sel-gpios as is not used (Laurent Pinchart)
> - Remove error messages to get gpios as the core will already report it (Enric Balletbo)
> - Remove redundant message getting the regulators (Laurent Pinchart)
> - Rename sleep-gpios to powerdown-gpios (Laurent Pinchart)
> - Use ARRAY_SIZE(ps_bridge->page) instead of MAX_DEV when possible (Laurent Pinchart)
> - Fix race with userspace accessing the sysfs attributes (Laurent Pinchart)
> - Remove id_table as is only used on DR platforms (Laurent Pinchart)
> - Convert to new i2c device probe() (Laurent Pinchart)
> - Use i2c_smbus_read/write helpers instead of open coding it (Laurent Pinchart)
> - Remove unnused global variables (Laurent Pinchart)
> - Remove unnused fields in ps8640 struct (Laurent Pinchart)
> - Remove commented-out headers (Laurent Pinchart)
> 
> Changes in v21:
>  - Use devm_i2c_new_dummy_device and fix build issue using deprecated i2c_new_dummy
>  - Fix build issue due missing drm_bridge.h
>  - Do not remove in ps8640_remove device managed resources
> 
> Changes in v19:
>  - fixed return value of ps8640_probe() when no panel is found
> 
> Changes in v18:
>  - followed DRM API changes
>  - use DEVICE_ATTR_RO()
>  - remove firmware update code
>  - add SPDX identifier
> 
> Changes in v17:
>  - remove some unused head files.
>  - add macros for ps8640 pages.
>  - remove ddc_i2c client
>  - add mipi_dsi_device_register_full
>  - remove the manufacturer from the name and i2c_device_id
> 
> Changes in v16:
>  - Disable ps8640 DSI MCS Function.
>  - Rename gpios name more clearly.
>  - Tune the ps8640 power on sequence.
> 
> Changes in v15:
>  - Drop drm_connector_(un)register calls from parade ps8640.
>    The main DRM driver mtk_drm_drv now calls
>    drm_connector_register_all() after drm_dev_register() in the
>    mtk_drm_bind() function. That function should iterate over all
>    connectors and call drm_connector_register() for each of them.
>    So, remove drm_connector_(un)register calls from parade ps8640.
> 
> Changes in v14:
>  - update copyright info.
>  - change bridge_to_ps8640 and connector_to_ps8640 to inline function.
>  - fix some coding style.
>  - use sizeof as array counter.
>  - use drm_get_edid when read edid.
>  - add mutex when firmware updating.
> 
> Changes in v13:
>  - add const on data, ps8640_write_bytes(struct i2c_client *client, const u8 *data, u16 data_len)
>  - fix PAGE2_SW_REST tyro.
>  - move the buf[3] init to entrance of the function.
> 
> Changes in v12:
>  - fix hw_chip_id build warning
> 
> Changes in v11:
>  - Remove depends on I2C, add DRM depends
>  - Reuse ps8640_write_bytes() in ps8640_write_byte()
>  - Use timer check for polling like the routines in <linux/iopoll.h>
>  - Fix no drm_connector_unregister/drm_connector_cleanup when ps8640_bridge_attach fail
>  - Check the ps8640 hardware id in ps8640_validate_firmware
>  - Remove fw_version check
>  - Move ps8640_validate_firmware before ps8640_enter_bl
>  - Add ddc_i2c unregister when probe fail and ps8640_remove
> 
> Jitao Shi (2):
>   Documentation: bridge: Add documentation for ps8640 DT properties
>   drm/bridge: Add I2C based driver for ps8640 bridge
> 
>  .../bindings/display/bridge/ps8640.yaml       | 112 ++++++
>  drivers/gpu/drm/bridge/Kconfig                |  11 +
>  drivers/gpu/drm/bridge/Makefile               |   1 +
>  drivers/gpu/drm/bridge/parade-ps8640.c        | 348 ++++++++++++++++++
>  4 files changed, 472 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/ps8640.yaml
>  create mode 100644 drivers/gpu/drm/bridge/parade-ps8640.c
> 

Applied to drm-misc-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
