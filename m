Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8841295A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 12:45:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZEbvfnWRVyKQlojFr4OFIotXMv851ad4w5REtQBJWOA=; b=FIAffzobgjXcEvosX07lCxoYo
	++1r1XwwQLCY9t+wcgyVKEG0WtHwlpb4ySGiha6TqwQHB3UKFHbJfyTcCSe921XNiOhjrCffASbUJ
	KigL1nTwfuOeAvq5RzPTTk929sd3Jt030NWjLQd558nDWQO11Q8N4p1ZI9HuISTLpdslOP1ar6RRD
	JII5UJ7Yuld5rWYupgyQJRDY1Z+FULVb+RSCTcAC05bALImsh2U/05XC3yurIT0aUxJhBKWA/F16p
	FMv3iuvCDNLJ1gScCR2FUQbZh0LveG5oKghhyhoj74pm517AIzxc/CAJ2+FLmAj6uyvizYVOS6VsO
	UWyN/t1sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijM8t-0004GA-GD; Mon, 23 Dec 2019 11:44:55 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijM8k-0004F7-1x; Mon, 23 Dec 2019 11:44:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1577101475; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uVdlO9cJhU3uZR9PsalU+9sk35dl6Zqn8751jyDz6hE=;
 b=jX9LJcjWIqPnnuyZly5BdZOoj2/inQqbVjiES4HFwhniV6JNaGO+ALAE433xhQmOf7hoHr
 74R9G8HAr3LeKzr0sbxjFJVOggyg28MPxpD0DHH9YfttM3lvpC+gmVq6n3+Ac/2Iy0eHBk
 VXMTWUiAs8EHGfFQgFmRp6lvylZSZUE=
Date: Mon, 23 Dec 2019 12:44:26 +0100
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH 2/9] memory: jz4780_nemc: convert to
 devm_platform_ioremap_resource
To: Yangtao Li <tiny.windzz@gmail.com>
Message-Id: <1577101466.3.0@crapouillou.net>
In-Reply-To: <20191222185034.4665-2-tiny.windzz@gmail.com>
References: <20191222185034.4665-1-tiny.windzz@gmail.com>
 <20191222185034.4665-2-tiny.windzz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_034446_289596_837769B8 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: kstewart@linuxfoundation.org, tony@atomide.com, ssantosh@kernel.org,
 rfontana@redhat.com, thierry.reding@gmail.com, krzk@kernel.org,
 digetx@gmail.com, linux-samsung-soc@vger.kernel.org, evgreen@chromium.org,
 jonathanh@nvidia.com, kgene@kernel.org, allison@lohutok.net, jroedel@suse.de,
 linux-tegra@vger.kernel.org, linux-pm@vger.kernel.org,
 alexios.zavras@intel.com, linux-mediatek@lists.infradead.org, john@phrozen.org,
 matthias.bgg@gmail.com, tglx@linutronix.de, linux-omap@vger.kernel.org,
 yong.wu@mediatek.com, rogerq@ti.com, linux-arm-kernel@lists.infradead.org,
 sboyd@kernel.org, pdeschrijver@nvidia.com, linux-kernel@vger.kernel.org,
 info@metux.net, lukasz.luba@arm.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,


Le dim., d=E9c. 22, 2019 at 18:50, Yangtao Li <tiny.windzz@gmail.com> a =

=E9crit :
> Use devm_platform_ioremap_resource() to simplify code.
> =

> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>

Acked-by: Paul Cercueil <paul@crapouillou.net>

Cheers,
-Paul


> ---
>  drivers/memory/jz4780-nemc.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> =

> diff --git a/drivers/memory/jz4780-nemc.c =

> b/drivers/memory/jz4780-nemc.c
> index b232ed279fc3..857a9fa5cba5 100644
> --- a/drivers/memory/jz4780-nemc.c
> +++ b/drivers/memory/jz4780-nemc.c
> @@ -269,7 +269,6 @@ static int jz4780_nemc_probe(struct =

> platform_device *pdev)
>  {
>  	struct device *dev =3D &pdev->dev;
>  	struct jz4780_nemc *nemc;
> -	struct resource *res;
>  	struct device_node *child;
>  	const __be32 *prop;
>  	unsigned int bank;
> @@ -287,8 +286,7 @@ static int jz4780_nemc_probe(struct =

> platform_device *pdev)
>  	spin_lock_init(&nemc->lock);
>  	nemc->dev =3D dev;
> =

> -	res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	nemc->base =3D devm_ioremap_resource(dev, res);
> +	nemc->base =3D devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(nemc->base)) {
>  		dev_err(dev, "failed to get I/O memory\n");
>  		return PTR_ERR(nemc->base);
> --
> 2.17.1
> =




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
