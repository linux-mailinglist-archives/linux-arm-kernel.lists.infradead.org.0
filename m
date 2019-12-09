Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6E2117745
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 21:19:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2HLlDodlRS9MvCMnH3M/mqhFcXcN84U57NmHqEHFQMo=; b=Mxjom8zNYoM1K/
	IQOzu2EmzJci3oWUtmje7U6qOvUFVodsUcMk9B28IvDhGa6tHQpEvTQBWD9T8xTNTkk5eM7C8ZfUy
	V5Kfp22Q28YFFHI/0Ov9oaAQxheYts36X9+6g+i7BMulrXdihrUmxNioUTS9SY4sVgaWpcm02oAAu
	zrUi1eJxyv/LrFLld/jfpZzlwVD6SX4NqenSD9w+6/hntJv7QOHA9WFWRRDf2ckfsSz8AYiobREYT
	CcLXHnZ0AK/3Qeef2zvK4gCRyiA//POpG/1/JjaBKOqhmO+c/UuDZm+wIBoehLDbDm0kPDhCyEmxA
	xNfDhRM68VyHrHhNtPOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iePUw-000394-PJ; Mon, 09 Dec 2019 20:19:14 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iePUn-00037h-Db
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 20:19:07 +0000
Received: by mail-lj1-x243.google.com with SMTP id k8so17134103ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 12:19:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=n1EdrnRTVcraROl5/h8aaMtwkvgNtthE6B0nadUQmNM=;
 b=YyWaTa3gnmdIYwVKVbmo7iBU4bN5OGGRfD/62puTS0gNvrMO2Gn52AUyhSnCwq8CMd
 wR03rB0TUPJbC5zMlN44+k7hjCwO+baR8t4mgLtW40gBXm/sehCBVm5s5M+xKBVhoGhr
 W/ev/YydmL+HcKZLZvpcF7/hBtf/4WOgcYSrxRDzXmzCDtgZVbXlj5Dnl38zVEgiPBMC
 S5Ar3nDEgmaur+OOaj3gG60Pb+KKkNB1wit28dY2jcQhMKrG3TL3IQkdm520wfV07mtg
 J4SGJavVx2XoiPZWucDtJiYVUC0192OwXrhD/noBjLMJGN5Fw2PeTQfe6oUeJoGpxhzF
 SS9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=n1EdrnRTVcraROl5/h8aaMtwkvgNtthE6B0nadUQmNM=;
 b=QP/CmpLklsi19KxC3xHIxS98PyusCqUCDqHn5p+bV3HdT4vO40S/BeJJ7YQj9psMic
 +eeIhas9ZnZ18YW9cPK7QjYwxPyBAGRDO3PPSdzXVvAfFKPcVsn3ht9+rGb8EHcG7xYc
 MySzqe3PWfxjputy8s2SXDGiG8YrGk3hZ7/t94KqYqAg8ptrppARpWtNJX81rUD1zHtW
 kZDwtw+iYKr/GzByK6viUDpSa76+Ba/lTMMro5QsUk9npATh+9v7JjMlqbcxeBDatmXB
 9mC4+tsmJH9j5wk4UVEBvdjykgnPBnXos6t+bKGkl20wDWpum2aWltDdsctRO8X1G+3w
 li3w==
X-Gm-Message-State: APjAAAVi97nu8JHrpdZY+W4EUlabkN+HX+HnLYDrnWBtw977P9BetnBV
 kSUYHj3bIluwUrC/LrfaI7c=
X-Google-Smtp-Source: APXvYqyfu7gL7wbNI0OOFWaQIsqDNwc4LTHSY9AuWl7rOPaR/iVf8RbBzzn3iTnZxmGFFwaacn/o1A==
X-Received: by 2002:a2e:5751:: with SMTP id r17mr18245968ljd.254.1575922742313; 
 Mon, 09 Dec 2019 12:19:02 -0800 (PST)
Received: from rikard (h-158-174-187-196.NA.cust.bahnhof.se. [158.174.187.196])
 by smtp.gmail.com with ESMTPSA id i19sm237269lfj.17.2019.12.09.12.19.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 12:19:01 -0800 (PST)
From: Rikard Falkeborn <rikard.falkeborn@gmail.com>
X-Google-Original-From: Rikard Falkeborn <rikard.falkeborn>
Date: Mon, 9 Dec 2019 21:18:58 +0100
To: Rikard Falkeborn <rikard.falkeborn@gmail.com>, kishon@ti.com
Subject: Re: [PATCH v2] phy: allwinner: Fix GENMASK misuse
Message-ID: <20191209201858.GA1223@rikard>
References: <20191020134229.1216351-3-megous@megous.com>
 <20191110124355.1569-1-rikard.falkeborn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191110124355.1569-1-rikard.falkeborn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_121905_470601_7BAE8EF6 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rikard.falkeborn[at]gmail.com)
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
Cc: megous@megous.com, devicetree@vger.kernel.org, arnd@arndb.de,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, mripard@kernel.org,
 kishon@ti.com, paul.kocialkowski@bootlin.com, linux-sunxi@googlegroups.com,
 robh+dt@kernel.org, mark.rutland@arm.com, wens@csie.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, icenowy@aosc.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Nov 10, 2019 at 01:43:55PM +0100, Rikard Falkeborn wrote:
> Arguments are supposed to be ordered high then low.
> 
> Fixes: a228890f9458 ("phy: allwinner: add phy driver for USB3 PHY on Allwinner H6 SoC")
> Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
> Tested-by: Ondrej Jirman <megous@megous.com>
> ---
> v1->v2: Add fixes tax. Add Ondrejs Tested-by. No functional change.
> 
>  drivers/phy/allwinner/phy-sun50i-usb3.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/allwinner/phy-sun50i-usb3.c b/drivers/phy/allwinner/phy-sun50i-usb3.c
> index 1169f3e83a6f..b1c04f71a31d 100644
> --- a/drivers/phy/allwinner/phy-sun50i-usb3.c
> +++ b/drivers/phy/allwinner/phy-sun50i-usb3.c
> @@ -49,7 +49,7 @@
>  #define SUNXI_LOS_BIAS(n)		((n) << 3)
>  #define SUNXI_LOS_BIAS_MASK		GENMASK(5, 3)
>  #define SUNXI_TXVBOOSTLVL(n)		((n) << 0)
> -#define SUNXI_TXVBOOSTLVL_MASK		GENMASK(0, 2)
> +#define SUNXI_TXVBOOSTLVL_MASK		GENMASK(2, 0)
>  
>  struct sun50i_usb3_phy {
>  	struct phy *phy;
> -- 
> 2.24.0
> 

Ping.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
