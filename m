Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74464116B37
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 11:39:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P4k7eEZaKJRNVEHYszVypIxbcIuvwtxNZAkURvF+a+4=; b=Xqk4LkFg3KCRg0
	TRYmp3nSzxHI44pHvcMPKDkGLA2Ip35rXg4tlyr+aua7s2nqaK93EK/+fu4wzHHjDwKlRtGN0G3Ab
	mcT1UnihoHoyjg/LRZ2u8IYUtRSwZab1IIesGhGqfpzkabF56q1kRyvd8t95LiQOeIbQGfYzX8Eom
	TJewQffBbNy5aW1BtM1kXzs0qsxagzYFrqBPKOEuZ3/EAgnK93l5+aL25pc138wqLVVlvxc0oAwx3
	NtSjn8ZZ+vXVPYdmwN7F8ImQ1KkU+bpa2DEiSupfuuh62zNIu5WKppO9yvJPzzA/ombnA7yhWD9he
	3EuMM+O/yabcaZWM4Qyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieGRt-00068N-0z; Mon, 09 Dec 2019 10:39:29 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieGRc-00065q-5P
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 10:39:14 +0000
Received: by mail-wm1-x344.google.com with SMTP id n9so14377190wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 02:39:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Yqxh1pdLy6uM+a91cRzWoAqtDJMdodPbbqhNI6GhNvA=;
 b=U74XPh3sESw3GToGDn9Du6Oq4eV/OO2pujDpsyWWpYT2ta6R/MeGaGeCozgz8Diw6E
 iUzV7twZDczWsTKZdSzuOOOoSAbakI8WhBnT5yoETFJpTKxQq/tlnni4bUqAKddDNuPV
 Cgc2dQhUD+XgAcdcKFZpH+iSgChW/zMdsJuFPaEK3OzK45mAXJ7fW1ALIRM4/PhekiPl
 IkEdwX0V4jg8jVr5Gr1LmZEA9GwGhMfETF/V33oEL6D800TDBsuaePnTqt/UFGYWDX00
 P8pNyucugi1XaXXeud1PPuqnYkjoT5X1kvCz10iptVDC+AQD3M5te/QG2JyB1/H3I0XN
 xawA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Yqxh1pdLy6uM+a91cRzWoAqtDJMdodPbbqhNI6GhNvA=;
 b=PElemBSPJLMxws9XWpO6XCIgzTWKOVlQXyBjVJfftyjdBYbk/IwbEjD9COgDvhU/+X
 x+2CZpJT2Y39aFPlZd9JWRVydky6v4Do8wDDjG4w4uRoKN0l78CeSCcV+PTVVBQIs1YC
 9NrpjDo5XH14ToB91UvknuO5PNpeIf33M4M07HIa/p8Ey7egih1EnXLLDHtISdiSKsiC
 nOkZFxT7vRQf590Dgs+wNSoZFuk9+XYrrdiI0R4tWhIswhiI7zLBOvylYeAmSn1UJ1mC
 qdmKR5j0CkBwi+4Y/aR/2bNEsQHM2emZ7V0koIIhmemkYCKkubcqCtPop7PHedp1PlBo
 rJHA==
X-Gm-Message-State: APjAAAU3YCZn03qmJ48KpSqAnU0gDotHxTc4+scpnmeWKa9NnVZtiQlI
 8LyF1vCE80qW75DFWtxRG9I46g==
X-Google-Smtp-Source: APXvYqzpQREDBjwPqYaqqI5uVbiA/09nriA+haizUWsQae6Nbqq8I6KdiCyDctfeIF0RQV9VI/z0uQ==
X-Received: by 2002:a1c:2155:: with SMTP id h82mr24704688wmh.21.1575887950496; 
 Mon, 09 Dec 2019 02:39:10 -0800 (PST)
Received: from [192.168.1.62] (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id l204sm13543915wmf.2.2019.12.09.02.39.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Dec 2019 02:39:09 -0800 (PST)
Subject: Re: [PATCH v2 00/28] drm/bridge: Consolidate initialization
To: Mihail Atanassov <Mihail.Atanassov@arm.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
References: <20191204114732.28514-1-mihail.atanassov@arm.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <2989c044-8134-bb7c-a7e0-c518334bf4a6@baylibre.com>
Date: Mon, 9 Dec 2019 11:39:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191204114732.28514-1-mihail.atanassov@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_023912_342663_B5761433 
X-CRM114-Status: GOOD (  23.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Martyn Welch <martyn.welch@collabora.co.uk>,
 David Airlie <airlied@linux.ie>, Peter Senna Tschudin <peter.senna@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sam Ravnborg <sam@ravnborg.org>, Jerome Brunet <jbrunet@baylibre.com>,
 =?UTF-8?Q?Yannick_Fertr=c3=a9?= <yannick.fertre@st.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Sean Paul <sean@poorly.run>, Russell King <linux@armlinux.org.uk>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Icenowy Zheng <icenowy@aosc.io>, Jonas Karlman <jonas@kwiboo.se>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, nd <nd@arm.com>,
 Vincent Abriou <vincent.abriou@st.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Dariusz Marcinkiewicz <darekm@google.com>,
 Martin Donnelly <martin.donnelly@ge.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Douglas Anderson <dianders@chromium.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, Torsten Duwe <duwe@lst.de>,
 Brian Masney <masneyb@onstation.org>,
 "freedreno@lists.freedesktop.org" <freedreno@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mihail,

On 04/12/2019 12:48, Mihail Atanassov wrote:
> Hi all,
> 
> I've dropped the fun parts of this series since they need more work, but
> figured drm_bridge_init() as a concept is still valuable on its own (and
> I think I'll need it to roll out device links for registered bridges),
> so here goes.
> 
> v2:
>  - expanded commit messages and added some extra bridge-related
>    documentation (Daniel)
>  - dropped v1 patches 29 and 30: 29 needs more work, and 30 depends on
>    it
>  - added all remaining drm_bridge implementers, found by searching for
>    drm_bridge_funcs which is mandatory for any bridge; new uses in
>    patches 3, 27, and 28 (Sam)
>  - due to the above, I've decided to squash all analogix changes into
>    one patch
> 
> ---
> v1 [https://patchwork.freedesktop.org/series/70039/] cover text below:
> 
> This series adds device links support to drm_bridge. The motivation
> behind it is that a drm_bridge in a module could get removed under the
> feet of the bridge user without warning, so we need a way to remove and
> reprobe the client as needed to avoid peering into the void.
> 
> 1: Add a drm_bridge_init() function which wraps all initialisation of
> the structure prior to calling drm_bridge_add().
> 
> 2-26,28: Apply the drm_bridge_init() refactor to every bridge that uses
> drm_bridge_add().
> 
> 27: Minor cleanup in rcar-du.
> 
> 29: Add of_drm_find_bridge_devlink() which functions the same as
> of_drm_find_bridge() plus adds a device device link from the owning
> drm_device to the bridge device.
> 
> 30: As a motivating example, convert komeda to exclusively use
> drm_bridge for its pipe outputs; this isn't a regression in usability
> any more since device links bring the same automatic remove/reprobe
> feature as components.
> 
> Mihail Atanassov (28):
>   drm: Introduce drm_bridge_init()
>   drm/bridge: adv7511: Use drm_bridge_init()
>   drm/bridge/analogix: Use drm_bridge_init()
>   drm/bridge: cdns: Use drm_bridge_init()
>   drm/bridge: dumb-vga-dac: Use drm_bridge_init()
>   drm/bridge: lvds-encoder: Use drm_bridge_init()
>   drm/bridge: megachips-stdpxxxx-ge-b850v3-fw: Use drm_bridge_init()
>   drm/bridge: nxp-ptn3460: Use drm_bridge_init()
>   drm/bridge: panel: Use drm_bridge_init()
>   drm/bridge: ps8622: Use drm_bridge_init()
>   drm/bridge: sii902x: Use drm_bridge_init()
>   gpu: drm: bridge: sii9234: Use drm_bridge_init()
>   drm/bridge: sil_sii8620: Use drm_bridge_init()
>   drm/bridge: dw-hdmi: Use drm_bridge_init()
>   drm/bridge/synopsys: dsi: Use drm_bridge_init()
>   drm/bridge: tc358764: Use drm_bridge_init()
>   drm/bridge: tc358767: Use drm_bridge_init()
>   drm/bridge: thc63: Use drm_bridge_init()
>   drm/bridge: ti-sn65dsi86: Use drm_bridge_init()
>   drm/bridge: ti-tfp410: Use drm_bridge_init()
>   drm/exynos: mic: Use drm_bridge_init()
>   drm/i2c: tda998x: Use drm_bridge_init()
>   drm/mcde: dsi: Use drm_bridge_init()
>   drm/mediatek: hdmi: Use drm_bridge_init()
>   drm: rcar-du: lvds: Use drm_bridge_init()
>   drm: rcar-du: lvds: Don't set drm_bridge private pointer
>   drm/sti: Use drm_bridge_init()
>   drm/msm: Use drm_bridge_init()
> 
>  drivers/gpu/drm/bridge/adv7511/adv7511_drv.c  |  5 ++-
>  .../drm/bridge/analogix/analogix-anx6345.c    |  5 ++-
>  .../drm/bridge/analogix/analogix-anx78xx.c    |  8 ++---
>  .../drm/bridge/analogix/analogix_dp_core.c    |  5 ++-
>  drivers/gpu/drm/bridge/cdns-dsi.c             |  4 +--
>  drivers/gpu/drm/bridge/dumb-vga-dac.c         |  6 ++--
>  drivers/gpu/drm/bridge/lvds-encoder.c         |  7 ++--
>  .../bridge/megachips-stdpxxxx-ge-b850v3-fw.c  |  4 +--
>  drivers/gpu/drm/bridge/nxp-ptn3460.c          |  4 +--
>  drivers/gpu/drm/bridge/panel.c                |  7 ++--
>  drivers/gpu/drm/bridge/parade-ps8622.c        |  3 +-
>  drivers/gpu/drm/bridge/sii902x.c              |  5 ++-
>  drivers/gpu/drm/bridge/sii9234.c              |  3 +-
>  drivers/gpu/drm/bridge/sil-sii8620.c          |  3 +-
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |  7 ++--
>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c |  7 ++--
>  drivers/gpu/drm/bridge/tc358764.c             |  4 +--
>  drivers/gpu/drm/bridge/tc358767.c             |  3 +-
>  drivers/gpu/drm/bridge/thc63lvd1024.c         |  7 ++--
>  drivers/gpu/drm/bridge/ti-sn65dsi86.c         |  5 ++-
>  drivers/gpu/drm/bridge/ti-tfp410.c            |  5 ++-
>  drivers/gpu/drm/drm_bridge.c                  | 34 ++++++++++++++++++-
>  drivers/gpu/drm/exynos/exynos_drm_mic.c       |  8 +----
>  drivers/gpu/drm/i2c/tda998x_drv.c             |  6 +---
>  drivers/gpu/drm/mcde/mcde_dsi.c               |  3 +-
>  drivers/gpu/drm/mediatek/mtk_hdmi.c           |  4 +--
>  drivers/gpu/drm/msm/dsi/dsi_manager.c         |  4 +--
>  drivers/gpu/drm/msm/edp/edp_bridge.c          |  3 +-
>  drivers/gpu/drm/msm/hdmi/hdmi_bridge.c        |  4 +--
>  drivers/gpu/drm/rcar-du/rcar_lvds.c           |  5 ++-
>  drivers/gpu/drm/sti/sti_dvo.c                 |  4 +--
>  drivers/gpu/drm/sti/sti_hda.c                 |  3 +-
>  drivers/gpu/drm/sti/sti_hdmi.c                |  3 +-
>  include/drm/drm_bridge.h                      | 15 +++++++-
>  34 files changed, 100 insertions(+), 103 deletions(-)
> 

Can you check it doesn't collides with Boris 1-7 of "drm: Add support for bus-format negotiation" patches he just pushed on drm-misc-next ?

Neil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
