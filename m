Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E48A81C6363
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 23:47:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TqqTk6Wo1cBr3gI7bE+HjJu7v2u3ch5cPzhwE4g4DR8=; b=cKaIUHZ1sH93bp
	FcYZ5wGccXeynHj8wZ3XpQ9AZe/f4xUJLFOQfRCR5I9fUT/GPjn/AvsYLDdJIOkWSyxYiiqf1LH16
	GoLCGpEB6Go0xFFJPFuX/XdPqi7OKE/kpcM5JeaYq6bxGRjpaono9RY/ZuUinuBYFHZX24eMn+hrp
	Kdt+V5jXGnoiJwEv+qpjdELNUDXaKAdWvYRMFOFT6Sz1Atn/T/koDrC1/X/000cHWJOW0cKqqVVt7
	QNkfHi9H2uEH/SeItCMgIISjorg3Ih+zmoLflGnbm11vVW0JUaQvJaeuU2IH+AX1w4ZcP/50BxxyM
	LEFqTgt5cLSQZ/BzigXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW5PX-0002D2-3H; Tue, 05 May 2020 21:47:31 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW5OH-00018X-JK; Tue, 05 May 2020 21:46:15 +0000
Received: by mail-qk1-x741.google.com with SMTP id b188so12067qkd.9;
 Tue, 05 May 2020 14:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vcwFKbULbyFTAWmPMzKXKwwoKg4otDHGczX99ldICt4=;
 b=d5gAWIJQ/Xkp+1MalCvyiV3yJkZyT9L+q837ijTpl4Q2TJW/vDtXrVrmQ8hpwvXPxT
 BDjcGlB6Gz0PKZWDfG7NOVfRYkCtmgkPqnzuJKxVq/F1af32iNi/X51Pj8tpfGUbDZD+
 wB8XnBG/JT4C2FCUZ5jdFn7nLEzPiyNfI81Bvh989nCfoER4WtbtzS5hhx3saLmhgLY3
 HVozovT7kYimNr7J7r0Ank66kjX/TSWsCnuV8hk93difzHdzfp8zdvfYLvDETJCNcWcQ
 gvkcu+pEiL3pFLB0zaqKvuMMxkT7fFlLwihHp8JNkxBpcE7guPkGhoCkdXU6w+Y00NBn
 TOJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vcwFKbULbyFTAWmPMzKXKwwoKg4otDHGczX99ldICt4=;
 b=LAngqov/DYeLHiJhvWXAo3OJ+ZWc1PxPKb6xrMhxHf14NfiGYVlzIdw/UFCy77C6Jw
 /0tbNls+SPli5das0HkaACCA3x4ZCnk0JC42kDNtgbHqyhKCvLkMPruEdbvYwuRzW5oM
 Jl1JgHTfws79zIgt9GCghwwhsx1zp/n+Jfk19guANhW/+K9rOXnjsWk3GUDwBhLZEWY8
 PMm/vLUYCR25Z65s7jaHzN1gRlFsjzYOoSf6+cbMnZhriSbdHZe3f7BYZRTXnfBgHPWs
 iJ+EwnEOF72p3nfx4Mi8MPLhCmnoZLSW4wwIVkTSib9cTdnANnBqHMapAXeIpoSgmF9y
 YI/A==
X-Gm-Message-State: AGi0Pubpvby6aP0h0kwbtR7YutNYVycx1O4gPy6GRMK5M9sBDecxyco5
 3hbCOOv1hSYcaq6Gq9wq9EdxY3MzcZpCZNtsEzA=
X-Google-Smtp-Source: APiQypKj/Se9Hh5fExSwFsjszD5LcfwdvPfe/f49JkjHRUQ6/ZqMooIPYMCicJOe5bGdHx3vNZmMjNmSSbAwgBDbTKY=
X-Received: by 2002:a37:6f47:: with SMTP id k68mr5711949qkc.341.1588715172089; 
 Tue, 05 May 2020 14:46:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200505040048.132493-1-eizan@google.com>
 <20200505125042.v1.5.I1c85bddc262913b8572d892dd6bf9bc03fbe0ec7@changeid>
In-Reply-To: <20200505125042.v1.5.I1c85bddc262913b8572d892dd6bf9bc03fbe0ec7@changeid>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Tue, 5 May 2020 23:46:00 +0200
Message-ID: <CAFqH_51+i3F0rTzpxotfSFrUXmuSfhRWO0YYV3Njur4eWJrCFg@mail.gmail.com>
Subject: Re: [PATCH v1 5/5] [media] mtk-mdp: Remove mtk_mdp_comp.id and
 supporting functionality
To: Eizan Miyamoto <eizan@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_144613_870860_4B0D4293 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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
2020 a les 6:02:
>
> Since components are registered in a list, the numeric component id that
> specified a location in an array is not necessary.
>
> Signed-off-by: eizan@chromium.org
> Signed-off-by: Eizan Miyamoto <eizan@google.com>

Ditto

> ---
>
>  drivers/media/platform/mtk-mdp/mtk_mdp_comp.c | 60 +++----------------

This patch will conflict with this one [1]. It is already queued,
please rebase on top of it.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c?id=757570f11fa4b0ce5472a6583de6f06e996a8527


>  drivers/media/platform/mtk-mdp/mtk_mdp_comp.h | 19 +-----
>  drivers/media/platform/mtk-mdp/mtk_mdp_core.c | 10 +---
>  3 files changed, 11 insertions(+), 78 deletions(-)
>
> diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
> index d4afed1363d5..362fff924aef 100644
> --- a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
> +++ b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
> @@ -14,46 +14,6 @@
>  #include "mtk_mdp_comp.h"
>
>
> -static const char * const mtk_mdp_comp_stem[MTK_MDP_COMP_TYPE_MAX] = {
> -       "mdp_rdma",
> -       "mdp_rsz",
> -       "mdp_wdma",
> -       "mdp_wrot",
> -};
> -
> -struct mtk_mdp_comp_match {
> -       enum mtk_mdp_comp_type type;
> -       int alias_id;
> -};
> -
> -static const struct mtk_mdp_comp_match mtk_mdp_matches[MTK_MDP_COMP_ID_MAX] = {
> -       { MTK_MDP_RDMA, 0 },
> -       { MTK_MDP_RDMA, 1 },
> -       { MTK_MDP_RSZ,  0 },
> -       { MTK_MDP_RSZ,  1 },
> -       { MTK_MDP_RSZ,  2 },
> -       { MTK_MDP_WDMA, 0 },
> -       { MTK_MDP_WROT, 0 },
> -       { MTK_MDP_WROT, 1 },
> -};
> -
> -int mtk_mdp_comp_get_id(struct device *dev, struct device_node *node,
> -                       enum mtk_mdp_comp_type comp_type)
> -{
> -       int id = of_alias_get_id(node, mtk_mdp_comp_stem[comp_type]);
> -       int i;
> -
> -       for (i = 0; i < ARRAY_SIZE(mtk_mdp_matches); i++) {
> -               if (comp_type == mtk_mdp_matches[i].type &&
> -                   id == mtk_mdp_matches[i].alias_id)
> -                       return i;
> -       }
> -
> -       dev_err(dev, "Failed to get id. type: %d, id: %d\n", comp_type, id);
> -
> -       return -EINVAL;
> -}
> -
>  void mtk_mdp_comp_clock_on(struct device *dev, struct mtk_mdp_comp *comp)
>  {
>         int i, err;
> @@ -62,8 +22,8 @@ void mtk_mdp_comp_clock_on(struct device *dev, struct mtk_mdp_comp *comp)
>                 err = mtk_smi_larb_get(comp->larb_dev);
>                 if (err)
>                         dev_err(dev,
> -                               "failed to get larb, err %d. type:%d id:%d\n",
> -                               err, comp->type, comp->id);
> +                               "failed to get larb, err %d. type:%d\n",
> +                               err, comp->type);
>         }
>
>         for (i = 0; i < ARRAY_SIZE(comp->clk); i++) {
> @@ -72,8 +32,8 @@ void mtk_mdp_comp_clock_on(struct device *dev, struct mtk_mdp_comp *comp)
>                 err = clk_prepare_enable(comp->clk[i]);
>                 if (err)
>                         dev_err(dev,
> -                       "failed to enable clock, err %d. type:%d id:%d i:%d\n",
> -                               err, comp->type, comp->id, i);
> +                       "failed to enable clock, err %d. type:%d i:%d\n",
> +                               err, comp->type, i);
>         }
>  }
>
> @@ -92,21 +52,15 @@ void mtk_mdp_comp_clock_off(struct device *dev, struct mtk_mdp_comp *comp)
>  }
>
>  int mtk_mdp_comp_init(struct device *dev, struct device_node *node,
> -                     struct mtk_mdp_comp *comp, enum mtk_mdp_comp_id comp_id)
> +                     struct mtk_mdp_comp *comp,
> +                     enum mtk_mdp_comp_type comp_type)
>  {
>         struct device_node *larb_node;
>         struct platform_device *larb_pdev;
>         int i;
>
> -       if (comp_id < 0 || comp_id >= MTK_MDP_COMP_ID_MAX) {
> -               dev_err(dev, "Invalid comp_id %d\n", comp_id);
> -               return -EINVAL;
> -       }
> -
> -       INIT_LIST_HEAD(&comp->node);
>         comp->dev_node = of_node_get(node);
> -       comp->id = comp_id;
> -       comp->type = mtk_mdp_matches[comp_id].type;
> +       comp->type = comp_type;
>
>         for (i = 0; i < ARRAY_SIZE(comp->clk); i++) {
>                 comp->clk[i] = of_clk_get(node, i);
> diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h
> index 1f745891c6c3..1bf0242cce46 100644
> --- a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h
> +++ b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h
> @@ -22,18 +22,6 @@ enum mtk_mdp_comp_type {
>         MTK_MDP_COMP_TYPE_MAX,
>  };
>
> -enum mtk_mdp_comp_id {
> -       MTK_MDP_COMP_RDMA0,
> -       MTK_MDP_COMP_RDMA1,
> -       MTK_MDP_COMP_RSZ0,
> -       MTK_MDP_COMP_RSZ1,
> -       MTK_MDP_COMP_RSZ2,
> -       MTK_MDP_COMP_WDMA,
> -       MTK_MDP_COMP_WROT0,
> -       MTK_MDP_COMP_WROT1,
> -       MTK_MDP_COMP_ID_MAX,
> -};
> -
>  /**
>   * struct mtk_mdp_comp - the MDP's function component data
>   * @node:      list node to track sibing MDP components
> @@ -41,7 +29,6 @@ enum mtk_mdp_comp_id {
>   * @clk:       clocks required for component
>   * @larb_dev:  SMI device required for component
>   * @type:      component type
> - * @id:                component ID
>   */
>  struct mtk_mdp_comp {
>         struct list_head        node;
> @@ -49,14 +36,12 @@ struct mtk_mdp_comp {
>         struct clk              *clk[2];
>         struct device           *larb_dev;
>         enum mtk_mdp_comp_type  type;
> -       enum mtk_mdp_comp_id    id;
>  };
>
>  int mtk_mdp_comp_init(struct device *dev, struct device_node *node,
> -                     struct mtk_mdp_comp *comp, enum mtk_mdp_comp_id comp_id);
> +                     struct mtk_mdp_comp *comp,
> +                     enum mtk_mdp_comp_type comp_type);
>  void mtk_mdp_comp_deinit(struct device *dev, struct mtk_mdp_comp *comp);
> -int mtk_mdp_comp_get_id(struct device *dev, struct device_node *node,
> -                       enum mtk_mdp_comp_type comp_type);
>  void mtk_mdp_comp_clock_on(struct device *dev, struct mtk_mdp_comp *comp);
>  void mtk_mdp_comp_clock_off(struct device *dev, struct mtk_mdp_comp *comp);
>
> diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
> index e6e702d9cb69..b1227c99569a 100644
> --- a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
> +++ b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
> @@ -137,7 +137,6 @@ static int mtk_mdp_probe(struct platform_device *pdev)
>         for_each_child_of_node(parent, node) {
>                 const struct of_device_id *of_id;
>                 enum mtk_mdp_comp_type comp_type;
> -               int comp_id;
>
>                 of_id = of_match_node(mtk_mdp_comp_dt_ids, node);
>                 if (!of_id)
> @@ -150,12 +149,7 @@ static int mtk_mdp_probe(struct platform_device *pdev)
>                 }
>
>                 comp_type = (enum mtk_mdp_comp_type)of_id->data;
> -               comp_id = mtk_mdp_comp_get_id(dev, node, comp_type);
> -               if (comp_id < 0) {
> -                       dev_warn(dev, "Skipping unknown component %pOF\n",
> -                                node);
> -                       continue;
> -               }
> +
>
>                 comp = devm_kzalloc(dev, sizeof(*comp), GFP_KERNEL);
>                 if (!comp) {
> @@ -164,7 +158,7 @@ static int mtk_mdp_probe(struct platform_device *pdev)
>                         goto err_comp;
>                 }
>
> -               ret = mtk_mdp_comp_init(dev, node, comp, comp_id);
> +               ret = mtk_mdp_comp_init(dev, node, comp, comp_type);
>                 if (ret) {
>                         of_node_put(node);
>                         goto err_comp;
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
