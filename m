Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62ADA1C7469
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 17:25:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nWodgM3MQeebL5DdNVpami/ktBoKePVncr/HgzITEiw=; b=rC/GJiPvGUIH8Q
	dhJ9h4UtJvpiDc8zVpdxd6bj3UnLN1UIEoD4JWZB9XYcs4rqOQ4/yp/Q9X+9H1YO8+bCipT9vBkDI
	8iIwrD1mUpX4FQL0wrS7H9iNEiCM0p+OdRiuvZUYSz50gcjGm9TJEB0MQZhhCtFI97kpUQ8sgUjtp
	9SwRr2bA+Qx2EQgHW2I2mJ6rQKnKTrztNujZBMxgIc5cPvYjoHNda1wewRFWowun6ZJlJcruyGX+j
	O6qS+DVE9W8jwc6lXi9ZBHTwx3SsmxXIJdGbXW8/X7xRetlisvGE3N9nBXMziVNQkKyUrAjcRkLTP
	XiBdlmkNiJEc6IcqoUpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWLvG-0006NY-QC; Wed, 06 May 2020 15:25:22 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWLv1-0005QP-6K; Wed, 06 May 2020 15:25:08 +0000
Received: by mail-qk1-x741.google.com with SMTP id k81so2328101qke.5;
 Wed, 06 May 2020 08:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2rKUJoVCstS8j+217iqzpL0arUK/6LFCBfMeZ1DLw34=;
 b=k1r4mxpeI+EmP8nUVlONZx45dwe25zNrS7sa/tPEShURitcx+P1p2e9KLZOugr4Dmn
 LFSdKpg6yKHiXk3XWmkdLRd71m7BeSD0HQHpmGjEk/0IRVrFkIHMJ9ucnyih7SJgpfnf
 6hGB0lTi6BzYjHtv+ByIqvryFbllvlshoWpqVDaoPnF6l0hNRwPT5yqdSfj4n4XW/nio
 L7e2gguZj/8WBw9++jwHEZXh/nui9vo9UbwLjsDIsuPEZPcfpVnEkGEjHxBklXOIEt1s
 8zN9jL2f1PFcF67Bijq6NXSHeL24FVl2bxBxPG8D4U1AcywcVLCjl94k40aYI5wE0ylE
 60hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2rKUJoVCstS8j+217iqzpL0arUK/6LFCBfMeZ1DLw34=;
 b=l2iOFX511rzZ5PpMfAlZePJUT2Dv+7x25iOpwrtiCIE+v+cMfA0p+9aNMLCuqdTxqO
 Io90RO5WXxMZoPBw4+1rhSrH5/vF12RQnztFvp1KUoUY7jm3729sL2DYHcD6BoXkyQJ3
 RY+xNIxJPhUhTqcIxn0Dnv51o8VGmsbgUxgA4VjJFy3d0x203avl7P/59H7kzpuY+WuU
 8GKV4cJCm7f0ZfqVoPpNQJyF2slBSqLxgwPPIpOr1cD0NdLQBM/NtCKFXh9xT/WiiRiV
 Rynb2T1bOKd9VfUMHOIA7U1YYlvfoZsrUv1Q2nkNum2/fGjlocRkb6FREqwjExjrblZJ
 yo6A==
X-Gm-Message-State: AGi0PubnwRkSaAkfKA0IZ7XL6USCvxM2G4EuuZYQxCYHwXBdbqDFal4D
 ys76nbAU1N4UcbB15+cu6YSsDmcJeJMhN0cdClw=
X-Google-Smtp-Source: APiQypLN8pqWxzhOjoSavD/Blq7jrlAhL4/SdXZMluNjCSenj8jZiR8ivhrWbzxp8MtF270/m2d7r/XhrXZQ+gkQYrk=
X-Received: by 2002:a37:6c81:: with SMTP id h123mr9142170qkc.290.1588778706429; 
 Wed, 06 May 2020 08:25:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200506054920.109738-1-eizan@chromium.org>
 <20200506154832.v2.3.Ia8efd7905e2fcfc81f547e27a51f06373624b3da@changeid>
In-Reply-To: <20200506154832.v2.3.Ia8efd7905e2fcfc81f547e27a51f06373624b3da@changeid>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Wed, 6 May 2020 17:24:55 +0200
Message-ID: <CAFqH_531xmZDTCdF2=rHP7fu5=9w_CiOafHQKpcmjNwYBK+gnA@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] [media] mtk-mdp: handle vpu_wdt_reg_handler()
 errors during probe
To: Eizan Miyamoto <eizan@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_082507_263703_AAB2B441 
X-CRM114-Status: GOOD (  15.68  )
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

ditto, remove the above line.

> Signed-off-by: Eizan Miyamoto <eizan@chromium.org>
> ---

Other than that:

Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

>
> Changes in v1:
> - remove unnecessary error handling labels in favor of err_m2m_register
>
>  drivers/media/platform/mtk-mdp/mtk_mdp_core.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
> index 9b24b8d46eb7..17d155219ba2 100644
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
> +               goto err_m2m_register;
> +       }
>
>         platform_set_drvdata(pdev, mdp);
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
