Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 599711ECFC9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 14:31:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4qefKxZ/lnIPFxyq0t2ppycBPZIwmCzxLXmi3mGMWFs=; b=Htdj5j8HVWEGzA
	+eYvFLWW/0UGYexmNLoeHl2Evz/VN9B1XXbjxkLyGSJEO5FpVPYxRkG5u/5hnFk0Uad2mJIAVpjsA
	4TMHvFblMMCMFdb7POW6ssyEr79MJrdLuZ+IKkwrexR6iM6cTXhjNdD7bfSlcEPgb4UHbtRtyp3aA
	TJxnC9pVafODKAv8vP/e7umdRkuuMB1na9bsIBs45E38zdz4yslgCanxTHM5bflO22HmPR/Pspqjr
	VR0svStdIF/YcuPlvgBePaDjcRcDppUzB0u7OGZ3m+x5eZLky9lNqoVCrQGMjKv4SB9PaBLqPaIKW
	tBAb3WyGjN46HSWx1SoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgSYQ-0005B8-KV; Wed, 03 Jun 2020 12:31:34 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgSYI-0005Aa-A7
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 12:31:27 +0000
Received: by mail-lj1-x242.google.com with SMTP id m18so2475536ljo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 05:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=L1NJYuTKReAQCzwmp21v6oxd6VH6o0/1AXhj3Xbp+FA=;
 b=GYLRyR3OR2you4gt5Qoe94eTqGpHQxHxJtDqtMFwAwycpFKpORilUHJ+cpxeyB10dZ
 HZZIncnj4Nc5euIkBmYg91PiCtTZXQoWLM//bJq/8ljVCqKGsEkudebxu1rD/xFge7XX
 gUcQtcfaYyLClnFKKSzUJFm9UdTCKp09CFDZ/ll0z2c+BjIUHXiTXK0/xIsaBmZFPgzW
 5PcPHAb51hM1T8b69zqjgmxhk7njDjDVmtYtpuT0xSkK8+vIbM4iI1M6M5/VlhCf0/Sn
 7xxUT6j3nTgizmvd+kLannVm19nUGA+BXHohp50BOfs5E71QhnvSDS02jxYWWK3eWHCv
 fbxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L1NJYuTKReAQCzwmp21v6oxd6VH6o0/1AXhj3Xbp+FA=;
 b=UMd+JpEgn9KHj8o2OWgemiK1emPAO21drqvkm+JVr1uv+Q/uMCajP4thRAkSluaNaA
 YLO8LGel/i2S7jO+D4mHOgElalA9ATWop0N1TXCYXijP82RXc2cm3xX4zHK3jEPGFQ0+
 wMI5cHKfY7L1ZVodP71XPE9lCpKSyUtI9VY0RA1H8pZwos5U6cnWFmRshTzb7BSOewVl
 lYqmyKsXml5YpLFxQUHjOdpogBrsvLw9+FPFTmQTxg21ONhFmq+HV/sQ9maqBf7NIE6H
 UgDOVPj6iskdr/QR+7w3GBcXLvOeL70Ma4F9FNo/5obrIJcgv2thWocrSSwAuOAv8N3Y
 92fg==
X-Gm-Message-State: AOAM530OVxo0t4+DBoGGiM5uT58nXnNryV0MkQa91vzfhhaGFZNZQgF+
 zI/JLfMuYaGTOSL/AyVes0+fITYWYfl76TLwLmeVUw==
X-Google-Smtp-Source: ABdhPJzeYHCrqoAKbg/iXMZc2UHkSMqVGpsvQRy6zx+BK4rdk3W1fxIGP76BKw3wR0/nVnq2bumPP8UA4bGzDwuUJyc=
X-Received: by 2002:a2e:350a:: with SMTP id z10mr1920234ljz.104.1591187484286; 
 Wed, 03 Jun 2020 05:31:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200530201952.585798-1-christophe.jaillet@wanadoo.fr>
In-Reply-To: <20200530201952.585798-1-christophe.jaillet@wanadoo.fr>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 3 Jun 2020 14:31:13 +0200
Message-ID: <CACRpkdYvoe8o8Db1mszfgcHA3XZF7LJ3P1u5pnKOfEfS99F0Ew@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: imxl: Fix an error handling path in
 'imx1_pinctrl_core_probe()'
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_053126_414004_40341DD3 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, kernel-janitors@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Laxman Dewangan <ldewangan@nvidia.com>, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 30, 2020 at 10:20 PM Christophe JAILLET
<christophe.jaillet@wanadoo.fr> wrote:

> When 'pinctrl_register()' has been turned into 'devm_pinctrl_register()',
> an error handling path has not been updated.
>
> Axe a now unneeded 'pinctrl_unregister()'.
>
> Fixes: e55e025d1687 ("pinctrl: imxl: Use devm_pinctrl_register() for pinctrl registration")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
