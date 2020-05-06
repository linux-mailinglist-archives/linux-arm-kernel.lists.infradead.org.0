Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C4E1C7443
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 17:22:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gvXDzZShpu67jkWkSA+iKGrhUaWO3yXpSH2O6OTx3bY=; b=jy5jHK8yOtbaeQ
	ZOFk9k0UPzy7uqFcuHhr0nXGhgfW4G3fpYFGDbkH8N1AXymSNrY8AlagOVuLVKpEchqOMMzyKC6fF
	Q8mEqaSAXUf9OGiBoCoG0pAuV16BJDcEnVa2HfquyeRba/FAlev8ZCCZp+ld5onyL11PbZiLS7jeH
	uJkjeibvnR2WcG5VO5P7QYGSMYLIlMOvm2XaySc1oYgMyWK8TrlnSCkrADxjUXNdkl2yTAlQ60/qj
	tvdhv/j2aFTnukSv5THpEJTO8S7WmQ7lnJBnBII/rGVPw1oCIWKfSUbW6sGHB5313dWcoqT/xoCtl
	9rHF4jcQq0U6T0ErUe5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWLsf-0003ek-Ee; Wed, 06 May 2020 15:22:41 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWLsV-0003dQ-Kd; Wed, 06 May 2020 15:22:33 +0000
Received: by mail-qk1-x741.google.com with SMTP id n14so2307354qke.8;
 Wed, 06 May 2020 08:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UTLapDh6d6sa8JwxWOzYsk+xzBhP38ZyiktZuaXRCHI=;
 b=U4pPQvxDSFslfW9caqLL2iEZJPKAkK07gBRE9swSmx0eoxQPVz7uvid/DnJKkfomyj
 Qku3qbx38HEbSOfJ/7i1rK5VqUxEEibBDynvO2JtYd8jsPBuOJSqRmf9xKjBERGYKZ/c
 GwVO3uJ4W5YsQBhphnG0UlxOfdAiZY7MMHh26coLua4rQMY57/bVZgjbvxIjci01AlO0
 ewa6+hKVqoH/lycs4MtAmlJ7rV8I6a8g+DuNUjC4k+8dyl5ql2VwKPagDk4SP6AXwoEm
 8Z9eD0tLqSjlyEQl7gwggn3e8qjA6oVWT0Y0XI689Qu2uoxVdNMYqB78Auf/W78dQsFR
 AQDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UTLapDh6d6sa8JwxWOzYsk+xzBhP38ZyiktZuaXRCHI=;
 b=TsYEGVxh4rE3PEimT33PwiHQYxMzk7nlCbo9IhdZpRL/JRMQo/HJD3WJ4gI7wqrFKn
 jqNpC+dpWC/ZB7JUmWJL3Vf7U19NMcRNwCdD1N+loxQ5JC/29Bf7Ccl0vidXdPJTxrLI
 PqPGomv1lvEMbazpkm+xnbt858vOeCfAwFe1aWWgZGC1GcX9FsEDJcV37JZM9Xvpf+JQ
 yWpG3+gFEVwCI9xxagVC9Jf4A6pWKpLWLk0mCYhQHw1eXQWLhDMXHL3Aj3PUdcFIW7/p
 ZfmgruKBP/awP3jE657ruBFPtLw1XvYkCS9zTssukdBWFqkzrdck0UJ9csNdyIY+QVJ2
 UEpQ==
X-Gm-Message-State: AGi0PuZufH9a69FLDygdiv910R2e15NJKd9UiqKZw7eVD0FsT+oF3eIn
 oiUNXKmthHcxM6/LwIck2BAPX5W7oDjhbCjZiGs=
X-Google-Smtp-Source: APiQypKsxvWF4y74GYdGypVDcJfTSzmgBGHkfDV88Yy1EbC8OSn5BNhqQrbQzK/PTVwD9mD+DIxmTIufp9t3uVKQClE=
X-Received: by 2002:a37:a7d6:: with SMTP id q205mr6564216qke.85.1588778550313; 
 Wed, 06 May 2020 08:22:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200506054920.109738-1-eizan@chromium.org>
 <20200506154832.v2.2.If340fa06d86053aaea25841b36741fe69c3126dd@changeid>
In-Reply-To: <20200506154832.v2.2.If340fa06d86053aaea25841b36741fe69c3126dd@changeid>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Wed, 6 May 2020 17:22:19 +0200
Message-ID: <CAFqH_53hZMxwR=Wk8YY485v_uAgPDh1MRs2ksv-BkfJ7TJGT6g@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] [media] mtk-mdp: handle
 vb2_dma_contig_set_max_seg_size errors during probe
To: Eizan Miyamoto <eizan@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_082231_678910_4BE79C6F 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eballetbo[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Missatge de Eizan Miyamoto <eizan@chromium.org> del dia dc., 6 de maig
2020 a les 7:51:
>
> This is a cleanup to better handle errors during MDP probe.
>
> Signed-off-by: eizan@chromium.org

As I commented on the first patch you should drop the above line.

> Signed-off-by: Eizan Miyamoto <eizan@chromium.org>

Other than that:

Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

> ---
>
> Changes in v1:
> - remove unnecessary error handling labels in favor of err_m2m_register
>
>  drivers/media/platform/mtk-mdp/mtk_mdp_core.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
> index aeaed2cf4458..9b24b8d46eb7 100644
> --- a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
> +++ b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
> @@ -193,7 +193,11 @@ static int mtk_mdp_probe(struct platform_device *pdev)
>
>         platform_set_drvdata(pdev, mdp);
>
> -       vb2_dma_contig_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32));
> +       ret = vb2_dma_contig_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32));
> +       if (ret) {
> +               dev_err(&pdev->dev, "Failed to set vb2 dma mag seg size\n");
> +               goto err_m2m_register;
> +       }
>
>         pm_runtime_enable(dev);
>         dev_dbg(dev, "mdp-%d registered successfully\n", mdp->id);
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
