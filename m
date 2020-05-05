Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 477531C635B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 23:46:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xl3wdcNue0p0pxghXbYRN5ECmy8/1sxmEpNiZZiULso=; b=nxgKcVZdK6/oN6R3HXRsQbb6oe
	OSz8LOIGur+HAMadwgb2XjaITuidcs7xqmx+fsa8JvN1TUArLo7edzTa3o4czsN2jPK3Y9lvM1hWu
	dlEhnoyCTB4sPEMwcY8qjKAnuGRfJd9q+Q6JVCiBX0H42nqRWVcDUyONfbgmMU++r1NXhlwnwMSZU
	bOaANbKZbnmkFMLyjujQS4vZEfojsrm3GrgxmMbFnFSL0xq5bvOs+pYzMkIVQiDD+0Xs7eLELKDbQ
	fWS1lS5vj1fdNcYwsGsCj/WiXtirTvLVH8jCQO7K4jR0U6INiQ+I/2hvIJNWgQn9fcrvvHTjZtkC0
	+i1IomQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW5Of-0001Ip-Ag; Tue, 05 May 2020 21:46:37 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW5O1-0000tl-NI; Tue, 05 May 2020 21:46:00 +0000
Received: by mail-qt1-x843.google.com with SMTP id k12so3422868qtm.4;
 Tue, 05 May 2020 14:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=NpBCtXOwKgxraDAqMLQlaDGkzFixaXVJTgaJ+cTQxAU=;
 b=sqLgPwwXtoPOEBnbyVTD6cYOITJkB1ur03Mep+sRAK+XUgaNrFAyE1lDzIB00zAdlA
 6XeBSXZLSFiU0uDkHJyj6GZPTpQk8p56wyJ73XSh5t3n5bsFC5QSUMfcXSsogFI+J0jT
 xLT/Xublm0dIcBdi9dDi74+OWApLxpLXHg+HG4Gx1R3CN5yldhkFi9zffnP68om5Eg6q
 Uviv207VmRm03ls+hifi2+gaji2e/SnSxbGgpGlQM+S2DaDn06nMKEMmSoGroEg1pQ8Z
 EGooot7kZn4zrfiTkYucLr2zCOSkhfHBKx7sTeVB1Fr+Iy0mCYTrKgx+cJUpVFaEi8un
 PMGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=NpBCtXOwKgxraDAqMLQlaDGkzFixaXVJTgaJ+cTQxAU=;
 b=miAgxXYcyxflEG1Kw/tdSSFuX63xXK4eTf+t5tniHQYNsODKkh1qjpWRpBlBjnoz4c
 gJdaujMTg6pB//Dfa7IHlKYfVGo7lPFUubqNMIqJpbNksrv7mzu3G+5tH7Vpk72VigA2
 9oxV5dIwnUW0Cm98JsvODWIC7mdivjrLb2nOX+2j3KVcxcwi29Jw7RcFbrgM+uUtDH0v
 GcgErnhLaQ5YagXrJZafcf58RtlaFDfYk6nBxPnVGRW7S6fT8fW9vXODcmCbv1Yu7bUr
 rB/Bv46LnUtfARkTjF1Tey7ETJMSjiJpZOgAvxYa6EPcJOM0ZHwLvIc2w5Js8M3biEAS
 ve4A==
X-Gm-Message-State: AGi0PuawRUfPvyZEGBO3kfdCAXa7FdGDiMchqa9oFpBLZWAyE7RtI2cn
 RWOCpSAVdBVsmPK9LYbW1j4YAVHXtcCgRPDPeBk=
X-Google-Smtp-Source: APiQypJ+I7qzGCg7I3XEFp+30dxyhhDaYL307MRMPZ3KJ2JDfJIaAmHE2VyjJI3pkzHl5cnzFRj2Db79lVlNOnLj3x4=
X-Received: by 2002:ac8:27cb:: with SMTP id x11mr5207636qtx.272.1588715156968; 
 Tue, 05 May 2020 14:45:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200505040048.132493-1-eizan@google.com>
 <20200505125042.v1.2.Ie596e59e0a18935f0b7321ff45e5c5f2ce8082b1@changeid>
In-Reply-To: <20200505125042.v1.2.Ie596e59e0a18935f0b7321ff45e5c5f2ce8082b1@changeid>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Tue, 5 May 2020 23:45:45 +0200
Message-ID: <CAFqH_52qx7g5BLUBGoUQGFTcFE9FjWGe+i9on=5p7ZqzObsB6g@mail.gmail.com>
Subject: Re: [PATCH v1 2/5] [media] mtk-mdp: handle
 vb2_dma_contig_set_max_seg_size errors during probe
To: Eizan Miyamoto <eizan@chromium.org>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>, 
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Houlong Wei <houlong.wei@mediatek.com>, 
 Eizan Miyamoto <eizan@google.com>, 
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org, 
 LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_144557_985190_06E24B71 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
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

Same comment as the first patch. You should probably fix your configuration.

> ---
>
>  drivers/media/platform/mtk-mdp/mtk_mdp_core.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
> index aeaed2cf4458..c20ac7681c6f 100644
> --- a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
> +++ b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
> @@ -193,13 +193,19 @@ static int mtk_mdp_probe(struct platform_device *pdev)
>
>         platform_set_drvdata(pdev, mdp);
>
> -       vb2_dma_contig_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32));
> +       ret = vb2_dma_contig_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32));
> +       if (ret) {
> +               dev_err(&pdev->dev, "Failed to set vb2 dma mag seg size\n");
> +               goto err_set_max_seg_size;

You don't need to introduce a new label, just goto err_m2m_register



> +       }
>
>         pm_runtime_enable(dev);
>         dev_dbg(dev, "mdp-%d registered successfully\n", mdp->id);
>
>         return 0;
>
> +err_set_max_seg_size:
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
