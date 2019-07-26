Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2FEF77281
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 22:01:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cUOjPECDnUgffvg1TBRikD9gDjfoq6smblR3N75srJA=; b=KANPRTsyjEYwNt
	84d0DmxK8qcX5xKqjhmL5c6pkmfhhV7XDRp8FojUh53TpQ69SdAPBzbeVfAQIyFJcWMFFGX/dtYgc
	crvO7CdsKLw1azlEh9hY36D0h6S/vW9EJjbar+XEoeC0D8AP+cRqzBStkEfo8JgdsTT/64wDw0Igp
	MuL5yAe4V2IscpzrbUZ4kQOcLWb0pmGsIln8Y+MkwmMcT2tPX6ubSipzUqGpAAc5TiAAChPw5C0Cx
	A80m2GHFJP6B6qnGFXXtZcPN2pIAbf7MdyJphlbc+eSNOoBT+Tfttucl+AlqhynPqM3Mbq4v8P7MC
	VQQPepQrI/dcwcKViOGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr6P3-0007A0-4i; Fri, 26 Jul 2019 20:01:21 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr6Ov-00079Y-EK; Fri, 26 Jul 2019 20:01:14 +0000
Received: by mail-wr1-x444.google.com with SMTP id 31so55628587wrm.1;
 Fri, 26 Jul 2019 13:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rfVjmU6zckNNoodvMSaWRWYTNnSyu1bvmT3h34KJDJs=;
 b=NA8IkunSglfLpeiY4HKXYERVf3hamv4cLI0On7Vvj+pha7RGhezryiHVGqhlB2OZLk
 nBbyynnjO2qBIzopg6liN5Xf2p89tf9HF0gyp73Mqun7/fbZF8op0DACICyOGSy6ra9G
 li70SIrDvhTzCTfJDaakdg8JsdpymTQ+Cd0rb8BFZSi1ckqT6pk3yBZrP1ZOWMvM+E1o
 d7OrPNjNIakYTUHRjpCTtxBC62pR+vygqSKsMLhDp0JMBYagmi2wzwSWCgfqWJPyWppi
 7AhbY80grQ8K1whExlNf7oUIFl4W8KcsCH40g2qpfPgz0cDGt84D4BGCx/Z8UWA+9kTl
 zGnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rfVjmU6zckNNoodvMSaWRWYTNnSyu1bvmT3h34KJDJs=;
 b=YAOzY7cudD6OsXZbDHZsOluBtnxHN4J5dmUw5U8FhP5donZ7GRHoU6HUYwzT8Kxa/t
 Fy2hUOIkEWkOi9Q1EiY2V9tPE7sbA2HuyLZfyNSACTaXhuWnM6Lg7xsxkO/Ciy/Vat0z
 L5cH3XHrYnLmiGv6klWMJbgF0Tl+fPV6oocHp9nqNslr6jFg3Bami4xXOKcKghww7wnQ
 rHdLVxkGmP/0jZHNdBuBAkKKinIJdNjDYpCuosZMlSrs6kh0LORTas7a9uDhxUrUnfwW
 puLeac/npsO4TPnUgqBhhKhZ8KGG5CZIWDgkFLWt5Vh4fcF3+eQkBWMOdHt3Jn0guVh6
 LQeQ==
X-Gm-Message-State: APjAAAWGavkc3WEnCdQspJbLgsK1IzWci7lMRCmhreFAqH00l8O7zmzj
 8dFPT9KL7bxz9p8CrOu2T+p8CBFw11xd2RwrAVA=
X-Google-Smtp-Source: APXvYqzYfN2e53VE31jTG/HV3K11OB5CIxcMbrH1977yWkwnWA0P8bUKkQTRD0rxecBJcxOJVlvSZpeba1SvC3LN1RY=
X-Received: by 2002:adf:f94a:: with SMTP id q10mr78465380wrr.341.1564171271875; 
 Fri, 26 Jul 2019 13:01:11 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1564161140.git.andrzej.p@collabora.com>
 <7fee0fa0d0f77af6595d283d5f3ae5d551475821.1564161140.git.andrzej.p@collabora.com>
 <CADnq5_O1B59Q+68fJgtf_bn_=WQ9yrVPq-V5tL1VQ3+vzgf1Zw@mail.gmail.com>
 <038809c7-e664-e365-a778-03bc11299193@collabora.com>
In-Reply-To: <038809c7-e664-e365-a778-03bc11299193@collabora.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Fri, 26 Jul 2019 16:00:59 -0400
Message-ID: <CADnq5_PJj8_dtq0aJWECcRJ0_uC-XpG6Z6p9Gj3fV_fTLGwZBA@mail.gmail.com>
Subject: Re: [PATCH v6 22/24] drm/amdgpu: Provide ddc symlink in connector
 sysfs directory
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_130113_503985_C578B4E8 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexdeucher[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-tegra@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 Sam Ravnborg <sam@ravnborg.org>, linux-samsung-soc@vger.kernel.org,
 Sean Paul <sean@poorly.run>, Allison Randal <allison@lohutok.net>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Dave Airlie <airlied@redhat.com>, "Wentland, Harry" <Harry.Wentland@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Mamta Shukla <mamtashukla555@gmail.com>,
 linux-mediatek@lists.infradead.org, Jyri Sarha <jsarha@ti.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Vincent Abriou <vincent.abriou@st.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 freedreno <freedreno@lists.freedesktop.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Douglas Anderson <dianders@chromium.org>, "Kazlauskas,
 Nicholas" <nicholas.kazlauskas@amd.com>, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Alex Deucher <alexander.deucher@amd.com>, Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 3:42 PM Andrzej Pietrasiewicz
<andrzej.p@collabora.com> wrote:
>
> Hi Alex,
>
>
> W dniu 26.07.2019 o 21:28, Alex Deucher pisze:
> > On Fri, Jul 26, 2019 at 1:28 PM Andrzej Pietrasiewicz
> > <andrzej.p@collabora.com> wrote:
> >>
> >> Use the ddc pointer provided by the generic connector.
> >>
> >> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> >
> > Note that this only covers the legacy display code.  The new DC
> > display code also needs to be converted.  See:
> > drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> > drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
>
> In amdgpu_dm_connector_init() the ddc is &i2c->base, is it?

Yes.

>
> But it is not clear to me how can I find ddc pointer in
> dm_dp_add_mst_connector()?

+ Harry and Nick.

hmmm, not sure about MST.  Maybe just skip them for now.

Alex

>
> Andrzej
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
