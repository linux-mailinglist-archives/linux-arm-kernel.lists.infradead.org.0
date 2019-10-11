Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 151F9D3F1E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 13:59:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ilwHrPGkhnmX7HHEE4Nt/V0wbnPN3VxzleGFhq0VW4=; b=pQ99rkweTtn6Od
	0TgUhjrxHAL5qFXaPMlRQVKSN7JWADu/bGaeNcH03lYSSqvpntuQaapTTUuIlmBKA+KclvdL8g9NX
	wrL3vKdiAqjV8t8OTlWpJwMhIQWMnVbtUgA5IV7B9hGEBgRU05k4XlidxmG6R8uj6HuVEc2w4V0Tq
	ZmsLl403UBiyI2hZrmD118J9FrdmMuIR1JrCrlMWKXLEM7Jp+DBygYZ/XSwwlCu94vTR4le2YOwMe
	CMRri9DhzYTFIJQgbuSBXckRQB5K38ehF+VbroNbdwIos7y+2uC9fT0wFw5l+3Se+Bw4qic+5U/iy
	WEC5vPyNVPaYbJsohrlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iItZt-00066p-CS; Fri, 11 Oct 2019 11:59:25 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iItZj-000664-Bk
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 11:59:16 +0000
Received: by mail-lj1-x241.google.com with SMTP id q64so9512689ljb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 04:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qZxcysWcGBjK40AA/XUOIdw3iHtZgIgHG9FtdNWtwBI=;
 b=Zk7zrYDiiAloCyPwmmtaBGLskO2Fx1VMfLtS0bvFGEfrMXwqWjgwR0fLfvMCm0mhNb
 CvaDy0a+1pSt6z/9qZkexB2994P9n/iUPRpzZL7ZHOUacbuyY2ZAbPSQJQcTp3Xkl99p
 Py83bspMfff+i7yzB2pP/ZM5cHgVwagS0RKJHIFBsklI6O44CO+pY/NF8aZBbb+WT7Ep
 e3UTNNptN5s+r5NWbU+5gAv2U4bxSS2MOHZbK4rmM2X+fRvYidMhfxKcE3+6y+zc5SrG
 kSFEpHjXj3MNmevmM1KqxBJSl7swdsnabGzHoo9gG3j6zN818LNg0U24WI49R/W+Jq6d
 m+SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qZxcysWcGBjK40AA/XUOIdw3iHtZgIgHG9FtdNWtwBI=;
 b=ZzfA/F8qse466ICZVZpbUWtrtLL5RZTi5sFcAiNwszoLesdHGRpDyul/xMq+YmyrFB
 GluBxvEH7OZQY2FNIIhKv9AIChqqCthmfBvh43l1yKS4kmEkCJXaQXom1L3R2Htc1E8S
 IiUfjsj839PKaWxcAQeaFtt/fqgLMFcXSOj5DmpDSjx6LS14wV07/J0lmfRuHGKbG5Ht
 J2bvk3Gzq6wEA9jLPnAhBEotV0uC1TLYdPeMI0QL514glNikTvtaKvySk+edkiuPkIIz
 d7kUSnq/dtVChDQWZlZRTBR93kVey7/2X0wjRlO+sH07cM+J57RgKCU5C98MHzjnNzUi
 kAAQ==
X-Gm-Message-State: APjAAAVTdnTNP2G7fkOWZxEacUvq9xNTh6Egyc+HEENIqHW2ikNtdkNN
 m+dyY/JI7/pEUmmm8A3fmeJkqdDmFgBfw6X+Vzm/Vg==
X-Google-Smtp-Source: APXvYqyu8ngFvs0Ijr0BcLjn77SktYZ8O5FQq+oWdsZebG5H9lIAvGxp6elULEAs295/M0RD9pF16TysYOraX+QU4KA=
X-Received: by 2002:a2e:957:: with SMTP id 84mr8958337ljj.245.1570795153555;
 Fri, 11 Oct 2019 04:59:13 -0700 (PDT)
MIME-Version: 1.0
References: <20191011111813.20851-1-andrzej.p@collabora.com>
 <20191011111813.20851-3-andrzej.p@collabora.com>
In-Reply-To: <20191011111813.20851-3-andrzej.p@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 11 Oct 2019 12:59:02 +0100
Message-ID: <CAPj87rNb=Sa2Hg8KZK5ioocdv0BMj9c3NHK2v4UZibMmw2DdGA@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/rockchip: Add support for afbc
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_045915_544753_D96701D5 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Liviu Dudau <liviu.dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 kernel@collabora.com, Sean Paul <sean@poorly.run>,
 Brian Starkey <brian.starkey@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrzej,

On Fri, 11 Oct 2019 at 12:18, Andrzej Pietrasiewicz
<andrzej.p@collabora.com> wrote:
> @@ -32,6 +35,46 @@ rockchip_fb_alloc(struct drm_device *dev, const struct drm_mode_fb_cmd2 *mode_cm
>         int ret;
>         int i;
>
> +       if (mode_cmd->modifier[0]) {
> +               const struct drm_format_info *info;
> +               int bpp;
> +
> +               if (mode_cmd->modifier[0] &

Use != here, not &~.

> +       case DRM_FORMAT_BGR888:
> +               return AFBC_FMT_U8U8U8;
> +       case DRM_FORMAT_RGB565:
> +       case DRM_FORMAT_BGR565:
> +               return AFBC_FMT_RGB565;
> +       default:
> +               DRM_ERROR("unsupported afbc format[%08x]\n", format);

This should not be reachable, because you shouldn't be able to create
a framebuffer with an unsupported format/modifier combination.

> +static bool rockchip_mod_supported(struct drm_plane *plane,
> +                                  u32 format, u64 modifier)
> +{
> +       const struct drm_format_info *info;
> +
> +       if (WARN_ON(modifier == DRM_FORMAT_MOD_INVALID))
> +               return false;
> +
> +       if (modifier == DRM_FORMAT_MOD_LINEAR)
> +               return true;
> +
> +       if (modifier & ~DRM_FORMAT_MOD_ARM_AFBC(

Again use != here.

> +                               AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |
> +                               AFBC_FORMAT_MOD_SPARSE
> +                       )
> +       ) {
> +               DRM_DEBUG_KMS("Unsupported format modifer 0x%llx\n", modifier);
> +
> +               return false;
> +       }
> +
> +       info = drm_format_info(format);
> +       if (info->num_planes != 1) {
> +               DRM_DEBUG_KMS("AFBC buffers expect one plane\n");
> +               return false;
> +       }

This is where you should reject unsupported format + AFBC
combinations. Doing it here prevents it from ever being advertised to
userspace in the first place.

> @@ -808,6 +919,24 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
>
>         spin_lock(&vop->reg_lock);
>
> +       if (fb->modifier == DRM_FORMAT_MOD_ARM_AFBC(
> +               AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 | AFBC_FORMAT_MOD_SPARSE)) {
> +               int afbc_format = vop_convert_afbc_format(fb->format->format);
> +
> +               VOP_AFBC_SET(vop, format, afbc_format | 1 << 4);

I assume the (1 << 4) programs the 16x16 block size. Can we support
other block sizes?

> +               VOP_AFBC_SET(vop, hreg_block_split, 0);

Does this mean we can also support AFBC_FORMAT_MOD_SPLIT?

> +               VOP_AFBC_SET(vop, win_sel, VOP_WIN_TO_INDEX(vop_win));
> +               VOP_AFBC_SET(vop, hdr_ptr, dma_addr);
> +               VOP_AFBC_SET(vop, pic_size, act_info);
> +
> +               /*
> +                * The window being udated becomes the AFBC window
> +                */
> +               vop->afbc_win = vop_win;
> +
> +               pr_info("AFBC on plane %s\n", plane->name);

Please do not use pr_info() here. Userspace should not be able to
trigger logging, apart from DRM_DEBUG.

> +static const uint64_t format_modifiers_win_full[] = {
> +       DRM_FORMAT_MOD_NONE,

*DRM_FORMAT_MOD_LINEAR

Cheers,
Daniel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
