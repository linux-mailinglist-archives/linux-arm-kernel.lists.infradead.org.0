Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0B681BF8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 15:19:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dletVAbbgdhIfw133se7aw+lO+Yi73aTH1gXnwB4UhY=; b=J0ObqKr7qdSyGG
	TVc8RPqQA3j4vRTUGqWVg4dlbN1iejkjqGBH8NRoKB8ZM+b5e5IwaFRs1JtVrARs8j/65Z13/5ZC+
	pczxxpv1XCKwxsogV8cHKDsOXaNRH/5TwkfP7/9ENoX4+hNXhmGokUIhu42AX1aGusi6pIt0oGZAE
	gGpJa8dti8eftD27pFQ9kloeTTE5O/UN5+LhbsxgE4WvhU2RuRGlVs5rPZK3uSKGK9veBxoSqvU00
	57CEQF6xIMYOViH9OqJA1pFEn1woYoAO2ZY2x/kHTVHisQoeCglPwAIyVoUBiDEcg5eeguFz93rp7
	FN0Kx+uq1o+3F23AYwLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huctq-0008Lk-5F; Mon, 05 Aug 2019 13:19:42 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hucte-0008Kk-Or
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 13:19:32 +0000
Received: by mail-wm1-x342.google.com with SMTP id f17so72963332wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 06:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wZEl8RSr4zALt6HddkMAzZ6K0ziDRyO7RsNxOehkOiE=;
 b=V8q6yIyItLRstyanR2xSd1hs5HNdY6xTpt01gxfk74f35YvVIYsURM8Sf4v0pRqCS0
 FtjGfKUlwJhtZrhIcLxxL8lQA5s2eG85dXDzb+lShA+GBozmrSw6NCpqBCyNaO4LTA/t
 MWleThgwXCDjqV1w8rYSqMlVpIm4jLzZAOSCD3H+EDt3mUaez+JXfQp734Y9F2sAvKwe
 lZzebNEk3ENrf33vty7LYwLhwu2pJhCVHwfhBdYd7btGPRVNVTbchr4M26Mir3MndSpr
 fqVAkor4XbugBI8g9vzZBe1KCojrYtJu2nKbLrP4A/vcqvUir0yzbfiwv+x8CwAvm8k8
 17YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wZEl8RSr4zALt6HddkMAzZ6K0ziDRyO7RsNxOehkOiE=;
 b=EITbvAPVeHmN+bHrjkBj5QuOSCuSW/51xD9eUCavCTfqfvMCFkLVlM4+jYPuH+APGI
 Nzg9Rb4+ABowuqJImHOCDYXI7mdUlydx/ETCE7l4jAy/iMu1uyO6dq+zp7W5sENE/V4B
 1qPY/slzRTOS5GpTwrTOtaynxErbqy9pBaEAaWeZhrD+2rIsVveyiNUm3s/fTYExQZpV
 ZmACKPukHooGEEmz00Y/aEzQjSqphjx+S7VZqZejL2uzXudXMJPTFABY48tzWV1F/T5K
 ++LWr78G6I8VCJDIgyiPqQYPXtCd+rYLsRjP3kUXHz1nZ6sxNOaZ5AIhTKFD0dvXFlHp
 9rpg==
X-Gm-Message-State: APjAAAUenBXTJdRepAxJNduhkFgNVAl2nkCM00G3pRXOzaMXXdjMGpnG
 6B5xpRBWClH0Od8mx/wss/g=
X-Google-Smtp-Source: APXvYqz0P/wJNV1ZR/CdjYZA1JlXDnZhL8I26T1UonnCxIy55h0flNA3Au+YawBd5h4PH/RoOAm9rg==
X-Received: by 2002:a1c:c14b:: with SMTP id r72mr18774070wmf.166.1565011169278; 
 Mon, 05 Aug 2019 06:19:29 -0700 (PDT)
Received: from arch-x1c3 ([2a00:5f00:102:0:9665:9cff:feee:aa4d])
 by smtp.gmail.com with ESMTPSA id f12sm92043233wrg.5.2019.08.05.06.19.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 06:19:28 -0700 (PDT)
Date: Mon, 5 Aug 2019 14:18:50 +0100
From: Emil Velikov <emil.l.velikov@gmail.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 0/16] drm: panel related updates
Message-ID: <20190805131850.GB5005@arch-x1c3>
References: <20190804201637.1240-1-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190804201637.1240-1-sam@ravnborg.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_061930_809582_3FB2DB05 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (emil.l.velikov[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Marek Vasut <marex@denx.de>, linux-samsung-soc@vger.kernel.org,
 Vincent Abriou <vincent.abriou@st.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Jonas Karlman <jonas@kwiboo.se>,
 Alison Wang <alison.wang@nxp.com>, Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 linux-tegra@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Sean Paul <sean@poorly.run>, Allison Randal <allison@lohutok.net>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Enrico Weigelt <info@metux.net>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/08/04, Sam Ravnborg wrote:
> The first 9 patches replaces direct use of the drm_panel
> function pointers with their drm_panel_* counterparts.
> The function pointers are only supposed to be used by
> the drm_panel infrastructure and direct use are discouraged.
> 
> ili9322 is updated to handle bus_flags in get_modes like everyone else.
> This is in preparation for a later patch series where controller
> becomes an arugument to get_modes() and not like today where drm_panel
> is attached to a controller.
> 
> The remaining patches move functionality to the drm_panel core that
> today are repeated in many drivers.
> As preparation for this the inline functions are moved to drm_panel.c
> and kernel-doc is made inline.
> panel-simple is updated to benefit from the additional infrastructure
> and is an example for the simplifications that can be done.
> 
> The patchset has been tested on my embedded target,
> and build tested.
> 
> Feedback welcome!
> 
> The "fix opencoded" patches are all independent and can be applied
> out of order. They were kept here to keep panel related patches in one series.
> 
> 	Sam
> 
Thanks for working on this Sam.

Patches 1-13 are:
Reviewed-by: Emil Velikov <emil.velikov@collabora.com>

-Emil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
