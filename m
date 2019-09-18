Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88155B61F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 13:01:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iOLZV669NCOh7FuM/onnDgYY09nj1ZE351BT+AvCELY=; b=XNJnceLnBve5h/
	G7QCIfwh9HUmZbdR/jtXJqh+XQ20XSfbtuDFKxwQ6HFekO6KVvECWcURF6ewPIOOidmzxx/h/wVs6
	C1Eh5p+f+DreimZY9hcM/2/GYTwnVGi0S6a7aUO5UrliOELxs62E40iDSGabcsp6EAVCxOA/lxoJ8
	mj1PYbKtIkrOiQGl0PLMw7GkZoJGfjlc6pKe6vuqIGiQR2Bu6ypeFuQXtnwCrK8bfZ+GygYWkKOIw
	QTAVJas9fttOTazHipQwyUy5lYDkQOLv8yXpZTSXic5WHKzsF7mnsobtsj3yZPuEgIbz3njMQ/LCB
	H7mVwKaJ7tskqm62cCIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAXi0-0000DJ-2E; Wed, 18 Sep 2019 11:01:16 +0000
Received: from unicorn.mansr.com ([81.2.72.234])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAXht-0000CM-E5
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 11:01:11 +0000
Received: by unicorn.mansr.com (Postfix, from userid 51770)
 id CD3A91538A; Wed, 18 Sep 2019 12:00:53 +0100 (BST)
From: =?iso-8859-1?Q?M=E5ns_Rullg=E5rd?= <mans@mansr.com>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [PATCH] media: rc: Use devm_platform_ioremap_resource() in
 tango_ir_probe()
References: <04df8450-1b15-55ec-91e7-7d72ffbedac7@web.de>
Date: Wed, 18 Sep 2019 12:00:53 +0100
In-Reply-To: <04df8450-1b15-55ec-91e7-7d72ffbedac7@web.de> (Markus Elfring's
 message of "Wed, 18 Sep 2019 12:37:24 +0200")
Message-ID: <yw1xk1a56f8a.fsf@mansr.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_040109_643072_04D65EC2 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Himanshu Jha <himanshujha199640@gmail.com>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Allison Randal <allison@lohutok.net>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Markus Elfring <Markus.Elfring@web.de> writes:

> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Wed, 18 Sep 2019 12:30:18 +0200
>
> Simplify this function implementation by using a known wrapper function.
>
> This issue was detected by using the Coccinelle software.
>
> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>

Acked-by: Mans Rullgard <mans@mansr.com>

> ---
>  drivers/media/rc/tango-ir.c | 14 ++------------
>  1 file changed, 2 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/media/rc/tango-ir.c b/drivers/media/rc/tango-ir.c
> index 451ec4e9dcfa..b8eb5bc4d9be 100644
> --- a/drivers/media/rc/tango-ir.c
> +++ b/drivers/media/rc/tango-ir.c
> @@ -157,20 +157,10 @@ static int tango_ir_probe(struct platform_device *p=
dev)
>  	struct device *dev =3D &pdev->dev;
>  	struct rc_dev *rc;
>  	struct tango_ir *ir;
> -	struct resource *rc5_res;
> -	struct resource *rc6_res;
>  	u64 clkrate, clkdiv;
>  	int irq, err;
>  	u32 val;
>
> -	rc5_res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	if (!rc5_res)
> -		return -EINVAL;
> -
> -	rc6_res =3D platform_get_resource(pdev, IORESOURCE_MEM, 1);
> -	if (!rc6_res)
> -		return -EINVAL;
> -
>  	irq =3D platform_get_irq(pdev, 0);
>  	if (irq <=3D 0)
>  		return -EINVAL;
> @@ -179,11 +169,11 @@ static int tango_ir_probe(struct platform_device *p=
dev)
>  	if (!ir)
>  		return -ENOMEM;
>
> -	ir->rc5_base =3D devm_ioremap_resource(dev, rc5_res);
> +	ir->rc5_base =3D devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(ir->rc5_base))
>  		return PTR_ERR(ir->rc5_base);
>
> -	ir->rc6_base =3D devm_ioremap_resource(dev, rc6_res);
> +	ir->rc6_base =3D devm_platform_ioremap_resource(pdev, 1);
>  	if (IS_ERR(ir->rc6_base))
>  		return PTR_ERR(ir->rc6_base);
>
> --
> 2.23.0
>

-- =

M=E5ns Rullg=E5rd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
