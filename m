Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 330E11C635D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 23:47:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NZn+U839UHzJjo+cEAmVuy21SR6wLnju58Z8efssiSY=; b=q+ZAPcu+17bNEI
	6iz+00stt/a04wpz/pabLHC0Rz5knPaZA0PpbMxvMIBMNj7My6XvHSSRxCHF8PfFG8htzPfcEDPqK
	1U8YSmdTG+wk6J+nTGQRJxZo3H13QgfmTIBwaLPMHiKTjO73JWUcaaon8r0aHZ5VPGG9PeccIuSaF
	cmPMeCEAZU0wEgV077y40CQr4lkER1Icb07gSmGCR63d8xSRgQLmdtxUTIh0ZOoHNU7t1ZQR4AzdM
	cNrcBX11dZWMV9W0dPLIdF1rZ3ELRQsJhwy3RgGWbR+1wFXYgXHGqlvU+1fIH5lvFmyCNZxp9n4tc
	838j0xLNNuYF7dS8RjZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW5Ow-0001b4-RK; Tue, 05 May 2020 21:46:54 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW5O6-0000yR-LZ; Tue, 05 May 2020 21:46:04 +0000
Received: by mail-qv1-xf43.google.com with SMTP id v18so42273qvx.9;
 Tue, 05 May 2020 14:46:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=R8NCAiVQGf1RfOegGjvzJMziYyDzp2bsCSV1MaN4Voo=;
 b=ZIoXJJraEJVdnimMK50llvgOXi7em9HScaaU0nSq0RkeBqNWbeZeE9X/srcFx5jieX
 qQl4234YJtVcJNFfaHC8xj6U0z+l2yZ8R1rCmZcg7w+E2X2wmfEaZVWHPdfyqdgwLnxt
 rYV+cfrjp5X3UvK8pjx2n/AAfKT0Gg8JQLWs35P01KX67S/rY/Kgh4qh1j+3391E53Mg
 o1ukd6V1kR6sjIlXVhCQHwhLYyVXjg8I9nGLRwn04GU+DGHf4k3QYo5hHx/DwE9nEyE2
 tGkgEMN4ZUb3A2ScVWZtB8f2uKK4xj3hRc7ZoKy+xi34Rwv1rn2pxYkseY2QUOUCsyeB
 gfXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R8NCAiVQGf1RfOegGjvzJMziYyDzp2bsCSV1MaN4Voo=;
 b=ZDUbxfO7RuE9hi88RFt555REt+L1+trb0kmonONZzOe68SOffWLpr0743D8NebnBcR
 WWh44DwPsvCMI2//F4zOox87FAzGIemnJtZcwp5ohb3/v7ZscdTJwy/0VzQWzyPMbZEZ
 4gSCewiW0HiPfML8CcGiSWRoT14JsDtZJ1uwGmc1032lbqh9KxHaTEaLydqmf5p5zQad
 D5SZZroQhiTDQPrBaTKD6fuaNQnHzawtI3FcjRZYQ/j1rvYIYFch6Snr6QWTo2iJ8rh8
 xmRAFbkHdsrvFkm5h5svIo1EKpJxu+CdAPK7wdCZAiO0l+jYwjfP/r3IYw10/zVFngKl
 gkLg==
X-Gm-Message-State: AGi0PuYWjXlsnzQhCMMBVUblOTUNP3W5khKB2YBHvPlPJgVYmVh4H1QC
 0lgrpDyLowzWXnRZoVMReR0Ix1QMPGGHD6ti0dY=
X-Google-Smtp-Source: APiQypIgezGzc28P28ECC0K35WZq6bKt5h1gPnuYe/Qlr/SsV0rJJZPPlQSFwztMV/9sQnHqEoH0ghXBgjTBUwXil6M=
X-Received: by 2002:a0c:ec44:: with SMTP id n4mr4828893qvq.237.1588715161652; 
 Tue, 05 May 2020 14:46:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200505040048.132493-1-eizan@google.com>
 <20200505125042.v1.3.Ieebc5dcb6dcc116119a570f14786ba47c9007ec8@changeid>
In-Reply-To: <20200505125042.v1.3.Ieebc5dcb6dcc116119a570f14786ba47c9007ec8@changeid>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Tue, 5 May 2020 23:45:50 +0200
Message-ID: <CAFqH_50YZacJPRv9Wcr6h0U7q5BSNTjCsTuaLhUXNMGe=-nYHA@mail.gmail.com>
Subject: Re: [PATCH v1 3/5] [media] mtk-mdp: handle vpu_wdt_reg_handler()
 errors during probe
To: Eizan Miyamoto <eizan@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_144602_751746_7E518DD8 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eballetbo[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 LKML <linux-kernel@vger.kernel.org>, Houlong Wei <houlong.wei@mediatek.com>,
 Eizan Miyamoto <eizan@google.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Eizan,

Thank you for your patch.

Missatge de Eizan Miyamoto <eizan@chromium.org> del dia dt., 5 de maig
2020 a les 6:01:
>
> This is a cleanup to better handle errors during MDP probe.
>
> Signed-off-by: eizan@chromium.org
> Signed-off-by: Eizan Miyamoto <eizan@google.com>

Ditto

> ---
>
>  drivers/media/platform/mtk-mdp/mtk_mdp_core.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
> index c20ac7681c6f..f974242663dc 100644
> --- a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
> +++ b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
> @@ -188,8 +188,12 @@ static int mtk_mdp_probe(struct platform_device *pdev)
>         }
>
>         mdp->vpu_dev = vpu_get_plat_device(pdev);
> -       vpu_wdt_reg_handler(mdp->vpu_dev, mtk_mdp_reset_handler, mdp,
> -                           VPU_RST_MDP);
> +       ret = vpu_wdt_reg_handler(mdp->vpu_dev, mtk_mdp_reset_handler, mdp,
> +                                 VPU_RST_MDP);
> +       if (ret) {
> +               dev_err(&pdev->dev, "Failed to register reset handler\n");
> +               goto err_wdt_reg;

No need to introduce a new label, just goto err_m2m_register


> +       }
>
>         platform_set_drvdata(pdev, mdp);
>
> @@ -206,6 +210,8 @@ static int mtk_mdp_probe(struct platform_device *pdev)
>
>  err_set_max_seg_size:
>
> +err_wdt_reg:
> +
>  err_m2m_register:
>         v4l2_device_unregister(&mdp->v4l2_dev);
>
> --
> 2.26.2.526.g744177e7f7-goog
>
>
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
