Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB2D27DE3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 15:17:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4tiWiKxa9OSJ/4KgDMJKy4wmtbmQgd7vunoX8ijx9CA=; b=A2N9nJSQ5AIdVQ
	YqE0LZIgN3xY3fP/qK6+Ty7vcgk/veLJdrBM7+dX66H0+x2pYHXj4Q5YPCQxOhkrlJB6i0D4j60Qh
	EdnQNiCDXBX/uZI8vnopLgS/bKGaOG12cx5x1sdXFm088mlVyKgQC2p/o8hvssYCIqGLz+PwGrQMW
	JB+n5vuXRl2H233iD+ZZy7RG9P0ZkB/U0Y1wE8jdykP1rPi2xWoxiWlQf57lPro1BR4pJmg79UA3W
	MZ1nOg9k3KkpZH/iwl38DpDCzRsRpjMIhAtC5CirWYFPNP+bdV0I2z7/UcNSXNsV/NB4+dQT6K3c1
	MHVyE0jgSdPqxnqcIGRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTnaz-0004jc-Qq; Thu, 23 May 2019 13:17:21 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTnaq-0004ho-Ss
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 13:17:14 +0000
Received: by mail-pl1-x641.google.com with SMTP id go2so2753537plb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 06:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Kopmk5mvy3G2sPVhmNvkGBCegMtkQbUAC1QtXamn6kQ=;
 b=DEtKgYpPpwGdbF4EcNDd2ZV7eBWZlHpcbgHalwosHws5txIbZNSvv0f0YekrZUq2ww
 Trs96X2AALKE9VRNe9cveE56HD+zlE+STMyYpqgqldesj6HqzSxiJBPKXU84DP+hP+DZ
 gPigezIOLn1FQytjs8mgTXUIUk+VOWvGKIP6ST0zGblcuDIpt2YMDvoI7w2+2IPLaCeT
 IqTR0pCumOBm7YsnP/dEF/L1pwzodGp3czArtm985mxSsP2UE9BhTErDu7mOpiQ+A17N
 absyxnXzb/nx70hx7QQt53dxnZRCY4vwX11ONClSry7eUIpc0yTF3mkuxQwueqMeNMBS
 s2jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Kopmk5mvy3G2sPVhmNvkGBCegMtkQbUAC1QtXamn6kQ=;
 b=UNCrCfkm1+E9SwwkUfYAV3VBAEc4fVC8f2ivLOGGs9dYyF8qYF1p7MKKlFuN8tEJYM
 MP5dXXfvEoZcO0rmmZnkuO4PorITwFB/ofSU0sKW0IaJYldVtid90gdeuAfA191YGN75
 Yxg3p7wsfTB1uKvKUhDi9LGjq6bPq2l42/j2RXMAbqWnplaGeKnULytjoFX3A4KXJYVI
 h7KUfvqaiksbo5xfVwHdi6u5bOuWo1I7mAs/4HYrMC+Hd3Rwt+73AAcRgk+T0GVJwHme
 fMkB5fHlprtl/4FnGI7Xx8kBXOUash9R6n7p1E3kfRkCVtq/3znRZnOEGh0AIvMER0CF
 y/Qg==
X-Gm-Message-State: APjAAAU5BA7U17g9YkKP14IWrmqRy82RMh6LSBKNkT78HV7TKjl/zuJo
 JApyYxUf59bnSwvfRVWG0r1Gag==
X-Google-Smtp-Source: APXvYqxkANieYzEE6DMJG1h286DYQm3u0jAfyirRH8il7DT9Y0MRpbf2blOEcPSth+kWaRJwtHZCvw==
X-Received: by 2002:a17:902:9689:: with SMTP id
 n9mr98509857plp.133.1558617431700; 
 Thu, 23 May 2019 06:17:11 -0700 (PDT)
Received: from dragon (98.142.130.235.16clouds.com. [98.142.130.235])
 by smtp.gmail.com with ESMTPSA id x66sm20992216pfx.139.2019.05.23.06.17.04
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Thu, 23 May 2019 06:17:10 -0700 (PDT)
Date: Thu, 23 May 2019 21:16:08 +0800
From: Shawn Guo <shawn.guo@linaro.org>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH] arm64: defconfig: Enable CONFIG_QORIQ_THERMAL
Message-ID: <20190523131606.GA21933@dragon>
References: <1558425114-10625-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558425114-10625-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_061712_933785_84041DFF 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "agross@kernel.org" <agross@kernel.org>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "olof@lixom.net" <olof@lixom.net>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 07:57:05AM +0000, Anson Huang wrote:
> i.MX8MQ needs CONFIG_QORIQ_THERMAL for thermal support.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Please send to my kernel.org email address.

Shawn

> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index da85808..61be39b 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -420,6 +420,7 @@ CONFIG_SENSORS_INA2XX=m
>  CONFIG_THERMAL_GOV_POWER_ALLOCATOR=y
>  CONFIG_CPU_THERMAL=y
>  CONFIG_THERMAL_EMULATION=y
> +CONFIG_QORIQ_THERMAL=m
>  CONFIG_ROCKCHIP_THERMAL=m
>  CONFIG_RCAR_THERMAL=y
>  CONFIG_RCAR_GEN3_THERMAL=y
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
