Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E428E1E4D32
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 20:41:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g1lNM1h7VMCWTWRWnEjnDTbcu6Gg90k0s+Pm1xGP8ro=; b=Ls3ytPDZkAFf1+
	HXlUmni4RA1TKvV0K8LIgRby7aE2mk+Iyq0HRGj3/98IzW7ZEkOuyQlVq9zokvjITa0ENI75wxwlz
	7v5nGaEbzNuP89jdiXRHZlR2kX5IKK+rD4u1rK+TWFWrWytmPKQP+0PfJDNN2Nc1Vfce+WfVbK5No
	WoBg7ykh5cC1pf3vpLN/YapvE0VGVhdwuOhTl1EZMJMTfoOWKib4Lr/eBS1QhZLPN22IL2emRxB06
	/bwbCT9GlfdM+tpg2zSp7/RYQOFCWgwLhOiYpjUEFCsrIdmRW6UNrz6LzAI405FFK2mYlBN5yAwZN
	DKlfWi59HwYz2HVAo9xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je0zs-0005iq-MY; Wed, 27 May 2020 18:41:48 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je0zh-0005gj-F3
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 18:41:39 +0000
Received: by mail-lj1-x241.google.com with SMTP id m12so27805257ljc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 11:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=80e9RnD9Ss8eOafGm0SPCkZYoQv72dsa4vHL2CNUsTI=;
 b=QN1siCcUywmiFL5b2l7OO2oJrFZjy0oVoG39jF8U3zH1k9rEEmuBmleEe7rSCXVq9b
 QDK/ZQZSsIFtjtyqvUKUGZpDAKKGE4YXN8HrzpU0lJnDxfXUnAFWPaerCMwA/UkQaGq6
 NV6pwJVvRp8hgN5+JK1UdeoLeCp6e0a+/V5iE7yug/9UO4hqzlfLKMTtQBJjCHMPkpgM
 gSOMNRg8jwdPUo7jOdYjVE95+JviMtUNl2EJK784jiP4U2WAA6mUOgpjejHB3we1xTko
 lpHOf2J4ipaoutCd2b80OURfvWweVQlY47Ga3y1MboXT4o7ZqhvVwpWG0R0EOVn86EpA
 5Adw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=80e9RnD9Ss8eOafGm0SPCkZYoQv72dsa4vHL2CNUsTI=;
 b=P05qKWnWnx/1UoRFZ2FTvUZ6gcu7fNZQuggWgR3+piewlZp/TGIB5qC+ujH15ITu9h
 VDtLp5reTtrxCG4IuR93GKmPIPpr09xPJM7Tbje6BQpgEthZndSZJsCR3ZBJxw+9PUkr
 WY94hnAHQxc34q6nQ035Cs3RxFRGX1ZKi/JX7/4/21rNWs2bllkzBWhgDIBtjXI+eWgi
 OFiHzbHtIcZrw8bo93tqFStINGm4hsm9aIh0dccmO2RHmot02WYVnBAkhFq1iQ3jOq02
 3UsA/17JNErpCS4pS1LE09XHo4W6BOG6RS3Lxfby8PMtYD5qA9SHCZWW8Pncp+1iknUi
 5AJg==
X-Gm-Message-State: AOAM5331jxk2DxXP9XulrDNnK4phdVJgkPe4lSqMh2//6YtyRLT3+g7q
 afkv942Y/w6XMc5v/bT6ffkYpxiXRe7zXK8CQ/vO+w==
X-Google-Smtp-Source: ABdhPJzW+yK0neVV5ZLXfHZuKdL2m3iIwiXaA8c97nSmT8Xer0u16SBA/+K8iU8H0iefWgDrIbwvO/Ns2eUMghYcqCI=
X-Received: by 2002:a2e:8186:: with SMTP id e6mr3868617ljg.252.1590604895724; 
 Wed, 27 May 2020 11:41:35 -0700 (PDT)
MIME-Version: 1.0
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
 <020de18840a1075b2671736c6cc2e451030fad74.1590594512.git-series.maxime@cerno.tech>
In-Reply-To: <020de18840a1075b2671736c6cc2e451030fad74.1590594512.git-series.maxime@cerno.tech>
From: Eric Anholt <eric@anholt.net>
Date: Wed, 27 May 2020 11:41:24 -0700
Message-ID: <CADaigPXJ0BnMUp=XN6G92Tx=H9j55pmsBAujO2mcpiiTs-RHnQ@mail.gmail.com>
Subject: Re: [PATCH v3 070/105] drm/vc4: hdmi: rework connectors and encoders
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_114137_566000_7892B2A2 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 DRI Development <dri-devel@lists.freedesktop.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 8:51 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> the vc4_hdmi driver has some custom structures to hold the data it needs to
> associate with the drm_encoder and drm_connector structures.
>
> However, it allocates them separately from the vc4_hdmi structure which
> makes it more complicated than it needs to be.
>
> Move those structures to be contained by vc4_hdmi and update the code
> accordingly.


> @@ -1220,7 +1219,7 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
>         struct drm_device *drm = dev_get_drvdata(master);
>         struct vc4_dev *vc4 = drm->dev_private;
>         struct vc4_hdmi *hdmi;
> -       struct vc4_hdmi_encoder *vc4_hdmi_encoder;
> +       struct drm_encoder *encoder;
>         struct device_node *ddc_node;
>         u32 value;
>         int ret;
> @@ -1229,14 +1228,10 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
>         if (!hdmi)
>                 return -ENOMEM;
>
> -       vc4_hdmi_encoder = devm_kzalloc(dev, sizeof(*vc4_hdmi_encoder),
> -                                       GFP_KERNEL);
> -       if (!vc4_hdmi_encoder)
> -               return -ENOMEM;
> -       vc4_hdmi_encoder->base.type = VC4_ENCODER_TYPE_HDMI0;
> -       hdmi->encoder = &vc4_hdmi_encoder->base.base;
> -
>         hdmi->pdev = pdev;
> +       encoder = &hdmi->encoder.base.base;
> +       encoder->base.type = VC4_ENCODER_TYPE_HDMI0;

Wait, does this patch build?  setting struct drm_encoder->base.type =
VC4_* seems very wrong, when previously we were setting struct
vc4_hdmi_encoder->base.type (struct vc4_encoder->type).

Other than this, patch 68-78 r-b.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
