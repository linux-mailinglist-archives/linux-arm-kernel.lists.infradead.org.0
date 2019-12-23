Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A58012938F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 10:15:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YtOL0UMJSWmW4C9p92/gxwe06b/gCTFvfUW1+Less+M=; b=UX2rBt4U7V4QUI
	e63xZPt/vCSIK/g1v33s4iMAM+2TNyhNNXep+OMsfcXFFcOiKwnileX8XZiA0Y2C6cyxKcQrC03fh
	Zss5kR/cmPipn9CoKHzGAjW1f9LZ6Tc3ppYGqJ2thgVZBNBpffTKuwYa4SFvYkDlo2G9Kwu0kUsR9
	/salNATPX0Zqvl21ff9GwzR0h0NJRfjOM1viZFsPXcpkFZqtzncHFitG+cPkLOueK7v8RO9U/xHsZ
	HHfKiOcBBOe/I3Eaghs8gfpsb9vskuIMSDAIcxvm/OCN8H98tqBQiJ4vPK6/TWImw7E3KKhqHudLL
	FxHCEep9oUQBtGLwhG1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijJo3-0003Sl-8x; Mon, 23 Dec 2019 09:15:15 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijJnh-0003Qv-QM
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 09:14:55 +0000
Received: by mail-qv1-xf44.google.com with SMTP id dp13so6127884qvb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Dec 2019 01:14:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gu/ztFiRQ3wq9XQZk4WFXx+978qv3TNkjDk+Rg1DcEQ=;
 b=JChcZAmP16y+mbW1Asq7N8aJZsXBv8p86qgVulBr2n85kEF6ZYqrML12yiQ0Jliii0
 Knr104cQRfUO4BGBfzSyzaSqSTy7iNiXrG2Pax060fVdsPFaMX5BYTNmR6Bk3WqDIm35
 0/RGy6FmY5hwcu3+ywUuX0yVkdqKLZKYFXpqU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gu/ztFiRQ3wq9XQZk4WFXx+978qv3TNkjDk+Rg1DcEQ=;
 b=PxPCwSEnp43wemdT1ynZAPUoyFMtp3p0495PF7poeaWdGeLzhuUuC5IqiUPOBWhM6q
 tTsIJZAI9iRx/jjwRQOEq1NukmHAIkvCta4RK+QYXXJAMXBAhPgd/wWriOpccfXt+CZV
 5rozf7aDNebz5BFOTVE8JxEEw0LdA5Np2vpQv+fvIXL6Q/l+4qndlQlUGjfxiuIuFZvS
 Buk8yGYWoo1AAwh2yA74yvLPqobpgIppJ7ZTWV3Z2amT52Htk6OOkGckIuPn3j8P9mjO
 5lBJcUTRhJ7xWgFETV8lSxFt0OJL+Rh6Jbh2AB1edykDlHplAsbxh4E2KTxo+uk1FRAQ
 R4Qg==
X-Gm-Message-State: APjAAAU3esUot5d+0h2YzlGIgvo0/psqs/dM3Od4ardnN61ir6scZf1o
 xWhwKS19XGCtH1bWQUcxHvtSY+VYG/ri9iOk2bVjrg==
X-Google-Smtp-Source: APXvYqxSGh8tEsYM4HGrQMAIpi4RkLM4nlV0RIDeW/C6zkKppoWb1uEylH2teSbPYDtcvEwo1nKoLSIXM3xw4c24zSA=
X-Received: by 2002:ad4:4182:: with SMTP id e2mr23692671qvp.187.1577092492136; 
 Mon, 23 Dec 2019 01:14:52 -0800 (PST)
MIME-Version: 1.0
References: <20191220081738.1895-1-enric.balletbo@collabora.com>
 <20191220081738.1895-3-enric.balletbo@collabora.com>
 <CANMq1KBHsc8oqcjWnjLPCpRToyOm16X6EcQqmqPjZf=D7wA2-Q@mail.gmail.com>
 <05db638b-02a6-0e3a-43ed-44a0a1458d87@collabora.com>
In-Reply-To: <05db638b-02a6-0e3a-43ed-44a0a1458d87@collabora.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Mon, 23 Dec 2019 17:14:41 +0800
Message-ID: <CANMq1KA4mp648p1LicOzAyra6tdgN2qdDY=N0XyDYhgt6BP26w@mail.gmail.com>
Subject: Re: [PATCH v22 2/2] drm/bridge: Add I2C based driver for ps8640 bridge
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_011453_873233_37189EE5 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ulrich Hecht <uli@fpond.eu>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Jitao Shi <jitao.shi@mediatek.com>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 lkml <linux-kernel@vger.kernel.org>, Daniel Kurtz <djkurtz@chromium.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 23, 2019 at 3:10 PM Enric Balletbo i Serra
<enric.balletbo@collabora.com> wrote:
>
> Hi Nicolas,
>
> Many thanks for you review. Just preparing a new version with your comments
> addressed.
>
> On 20/12/19 9:44, Nicolas Boichat wrote:
> > On Fri, Dec 20, 2019 at 4:17 PM Enric Balletbo i Serra
> > <enric.balletbo@collabora.com> wrote:
> >>
> >> From: Jitao Shi <jitao.shi@mediatek.com>
> >>
> >> This patch adds drm_bridge driver for parade DSI to eDP bridge chip.
> >>
> >> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> >> Reviewed-by: Daniel Kurtz <djkurtz@chromium.org>
> >> Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> >> [uli: followed API changes, removed FW update feature]
> >> Signed-off-by: Ulrich Hecht <uli@fpond.eu>
> >> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> >> ---
> [snip]
> >> +       ret = i2c_smbus_write_byte_data(client, PAGE2_MCS_EN,
> >> +                                       status & ~MCS_EN);
> >> +       if (ret < 0) {
> >> +               DRM_ERROR("failed write PAGE2_MCS_EN: %d\n", ret);
> >> +               goto err_regulators_disable;
> >> +       }
> >> +
> >> +       ret = ps8640_bridge_unmute(ps_bridge);
> >> +       if (ret)
> >> +               DRM_ERROR("failed to enable unmutevideo: %d\n", ret);
> >
> > failed to unmute? Or failed to enable?
> >
>
> failed to unmute sound more clear to me.

I may be wrong, but I have the feeling that the functions
"mute/unmute" video/display, actually... And that the function naming
is strange...

You could just try to remove the calls, as there is no audio on the
board you have (elm), so if video still works, maybe this is actually
audio ,-)

Thanks,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
