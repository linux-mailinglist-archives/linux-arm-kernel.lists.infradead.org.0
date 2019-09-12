Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C21B1348
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 19:10:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aWeekX8wwUtiazf6ZS0acD2TZII5Pe8197P5RX3JT7k=; b=Y5lweEscqXPbyk
	xDEFxRneesJxwDZJxZIJbl82JEFFgU8c+2OJAs/wiiTsZLSdnr7kViiaO/tYVBP2Aeco1WcTWx0GJ
	bRWdeKMkuchytglCm29sLwWw+9QPLAgeTwqvFfyo4P4MMpCWc9iLRlqi7oNplzm0TbGg086H1TQ+K
	bgIPpsluwoK3LaesMPmOdDWVb3y3IHZbXtrCgeAVkdjhKsixBweFg6b3cZH7n8gkwubLgL9aWHTmM
	prfOIisJXdL/a0rcAQSG4yQ1KkPFeqXKmkY0a7AnQXgtbs6vhg/xauEpomZLMMyTHHGkZcHOn2ulc
	uh7OWMFDDK4TvGthjzbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Sbo-0007RY-Sm; Thu, 12 Sep 2019 17:10:17 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Sbb-0006kP-84
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 17:10:04 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id E523880B6;
 Thu, 12 Sep 2019 17:10:27 +0000 (UTC)
Date: Thu, 12 Sep 2019 10:09:53 -0700
From: Tony Lindgren <tony@atomide.com>
To: Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCHv5 10/10] ARM: OMAP2+: pdata-quirks: add PRM data for
 reset support
Message-ID: <20190912170953.GT52127@atomide.com>
References: <20190912113916.20093-1-t-kristo@ti.com>
 <20190912113916.20093-11-t-kristo@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190912113916.20093-11-t-kristo@ti.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_101003_333501_3D41A697 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org, robh+dt@kernel.org,
 p.zabel@pengutronix.de, ssantosh@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tero Kristo <t-kristo@ti.com> [190912 11:40]:
> @@ -565,6 +566,12 @@ void omap_pcs_legacy_init(int irq, void (*rearm)(void))
>  	pcs_pdata.rearm = rearm;
>  }
>  
> +static struct ti_prm_platform_data ti_prm_pdata = {
> +	.clkdm_deny_idle = clkdm_deny_idle,
> +	.clkdm_allow_idle = clkdm_allow_idle,
> +	.clkdm_lookup = clkdm_lookup,
> +};
> +
>  /*
>   * GPIOs for TWL are initialized by the I2C bus and need custom
>   * handing until DSS has device tree bindings.
> @@ -664,6 +671,11 @@ static struct of_dev_auxdata omap_auxdata_lookup[] = {
>  	/* Common auxdata */
>  	OF_DEV_AUXDATA("ti,sysc", 0, NULL, &ti_sysc_pdata),
>  	OF_DEV_AUXDATA("pinctrl-single", 0, NULL, &pcs_pdata),
> +	OF_DEV_AUXDATA("ti,omap4-prm-inst", 0, NULL, &ti_prm_pdata),
> +	OF_DEV_AUXDATA("ti,omap5-prm-inst", 0, NULL, &ti_prm_pdata),
> +	OF_DEV_AUXDATA("ti,dra7-prm-inst", 0, NULL, &ti_prm_pdata),
> +	OF_DEV_AUXDATA("ti,am3-prm-inst", 0, NULL, &ti_prm_pdata),
> +	OF_DEV_AUXDATA("ti,am4-prm-inst", 0, NULL, &ti_prm_pdata),
>  	{ /* sentinel */ },
>  };

Hmm I think I already commented on this.. Just one entry please:

	OF_DEV_AUXDATA("ti,omap-prm-inst", 0, NULL, &ti_prm_pdata),

As the auxdata is the same for all of them. Note that all the
dts files need to have also the generic compatible
"ti,omap-prm-inst" after the SoC specific one.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
