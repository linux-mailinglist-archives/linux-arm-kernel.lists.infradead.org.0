Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A723E1E9A5C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 22:42:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uvyxwDQuXAste64x37I2TnV8DaEhAZu6AjFzuI50ruo=; b=Pzh9DEVGB/NNqq
	9J7QK/6DsQHT6EYV5o2Pyos5AVq5ZnzcJ3sTvH41K+wXtC1v4fEsNPpa6bNt7HYW6TtS8Xd/tFmkH
	s2RG5y6tU/DB3LBGC6wauHyOYSBKcpJziWECJcfRNcetF8xnHumGSm/Jy4P1bCorUlEigYBod8rGo
	gt9UNy+4JR+Rw4Zmzo4+tvAvZo50gIY2+oy8xAzvqVbpswOYzUq+gitxwwECR8MDfLOdjmUNyVyHB
	YmZvJ1y03WruPQ3F7POw3qfmG9JSfg7Bo31ImCLZ8JHT8YuwRc3LfUqIzllROZ3/vNxFjGUZjHBzi
	IgwS4tRf9UfI15+cmdVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfUmR-0003Gp-W6; Sun, 31 May 2020 20:42:03 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfUmH-0003GL-BU
 for linux-arm-kernel@lists.infradead.org; Sun, 31 May 2020 20:41:55 +0000
Received: by mail-wr1-x444.google.com with SMTP id p5so3534394wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 31 May 2020 13:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beagleboard-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=XPS7Wm2VWj6CUy+E0xjT/Rc+9g5GOp3P8FCBLIlwzJo=;
 b=AbeDd+VZXi3HG/DUD5MnzM0WkfA7pfoopzNQnkqPJVYXiC1x3Ge0puDCadq3xmZCOf
 sClqPFc5prhw5ggSaHNlWPUwwh7wF8oQVsS6z33KhK7luIW9/bhu7CZJ1TJTiCmc3adX
 H122u4+Vs6Mf4dH85DDPnxJi/K7hNSt8y6a23n83KKGDsNzbzgHX96UvwDATLCP/Qb7i
 kobyDYvnWucSKMSSZBg5kQFe1EjmWMdnoSjyW6hmfzMgPVhlo+15ogtdOu1Wf0APGegV
 egKw/l2UAp5uoBy3oBg+7Qqy9WQVfADYAGig/32FdrOKd+hn3SI9Z67KR+2yhWZwKsE/
 //EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=XPS7Wm2VWj6CUy+E0xjT/Rc+9g5GOp3P8FCBLIlwzJo=;
 b=ZpLLX4hyeKB2XvGycIYDXUn3AG/tfV7BVdMSYBM/nGSOIJLybOMjWrW01Tk1LyJ64+
 VknfTQht+QiMB1UUF5ULGpvtsC/f5OyeSB3PiQ6IU+/15fzF+SqNqCAUwFzmLluxIDzY
 5BWgB6/Q/bMCh5WuuJuXWNPjPzKHYgStkgWyBYj301jN3P5JZiVNQP8QM7e79I+hR3Qf
 ynLELiEjEs6bbrNy+UZ+yIANCM5c6UZnPFGWQVTkmjvxt8w2VwRFTz81iq+9tWcLngtB
 gXfeafROofu+GalwvuFeOgxtV/X8LixfJYBwpWutK+TLo278UlvgttOxBD80UzrjOV/7
 9iMw==
X-Gm-Message-State: AOAM530l2dI9wRwLJLwCtD2/J8/6SBRYQfS+9Y2Uxre94ghZjSAWHVXe
 swlFEwt+JBM5ihzdkhhtkXzXSQ==
X-Google-Smtp-Source: ABdhPJx15g0vSZpLKQ1DQXGPeEz1sugYXvSvoWG4pgj2qP0JKlhM0zDTy5DuHXhyIA72bnpCctTB0w==
X-Received: by 2002:adf:e44c:: with SMTP id t12mr18025369wrm.181.1590957710498; 
 Sun, 31 May 2020 13:41:50 -0700 (PDT)
Received: from x1 ([2001:16b8:5c3c:c701:98fe:8f8:cce1:59e])
 by smtp.gmail.com with ESMTPSA id z206sm9940414wmg.30.2020.05.31.13.41.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 31 May 2020 13:41:49 -0700 (PDT)
Date: Sun, 31 May 2020 22:41:47 +0200
From: Drew Fustini <drew@beagleboard.org>
To: Tony Lindgren <tony@atomide.com>,
 Haojian Zhuang <haojian.zhuang@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] pinctrl-single: fix pcs_parse_pinconf() return val
Message-ID: <20200531204147.GA664833@x1>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_134153_458710_78BDF04F 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jason Kridner <jkridner@beagleboard.org>,
 Robert Nelson <robertcnelson@beagleboard.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch causes pcs_parse_pinconf() to return an error when no
pinctrl_map is added.  The current behavior is to return 0 when
!PCS_HAS_PINCONF or !nconfs.  Thus pcs_parse_one_pinctrl_entry()
incorrectly assumes that a map was added and sets num_maps = 2.

Analysis:
=========
The function pcs_parse_one_pinctrl_entry() calls pcs_parse_pinconf()
if PCS_HAS_PINCONF is enabled.  The function pcs_parse_pinconf()
returns 0 to indicate there was no error and num_maps is then set to 2:

 980 static int pcs_parse_one_pinctrl_entry(struct pcs_device *pcs,
 981                                                 struct device_node *np,
 982                                                 struct pinctrl_map **map,
 983                                                 unsigned *num_maps,
 984                                                 const char **pgnames)
 985 {
<snip>
1053         (*map)->type = PIN_MAP_TYPE_MUX_GROUP;
1054         (*map)->data.mux.group = np->name;
1055         (*map)->data.mux.function = np->name;
1056
1057         if (PCS_HAS_PINCONF && function) {
1058                 res = pcs_parse_pinconf(pcs, np, function, map);
1059                 if (res)
1060                         goto free_pingroups;
1061                 *num_maps = 2;
1062         } else {
1063                 *num_maps = 1;
1064         }

However, pcs_parse_pinconf() will also return 0 if !PCS_HAS_PINCONF or
!nconfs.  I believe these conditions should indicate that no map was
added by returning non-zero. Otherwise pcs_parse_one_pinctrl_entry()
will set num_maps = 2 even though no maps were successfully added, as
it does not reach "m++" on line 940:

 895 static int pcs_parse_pinconf(struct pcs_device *pcs, struct device_node *np,
 896                              struct pcs_function *func,
 897                              struct pinctrl_map **map)
 898
 899 {
 900         struct pinctrl_map *m = *map;
<snip>
 917         /* If pinconf isn't supported, don't parse properties in below. */
 918         if (!PCS_HAS_PINCONF)
 919                 return 0;
 920
 921         /* cacluate how much properties are supported in current node */
 922         for (i = 0; i < ARRAY_SIZE(prop2); i++) {
 923                 if (of_find_property(np, prop2[i].name, NULL))
 924                         nconfs++;
 925         }
 926         for (i = 0; i < ARRAY_SIZE(prop4); i++) {
 927                 if (of_find_property(np, prop4[i].name, NULL))
 928                         nconfs++;
 929         }
 930         if (!nconfs)
 919                 return 0;
 932
 933         func->conf = devm_kcalloc(pcs->dev,
 934                                   nconfs, sizeof(struct pcs_conf_vals),
 935                                   GFP_KERNEL);
 936         if (!func->conf)
 937                 return -ENOMEM;
 938         func->nconfs = nconfs;
 939         conf = &(func->conf[0]);
 940         m++;

This situtation will cause a boot failure [0] on the BeagleBone Black
(AM3358) when am33xx_pinmux node in arch/arm/boot/dts/am33xx-l4.dtsi
has compatible = "pinconf-single" instead of "pinctrl-single".

The patch fixes this issue by returning -ENOSUPP when !PCS_HAS_PINCONF
or !nconfs, so that pcs_parse_one_pinctrl_entry() will know that no
map was added.

[0] https://lore.kernel.org/linux-omap/20200529175544.GA3766151@x1/

Signed-off-by: Drew Fustini <drew@beagleboard.org>
---
 drivers/pinctrl/pinctrl-single.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-single.c b/drivers/pinctrl/pinctrl-single.c
index 1e0614daee9b..18a02cd0c701 100644
--- a/drivers/pinctrl/pinctrl-single.c
+++ b/drivers/pinctrl/pinctrl-single.c
@@ -916,7 +916,7 @@ static int pcs_parse_pinconf(struct pcs_device *pcs, struct device_node *np,
 
 	/* If pinconf isn't supported, don't parse properties in below. */
 	if (!PCS_HAS_PINCONF)
-		return 0;
+		return -ENOTSUPP; /* do not return 0 as no map added */
 
 	/* cacluate how much properties are supported in current node */
 	for (i = 0; i < ARRAY_SIZE(prop2); i++) {
@@ -928,7 +928,7 @@ static int pcs_parse_pinconf(struct pcs_device *pcs, struct device_node *np,
 			nconfs++;
 	}
 	if (!nconfs)
-		return 0;
+		return -ENOTSUPP; /* do not return 0 as no map added */
 
 	func->conf = devm_kcalloc(pcs->dev,
 				  nconfs, sizeof(struct pcs_conf_vals),
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
