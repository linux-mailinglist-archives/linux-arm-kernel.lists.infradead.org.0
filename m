Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B17161F411B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 18:39:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u19IA8DOidW6Cj+TPf1VFNBIUOgBg3ZGgPvZ1JlYLEM=; b=NSy8MO6MhDkVhY
	zUdqrE1Bq74J5kLmxbJAbGcMQiz6YFWiFsPsc5L9D/FrgcQM0XQ7krKFGG1l0WwmWe/vEtYqYv8FE
	IwRE9ja8ZUjLt3OvoRamPqE52aQvv82jM5j8Kh15R+aMO6tsFt2VSQF/yLH/blq/Naszf885+dcPc
	CWchCiNvVyFyxJfjwJ/65nErQFHcbZzdL7wAa+d/h+5iwfIKICjiTaL+sI4DEbMO0xCn9B7ka4WqA
	Ja20BWcbBCR9tstvpqsJu5+1v1+qkL823tcgYtnqGeP+9iqR8Zqzc1KnYKxnd52vacuL+jYszAt5w
	YG0IVSRiaIPODtZl00Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jihHg-0002IN-E3; Tue, 09 Jun 2020 16:39:32 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jihHU-0002GG-GX
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 16:39:24 +0000
Received: by mail-ot1-x342.google.com with SMTP id 97so5763606otg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 09:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v7mrV9A8x5gROdoWHb4mBMuLQK66GuFHbbDU9aAaIY4=;
 b=UxlslCOp5lHCML8zHfSxii0/aaaTdlNzCPYYCv2xzb4wWEZtWsF+k5/n8Osgdx0hJy
 BfJRocyU0Eo8PTSI7zAl6DbWAZBVkW4kXvOXpX/QENIqRqsf2TPNP9lYxPtdLLVWVtAE
 ZrBxyXn9wMMr4aKFJuJRt1jw1DUCO9QEpG8AY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v7mrV9A8x5gROdoWHb4mBMuLQK66GuFHbbDU9aAaIY4=;
 b=lrr9m3c7gN/B/TTnY+VATnSsatPDQGHBaDVO4ofdp0ZlWNEynxL/uc16TMKkyXd03d
 oo6rAAUlRDizhrwyJUErHzKNHWj5gAbhiO8Dxz4JD42i2UdUJjIHZHqkJKv1cX3k3PNY
 RuBSoFPknBC2UaN1wD9ORhM+FIkRe/jGsjSoAZXcNNKXz7oie2SCSGIpMeqBznunBgT3
 dXg3g6oGJNSEw7lExOhNTlpuAbMyoZeYb0U4RsVQU3rL15u/9mJWJe9bhd3mJv8MuvNW
 aJPlqe5hWe9RD1LyNE9LfbSgsUHf00LKc/Mub7o7BVAOM+CHQhp1kVuW/SOLCCKVOsxt
 QccQ==
X-Gm-Message-State: AOAM533u21uhK6xxpW4n96i7+BUzMOluu2Q041IqfEOAf8JzYhgUHr0B
 8NVMn4N64FWpE251a6q/CIDuYzjaj57uA9uro8v8yA==
X-Google-Smtp-Source: ABdhPJyzEiiGK0RgxvAB9nvhNz9jMbudR88GwxzWaWaK//yF7MA0SnaEkI/Owvhift8/7RXSbhpKtNM5VXKxf/ldzwA=
X-Received: by 2002:a9d:768a:: with SMTP id j10mr23941760otl.188.1591720759321; 
 Tue, 09 Jun 2020 09:39:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200609162700.953260-1-adrian.ratiu@collabora.com>
 <20200609162700.953260-12-adrian.ratiu@collabora.com>
In-Reply-To: <20200609162700.953260-12-adrian.ratiu@collabora.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 9 Jun 2020 18:39:08 +0200
Message-ID: <CAKMK7uGLQCj_oJcbXynt_1bmwBQy6ncUgc49DPejyfCtb68e_g@mail.gmail.com>
Subject: Re: [PATCH v9 11/11] Documentation: gpu: todo: Add dw-mipi-dsi
 consolidation plan
To: Adrian Ratiu <adrian.ratiu@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_093922_333805_29B6EB40 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Heiko Stuebner <heiko@sntech.de>,
 Andrzej Hajda <a.hajda@samsung.com>, Jonas Karlman <jonas@kwiboo.se>,
 Philippe CORNU <philippe.cornu@st.com>, Yannick FERTRE <yannick.fertre@st.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 Sam Ravnborg <sam@ravnborg.org>, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 9, 2020 at 6:25 PM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
>
> This documents the longer-term plan to cleanup the dw-mipi-dsi bridge
> based drivers after the regmap refactor and i.MX6 driver have landed.
>
> The goal is to get the entire bridge logic in one place and continue
> the refactorings under the drm/bridge tree.
>
> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> Cc: Boris Brezillon <boris.brezillon@collabora.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>

This cc's the world, but not dri-devel. Can you pls resubmit with that added?

Thanks, Daniel

> ---
>  Documentation/gpu/todo.rst | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
>
> diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
> index 658b52f7ffc6c..2b142980a4b16 100644
> --- a/Documentation/gpu/todo.rst
> +++ b/Documentation/gpu/todo.rst
> @@ -548,6 +548,31 @@ See drivers/gpu/drm/amd/display/TODO for tasks.
>
>  Contact: Harry Wentland, Alex Deucher
>
> +Reorganize dw-mipi-dsi bridge-based host-controller drivers
> +-----------------------------------------------------------
> +
> +The Synopsys DW MIPI DSI bridge is used by a number of SoC platform drivers
> +(STM, Rockchip, i.MX) which don't cleanly encapsulate their bridge logic which
> +gets split between the Synopsys bridge (drm/bridge/synopsys/dw-mipi-dsi.c) and
> +platform drivers like drm/imx/dw_mipi_dsi-imx6.c by passing around the bridge
> +configuration regmap, creating new bridges / daisy chaining in platform drivers,
> +duplicating encoder creation, having too much encoder logic instead of using the
> +simple encoder interface and so on.
> +
> +The goal of this rework is to make the dw-mipi-dsi driver a better encapsulated
> +bridge by moving all bridge-related logic under drm/bridge, including the SoC
> +bindings which chain to the core Synopsys code under drm/bridge/dw-mipi-dsi/
> +from which they can be further consolidated and cleaned up.
> +
> +If this goal proves to be impossible then drm_bridge might not be the correct
> +abstraction for these host controllers and unifying their logic into a helper
> +library encapsulating a drm_encoder might be more desirable, in other words to
> +move away from drm_bridge entirely.
> +
> +Contact: Adrian Ratiu, Daniel Vetter, Laurent Pinchart
> +
> +Level: Intermediate
> +
>  Bootsplash
>  ==========
>
> --
> 2.27.0
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
