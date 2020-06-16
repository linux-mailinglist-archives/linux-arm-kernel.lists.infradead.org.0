Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E651FAFB4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 14:00:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CWec92nrNuFeYRjxvMR+0QG3JGbKJ5x9gRiDcdcDKZk=; b=BtAsKMwPy9Yq6H
	9vp4KydwWpB6S62elLY5BW0yIUYcihMYDJkVfxI/LPpHxC73TPdvQZXth/2zz0lLeznFqMJcJxK8h
	Jjr2BxG/S9SlFiclTTYL5AUzZz3lYVoniL7o2V6Wn0FrPCagQLWBGvpwXvVhnSq+gGuChs2Orx+DO
	5m8JnghR49qSga8L7V6IeWC3lFvBdFdtOYHxhk511OiPY1fWn4ZHrYVCHZpfKigO1qwgCYJluVe03
	1lLhS6d5iiV8gSpKXAPwdpYIHMYvJ457R1oGuHJ7xqpDmfUtRgCkQNh1toBl+nXsTgEFCx9Ng04B/
	KQYVCieyvXgxTY9LmQpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlAGL-0004Pp-36; Tue, 16 Jun 2020 12:00:21 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlAFw-0004P1-Rj
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 11:59:58 +0000
Received: by mail-ed1-x541.google.com with SMTP id o26so14037867edq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 04:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beagleboard-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=vFt52X6ZxnjFhdInzqPTsBTf0H25///Yw0La+Ewwi+o=;
 b=qU3gGhZyPmAH6X7JfnyHrsDU+7oTdpbz1YAthn1buJ0jnK49tJAfpCusTt5I70ATYx
 0gOBtgEnf4sVLHiZlKm5pnuNYAZtL3Rzzi/83WU03/jW4uF8lW9YNQSmsWMMziU6Y5Oa
 Vuklbd5Nus9ElENtzXUkbsmUVT2wjmPP0OAH/Y/CSj1EikMdGljd0ewAMOv1mYeWNWlH
 wWbdevHWLvxK7U1mqSRRgn8dttBSzPxRw43NT4YSLoheKQwtucMJZQi8WrsliV+pL26W
 o/2l97fOVDL2+ac20rcG45UJaUaMel5v7Q/2zi5OE6fbzCPP+ehhpmoPCeirYewIILwz
 KvBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vFt52X6ZxnjFhdInzqPTsBTf0H25///Yw0La+Ewwi+o=;
 b=rnMUl5Aw/0Ea5b2RahpOD+3wThagN76+ERHbtVYPlwuSxwXoaiH1gQc+FCV3W7Iq9p
 WjxAospK/qFpYEz44LGZGbWAjItes21Gsf7oOYt4ByOEYl4IZ1QaggrW5uLPxo3LWofV
 GBaHrqKqfHE9vksNLhhyy+DLgu1KxRUytbLUUC0oDxHNwC6tzTvwI/wcY+5Kjl4GrV97
 8nPKdg8WfoUCZUZH+4L1NTahhkYUnSE+cAsg6AJxqDMXwCUuxvPbijnvHM2yLEgN9lng
 SKsLeJ4BjD5ZA+dYJ41NlnIagmmc3k09Ns9J7hHORol7DTjoTfGgvO+pGUvc1mdtkkjc
 VKJQ==
X-Gm-Message-State: AOAM533LdcttYVettj91unGXGqy4wZyDIu1LwtRsvmeQJ3flnpH8vLaU
 X0LUgxBuMaOvpHOI3t3l3ZQRbQ==
X-Google-Smtp-Source: ABdhPJyF1u1ezjdAA2rWPEYtw/dAw4UYwl9b/mgLDaDmMHfOk/h17IkWVgv5p5leHslveVvEwX3McQ==
X-Received: by 2002:aa7:d698:: with SMTP id d24mr2252260edr.56.1592308793605; 
 Tue, 16 Jun 2020 04:59:53 -0700 (PDT)
Received: from x1 (i59F66838.versanet.de. [89.246.104.56])
 by smtp.gmail.com with ESMTPSA id lw11sm10833271ejb.58.2020.06.16.04.59.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 04:59:52 -0700 (PDT)
Date: Tue, 16 Jun 2020 13:59:51 +0200
From: Drew Fustini <drew@beagleboard.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2] pinctrl-single: fix pcs_parse_pinconf() return value
Message-ID: <20200616115951.GA3976568@x1>
References: <20200608125143.GA2789203@x1>
 <CACRpkdZupnetd29aehw4HF3isGgRHbqxWZuTkPBusm_EmvjZ4g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdZupnetd29aehw4HF3isGgRHbqxWZuTkPBusm_EmvjZ4g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_045956_923871_0C4D301F 
X-CRM114-Status: GOOD (  24.26  )
X-Spam-Score: 4.2 (++++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (4.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [89.246.104.56 listed in zen.spamhaus.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: Grygorii Strashko <grygorii.strashko@ti.com>,
 Tony Lindgren <tony@atomide.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Robert Nelson <robertcnelson@beagleboard.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Jason Kridner <jkridner@beagleboard.org>,
 Haojian Zhuang <haojian.zhuang@linaro.org>, Daniel Mack <daniel@zonque.org>,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 10:31:54AM +0200, Linus Walleij wrote:
> On Mon, Jun 8, 2020 at 2:51 PM Drew Fustini <drew@beagleboard.org> wrote:
> 
> > This patch causes pcs_parse_pinconf() to return -ENOTSUPP when no
> > pinctrl_map is added.  The current behavior is to return 0 when
> > !PCS_HAS_PINCONF or !nconfs.  Thus pcs_parse_one_pinctrl_entry()
> > incorrectly assumes that a map was added and sets num_maps = 2.
> >
> > Analysis:
> > =========
> > The function pcs_parse_one_pinctrl_entry() calls pcs_parse_pinconf()
> > if PCS_HAS_PINCONF is enabled.  The function pcs_parse_pinconf()
> > returns 0 to indicate there was no error and num_maps is then set to 2:
> >
> >  980 static int pcs_parse_one_pinctrl_entry(struct pcs_device *pcs,
> >  981                                                 struct device_node *np,
> >  982                                                 struct pinctrl_map **map,
> >  983                                                 unsigned *num_maps,
> >  984                                                 const char **pgnames)
> >  985 {
> > <snip>
> > 1053         (*map)->type = PIN_MAP_TYPE_MUX_GROUP;
> > 1054         (*map)->data.mux.group = np->name;
> > 1055         (*map)->data.mux.function = np->name;
> > 1056
> > 1057         if (PCS_HAS_PINCONF && function) {
> > 1058                 res = pcs_parse_pinconf(pcs, np, function, map);
> > 1059                 if (res)
> > 1060                         goto free_pingroups;
> > 1061                 *num_maps = 2;
> > 1062         } else {
> > 1063                 *num_maps = 1;
> > 1064         }
> >
> > However, pcs_parse_pinconf() will also return 0 if !PCS_HAS_PINCONF or
> > !nconfs.  I believe these conditions should indicate that no map was
> > added by returning -ENOTSUPP. Otherwise pcs_parse_one_pinctrl_entry()
> > will set num_maps = 2 even though no maps were successfully added, as
> > it does not reach "m++" on line 940:
> >
> >  895 static int pcs_parse_pinconf(struct pcs_device *pcs, struct device_node *np,
> >  896                              struct pcs_function *func,
> >  897                              struct pinctrl_map **map)
> >  898
> >  899 {
> >  900         struct pinctrl_map *m = *map;
> > <snip>
> >  917         /* If pinconf isn't supported, don't parse properties in below. */
> >  918         if (!PCS_HAS_PINCONF)
> >  919                 return 0;
> >  920
> >  921         /* cacluate how much properties are supported in current node */
> >  922         for (i = 0; i < ARRAY_SIZE(prop2); i++) {
> >  923                 if (of_find_property(np, prop2[i].name, NULL))
> >  924                         nconfs++;
> >  925         }
> >  926         for (i = 0; i < ARRAY_SIZE(prop4); i++) {
> >  927                 if (of_find_property(np, prop4[i].name, NULL))
> >  928                         nconfs++;
> >  929         }
> >  930         if (!nconfs)
> >  919                 return 0;
> >  932
> >  933         func->conf = devm_kcalloc(pcs->dev,
> >  934                                   nconfs, sizeof(struct pcs_conf_vals),
> >  935                                   GFP_KERNEL);
> >  936         if (!func->conf)
> >  937                 return -ENOMEM;
> >  938         func->nconfs = nconfs;
> >  939         conf = &(func->conf[0]);
> >  940         m++;
> >
> > This situtation will cause a boot failure [0] on the BeagleBone Black
> > (AM3358) when am33xx_pinmux node in arch/arm/boot/dts/am33xx-l4.dtsi
> > has compatible = "pinconf-single" instead of "pinctrl-single".
> >
> > The patch fixes this issue by returning -ENOSUPP when !PCS_HAS_PINCONF
> > or !nconfs, so that pcs_parse_one_pinctrl_entry() will know that no
> > map was added.
> >
> > Logic is also added to pcs_parse_one_pinctrl_entry() to distinguish
> > between -ENOSUPP and other errors.  In the case of -ENOSUPP, num_maps
> > is set to 1 as it is valid for pinconf to be enabled and a given pin
> > group to not any pinconf properties.
> >
> > [0] https://lore.kernel.org/linux-omap/20200529175544.GA3766151@x1/
> >
> > Fixes: 9dddb4df90d1 ("pinctrl: single: support generic pinconf")
> > Signed-off-by: Drew Fustini <drew@beagleboard.org>
> 
> Patch applied as non-critical (for-next) fix.
> 
> If there is no hurry let's merge it this way with lots of testing
> along the way.
> 
> Yours,
> Linus Walleij

Thanks, I agree more testing is a good idea.

In particular, do you have a way to followup with Haojian Zhuang within
Linaro?

Haojian added the generic pinconf support back in 2013, so it would be
good to get his review.

Also, neither Tony or I have the Hikey hardware to test.

The most important to test would be those which include a .dtsi with
"pinconf-single" compatible.  I do plan to add pinconf-single to the
AM3358 BeagleBone (which is what I am testing on), but the current
mainline users are:

arch/arm/boot/dts/hi3620.dtsi
|- arch/arm/boot/dts/hi3620-hi4511.dts

arch/arm/boot/dts/pxa3xx.dtsi
|- arch/arm/boot/dts/pxa300-raumfeld-common.dtsi
   |- arch/arm/boot/dts/pxa300-raumfeld-connector.dts
      arch/arm/boot/dts/pxa300-raumfeld-controller.dts
      arch/arm/boot/dts/pxa300-raumfeld-speaker-l.dts
      arch/arm/boot/dts/pxa300-raumfeld-speaker-m.dts
      arch/arm/boot/dts/pxa300-raumfeld-speaker-one.dts
      arch/arm/boot/dts/pxa300-raumfeld-speaker-s.dts

I am cc'ing Daniel Mack and Robert Jarzmi as they are listed as
maintainers for the pxa300 related dts files.

Those platforms using compatible = "pinctrl-single" should not be
effected by this patch:

arch/arm/boot/dts/am33xx-l4.dtsi (I have changed to pinconf for test)
arch/arm/boot/dts/da850.dtsi
arch/arm/boot/dts/dm814x.dtsi
arch/arm/boot/dts/dm816x.dtsi
arch/arm/boot/dts/hi3620.dtsi
arch/arm/boot/dts/keystone-k2g.dtsi
arch/arm/boot/dts/keystone-k2l.dtsi
arch/arm/boot/dts/omap3-gta04.dtsi


Thanks,
Drew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
