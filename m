Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9FF6AA65
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 16:13:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=38BzpLlE8s57byzpNwKbow8PR+LfWeFgodTA3AVYtLc=; b=IZJX9IHs/Qryqm
	DJkh2tXQp5RT+si3olIKMYsCq/FwxzfwI3650ydkvqr2W+dzetarAdQZzeF/DXNr8xJopc8T8h4k2
	PI0HL1fO7u+EiiBsyIEWSaH6BOM2VREEDzA8zy3FeqkVbqy0jI11mPTq8nAX0HICXEdsXQ4c/TOmW
	6ZqKg5AdE225eR1Vt/okqUaP+XM/Egz7VSgzpmt+nRN0++JJzFOJE8SW1J8x1gEWflxt/2vafTDY3
	YZh+sRqeC9LkhhSX2bCJAPr5QBrUE2clF3GL5h+UskmyVVu6U+ohjwRZFui3zsonXOyK/SVkqVWEp
	E5rkKU1tVv99RpemwuyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnOCY-0001KQ-CN; Tue, 16 Jul 2019 14:13:06 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnOCF-0001Ie-IY
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 14:12:48 +0000
Received: by mail-oi1-x241.google.com with SMTP id v186so15660121oie.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 07:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h2XmDxxbJ7tU8jfvsRxWlaoaHsfnqizOFxorb/Xd+co=;
 b=Py5/obzLg1G6q0q9QNni2A4i6WspW9cxnxlS1QfRxEg9BRt1PWoOjwnaxWlw95wDhQ
 zk2XLC499vm6MTxijwxdPPDVhCQaRCFyw+qJHWt86AFA40hRMjwDOMZvCgKaj30892nR
 3Y8vkOpVAnYdsAR5GQ+/ylt+8cSq9qlPxSumsex88ZyIHEBPsauTOuHf7FrJRJlSNJ0G
 xBmJ7n3Wiqq/pFgIxlIeJn3Ms4InCCNSdUmRXMfbYZ6pVE4XIRvI/r3dn+K84uxn5ttw
 1GFLELKY4droqXKN0zwWh5as8vN/6BK+LpPAHSpEFtr3f0XWt77DBVSuhXUHhjHdb072
 ArzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h2XmDxxbJ7tU8jfvsRxWlaoaHsfnqizOFxorb/Xd+co=;
 b=KOZATo3jL63fdbt1DfoVp52L0rnAzwg8zV0RmmrtvfttsTJ285HJWeySpcaQBoYBQG
 CGxtgHRP8JtmTsUKJJ7rxcgTn6rdfe1ifU00oCIc1WG1HnbmKFbH7JGHgUaYEWsR/a3Z
 ALXmB8NY8Jol1GEOiQoWsLE4swqAVrHZzZqKHvl2A6CQ+MthrEvOo+9AUDeMAfqN2Hzb
 TQQq3XUIXg/EpoSe6lB9+3249e6sh9uN5kNUGcGgNhiAlyX/sfkJ6vElrnsZCmUQgkgt
 w/c5PU5yEsEPlJvEUBSLUhl4804MOFDOnnG2Q9Ayh1MI3Z8UVhyPtZkrpNqKaXErWDm8
 k5QQ==
X-Gm-Message-State: APjAAAXXJoR7Hi0fKxBTy/n2BqGr3uHuEo+t3Zd3bH8DsK/9hbkQWOFO
 VBRqKcU7O3k3tzYD/i+EPsAMdGNIWlKwd2NbYnHYPg==
X-Google-Smtp-Source: APXvYqwhUee7Js74E9R15ZB55hgPPsCjc9xmGxHsFteJRH0BqOq9zdyWRfoMvFTu0iFTMewZbXes9U0eh+oPZWTTRe8=
X-Received: by 2002:aca:4d84:: with SMTP id a126mr17188257oib.23.1563286366223; 
 Tue, 16 Jul 2019 07:12:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190716115725.66558-1-cychiang@chromium.org>
 <20190716115725.66558-3-cychiang@chromium.org>
In-Reply-To: <20190716115725.66558-3-cychiang@chromium.org>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Tue, 16 Jul 2019 22:12:35 +0800
Message-ID: <CA+Px+wWuCBvWra8+=szQOrvr3iv2YPMeoHHVtJ1vmaZWEEQ44A@mail.gmail.com>
Subject: Re: [PATCH v4 2/5] drm: bridge: dw-hdmi: Report connector status
 using callback
To: Cheng-Yi Chiang <cychiang@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_071247_643678_D2035DE5 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: ALSA development <alsa-devel@alsa-project.org>,
 Douglas Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Takashi Iwai <tiwai@suse.com>,
 tzungbi@chromium.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-rockchip@lists.infradead.org,
 dgreid@chromium.org, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 7:57 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
>
> Change the Kconfig of DRM_DW_HDMI so it selects SND_SOC_HDMI_CODEC.
> This is for the typedef of hdmi_codec_plugged_cb to be used in dw-hdmi.c.
Not sure why you select SND_SOC_HDMI_CODEC in this patch.  To have
definition of hdmi_codec_plugged_cb, include hdmi-codec.h should be
sufficient.

>
> diff --git a/drivers/gpu/drm/bridge/synopsys/Kconfig b/drivers/gpu/drm/bridge/synopsys/Kconfig
> index 21a1be3ced0f..309da052db97 100644
> --- a/drivers/gpu/drm/bridge/synopsys/Kconfig
> +++ b/drivers/gpu/drm/bridge/synopsys/Kconfig
> @@ -4,6 +4,7 @@ config DRM_DW_HDMI
>         select DRM_KMS_HELPER
>         select REGMAP_MMIO
>         select CEC_CORE if CEC_NOTIFIER
> +       select SND_SOC_HDMI_CODEC
So that it is weird to select this option.

>
>  config DRM_DW_HDMI_AHB_AUDIO
>         tristate "Synopsys Designware AHB Audio interface"
> @@ -20,7 +21,6 @@ config DRM_DW_HDMI_I2S_AUDIO
>         tristate "Synopsys Designware I2S Audio interface"
>         depends on SND_SOC
>         depends on DRM_DW_HDMI
> -       select SND_SOC_HDMI_CODEC
Also strange for deselecting the option.  Should be in another commit
for another reason?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
