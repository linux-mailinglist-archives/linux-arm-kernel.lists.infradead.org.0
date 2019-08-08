Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF908621D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 14:44:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QLeM7tCAPuKxqqqUkBlLq9keit2PojHVdhCkBs7ClJY=; b=bj8ICjo6upipzy
	Q33uTEnG+940424sfZCYOusrXwatRZX8fnVz/uPsh7yDpP+84Efxpkpl4pzLnJ+qIpIayEqysHj+Y
	YgF4O3WfBJ6Q06/0q2ErWrtSqmq91P0LgA7UUld6OgLAjSSxPCE0FCDiwjhv6ZAAAOH2RDcd1MWAd
	OvPwm12UUsqQNAR0A95J6D63NnOyjSmnQ9gl2brxA0Fmv0DRxSDO8dbL3DM4uhp2ZQW9boePug0TJ
	XJ6sToQqykxJ2DnyfYZ7Ngnqk2mxcZDDl1aQpBT7+2vr3Q/DutH+BBYNxPe+5BxSA/GwwLlV2GDju
	Alvy5Nv1kT0ZLdmD/1PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvhm1-0007Qw-UX; Thu, 08 Aug 2019 12:44:05 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvhlh-0007JZ-K4
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 12:43:47 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: UhMqoEB7R5wKP2mt2+WYc0BEl2Chih+xj1GWZXKExMYR0S5CsQboqsYaxz6b4JkkAXTIMUbk2U
 T0EaEXKPbvMlBWnKJcWXV/9Kx0RPRGisaWsIF1FFhhDmPJ9oW2hUr9GdsD5/OezDS12Rjt/ru1
 o7dOp3ot1ReAQxiM05xerQMZswlaTYtqPjEc90WN8p+jexQYMpnSjTyjwOXZOzBVMGoiXFiXIP
 0yNslWnYEn+Y8mlXsimrPRn5mjtB1XjbzNW83CHyj6PQi3aLgO0bUzXmJOmi6AW88eAMRfrOej
 nFk=
X-IronPort-AV: E=Sophos;i="5.64,361,1559545200"; d="scan'208";a="41506438"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 08 Aug 2019 05:43:42 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 8 Aug 2019 05:43:42 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Thu, 8 Aug 2019 05:43:41 -0700
Date: Thu, 8 Aug 2019 14:42:38 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Eugen Hristev - M18282 <Eugen.Hristev@microchip.com>
Subject: Re: [PATCH 1/2] mmc: sdhci-of-at91: add quirk for broken HS200
Message-ID: <20190808124238.qui3rhk3t6dabbk7@M43218.corp.atmel.com>
Mail-Followup-To: Eugen Hristev - M18282 <Eugen.Hristev@microchip.com>,
 Nicolas Ferre - M43238 <Nicolas.Ferre@microchip.com>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "adrian.hunter@intel.com" <adrian.hunter@intel.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>
References: <1565252928-28994-1-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565252928-28994-1-git-send-email-eugen.hristev@microchip.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_054345_893418_13660134 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "adrian.hunter@intel.com" <adrian.hunter@intel.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 10:35:40AM +0200, Eugen Hristev - M18282 wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> HS200 is not implemented in the driver, but the controller claims it
> through caps.
> Remove it via quirk.
> Without this quirk, the mmc core will try to enable hs200, which will fail,
> and the eMMC initialization will fail.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

Thanks

Ludovic

> ---
>  drivers/mmc/host/sdhci-of-at91.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/mmc/host/sdhci-of-at91.c b/drivers/mmc/host/sdhci-of-at91.c
> index 57fe3b2..3a8c6d8 100644
> --- a/drivers/mmc/host/sdhci-of-at91.c
> +++ b/drivers/mmc/host/sdhci-of-at91.c
> @@ -370,6 +370,9 @@ static int sdhci_at91_probe(struct platform_device *pdev)
>  	pm_runtime_set_autosuspend_delay(&pdev->dev, 50);
>  	pm_runtime_use_autosuspend(&pdev->dev);
>  
> +	/* HS200 is broken at this moment */
> +	host->quirks2 = SDHCI_QUIRK2_BROKEN_HS200;
> +
>  	ret = sdhci_add_host(host);
>  	if (ret)
>  		goto pm_runtime_disable;
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
