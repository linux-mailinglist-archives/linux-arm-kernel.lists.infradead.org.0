Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C9D105994
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 19:31:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dBzB7sxQ0rNS76Pt55w4QdvvdZekzIJTuTRWYJm6QcE=; b=J09mChvi6byntN
	kbSxPySMerI+K0kf1hkPaxAFG1XYycxWZB9uVjTb3ndnELSYaMfwKSFn2i0U3LVn26QN8dmBsb+nX
	OCszg9Yt5owae67FX9ch4nDq3U2YVDP+M7InyOHTsAX+YLjKeQFlYjUwq58pIo8oq/dOwj0FuB8Mg
	0E9ctw3wAHCNnp3ZcwlKdgLl/tANk3defaTTXh7mzxnWHUTivy4345AL4MFkAvL+FtPjuVqfNoIBs
	ISl3yJnZjOE6L50ZQ7jwBP+iCNr1w+90HUW1OVN98SHGCIqUwujqW9TH4bfrGOosDiX2KPjYIBE2/
	YcdOZki5ENWYZ4rT2QbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXrEw-0003dv-D8; Thu, 21 Nov 2019 18:31:38 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXrEn-0003cK-Kr
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 18:31:30 +0000
Received: by mail-oi1-x242.google.com with SMTP id n14so4062522oie.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 10:31:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zes9nx3wWOfwgkI+Dul1p5z28VLkMHp34WWYw/4B4xM=;
 b=Wkp25PFcZ403A1Ab9dtH00UDW+ztY9yfO5ob/GgE/2yV3cRKXm7YMtYFtLdE+Dsva3
 9Rp7LdEU0QVZIsPXy980hXnC4LQ9KYwFcnhhwyD0vo4Ok6W3S6MZRT5jISG4FvLREXtz
 AWAp8TsSWkWK8zlCxWzKcEZ/j6zwmvwRFNOG78fD68Z8CxTbK06XUuEF+1q0XUT1Ovhs
 C0xgW4AGzSMcuLFkJ64mQbF2vtg/0a2TRJhlwNHdWkkfTCAr3cgi3cBxR9GKcC1Gkppu
 YTEvvuuBpO9jyZpYHtYh0xn7CGIvTzBvTNIjpSvir4A692IKFEazzfbK47bCNvU0KlKx
 qS1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zes9nx3wWOfwgkI+Dul1p5z28VLkMHp34WWYw/4B4xM=;
 b=PqwabEEZQ0NMnUpu1k6pncuuR5URz4yY2HcM1Rp2VGfgJe8tvidSVJcWbHsN59YI4X
 l3pIDUgeF4IwYB9rExuHd9ZRBVnW6jG/N0L4vqFTxwaBj6X3/Owhho61Zskl8H2V4BzE
 Na4I1zTSoqaSW/dy5lvXHAd9ASYi9x2+ajF6Qxs+RbogoUZ8mh+VNYnxND2qRORhPXdi
 64qwV3YluqacQH1xqn1/sgm3fW1kfs4H9vLI2ZsQRNhNmuMvmOlNlDivYkrUdmIMs21Y
 2F9/aM+ErWdxVkMIX9/gzvAiV9gAK2fw6KlCr+3KjI3rdabhD90+HhTGwLVrBW5fn9mw
 T26Q==
X-Gm-Message-State: APjAAAWGWc0+TYsu1r59RYV4dD5ALWGbUJJ/pYDX5yhdYxkIvJ995cUA
 s5npmmkG+J1evZwgCCinOp2X7Buz/mLWkg1YYnU=
X-Google-Smtp-Source: APXvYqyen3cn+EY2RAzHvEa5NUjEhWs2OO/9/OSlmmI0VmHx00JqrZodxXdJRT5Kl/NB0JdTu71ixm3Ce1mmHgz5IXQ=
X-Received: by 2002:aca:c50f:: with SMTP id v15mr9263185oif.5.1574361088233;
 Thu, 21 Nov 2019 10:31:28 -0800 (PST)
MIME-Version: 1.0
References: <20191004190938.15353-1-navid.emamdoost@gmail.com>
In-Reply-To: <20191004190938.15353-1-navid.emamdoost@gmail.com>
From: Navid Emamdoost <navid.emamdoost@gmail.com>
Date: Thu, 21 Nov 2019 12:31:17 -0600
Message-ID: <CAEkB2EQGCcwBO4iZBiHthUAJUeprw2Q09932GATd6XVyXqukzw@mail.gmail.com>
Subject: Re: [PATCH] drm/imx: fix memory leak in imx_pd_bind
To: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>, 
 Daniel Vetter <daniel@ffwll.ch>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_103129_711570_6EF0DE96 
X-CRM114-Status: GOOD (  17.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (navid.emamdoost[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
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
Cc: LKML <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Navid Emamdoost <emamd001@umn.edu>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 4, 2019 at 2:09 PM Navid Emamdoost
<navid.emamdoost@gmail.com> wrote:
>
> In imx_pd_bind, the duplicated memory for imxpd->edid via kmemdup should
> be released in drm_of_find_panel_or_bridge or imx_pd_register fail.
>
> Fixes: ebc944613567 ("drm: convert drivers to use drm_of_find_panel_or_bridge")
> Fixes: 19022aaae677 ("staging: drm/imx: Add parallel display support")
> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> ---

Would you please review this patch?

Thanks,

>  drivers/gpu/drm/imx/parallel-display.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/imx/parallel-display.c b/drivers/gpu/drm/imx/parallel-display.c
> index e7ce17503ae1..9522d2cb0ad5 100644
> --- a/drivers/gpu/drm/imx/parallel-display.c
> +++ b/drivers/gpu/drm/imx/parallel-display.c
> @@ -227,14 +227,18 @@ static int imx_pd_bind(struct device *dev, struct device *master, void *data)
>
>         /* port@1 is the output port */
>         ret = drm_of_find_panel_or_bridge(np, 1, 0, &imxpd->panel, &imxpd->bridge);
> -       if (ret && ret != -ENODEV)
> +       if (ret && ret != -ENODEV) {
> +               kfree(imxpd->edid);
>                 return ret;
> +       }
>
>         imxpd->dev = dev;
>
>         ret = imx_pd_register(drm, imxpd);
> -       if (ret)
> +       if (ret) {
> +               kfree(imxpd->edid);
>                 return ret;
> +       }
>
>         dev_set_drvdata(dev, imxpd);
>
> --
> 2.17.1
>


-- 
Navid.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
