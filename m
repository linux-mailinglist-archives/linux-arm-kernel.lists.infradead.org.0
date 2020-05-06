Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A21C11C6ED7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 13:03:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xb6z0VGDMkG1HUfk7S7J3cwMtbH4uGMNT0Ce6AfAmQc=; b=Nc7sfNZgMzoWG1
	ExBmOg6oaUYc/7/EbLfFPXNae/M8PgPjlLzl4UMDFlHlrSJhfTqxfbSc+nRgCpj58oddLnWGr/P2z
	LgT/lURB9HNEjChamHAOYF2eH9+CmzNrcsYl3Urycj7brGF8e+hxFmrKiAJbZSYB36D61S03KTyYN
	24KO7JXjhEVBsZ5Kmt46LuFQINnJH1i1Wo1v9hz+ogFEeo4zDQlV6ZmwwYUjs6TDeTGdblMnJihbJ
	BwQVpGMJ8pPussRuqtrHPor2sgsyKysSvd6hNAiAWjJd0vEhDiBreUKdMn7SZQOGsOSs/w3X59i6d
	j0q1oZYy6OxCbvkucydQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHpO-0001cz-Ed; Wed, 06 May 2020 11:03:02 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHpF-0001bs-UH
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 11:02:55 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200506110251euoutp01fecb26ae80cf1ef6a6897c4eb354a747~Ma4FBhWxD0899708997euoutp01n
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  6 May 2020 11:02:51 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200506110251euoutp01fecb26ae80cf1ef6a6897c4eb354a747~Ma4FBhWxD0899708997euoutp01n
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588762971;
 bh=Hs2Nzv92QqdJ8EHIoLJIaIAUoacHy1QViDiEr6yGEoY=;
 h=Subject:To:From:Cc:Date:In-Reply-To:References:From;
 b=bDVmQ0EZKK5UJKA0k+v4wGR0x7FiIq8Sl1bU/+lExrryg1iM37sR62Ku2rUL3sM3D
 pKCfNcVS3O9YfH2J+V7JqmooenbwtzZQvjxgYOg1ubw32hU5iABcsKB70r+/d9XyuN
 T9zG+6PGwvWpFw/42hI2C6OoeOcqB2yRly/HUpRc=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200506110251eucas1p104b545408aa5cd6e0ebd1d1c89e6becc~Ma4E0bbDY2312923129eucas1p1Z;
 Wed,  6 May 2020 11:02:51 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 98.0E.60679.B5992BE5; Wed,  6
 May 2020 12:02:51 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200506110250eucas1p25a74a37f899d8942cbf06457738fef5c~Ma4Eal-PC0589605896eucas1p2W;
 Wed,  6 May 2020 11:02:50 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200506110250eusmtrp148cdad59bf92eace06afe76ca6c6f4f3~Ma4EZ1SV52544325443eusmtrp1u;
 Wed,  6 May 2020 11:02:50 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-0c-5eb2995bc236
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 3F.55.07950.A5992BE5; Wed,  6
 May 2020 12:02:50 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200506110250eusmtip298a51f745c23623739f778e654242287~Ma4D7IKem1685116851eusmtip2u;
 Wed,  6 May 2020 11:02:50 +0000 (GMT)
Subject: Re: [PATCH v10 3/3] tty: samsung_tty: 32-bit access for TX/RX hold
 registers
To: Hyunki Koo <hyunki00.koo@samsung.com>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <1b230724-c87b-aa28-f850-ecdeb0542dba@samsung.com>
Date: Wed, 6 May 2020 13:02:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200506080242.18623-3-hyunki00.koo@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrFKsWRmVeSWpSXmKPExsWy7djP87rRMzfFGWx7zmzRvHg9m8WqpTeY
 LaZs+MBk0f/4NbPF+fMb2C02Pb7GanF51xw2ixnn9zFZnFncy+7A6bFpVSebx/65a9g9Ni+p
 9+jbsorRY/2WqywenzfJBbBFcdmkpOZklqUW6dslcGXM3DGFpWCzQsXiJvcGxieSXYycHBIC
 JhJTHh9g6WLk4hASWMEosbZtMxOE84VRomHmBKjMZ0aJhw2NLDAtv6+8YYRILGeU2HNwBzuE
 85ZR4u3eZiaQKmGBcIlpDUsZQWwRAU2J1juz2EFsNgEriYntq8C6mQWWMEkc33QIbCyvgJ3E
 7s7rYM0sAioSl++cBmsQFYiQ+PTgMCtEjaDEyZlPwOo5geovtX0Es5kFxCVuPZnPBGHLS2x/
 O4cZZIGEwCl2ifmXPrJC3O0iMen1AUYIW1ji1fEt7BC2jMTpyT0sEA3rGCX+dryA6t7OKLF8
 8j82iCpriTvnfgHZHEArNCXW79KHCDtK9DavZAYJSwjwSdx4KwhxBJ/EpG3TocK8Eh1tQhDV
 ahIblm1gg1nbtXMl8wRGpVlIXpuF5J1ZSN6ZhbB3ASPLKkbx1NLi3PTUYqO81HK94sTc4tK8
 dL3k/NxNjMAUdfrf8S87GHf9STrEKMDBqMTDa+C+MU6INbGsuDL3EKMEB7OSCC/PD6AQb0pi
 ZVVqUX58UWlOavEhRmkOFiVxXuNFL2OFBNITS1KzU1MLUotgskwcnFINjKF6WwSCa84vtLrf
 vr+Y+5j0u7CTDycKXHOx/Fo0aeWJY1cyT+7SctJnue7bZuW7uKFyXeKlBwkdN28yt5hrzr2n
 1bO3zUS5dUd9Z9HJ03ZJZzdp6En08Fcmv14QLBYfv86S0VQ1n3Patw2b0nvYvT+qRRcarKp9
 +Sbxjd77U5pvmUvS5l3mVWIpzkg01GIuKk4EAIjin6JNAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrJIsWRmVeSWpSXmKPExsVy+t/xe7pRMzfFGSx8qmPRvHg9m8WqpTeY
 LaZs+MBk0f/4NbPF+fMb2C02Pb7GanF51xw2ixnn9zFZnFncy+7A6bFpVSebx/65a9g9Ni+p
 9+jbsorRY/2WqywenzfJBbBF6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZmSrp
 29mkpOZklqUW6dsl6GXM3DGFpWCzQsXiJvcGxieSXYycHBICJhK/r7xh7GLk4hASWMoo8fP5
 aZYuRg6ghIzE8fVlEDXCEn+udbGB2EICrxkl9h93AbGFBcIlpjUsZQSxRQQ0JVrvzGKHmHOU
 UWLTxnZ2kASbgJXExPZVYEXMAkuYJI5v1gWxeQXsJHZ3XmcCsVkEVCQu3zkNVi8qECFxeMcs
 RogaQYmTM5+wgNicQPWX2j6yQMxRl/gz7xIzhC0ucevJfCYIW15i+9s5zBMYhWYhaZ+FpGUW
 kpZZSFoWMLKsYhRJLS3OTc8tNtIrTswtLs1L10vOz93ECIzGbcd+btnB2PUu+BCjAAejEg+v
 gfvGOCHWxLLiytxDjBIczEoivDw/gEK8KYmVValF+fFFpTmpxYcYTYGem8gsJZqcD0wUeSXx
 hqaG5haWhubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGA/t4rH943ouV3Huhxdc
 X0N9v2+65RPv4+zKypTlM8+pUl/+8jvTTZYCc/fprdS/sOnRQg19Kb0cgaDMms9NW17EXryV
 /4934eKtjm9EN2sZTiicbM43eabLAZfO+SlWre3h0tevrXg/NWVb6pkb7T9OFSl9nGPOER26
 79Cjf99aC3UPvVy7y1+JpTgj0VCLuag4EQBaQFrf3AIAAA==
X-CMS-MailID: 20200506110250eucas1p25a74a37f899d8942cbf06457738fef5c
X-Msg-Generator: CA
X-RootMTR: 20200506080258epcas2p4f242fb66a2145f76b0e108014ee351fb
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200506080258epcas2p4f242fb66a2145f76b0e108014ee351fb
References: <20200506080242.18623-1-hyunki00.koo@samsung.com>
 <CGME20200506080258epcas2p4f242fb66a2145f76b0e108014ee351fb@epcas2p4.samsung.com>
 <20200506080242.18623-3-hyunki00.koo@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_040254_288401_444948A9 
X-CRM114-Status: GOOD (  23.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-samsung-soc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi!

On 5/6/20 10:02 AM, Hyunki Koo wrote:
> Support 32-bit access for the TX/RX hold registers UTXH and URXH.
> 
> This is required for some newer SoCs.

Krzysztof has asked this previously but I couldn't find the answer in
previous mails:

Do you plan to upstream support for these newer SoCs?

If not (i.e. this code is only to support Android GKI) then the code
you are adding now may be removed at any time later during cleanups
(due to lack of the in-kernel users).

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

> Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
> Tested on Odroid HC1 (Exynos5422):
> Tested-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  drivers/tty/serial/samsung_tty.c | 62 ++++++++++++++++++++++++++++++++++++----
>  1 file changed, 57 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
> index 326b0164609c..6ef614d8648c 100644
> --- a/drivers/tty/serial/samsung_tty.c
> +++ b/drivers/tty/serial/samsung_tty.c
> @@ -154,10 +154,33 @@ struct s3c24xx_uart_port {
>  #define portaddrl(port, reg) \
>  	((unsigned long *)(unsigned long)((port)->membase + (reg)))
>  
> -#define rd_reg(port, reg) (readb_relaxed(portaddr(port, reg)))
> +static u32 rd_reg(struct uart_port *port, u32 reg)
> +{
> +	switch (port->iotype) {
> +	case UPIO_MEM:
> +		return readb_relaxed(portaddr(port, reg));
> +	case UPIO_MEM32:
> +		return readl_relaxed(portaddr(port, reg));
> +	default:
> +		return 0;
> +	}
> +	return 0;
> +}
> +
>  #define rd_regl(port, reg) (readl_relaxed(portaddr(port, reg)))
>  
> -#define wr_reg(port, reg, val) writeb_relaxed(val, portaddr(port, reg))
> +static void wr_reg(struct uart_port *port, u32 reg, u32 val)
> +{
> +	switch (port->iotype) {
> +	case UPIO_MEM:
> +		writeb_relaxed(val, portaddr(port, reg));
> +		break;
> +	case UPIO_MEM32:
> +		writel_relaxed(val, portaddr(port, reg));
> +		break;
> +	}
> +}
> +
>  #define wr_regl(port, reg, val) writel_relaxed(val, portaddr(port, reg))
>  
>  /* Byte-order aware bit setting/clearing functions. */
> @@ -1974,7 +1997,7 @@ static int s3c24xx_serial_probe(struct platform_device *pdev)
>  	struct device_node *np = pdev->dev.of_node;
>  	struct s3c24xx_uart_port *ourport;
>  	int index = probe_index;
> -	int ret;
> +	int ret, prop = 0;
>  
>  	if (np) {
>  		ret = of_alias_get_id(np, "serial");
> @@ -2000,10 +2023,27 @@ static int s3c24xx_serial_probe(struct platform_device *pdev)
>  			dev_get_platdata(&pdev->dev) :
>  			ourport->drv_data->def_cfg;
>  
> -	if (np)
> +	if (np) {
>  		of_property_read_u32(np,
>  			"samsung,uart-fifosize", &ourport->port.fifosize);
>  
> +		if (of_property_read_u32(np, "reg-io-width", &prop) == 0) {
> +			switch (prop) {
> +			case 1:
> +				ourport->port.iotype = UPIO_MEM;
> +				break;
> +			case 4:
> +				ourport->port.iotype = UPIO_MEM32;
> +				break;
> +			default:
> +				dev_warn(&pdev->dev, "unsupported reg-io-width (%d)\n",
> +						prop);
> +				ret = -EINVAL;
> +				break;
> +			}
> +		}
> +	}
> +
>  	if (ourport->drv_data->fifosize[index])
>  		ourport->port.fifosize = ourport->drv_data->fifosize[index];
>  	else if (ourport->info->fifosize)
> @@ -2587,6 +2627,18 @@ module_platform_driver(samsung_serial_driver);
>   * Early console.
>   */
>  
> +static void wr_reg_barrier(struct uart_port *port, u32 reg, u32 val)
> +{
> +	switch (port->iotype) {
> +	case UPIO_MEM:
> +		writeb(val, portaddr(port, reg));
> +		break;
> +	case UPIO_MEM32:
> +		writel(val, portaddr(port, reg));
> +		break;
> +	}
> +}
> +
>  struct samsung_early_console_data {
>  	u32 txfull_mask;
>  };
> @@ -2612,7 +2664,7 @@ static void samsung_early_putc(struct uart_port *port, int c)
>  	else
>  		samsung_early_busyuart(port);
>  
> -	writeb(c, port->membase + S3C2410_UTXH);
> +	wr_reg_barrier(port, S3C2410_UTXH, c);
>  }
>  
>  static void samsung_early_write(struct console *con, const char *s,
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
