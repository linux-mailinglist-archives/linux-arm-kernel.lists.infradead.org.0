Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 905E8F7AA5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 19:20:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jhir5pK1QaeEmuJJLIYv4d3adqnWnCZ2dGPTNhThFj8=; b=SLa3+3EDU2S7aC
	UqaCIHQe/l5zhVG5qCH5aohot2U+kfkFm8krHEaw5T8l9tEsalakcCH04I9elqjip+iEL6ACRKRcn
	pEtDVbw+zTWS69i3f2BEWQgkFAq2XenAH74BT5bEcM4UiHoqrdn3NwpMSJPVDSNePwNy31xV7z9Mr
	gbFZexbbtHBijft3hwBynnHu6mpm8E+LIIatveqChRfknQjdIGXE8LRbvfIQj4VmmG18jobKagEz0
	mW3/ZstPg4tGHiIuwwfj0W7IQYQ0aRchJuTl6BisaJAJatnLk4Cnhh8ZOzq/+xuFFUWxLSC5Apz/p
	qMJYCB04u6/Az/J3lgkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUEIQ-0002Xq-Ed; Mon, 11 Nov 2019 18:20:14 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUEID-0002DE-6I
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 18:20:03 +0000
Received: by mail-wm1-x342.google.com with SMTP id l17so337287wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 10:19:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2qLpoOoHqhQ7UmUkUN0JBNyfsKFyfXH2iBSTu8y82A8=;
 b=Ft5zR+jyAC5LwJCLHa0srvF445fHzOBkT6XlKCNe3NTiDOu4yeGWlwPtwe6rOcVjwd
 O3mbKFgC+BIMIpdg5u4ZxBMR9Ch2nhRqMw0TnHedRw7Sdd8BmZlWInBVTWlJDcD84VPM
 bYkhgw90HKoex/ToWGi79o7pBniUjOZ/EHqHRrblRyE8/OgsQojeT2Cl5e/ic4+7nyTy
 tUR371FFFThncUFv1F98G5tLa9GyjwYgSpiiKg5Sg8xWzz3n3s9w1IpVQQMziu8avf11
 ZG06p3D85dwP8f9PmBHlaZf+pvFFg7oVQ7cBtAUfFm+TxH2dFxLPwm1jIbAHLODvHsLg
 xyzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=2qLpoOoHqhQ7UmUkUN0JBNyfsKFyfXH2iBSTu8y82A8=;
 b=XSV5na26mmh6ZLrV9iP0S5zJhO1V8zLtQ68TQe6ufq7iytdTeCuElwPdM3nDClW9Ww
 xFsYp4H79sOWtgfOlBSNAERT3kj9vN7B8aS+LMvZZJMUQTHWvKk4qQH6F1Dl/CdR3vJZ
 Q/J8Oi1fBxBmm5G+9m99JEkJ0tIqmIIODEDI4gLlC4NabLypzOFpfXLEpyGizrRuoLlw
 r4joAcZEv0A8KIdcxjguqO4Ax1IskBfLGwRFfIeeZ6Ail/q4O9DK+ox2r14dtOa/5RJz
 2n0JNwwPvx7+nTvra3ZLXf/XBfYv4oAp5Aqs2XjSvXQ73H9zglO4sgY+QJsS4WdB+1J2
 4UOQ==
X-Gm-Message-State: APjAAAVTQuMEQfWmLnspDRmx5fmao5pPZ1ce0zIGv/ZpoMNXI3nsz0J+
 1WvH90/DDmOmpTJk+fRvOAGbYlw1
X-Google-Smtp-Source: APXvYqx7bQgbKhFeEyicz2oCpZ2otFC4RuRdXNJm8WLVyyDmMrckG29bUz9i9CR1xWXz5FjmNUhe/g==
X-Received: by 2002:a1c:5fc4:: with SMTP id t187mr319515wmb.142.1573496396740; 
 Mon, 11 Nov 2019 10:19:56 -0800 (PST)
Received: from [10.67.51.137] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a16sm332434wmd.11.2019.11.11.10.19.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 11 Nov 2019 10:19:56 -0800 (PST)
Subject: Re: [PATCH V4 net-next 5/7] net: bcmgenet: Refactor register access
 in bcmgenet_mii_config
To: Stefan Wahren <wahrenst@gmx.net>,
 Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>, "David S . Miller"
 <davem@davemloft.net>, Florian Fainelli <f.fainelli@gmail.com>
References: <1573455341-22813-1-git-send-email-wahrenst@gmx.net>
 <1573455341-22813-6-git-send-email-wahrenst@gmx.net>
From: Doug Berger <opendmb@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=opendmb@gmail.com; prefer-encrypt=mutual; keydata=
 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 YVs=
Message-ID: <7af3cf45-4131-ca19-87a8-fa99f82bba63@gmail.com>
Date: Mon, 11 Nov 2019 10:19:53 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1573455341-22813-6-git-send-email-wahrenst@gmx.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_102001_262345_867C0342 
X-CRM114-Status: GOOD (  23.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (opendmb[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/10/19 10:55 PM, Stefan Wahren wrote:
> The register access in bcmgenet_mii_config() is a little bit opaque and
> not easy to extend. In preparation for the missing RGMII PHY modes
> move all the phy name assignments into the switch statement and the
> port register access to the end of the function. This make the code easier
> to read and extend.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> =2D--
>  drivers/net/ethernet/broadcom/genet/bcmmii.c | 35 +++++++++++++----------=
> -----
>  1 file changed, 16 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/net/ethernet/broadcom/genet/bcmmii.c b/drivers/net/et=
> hernet/broadcom/genet/bcmmii.c
> index 6f291ee..611a6c0 100644
> =2D-- a/drivers/net/ethernet/broadcom/genet/bcmmii.c
> +++ b/drivers/net/ethernet/broadcom/genet/bcmmii.c
> @@ -213,11 +213,10 @@ int bcmgenet_mii_config(struct net_device *dev, bool=
>  init)
>  		udelay(2);
>  	}
> 
> -	priv->ext_phy =3D !priv->internal_phy &&
> -			(priv->phy_interface !=3D PHY_INTERFACE_MODE_MOCA);
> -
>  	switch (priv->phy_interface) {
>  	case PHY_INTERFACE_MODE_INTERNAL:
> +		phy_name =3D "internal PHY";
> +		/* fall through */
>  	case PHY_INTERFACE_MODE_MOCA:
>  		/* Irrespective of the actually configured PHY speed (100 or
>  		 * 1000) GENETv4 only has an internal GPHY so we will just end
> @@ -229,11 +228,7 @@ int bcmgenet_mii_config(struct net_device *dev, bool =
> init)
>  		else
>  			port_ctrl =3D PORT_MODE_INT_EPHY;
> 
> -		bcmgenet_sys_writel(priv, port_ctrl, SYS_PORT_CTRL);
> -
> -		if (priv->internal_phy) {
> -			phy_name =3D "internal PHY";
> -		} else if (priv->phy_interface =3D=3D PHY_INTERFACE_MODE_MOCA) {
> +		if (!phy_name) {
>  			phy_name =3D "MoCA";
>  			bcmgenet_moca_phy_setup(priv);
>  		}
> @@ -242,8 +237,7 @@ int bcmgenet_mii_config(struct net_device *dev, bool i=
> nit)
>  	case PHY_INTERFACE_MODE_MII:
>  		phy_name =3D "external MII";
>  		phy_set_max_speed(phydev, SPEED_100);
> -		bcmgenet_sys_writel(priv,
> -				    PORT_MODE_EXT_EPHY, SYS_PORT_CTRL);
> +		port_ctrl =3D PORT_MODE_EXT_EPHY;
>  		/* Restore the MII PHY after isolation */
>  		if (bmcr >=3D 0)
>  			phy_write(phydev, MII_BMCR, bmcr);
This changes the behavior. The SYS_PORT_CTRL register must be written to
the correct setting (i.e PORT_MODE_EXT_EPHY) before bringing the PHY
back out of isolate mode.

> @@ -261,31 +255,34 @@ int bcmgenet_mii_config(struct net_device *dev, bool=
>  init)
>  			port_ctrl =3D PORT_MODE_EXT_RVMII_50;
>  		else
>  			port_ctrl =3D PORT_MODE_EXT_RVMII_25;
> -		bcmgenet_sys_writel(priv, port_ctrl, SYS_PORT_CTRL);
>  		break;
> 
>  	case PHY_INTERFACE_MODE_RGMII:
>  		/* RGMII_NO_ID: TXC transitions at the same time as TXD
>  		 *		(requires PCB or receiver-side delay)
> -		 * RGMII:	Add 2ns delay on TXC (90 degree shift)
>  		 *
>  		 * ID is implicitly disabled for 100Mbps (RG)MII operation.
>  		 */
> +		phy_name =3D "external RGMII (no delay)";
>  		id_mode_dis =3D BIT(16);
> -		/* fall through */
> +		port_ctrl =3D PORT_MODE_EXT_GPHY;
> +		break;
> +
>  	case PHY_INTERFACE_MODE_RGMII_TXID:
> -		if (id_mode_dis)
> -			phy_name =3D "external RGMII (no delay)";
> -		else
> -			phy_name =3D "external RGMII (TX delay)";
> -		bcmgenet_sys_writel(priv,
> -				    PORT_MODE_EXT_GPHY, SYS_PORT_CTRL);
> +		/* RGMII_TXID:	Add 2ns delay on TXC (90 degree shift) */
> +		phy_name =3D "external RGMII (TX delay)";
> +		port_ctrl =3D PORT_MODE_EXT_GPHY;
>  		break;
>  	default:
>  		dev_err(kdev, "unknown phy mode: %d\n", priv->phy_interface);
>  		return -EINVAL;
>  	}
> 
> +	bcmgenet_sys_writel(priv, port_ctrl, SYS_PORT_CTRL);
You can probably just move this clause here:
	/* Restore the MII PHY after isolation */
	if (bmcr >= 0)
		phy_write(phydev, MII_BMCR, bmcr);
to correct it.

> +
> +	priv->ext_phy =3D !priv->internal_phy &&
> +			(priv->phy_interface !=3D PHY_INTERFACE_MODE_MOCA);
> +
>  	/* This is an external PHY (xMII), so we need to enable the RGMII
>  	 * block for the interface to work
>  	 */
> =2D-
> 2.7.4
> 

Thanks,
    Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
