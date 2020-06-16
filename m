Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C63721FAB48
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 10:32:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0grXBZQb41Hb2RIDIBz3bSRP3S1M6MoAn9ehRe76VTo=; b=NHMVfxDG8jcKpS
	hmEweIPT4qnGb+zxiymRKoSzZYuUIh+JJX/g1MsLuDNvB/n7FecoxAyu5Ec+B2IOa/yvtsacJbg4P
	FCH1InG9MtS1wsP7q6/fuar4aaBeTfewawoGshDkP7dcpqeIymYgyadu/25bPI3jdXa/Da+8iyIGK
	HNdA3aVTZwKhcfJquSruAJNhJxYbX5pXdex70FNn6pciqJP+ASi8TL9gCmJYTFp0lxw1d/NNIZfgw
	9ZPFx7qeJNNllmz0sQLq2Kmbt9kTZYkV/JVK7bhDbLNadxj9d4sYIWUqmhuGAEn4CXGOYG8TglOKY
	3c3evDqQjNwvzEDozWNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl71H-0000Ye-7K; Tue, 16 Jun 2020 08:32:35 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl70p-0000LK-Bs
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 08:32:09 +0000
Received: by mail-lj1-x243.google.com with SMTP id c17so22446586lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 01:32:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sQ4U7wvoNlcpjuMW/4KAQuHPsQCChERlSO2SrjCLc4A=;
 b=yzgs82TyqjiolbSZa0hACzF4gN7GCdrUZ3PkJIwNsxrwGymEWug+COKC95YBk6TI0K
 2Y0WbWcE0rB11ecpIHasmBOEfu2LHU1jVxms4CkS6c1YBhHphAVGDqxKnQPW4PBBc7hb
 LMdJwAntiTOBJmW2XA6P3lnRabzZ3UT3E9uy8o/U1SwZ5oitYwRLHc5WSAN8DB/8WxGH
 VrB15nm/FvXI/F5bPdrN/KsIQp6inbymvEpyLN7rdC7zEFqzsH+Jxw7zBeSbaDF9hj4Z
 jaXPYaexNoE0Z92Ldpp3NqRRd9Su8ihOkFK3xJAvMTKv498p1DzKxsLxehhJydEQaZ+i
 fWig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sQ4U7wvoNlcpjuMW/4KAQuHPsQCChERlSO2SrjCLc4A=;
 b=E6jmb3BTn+8huFPtd25T5YOaT1a4BqOdDZUF0WKO5WLH1yOwL44lR7qT1+n0QNhrsP
 U+Zn7p0cXU1O9tsy5v5HfIJ+7UF9mEkAIOVccrrbhZtBNLKzb1rgVjnwpsVRGScMBUOH
 NuPRIVkPqeOCO1yXVQLmm3Np178qs1pPHhDNohS1W606ndRCjFELh6999GExMO2H89jP
 bsXazWn1gYFboPqAIhFdjPzcrW/G30yCrRzs7pZLfFrem/+dIXWcc+nIg92qE7v0FfZI
 iewV5Unb4QLrSpngvjYbFgI4NCUGIWuHxzeZsVJKw0eBJwxfGjCQOBHbJ0FIrwE4aYCK
 vyHg==
X-Gm-Message-State: AOAM5308L2M+dxguec/upamtUCRwGCLXVqjs0YG0BmK1RxNwtkZCwYFR
 H87ZIYZMN9TWQ8DSeB+KKA5gxBuLFoxaP6d8ybgAWw==
X-Google-Smtp-Source: ABdhPJzDjr7Vp4IVSdnf58s8G/HEW2ciu0txbLcKtPfjhvTLWtyM16wHBxujqgvNRbb533tvY8VqBYbmo4AT2CdyIOc=
X-Received: by 2002:a2e:350a:: with SMTP id z10mr837916ljz.104.1592296325111; 
 Tue, 16 Jun 2020 01:32:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200608125143.GA2789203@x1>
In-Reply-To: <20200608125143.GA2789203@x1>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 16 Jun 2020 10:31:54 +0200
Message-ID: <CACRpkdZupnetd29aehw4HF3isGgRHbqxWZuTkPBusm_EmvjZ4g@mail.gmail.com>
Subject: Re: [PATCH v2] pinctrl-single: fix pcs_parse_pinconf() return value
To: Drew Fustini <drew@beagleboard.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_013207_460964_CE97C721 
X-CRM114-Status: GOOD (  18.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Grygorii Strashko <grygorii.strashko@ti.com>,
 Tony Lindgren <tony@atomide.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Robert Nelson <robertcnelson@beagleboard.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Jason Kridner <jkridner@beagleboard.org>,
 Haojian Zhuang <haojian.zhuang@linaro.org>,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 8, 2020 at 2:51 PM Drew Fustini <drew@beagleboard.org> wrote:

> This patch causes pcs_parse_pinconf() to return -ENOTSUPP when no
> pinctrl_map is added.  The current behavior is to return 0 when
> !PCS_HAS_PINCONF or !nconfs.  Thus pcs_parse_one_pinctrl_entry()
> incorrectly assumes that a map was added and sets num_maps = 2.
>
> Analysis:
> =========
> The function pcs_parse_one_pinctrl_entry() calls pcs_parse_pinconf()
> if PCS_HAS_PINCONF is enabled.  The function pcs_parse_pinconf()
> returns 0 to indicate there was no error and num_maps is then set to 2:
>
>  980 static int pcs_parse_one_pinctrl_entry(struct pcs_device *pcs,
>  981                                                 struct device_node *np,
>  982                                                 struct pinctrl_map **map,
>  983                                                 unsigned *num_maps,
>  984                                                 const char **pgnames)
>  985 {
> <snip>
> 1053         (*map)->type = PIN_MAP_TYPE_MUX_GROUP;
> 1054         (*map)->data.mux.group = np->name;
> 1055         (*map)->data.mux.function = np->name;
> 1056
> 1057         if (PCS_HAS_PINCONF && function) {
> 1058                 res = pcs_parse_pinconf(pcs, np, function, map);
> 1059                 if (res)
> 1060                         goto free_pingroups;
> 1061                 *num_maps = 2;
> 1062         } else {
> 1063                 *num_maps = 1;
> 1064         }
>
> However, pcs_parse_pinconf() will also return 0 if !PCS_HAS_PINCONF or
> !nconfs.  I believe these conditions should indicate that no map was
> added by returning -ENOTSUPP. Otherwise pcs_parse_one_pinctrl_entry()
> will set num_maps = 2 even though no maps were successfully added, as
> it does not reach "m++" on line 940:
>
>  895 static int pcs_parse_pinconf(struct pcs_device *pcs, struct device_node *np,
>  896                              struct pcs_function *func,
>  897                              struct pinctrl_map **map)
>  898
>  899 {
>  900         struct pinctrl_map *m = *map;
> <snip>
>  917         /* If pinconf isn't supported, don't parse properties in below. */
>  918         if (!PCS_HAS_PINCONF)
>  919                 return 0;
>  920
>  921         /* cacluate how much properties are supported in current node */
>  922         for (i = 0; i < ARRAY_SIZE(prop2); i++) {
>  923                 if (of_find_property(np, prop2[i].name, NULL))
>  924                         nconfs++;
>  925         }
>  926         for (i = 0; i < ARRAY_SIZE(prop4); i++) {
>  927                 if (of_find_property(np, prop4[i].name, NULL))
>  928                         nconfs++;
>  929         }
>  930         if (!nconfs)
>  919                 return 0;
>  932
>  933         func->conf = devm_kcalloc(pcs->dev,
>  934                                   nconfs, sizeof(struct pcs_conf_vals),
>  935                                   GFP_KERNEL);
>  936         if (!func->conf)
>  937                 return -ENOMEM;
>  938         func->nconfs = nconfs;
>  939         conf = &(func->conf[0]);
>  940         m++;
>
> This situtation will cause a boot failure [0] on the BeagleBone Black
> (AM3358) when am33xx_pinmux node in arch/arm/boot/dts/am33xx-l4.dtsi
> has compatible = "pinconf-single" instead of "pinctrl-single".
>
> The patch fixes this issue by returning -ENOSUPP when !PCS_HAS_PINCONF
> or !nconfs, so that pcs_parse_one_pinctrl_entry() will know that no
> map was added.
>
> Logic is also added to pcs_parse_one_pinctrl_entry() to distinguish
> between -ENOSUPP and other errors.  In the case of -ENOSUPP, num_maps
> is set to 1 as it is valid for pinconf to be enabled and a given pin
> group to not any pinconf properties.
>
> [0] https://lore.kernel.org/linux-omap/20200529175544.GA3766151@x1/
>
> Fixes: 9dddb4df90d1 ("pinctrl: single: support generic pinconf")
> Signed-off-by: Drew Fustini <drew@beagleboard.org>

Patch applied as non-critical (for-next) fix.

If there is no hurry let's merge it this way with lots of testing
along the way.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
