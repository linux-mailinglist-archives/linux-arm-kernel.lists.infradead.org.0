Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4ED1760E6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 18:18:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tcAPZJ9uIMWxO4Q6hElSwP6CBbe1c/0+EWKsBxkypUU=; b=h7j9Xgbz06N6rj
	VjFLKYlcRHd5ovJkRNmO9uLDD+Y4su16c8/s8o/zsI0IMfAJurQiuAtLTQKpDJnrvVzp0sXNOfVVW
	N+iJDbwukAORxv6SAOoYbsY84t3bsFuqdvgrWT5InapnCDxhl0Ez7WwhXZD/80xQonvaSVsXzVqsk
	lwl1L3pCKvgYkklrM+3GiaJTb/+ySPwS9Hro4m+/HjcW89hgh188Wix9IWbaShPKepRJllIScSi/5
	8uSl/kc77Q3MrUbnZQ+golz+mMwSDjymeycZ6OGZ7ETfQiXulnlK8UoFW/YPHckypcDOAl8Yp3z0I
	wo7LZjnuS7p9wvbr7HJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8oi4-0007Po-OQ; Mon, 02 Mar 2020 17:18:28 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8oht-0007PP-LB
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 17:18:18 +0000
Received: by mail-lf1-x144.google.com with SMTP id c20so216586lfb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 09:18:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=npGRpScsdzHp8hgTy3Ps74UkwY+poievW07XcCbJvc0=;
 b=ebJ61xS+vL/anKTgYhyj3v89k9aMBeSSoLH+wKzBO/S86yKF89gKCKg7d/T5ghZQO6
 +a7PZAXrmEoeGO248GhMWE3cgvwTIUcVWQzR/jVNcI0VwOEuuZKQ0URpuwFE7IVWGJ40
 D57EqEp5VTqez4S9ZsbQOiPRsz1PaSYy4x1yJoPimD/MykwsyJXM/xJF5JA3WOcejp1a
 ExnK7LOikVBhE67OBKW7+0sXOxmO3wM9eoPofdWEt6t/ienlxNiNHGDzgaI22x0jJn7n
 /PmBXSTpvmPWtJZ/yDGf4en7SPaNazMzuTWmD3SEOlD2mWe1oCpDvl/9SzkA0Kx8nWnQ
 xI0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=npGRpScsdzHp8hgTy3Ps74UkwY+poievW07XcCbJvc0=;
 b=BNczY9GqlCcU3in/PJaQ7fnG2hVKuNN5I1zlGmjPEWkcxcPg4KEHYaCgoOrlKUhIbm
 zQ/dHdI11j3/bF9nFQY8+RBAsC62f8EFhJ8Wzqlk/Pis8y7X/8Fe4BiawGHCzKqNsCEz
 EzmvAxOsoYvcezQ+4UKK6Yqj/aTuUmEwTjKTwcXI2y50nPJbc/A34R8UltE3X/P5HHwb
 5lAw8qhuns38IqyoAX/+PMNawgyEItRTeMayI9pnEfg8m6MZYoiQLWMIUeMMP6DI0fHw
 B2FVEXUpX4YIJ6/E0z2SNLjGsRI1QA5WE20xdw+BZOx128A/oq54l3G9VekmbuPHhlej
 LcPw==
X-Gm-Message-State: ANhLgQ3iBCPCbFxQL/rYQQ5hfAaxD5+CkSC6DNbdGPexL7aqGnvOiWp8
 w/VG534YhWm+FoXVWlhSa3tRwKqSl4usJzb+zoE=
X-Google-Smtp-Source: ADFU+vszH2JfjSmjLotcDHOUoYo/EKH07bWd7PS9PsgNKeQL71BQ17mRqsIl5rJ9QOMXX2EJ4Kf/MKCl/CggfQ55q0w=
X-Received: by 2002:a05:6512:1054:: with SMTP id
 c20mr77851lfb.69.1583169495560; 
 Mon, 02 Mar 2020 09:18:15 -0800 (PST)
MIME-Version: 1.0
References: <20200302001150.27952-1-vitor@massaru.org>
In-Reply-To: <20200302001150.27952-1-vitor@massaru.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 2 Mar 2020 14:18:04 -0300
Message-ID: <CAOMZO5CETSigeAkCpewdrmeogBhvVs3XP+A4fg823bSkeGxqCw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: freescale: add gpio-fan/thermal support
 for Google i.MX 8MQ Phanbell
To: Vitor Massaru Iha <vitor@massaru.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_091817_722285_CB13D424 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, lkcamp@lists.libreplanetbr.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Marco Franchi <marco.franchi@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vitor,

One more comment:

On Sun, Mar 1, 2020 at 9:11 PM Vitor Massaru Iha <vitor@massaru.org> wrote:

> +
> +       pinctrl_gpio_fan: gpiofanp {

This should be:
pinctrl_gpio_fan: gpiofangrp {

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
