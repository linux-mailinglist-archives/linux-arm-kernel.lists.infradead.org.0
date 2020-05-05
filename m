Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFD21C635A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 23:46:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Jvuf1K4OUHMtJTaormesfcoNzykFM4sJzbOJ9UXuKmE=; b=hmDnyY8Mec658OmlAK6bPX56Kp
	kyH0yMwaqPCvp7/w6sHQ091e6fUBgfRvSRJDXSyu9xDeTzHxjgoWnVcQW7jvKwnMgZAh/1VD2ozMb
	Xiy01aRHptbwt1Fm6nJuIY90wKYOoQN4PWow8F2baiirNcNsrduikfsjDtxxJgLDZSFsJ6xHe+Qp7
	KZWzSgXMduWNbWuKUuIi9f6SDFLo51QyTdQ1WcsOrEq4iCD+DpkGj0S0S0ukhT/WbuK/KcnTS/qUM
	truEGF1nux/vs8Rivz3pQUfWYPRnLvjoxOLVaBqwT2krCi2AziDYwVOr1fIsUhYoXn4nUaihf9787
	WhnklOjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW5OQ-00014J-Kt; Tue, 05 May 2020 21:46:22 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW5Nx-0000oB-Jy; Tue, 05 May 2020 21:45:57 +0000
Received: by mail-qt1-x843.google.com with SMTP id g16so3387188qtp.11;
 Tue, 05 May 2020 14:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=YNpbBjGMQGno/rDabyBqawqt1qQvH/iqDbutI5P6nj4=;
 b=WvbZEr1W8/FYBVw6Arjjou8Ey1U1yseqYlLBP3FioiU9RfD0Gq05iBaSmRRtWOZ8rU
 bTGo3tXD0frjhBJPwDPVmoJ9hOfqbrVHDs2vwFykQmjXdt/2LriAlvE5ltkDtt9VB4kW
 bWLbKP5YLik0ruz8JWY44WbHXlqeD1eVk4AviEdTLs5340fHW1VNOhpzkttgVjO8mb71
 c4d7T+oY8167UZ4JvcUtnpkqfcOfwbzksmDwxmXwTY1zg/m/X2/C8j/Q761zko4N6Zvh
 yvIT3QqLxrVXjxyyI4hOcPe0i0KnqzEqlx4Hbp+8L5vmlhr5M7h+38eBacpSOWCwQRLG
 nCFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=YNpbBjGMQGno/rDabyBqawqt1qQvH/iqDbutI5P6nj4=;
 b=ExdotYA0EyLSWXrOOX63cnQ9E11AduGrEeGsf/TSU2c8qF9soiThfA6tkiADFDnlOO
 pNLHqNc+KK7AHRsmPU+1GexCAXBCVekPz+y4LCRi6ebWFxOurr+ZPLxcMMVEYmp4L7pI
 bhesqEOdmd8qQSY3LivBJrsNgmrRw3Kto5mExYSRhqlr/SrDuyywjYm2Nr+k8i1Q6LhR
 Sht8HJcG5wBS+vKqQFnzE3crWvB9a6lfUzxZRMqiSAY6bUQ0dQrg5ysWrOMKURBDJo1q
 1phHAx66dKNSZRu3tlmJHjHobYQrMFDXbfGcJKi5QithQQZe4RGmoXtqDdvyiNyESLCK
 Hm4A==
X-Gm-Message-State: AGi0PubSQ8wnVEJsqn5akvptJxNpTJfOQJnvwS2E5ZSrcdl15jWkCxFs
 Ji7YdtoS6cYPQPFbJ83Ew2ZsCNdX/hv822v2dja49gmYJlg=
X-Google-Smtp-Source: APiQypKsjUJF2gul+5ouiC2552dVTBCGixukQdN5ecLOk/2yh+D+Odr/lqdxg8xu7ngwsUbGAtR33z7v62vk5eMX3Hk=
X-Received: by 2002:aed:24ee:: with SMTP id u43mr4964921qtc.178.1588715152435; 
 Tue, 05 May 2020 14:45:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200505040048.132493-1-eizan@google.com>
 <20200505125042.v1.1.If0cdd88c5399a38cff7163298cc8794f8c40a401@changeid>
In-Reply-To: <20200505125042.v1.1.If0cdd88c5399a38cff7163298cc8794f8c40a401@changeid>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Tue, 5 May 2020 23:45:41 +0200
Message-ID: <CAFqH_53f_ehyvHDPTYRigjkPFxpVQyKsdghS06fQ+BVqYMjy5w@mail.gmail.com>
Subject: Re: [PATCH v1 1/5] [media] mtk-mdp: remove mtk_mdp_comp.regs from
 mtk_mdp_comp.h
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
X-CRM114-CacheID: sfid-20200505_144553_667432_BB0AF8E1 
X-CRM114-Status: GOOD (  13.18  )
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

Thank you for your patch. One trivial comment below ...

Missatge de Eizan Miyamoto <eizan@chromium.org> del dia dt., 5 de maig
2020 a les 6:01:
>
> These fields are not used and can be removed.
>
> Signed-off-by: eizan@chromium.org

Malformatted Signed-off-by tag. Drop it.

> Signed-off-by: Eizan Miyamoto <eizan@google.com>

Note that the author/seder should match the Signed-off-by, so you
should use your chromium.org account here. Other than that the patch
looks good to me, so

Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>



> ---
>
>  drivers/media/platform/mtk-mdp/mtk_mdp_comp.c | 1 -
>  drivers/media/platform/mtk-mdp/mtk_mdp_comp.h | 2 --
>  2 files changed, 3 deletions(-)
>
> diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
> index 14991685adb7..facc6104b91f 100644
> --- a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
> +++ b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
> @@ -106,7 +106,6 @@ int mtk_mdp_comp_init(struct device *dev, struct device_node *node,
>         comp->dev_node = of_node_get(node);
>         comp->id = comp_id;
>         comp->type = mtk_mdp_matches[comp_id].type;
> -       comp->regs = of_iomap(node, 0);
>
>         for (i = 0; i < ARRAY_SIZE(comp->clk); i++) {
>                 comp->clk[i] = of_clk_get(node, i);
> diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h
> index 998a4b953025..3b83bd6e0d8b 100644
> --- a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h
> +++ b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h
> @@ -38,7 +38,6 @@ enum mtk_mdp_comp_id {
>   * struct mtk_mdp_comp - the MDP's function component data
>   * @dev_node:  component device node
>   * @clk:       clocks required for component
> - * @regs:      Mapped address of component registers.
>   * @larb_dev:  SMI device required for component
>   * @type:      component type
>   * @id:                component ID
> @@ -46,7 +45,6 @@ enum mtk_mdp_comp_id {
>  struct mtk_mdp_comp {
>         struct device_node      *dev_node;
>         struct clk              *clk[2];
> -       void __iomem            *regs;
>         struct device           *larb_dev;
>         enum mtk_mdp_comp_type  type;
>         enum mtk_mdp_comp_id    id;
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
