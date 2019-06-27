Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 971F557FC4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 11:57:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5EBqZSqyuA+fWhq7IrMnvSXS5KtvW9qx0z/y2vcFRZc=; b=cr0hUyTLU0kgoe
	LD+qUe885VrsRnpbbV54YEZMO0sTFvDE1eJ7EoHmMdL5PkzL/w0l8kIdrxIsV/Qf9oMCdfpslbxJ6
	I+3qkIWkNRxpkQ3bI9hcZnkGxMqOhkbkCheFd51nwrWnDCpCdljp4qUkK6zzmu48F6G/dpBaQsMCd
	Y0Q43RIaWXUe/iNIp4IX/WGFvcTqmt99fVOj1M4n0lOwr7d6xqJCHacCpZs58u9RFC6EeozCeDRn5
	ALPBaEr8XGn0zY+1KEorN/RgfTm5YfYEqKEnMyf6NnlNrKV8nzQPAtq97fGWRzgep4sJ3mBaNX3Bo
	UNLrkXEXHTuwGeC2HZPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgR9q-00084m-TA; Thu, 27 Jun 2019 09:57:35 +0000
Received: from unicorn.mansr.com ([81.2.72.234])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgR8g-0007dz-CL
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 09:56:24 +0000
Received: by unicorn.mansr.com (Postfix, from userid 51770)
 id ECF0715393; Thu, 27 Jun 2019 10:56:05 +0100 (BST)
From: =?iso-8859-1?Q?M=E5ns_Rullg=E5rd?= <mans@mansr.com>
To: Bin Liu <b-liu@ti.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH] usb: musb: sunxi: propagate devicetree node to glue pdev
References: <20190228112031.8122-1-mans@mansr.com>
Date: Thu, 27 Jun 2019 10:56:05 +0100
In-Reply-To: <20190228112031.8122-1-mans@mansr.com> (Mans Rullgard's message
 of "Thu, 28 Feb 2019 11:20:31 +0000")
Message-ID: <yw1x1rzfic7e.fsf@mansr.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_025622_832580_67F8A2EA 
X-CRM114-Status: GOOD (  13.61  )
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mans Rullgard <mans@mansr.com> writes:

> In order for devicetree nodes to be correctly associated with attached
> devices, the controller node needs to be propagated to the glue device.
>
> Signed-off-by: Mans Rullgard <mans@mansr.com>
> ---
> This depends on 2c1ea6abde88 ("platform: set of_node in
> platform_device_register_full()") which is currently winding its way
> through the staging trees.

That patch is in v5.1, so this one can go ahead now.  Assuming there are
no objections, of course.

> ---
>  drivers/usb/musb/sunxi.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/usb/musb/sunxi.c b/drivers/usb/musb/sunxi.c
> index 832a41f9ee7d..a72665fbf111 100644
> --- a/drivers/usb/musb/sunxi.c
> +++ b/drivers/usb/musb/sunxi.c
> @@ -781,6 +781,8 @@ static int sunxi_musb_probe(struct platform_device *p=
dev)
>  	pinfo.name	 =3D "musb-hdrc";
>  	pinfo.id	=3D PLATFORM_DEVID_AUTO;
>  	pinfo.parent	=3D &pdev->dev;
> +	pinfo.fwnode	=3D of_fwnode_handle(pdev->dev.of_node);
> +	pinfo.of_node_reused =3D true;
>  	pinfo.res	=3D pdev->resource;
>  	pinfo.num_res	=3D pdev->num_resources;
>  	pinfo.data	=3D &pdata;
> -- =

> 2.20.1
>

-- =

M=E5ns Rullg=E5rd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
