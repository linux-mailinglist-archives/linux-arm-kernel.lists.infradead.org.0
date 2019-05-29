Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2723A2D47F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 06:19:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KAR/oIWleZMwVFWwl3NBKBEKylmy2mIYrPB6GbsRZVc=; b=c/k7Kgl5E92tR7
	aweSMe6jOlYbKuDwXgFMQgB/MmQAI2miaUlN7Mcp4R+QVcFSuNteDJa+915rt9q72K5xm/Zhd/t/Z
	6NL1hA65+Cza0XJk05IzKZgZdCuCifNfWf7o71QhAoJfJJrzFsmmt1wcsuwPeh/5A//DSSFeziaKg
	PnmTH7atPgp6mG2e/p+Tgrn8CY6x8c1gr/BTxtn7Wolh0Qd/a7U92Jo4sCFH4MP88dKGeJL7Cfpqk
	A29dBibt2w0pHgKwkjADVyZJvUx643KgtU4LWt0WgjMncWKVdGpOJlg07Wo18k8o7oxhcPVHFvSkD
	zb9WqAk/R+qT4PjyBzkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVq45-0001wx-Ep; Wed, 29 May 2019 04:19:49 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVq3w-0001vE-Db
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 04:19:41 +0000
Received: by mail-qt1-x82e.google.com with SMTP id m2so937402qtp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 21:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FnqQyLt42DZ9noxJLCU2V14s5enRSAf3rpEHwRX9Kzo=;
 b=hYOi8BkFEY0SXxqQqLEZF9NnP9Pbvi1wS7yC9BK9JmRFXUan60kY7zFDXyLITqTDUS
 7ll6TdMYTzb7zrvvduAaFLWu3eONcUAliDarfOiByT5Tx+eF5Mcj8TPYuztHIg075hAh
 AaICUAmx02EeefvpAqjSqQcUnil3D9/4DGJhU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FnqQyLt42DZ9noxJLCU2V14s5enRSAf3rpEHwRX9Kzo=;
 b=cgfMF+ft05VnNfS/+/xV5Fc6F/x4cjtnJ2kbPsjFJvquduL+X0RQ0Oa8TEylmWEnPw
 QjB8EsZUPgvQoEOSLQfdS/iR+EdlkS2BLAY1A4P+wOuoFRg739e7YZQmphA4t5hbOLDd
 dh4gBkJYgA/6nDAYEu16zogrB08YBJKcxy4SVpcHPV4UYxORftH5mOoldRB5ZCKQ3/Cf
 +FaFnistkgygfuP9Hnsc+Ma8XNFZVQ0yr0E5f08+feBBY9HfRq7DwoDOsfThfrLzqfBl
 i3kZ0ugLBnqh82Z/BU0guttkWr7zUZZLgmD+8GdddtCjhS3gkkRConP4v8C6/FQS+moI
 +NHw==
X-Gm-Message-State: APjAAAVY40Dfb7h7FHh6CZt8iC1Rpm2NhvCWydldFA+jooDoLYrj8cVz
 rDIefgyH8TWfLOVaO3oZ9cvXVaSfTMBRTcVNRsbUOw==
X-Google-Smtp-Source: APXvYqxQjVrzoCeL6L4KHpLXuAIIoAai4JlsMWOYefX4hqGGu7mkiavfm3JE86Sp3YUok2L/Ps2IUpK+ghjSMUbbU7I=
X-Received: by 2002:a0c:b66f:: with SMTP id q47mr23601745qvf.102.1559103577129; 
 Tue, 28 May 2019 21:19:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190519092537.69053-1-jitao.shi@mediatek.com>
 <20190519092537.69053-2-jitao.shi@mediatek.com>
In-Reply-To: <20190519092537.69053-2-jitao.shi@mediatek.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Wed, 29 May 2019 12:19:11 +0800
Message-ID: <CAJMQK-jST7mtoo-1C-8hU+O4x+_gOF0CuwToPwc=HJe86HDRHA@mail.gmail.com>
Subject: Re: [v3 1/7] drm/mediatek: move mipi_dsi_host_register to probe
To: Jitao Shi <jitao.shi@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_211940_455038_C7D984D8 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 David Airlie <airlied@linux.ie>, stonea168@163.com,
 dri-devel@lists.freedesktop.org, Ajay Kumar <ajaykumar.rs@samsung.com>,
 Vincent Palatin <vpalatin@chromium.org>, cawa.cheng@mediatek.com,
 bibby.hsieh@mediatek.com, CK Hu <ck.hu@mediatek.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Thierry Reding <treding@nvidia.com>, Sean Paul <seanpaul@chromium.org>,
 linux-pwm@vger.kernel.org, Sascha Hauer <kernel@pengutronix.de>,
 Pawel Moll <pawel.moll@arm.com>, Ian Campbell <ijc+devicetree@hellion.org.uk>,
 Inki Dae <inki.dae@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, yingjoe.chen@mediatek.com,
 Matthias Brugger <matthias.bgg@gmail.com>, eddie.huang@mediatek.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Rahul Sharma <rahul.sharma@samsung.com>, srv_heupstream@mediatek.com,
 lkml <linux-kernel@vger.kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Kumar Gala <galak@codeaurora.org>, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 19, 2019 at 9:25 AM Jitao Shi <jitao.shi@mediatek.com> wrote:

> @@ -1045,12 +1045,6 @@ static int mtk_dsi_bind(struct device *dev, struct device *master, void *data)
>                 return ret;
>         }
>
> -       ret = mipi_dsi_host_register(&dsi->host);
> -       if (ret < 0) {
> -               dev_err(dev, "failed to register DSI host: %d\n", ret);
> -               goto err_ddp_comp_unregister;
> -       }
> -
>         ret = mtk_dsi_create_conn_enc(drm, dsi);
>         if (ret) {
>                 DRM_ERROR("Encoder create failed with %d\n", ret);
> @@ -1060,8 +1054,6 @@ static int mtk_dsi_bind(struct device *dev, struct device *master, void *data)
>         return 0;
>
>  err_unregister:
> -       mipi_dsi_host_unregister(&dsi->host);
> -err_ddp_comp_unregister:
>         mtk_ddp_comp_unregister(drm, &dsi->ddp_comp);
>         return ret;
>  }
> @@ -1097,31 +1089,37 @@ static int mtk_dsi_probe(struct platform_device *pdev)
>
>         dsi->host.ops = &mtk_dsi_ops;
>         dsi->host.dev = dev;
> +       dsi->dev = dev;
> +       ret = mipi_dsi_host_register(&dsi->host);
> +       if (ret < 0) {
> +               dev_err(dev, "failed to register DSI host: %d\n", ret);
> +               return ret;
> +       }
>
Since mipi_dsi_host_register() is moved from .bind to .probe,
mipi_dsi_host_unregister() should also be moved from .unbind to
.remove?

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
