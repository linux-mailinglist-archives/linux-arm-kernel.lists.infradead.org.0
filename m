Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2130A10F878
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 08:14:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0HXRfDfstjHQcSeCdJ2eCqoykpW3QTEZKfmCOg7jjCM=; b=QkU0IPtQVMWAZf
	fPVJedV8sHTL1W7l7cgLCGiNywr/tT2o1L4yksicbl9HS+S0P9GsNg09/CoPnDkBmOLkTqz+ZdGvj
	/UevDusxLjjuoZVRHupumSlsyyNNUXmPGtbD4/aXSZ5m+/MD0HV8saePF+cIXJxzY7PueQmZ46tCa
	WUZhT7xT9WpnRO9dVd5RTwN+Vu8cVSzhclJfhRpPhUKVqkft5bYEhuspdxVCL9S8+JhlSgmK65IFQ
	EkdMYxlsSefY5OP92JvQ8FMHkrFXYl1sc4a5w9w7ijnEOh48RiLEO+H2w7aFfHRqUFDONPa+ibn6R
	igXdUkZhOooltjzToGVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic2Nd-0007GB-AW; Tue, 03 Dec 2019 07:13:53 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic2NV-0007FL-O7
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 07:13:47 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: NBb0poChIeNC2g1/pnmYb12a4nso2OzZoC3QHgHdbzwTLpzTj+1VhA6MtmStdfI/rvmfXnmcCb
 pZxIRfYXKCmE5CAtiiwL+wr1n5Rm4yfD5+zk2Zq/X9bOfalkcii/IAcI2wCAOVSt9+7rpPDzjY
 n+IKIyWIFFshpYdihDcwsXNpAqC42yMINrjN1vxVJKHfKLLp45wYy1THgozqsn67MNGHqhXPPI
 8qRD/jvBGp5IjXQaY9SkyLit0tKzQOt0DHiH8Xeq0AhLqwEE7s5OLUCShtTzd8CnzHOdopg0bk
 8Bo=
X-IronPort-AV: E=Sophos;i="5.69,272,1571727600"; d="scan'208";a="60401245"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 Dec 2019 00:13:43 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 3 Dec 2019 00:13:42 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Tue, 3 Dec 2019 00:13:41 -0700
Date: Tue, 3 Dec 2019 08:13:32 +0100
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Eugen Hristev - M18282 <Eugen.Hristev@microchip.com>
Subject: Re: [PATCH 3/3] i2c: at91: remote default value initialization
Message-ID: <20191203071332.zwpmeb65g7e7ckmj@M43218.corp.atmel.com>
Mail-Followup-To: Eugen Hristev - M18282 <Eugen.Hristev@microchip.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "peda@axentia.se" <peda@axentia.se>,
 Codrin Ciubotariu - M19940 <Codrin.Ciubotariu@microchip.com>,
 Nicolas Ferre - M43238 <Nicolas.Ferre@microchip.com>
References: <1575276957-5615-1-git-send-email-eugen.hristev@microchip.com>
 <1575276957-5615-3-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575276957-5615-3-git-send-email-eugen.hristev@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_231345_793129_4712B4EF 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "wsa@the-dreams.de" <wsa@the-dreams.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>, Codrin
 Ciubotariu - M19940 <Codrin.Ciubotariu@microchip.com>,
 "peda@axentia.se" <peda@axentia.se>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 02, 2019 at 09:56:41AM +0100, Eugen Hristev - M18282 wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Platform data structs are initialized by default with zero values.
> Thus it becomes redundant to initialize them manually to zero (false).
> Remove extra false initialization for field members in structs.
> 
> Suggested-by: Wolfram Sang <wsa@the-dreams.de>
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>

Honestly, I prefer an explicit description than saving lines of code, in
a glance you have all the details, don't need to go back to the
structure definition.

As it's a personal belief, I won't argue about it.
Reviewed-by: Ludovic Desroches <ludovic.desroches@microchip.com>

> ---
>  drivers/i2c/busses/i2c-at91-core.c | 39 --------------------------------------
>  1 file changed, 39 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-at91-core.c b/drivers/i2c/busses/i2c-at91-core.c
> index 5137e62..3da1a8a 100644
> --- a/drivers/i2c/busses/i2c-at91-core.c
> +++ b/drivers/i2c/busses/i2c-at91-core.c
> @@ -66,55 +66,26 @@ static struct at91_twi_pdata at91rm9200_config = {
>  	.clk_max_div = 5,
>  	.clk_offset = 3,
>  	.has_unre_flag = true,
> -	.has_alt_cmd = false,
> -	.has_hold_field = false,
> -	.has_dig_filtr = false,
> -	.has_adv_dig_filtr = false,
> -	.has_ana_filtr = false,
>  };
>  
>  static struct at91_twi_pdata at91sam9261_config = {
>  	.clk_max_div = 5,
>  	.clk_offset = 4,
> -	.has_unre_flag = false,
> -	.has_alt_cmd = false,
> -	.has_hold_field = false,
> -	.has_dig_filtr = false,
> -	.has_adv_dig_filtr = false,
> -	.has_ana_filtr = false,
>  };
>  
>  static struct at91_twi_pdata at91sam9260_config = {
>  	.clk_max_div = 7,
>  	.clk_offset = 4,
> -	.has_unre_flag = false,
> -	.has_alt_cmd = false,
> -	.has_hold_field = false,
> -	.has_dig_filtr = false,
> -	.has_adv_dig_filtr = false,
> -	.has_ana_filtr = false,
>  };
>  
>  static struct at91_twi_pdata at91sam9g20_config = {
>  	.clk_max_div = 7,
>  	.clk_offset = 4,
> -	.has_unre_flag = false,
> -	.has_alt_cmd = false,
> -	.has_hold_field = false,
> -	.has_dig_filtr = false,
> -	.has_adv_dig_filtr = false,
> -	.has_ana_filtr = false,
>  };
>  
>  static struct at91_twi_pdata at91sam9g10_config = {
>  	.clk_max_div = 7,
>  	.clk_offset = 4,
> -	.has_unre_flag = false,
> -	.has_alt_cmd = false,
> -	.has_hold_field = false,
> -	.has_dig_filtr = false,
> -	.has_adv_dig_filtr = false,
> -	.has_ana_filtr = false,
>  };
>  
>  static const struct platform_device_id at91_twi_devtypes[] = {
> @@ -142,23 +113,13 @@ static const struct platform_device_id at91_twi_devtypes[] = {
>  static struct at91_twi_pdata at91sam9x5_config = {
>  	.clk_max_div = 7,
>  	.clk_offset = 4,
> -	.has_unre_flag = false,
> -	.has_alt_cmd = false,
> -	.has_hold_field = false,
> -	.has_dig_filtr = false,
> -	.has_adv_dig_filtr = false,
> -	.has_ana_filtr = false,
>  };
>  
>  static struct at91_twi_pdata sama5d4_config = {
>  	.clk_max_div = 7,
>  	.clk_offset = 4,
> -	.has_unre_flag = false,
> -	.has_alt_cmd = false,
>  	.has_hold_field = true,
>  	.has_dig_filtr = true,
> -	.has_adv_dig_filtr = false,
> -	.has_ana_filtr = false,
>  };
>  
>  static struct at91_twi_pdata sama5d2_config = {
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
